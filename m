Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0D9B5FB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 14:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qEUr74Afozg4KprY2hPvKjeOiHihxalaydxko5zTScw=; b=X5EJtWydTJvqkb
	HkG94exCLsRB1Gxu8WZttTjQPGVtw2JcyYhLWnjjWl8PFHYum7hIBnv3WrZkh6h9IQtGETKCRoCKT
	Ul5q3tZZ90fQVuTtc10iNTfBar+N6lAxEc1Cx0eV+xQxfg/b2amHV6RHikawaF/Ucl+jzaFbkGoOC
	3I14HOIyz4LbMQE5ihrvIjIrTmfKEdcgrvvPZIGF2bcBaN9ANjLq0QDua77OfTqjY1mIj40ix9KB2
	Yp4PMASCKZzOCU5xzgFRbLcpROV0Yd9AZl4bw08E+4rL6PJoxenBxa8EBqahroSAdXf0ddXxSvwO3
	DgcAy1sAI+AV8opVqiZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKjF4-0000LH-7N; Sun, 28 Apr 2019 12:49:14 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKjEw-0000Kc-NU; Sun, 28 Apr 2019 12:49:07 +0000
Received: from localhost (unknown [207.239.160.254])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id EE52D14DAEDD9;
 Sun, 28 Apr 2019 05:48:59 -0700 (PDT)
Date: Sun, 28 Apr 2019 08:48:58 -0400 (EDT)
Message-Id: <20190428.084858.1947886833982935707.davem@davemloft.net>
To: biao.huang@mediatek.com
Subject: Re: [PATCH 0/6] fix some bugs and add some features in stmmac
From: David Miller <davem@davemloft.net>
In-Reply-To: <1556433009-25759-1-git-send-email-biao.huang@mediatek.com>
References: <1556433009-25759-1-git-send-email-biao.huang@mediatek.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 28 Apr 2019 05:49:01 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_054906_768078_D533ED98 
X-CRM114-Status: UNSURE (   5.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: jianguo.zhang@mediatek.com, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, yt.shen@mediatek.com, joabreu@synopsys.com,
 linux-mediatek@lists.infradead.org, mcoquelin.stm32@gmail.com,
 matthias.bgg@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Biao Huang <biao.huang@mediatek.com>
Date: Sun, 28 Apr 2019 14:30:03 +0800

> This series fix some bugs and add some features in stmmac driver.               

Please do not mix feature additions and bug fixes.

Bug fixes should target my 'net' tree.

New features should target my 'net-next' tree.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
