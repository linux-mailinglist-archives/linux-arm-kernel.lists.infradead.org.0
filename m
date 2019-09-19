Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8743B813D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8dDmBNtNVtt8sIMYxSgNodR8j5Oz2yE4GfhtTJGolA=; b=U7B/l1CVxb8hg8
	sjk19cEJpUaV0ICmYgIn31B0k9qUTLWFRRP8bGTV7RMwwM6yGVkspCLtcSdVDraS/I0nDiuvz8Zt2
	DRQsEddHKhdjrJ4wwh1NgF7MtwZCzdu6xcbTPzhxhl2C7MjQ50EzS70c34txf1pktBhFliZUsV5Fs
	EYrTvAU3qGdxXz/+CN7vbAf4tGXk+TW6koQlp0bs9XOYMaFZMF9IzZ48q8f0dcft3VpvY2HL07wVo
	A/Mbv7InemehhhclS27Z9AYRvt3R4htKEBmKy406veQN8r8rEnT8BVDOKZOj/ybJbi8VMtcCq4oB8
	CRaY4siPFL7GGpw77CZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB1sL-0003T2-Kd; Thu, 19 Sep 2019 19:13:58 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB1re-0003J9-Lp
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 19:13:16 +0000
X-Originating-IP: 90.76.216.45
Received: from windsurf (lfbn-1-2159-45.w90-76.abo.wanadoo.fr [90.76.216.45])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id EE207240008;
 Thu, 19 Sep 2019 19:13:08 +0000 (UTC)
Date: Thu, 19 Sep 2019 21:13:08 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] spi: atmel: Remove AVR32 leftover
Message-ID: <20190919211308.56c9503e@windsurf>
In-Reply-To: <20190919172453.GA21254@piout.net>
References: <20190919154034.7489-1-gregory.clement@bootlin.com>
 <20190919172453.GA21254@piout.net>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_121314_926338_007A04B4 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 19:24:53 +0200
Alexandre Belloni <alexandre.belloni@bootlin.com> wrote:

> On 19/09/2019 17:40:34+0200, Gregory CLEMENT wrote:
> > AV32 support has been from the kernel a few release ago, but there was  
> AVR32 and  missing word^
> 
> > still some specific macro for this architecture in this driver. Lets
> > remove it.

If you want to actually be pedantic, there are a few other typos in the
commit. Hopefully the below text has all of them fixed (and does not
introduce any new one):

==

AVR32 support has been removed from the kernel a few releases ago, but
there were still some specific macros for this architecture in this
driver. Let's remove them.

==

Best regards,

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
