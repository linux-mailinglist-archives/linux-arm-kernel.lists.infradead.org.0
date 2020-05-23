Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D461DFC03
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 01:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=akHCgzHqb2spj5gqmavHmB/8gFDme4Xx3RVm+XwpRx4=; b=fIW0399fUo1LRg
	y5tSuPVvQGKcfNpEdhFESRv5h3qO6+vvrg4y69RqpM8bHcFuJ92av4oLDZ4hJwspooA09nf1UxPX9
	m3v2/BfZudTkNZnclbbYy4Mfk7mOLpMRquQho9wbla32VI19Ur3xcxUki3u+m/WG2bm6gelu1pAOD
	Gvwm9lVtRsgtJK+CzLZa5ovektBgilHGYaGrLO5jVh800DAsYUbFUe+nhNNxuLhO9o470vl38I5UO
	xwuSI2Q3bnsljX+f7FkgNKwk7dcxNizxQ9VLOUUMhAHqMYwJHtQbyCAwhze5U/1rLvaOONmKjoh7J
	ICAljeBcyMUITPd3SR1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jce0Q-0001jn-Kw; Sat, 23 May 2020 23:56:42 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jce0I-0001j9-PK; Sat, 23 May 2020 23:56:36 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 2E5D81287375F;
 Sat, 23 May 2020 16:56:33 -0700 (PDT)
Date: Sat, 23 May 2020 16:56:32 -0700 (PDT)
Message-Id: <20200523.165632.2131763470920616688.davem@davemloft.net>
To: brgl@bgdev.pl
Subject: Re: [PATCH v2 0/5] net: provide a devres variant of register_netdev()
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200523132711.30617-1-brgl@bgdev.pl>
References: <20200523132711.30617-1-brgl@bgdev.pl>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 23 May 2020 16:56:33 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_165634_826157_004AADC9 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: edwin.peer@broadcom.com, devicetree@vger.kernel.org,
 bgolaszewski@baylibre.com, stephane.leprovost@mediatek.com, arnd@arndb.de,
 corbet@lwn.net, netdev@vger.kernel.org, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, fparent@baylibre.com, pedro.tsai@mediatek.com,
 linux-mediatek@lists.infradead.org, andrew.perepech@mediatek.com,
 john@phrozen.org, matthias.bgg@gmail.com, kuba@kernel.org,
 Mark-MC.Lee@mediatek.com, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sat, 23 May 2020 15:27:06 +0200

> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> Using devres helpers allows to shrink the probing code, avoid memory leaks in
> error paths make sure the order in which resources are freed is the exact
> opposite of their allocation. This series proposes to add a devres variant
> of register_netdev() that will only work with net_device structures whose
> memory is also managed.
> 
> First we add the missing documentation entry for the only other networking
> devres helper: devm_alloc_etherdev().
> 
> Next we move devm_alloc_etherdev() into a separate source file.
> 
> We then use a proxy structure in devm_alloc_etherdev() to improve readability.
> 
> Last: we implement devm_register_netdev() and use it in mtk-eth-mac driver.
> 
> v1 -> v2:
> - rebase on top of net-next after driver rename, no functional changes

Series applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
