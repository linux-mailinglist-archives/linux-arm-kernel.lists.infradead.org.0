Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90F31F8407
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 17:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yw6uD3+KCvEbgPGy3ZUGkeea5L1ZFokoZ4hv8E9CRsM=; b=ACZyMICYgJM/nn
	kMSAiVFGLwOaJBW7ci9UeLW8O+P7gmniPBnyNaGVl+CPd3fXIxMg8jOJeHUlm5tExn0shu49oOFzt
	OnoUDMeZ/iRSqfxYioV7GwOInYOS5Mwk1pk5u57WCTwfxouW+g4TGNTNLnTCyAgy5UzwTE6gVzwgM
	ok309xloXUx6ogxT3IorDVAuEn0ivORx+QoIoeDCnURd6AklaJ/YjSzZrW18biBFDD29lAE7j8jh7
	3xOoHEx+yOXHQee6835AkBZypgIc4p/1BrJeioHmTpy1iTHqK1OdHh3I51oHojUPdFjKR7Ya97Zu9
	R3LmK0eO+Le6uyVQR6KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk8Qu-0001YP-OV; Sat, 13 Jun 2020 15:51:00 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk8Ql-0001Xf-1b
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 15:50:54 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id A66CB80FA;
 Sat, 13 Jun 2020 15:51:40 +0000 (UTC)
Date: Sat, 13 Jun 2020 08:50:46 -0700
From: Tony Lindgren <tony@atomide.com>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH] ARM: dts: omap3: Migrate AES from hwmods to sysc-omap2
Message-ID: <20200613155046.GV37466@atomide.com>
References: <20200504230100.181926-1-aford173@gmail.com>
 <20200505184223.GR37466@atomide.com>
 <CAHCN7xJxg+uO4h2RcapyjormTMzXFwoMUOi7rh2hUsScJtK56Q@mail.gmail.com>
 <20200505233408.GS37466@atomide.com>
 <CAHCN7xJnBkihY0XwNw+7xj5qZhwz_Up-b_LEt3PY8aFWVYsnrQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xJnBkihY0XwNw+7xj5qZhwz_Up-b_LEt3PY8aFWVYsnrQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_085052_900362_39DCC1FD 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: devicetree <devicetree@vger.kernel.org>, Paul Walmsley <paul@pwsan.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Adam Ford-BE <aford@beaconembedded.com>, Russell King <linux@armlinux.org.uk>,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Adam Ford <aford173@gmail.com> [200613 11:11]:
> Through trial and error, I think I have the right IRQ for OMAP3630 for
> the 2nd instance.

OK great.

> > > I assume the second engine uses different interrupts.  I don't suppose
> > > anyone know what it should be?
> >
> > Sorry no idea, usually the secure accelerator documentation is just
> > left out it seems. My guess the values are the same as on omap3.
> 
> Tony - Could you review the hwmod transition I did for the first
> engine to make sure I did it right?

Yeah that's about all there is to it :)

> If you think I did it right, I'll post my V2.

Yes please do.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
