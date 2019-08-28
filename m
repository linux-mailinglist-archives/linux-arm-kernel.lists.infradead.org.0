Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E279F8AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 05:20:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuyHiXkmSxgEC72i7qjC6SriS5Mu+uPZc1BrRPiyOjU=; b=hlOyUjVUuicqLU
	pdXnzYC1Qye2zbrFxplWHwFp43ZWPS7gJYFdwv4fP77Uf66tDcrt/H2RswYHmtX4BuahYxl4cMM/C
	ZOSMr1qms+bDe/cQy3moeV5A2ou4nz2mbLqKN5PaAhsVKHc1SNq/fFWe5+24DXwnxF4dm5wEcNwyy
	894Oj/bmubJ/MtpCugahIEFHGCEp/CxYRNOXH2Vi/lks04x5+9PCs3Z0O3OneINWY/D3dvl1jDxrd
	K31GDdqL/8quQDG859mAE+Rk8QBzZ5Cz3ZYNI9M6KVGooUXckhtgqbU8BNkdq5uc1O1z6jpNqphm/
	8hOIP5GPJYFWT/7LXMuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2oV6-0000z9-KA; Wed, 28 Aug 2019 03:20:01 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2oUs-0000ye-Oy; Wed, 28 Aug 2019 03:19:47 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 329E2153B831E;
 Tue, 27 Aug 2019 20:19:41 -0700 (PDT)
Date: Tue, 27 Aug 2019 20:19:40 -0700 (PDT)
Message-Id: <20190827.201940.2141115576553497735.davem@davemloft.net>
To: opensource@vdorst.com
Subject: Re: [PATCH net-next v4 0/3] net: ethernet: mediatek: convert to
 PHYLINK
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190825174341.20750-1-opensource@vdorst.com>
References: <20190825174341.20750-1-opensource@vdorst.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 27 Aug 2019 20:19:41 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_201946_814713_CE87B798 
X-CRM114-Status: UNSURE (   5.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nelson.chang@mediatek.com, frank-w@public-files.de, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux-mips@vger.kernel.org, linux@armlinux.org.uk,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 sr@denx.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ren=E9 van Dorst <opensource@vdorst.com>
Date: Sun, 25 Aug 2019 19:43:38 +0200

> These patches converts mediatek driver to PHYLINK API.
> =

> v3->v4:
> * Phylink improvements and clean-ups after review
> v2->v3:
> * Phylink improvements and clean-ups after review
> v1->v2:
> * Rebase for mt76x8 changes
> * Phylink improvements and clean-ups after review
> * SGMII port doesn't support 2.5Gbit in SGMII mode only in BASE-X mode.
>   Refactor the code.

Series applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
