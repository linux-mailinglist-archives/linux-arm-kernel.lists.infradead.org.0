Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D78C532869
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 08:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OscqIuaCNCGyIXF2/aqYdV3JZFzS5k2SAvHQj5OOaVA=; b=bSlhojnp8VphKk
	kBJhPLUjFf5b4ZiF1UtzuBvrvyrJJ9ZB9WL7xZ6l2JhVxeRfx6Aq2g3VZjrohxblu55zILN0N/1vS
	YN0pu9XiJxVUMuW04vvAi9chaKAICXC6QlqX06oDoG+VmG/AHO6UBk/2qE8l1AGpB1e1toFbcJnaa
	+iTT/KJ/0Xlvf7KXUr/ZiZukWRRwJiElP4ABmag6zI55UemgFmhMT19rZvYm6i9sEiBbLj6XXOEgA
	ocJcqqQQKdfZq0vm0ZojLwwwmR2/3UscC53kMiOSL8OY0ICcNy5fQQyhvLKv66G5aIPwSgMCSGr4N
	La2c50gvS8y8DEWUdHGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXgKy-0003xE-EE; Mon, 03 Jun 2019 06:20:52 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXgKq-0003wj-IE
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 06:20:46 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,545,1549954800"; d="scan'208";a="35312391"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Jun 2019 23:20:39 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 2 Jun 2019 23:20:37 -0700
Received: from localhost (10.10.85.251) by mx.microchip.com (10.10.85.151)
 with Microsoft SMTP Server id 15.1.1713.5 via Frontend Transport; Sun, 2 Jun
 2019 23:20:37 -0700
Date: Mon, 3 Jun 2019 08:19:46 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [RESEND GIT PULL] ARM: at91: SoC for 5.2
Message-ID: <20190603061946.xhvxpiptrqm44h2y@M43218.corp.atmel.com>
Mail-Followup-To: Olof Johansson <olof@lixom.net>, arm@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
References: <20190429164354.bxngd2shia4qhyuv@localhost>
 <20190430053540.31846-1-ludovic.desroches@microchip.com>
 <20190509112512.uc5swsgutd6x5cgq@M43218.corp.atmel.com>
 <20190516180157.g3iqlechzlg6lm4p@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516180157.g3iqlechzlg6lm4p@localhost>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_232044_637336_45D0A1D5 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 11:01:57AM -0700, Olof Johansson wrote:
> External E-Mail
> 
> 
> On Thu, May 09, 2019 at 01:25:12PM +0200, Ludovic Desroches wrote:
> > Hi,
> > 
> > On Tue, Apr 30, 2019 at 07:35:40AM +0200, Ludovic Desroches wrote:
> > > Hi Olof,
> > > 
> > > Sorry, effecively I missed the tag when doing the PR, here is the new one.
> > > 
> > > Regards
> > > 
> > > Ludovic
> > > 
> > > The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> > > 
> > >   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> > > 
> > > are available in the Git repository at:
> > > 
> > >   git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux.git tags/at91-5.2-soc
> > > 
> > > for you to fetch changes up to 2725d70aa5138284ba2cebf0ef51dd23e0c9ea21:
> > > 
> > >   ARM: at91: pm: do not disable/enable PLLA for ULP modes (2019-03-28 11:05:53 +0100)
> > > 
> > > ----------------------------------------------------------------
> > > AT91 SoC for 5.2
> > > 
> > >  - PM changes for SAM9X60
> > > 
> > > ----------------------------------------------------------------
> > 
> > Is this new PR okay (and the defconf one)? I have not seen them merged.
> 
> Hi,
> 
> It just came down to timing; I ran out of time to pick up more material so this
> didn't get applied before the merge window.
> 
> Since this has been sitting in linux-next through your own tree, I've merged it
> into arm/late now and will send it up. 

Thanks, it's great to have those patches in 5.2.

Regards

Ludovic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
