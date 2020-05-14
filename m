Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C5E1D2C60
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 12:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPFPK6KMtCSV6JbhAPfIyJuIXsHYS6zFF+dFu41ruds=; b=CvRrjnlH1FNwFL
	9cAZu0c36RLV8h/Wi862hmdqDTNOgYRwJTNuEO9OZTfr1Bj1xvVouzShyhPEMqUEg9Kf8y0hRh7ro
	MvT6zf+srDVDffIA2W0Jg3Xq+f8St4waRuSvTUP9BYHDhAX3+vI/pVlU21wr2SnilQ69LKv0IFzup
	R0vMPMabYgwudSMUBFMUjtSvw5KEOv0XjJgDTFUMZzwYu4DdofJQl0mhnougW/KgCosuekk6XX87P
	nuKdK/XretiTGYQDL/+7PrU0fR8gOUMpG29ls881QMa2+TZEi89AdZHW7fX6QtUjgq1F91LtefK+Z
	KXiJqbRPl8LDlTGUsthA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZAwm-0000kx-QQ; Thu, 14 May 2020 10:18:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZAwa-0000jG-Bk; Thu, 14 May 2020 10:18:26 +0000
X-UUID: 0022b20896a64158afdd87c4e1a7ddf7-20200514
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ZbYU37rZb9gDHueAY0VNcPPMOrExOy8uaF8KayG70pE=; 
 b=ZoCYwPuK1C8e1QD8AiOA8wnAf7SqWCSYGquSwe9toJj8xFkqosCfhW3+Y6XdLITH5unhxQVV63XGSOjU2LF6Xa/UK9Bqn6NulHAQQJ5Q+VP7pTUT4pOX9jzfPS/Mk+j4eQPb8ex0k7J90HnimIu1NswbUVGlfchuBjFhjDcpU0c=;
X-UUID: 0022b20896a64158afdd87c4e1a7ddf7-20200514
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 26409725; Thu, 14 May 2020 02:18:19 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 03:18:15 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs07n2.mediatek.inc
 (172.21.101.141) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 14 May 2020 18:18:13 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 14 May 2020 18:18:11 +0800
Message-ID: <1589451415.25512.14.camel@mhfsdcap03>
Subject: Re: [PATCH] i2c: mediatek: Add i2c ac-timing adjust support
From: Qii Wang <qii.wang@mediatek.com>
To: Wolfram Sang <wsa@the-dreams.de>
Date: Thu, 14 May 2020 18:16:55 +0800
In-Reply-To: <20200514062951.GA1145@kunai>
References: <1585223676-30809-1-git-send-email-qii.wang@mediatek.com>
 <20200512133852.GE13516@ninjato> <1589418905.25512.10.camel@mhfsdcap03>
 <20200514062951.GA1145@kunai>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_031824_409778_FDFB2B08 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: srv_heupstream@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-05-14 at 08:29 +0200, Wolfram Sang wrote:
> > > Last question: You seem to be the one doing major updates to this
> > > driver. Thanks for that! Are you maybe interested in becoming the
> > > maintainer for this driver? I think there won't be much patches to
> > > review and reports to handle but it will speed up processing for me.
> > 
> > Yes, It is my honor to be the maintainer for this driver.
> 
> Awesome! :) Can you prepare a patch for MAINTAINERS or shall I?
> 

ok, I will send with this patch.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
