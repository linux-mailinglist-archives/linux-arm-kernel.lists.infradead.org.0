Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1678181605
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ozKtE2LBXxg36y9GZHjAnf5dSPcpXj35ZjYtBnNRu0=; b=TBk7PK7qZ3DgXK
	SI4PTrD0OJSpVvRHCH+1tJ9FyduGAbTetjXrfaoNEH5z+RrHgAzMXF8h/XnX60ojMK3X3Wz0kueIO
	oJqxVSEFCN9di31Jsec4mhHYRncTM7l6QJyGih7dKsuTiNCpx1scJyE8oo7R6+WguN/ZLpAtCwORh
	2ZEQKOz5OCE8Eovlx2DrY7SqMbc5UGxAu2TiM3Ws+oFj2jNY9jy/gKetkY5uyUiPuu2KkDmVa9mYL
	RaSOZX968/HhyWWNT3NwMY8E9G0Y7dDNXtT0Ev8/L+n6/wnEQ7eimHfcR7YYq3JfRaczZW+qFGTkS
	XfPhyMYF+WUvbYUbnp9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZjC-0001ym-9l; Mon, 05 Aug 2019 09:56:30 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZiy-0001xw-Ck
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 09:56:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 0AEE0D5DDB;
 Mon,  5 Aug 2019 11:56:10 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Q-7FVgH1G8-P; Mon,  5 Aug 2019 11:56:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id E7E5CD5DD8;
 Mon,  5 Aug 2019 11:56:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id lqHkZW8HlhTz; Mon,  5 Aug 2019 11:56:01 +0200 (CEST)
Received: from zimbra.v3.sk (zimbra.v3.sk [10.13.37.31])
 by zimbra.v3.sk (Postfix) with ESMTP id 346F0D5DDB;
 Mon,  5 Aug 2019 11:56:01 +0200 (CEST)
Date: Mon, 5 Aug 2019 11:56:00 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <1387772868.4330.1564998960018.JavaMail.zimbra@v3.sk>
In-Reply-To: <20190803085824.GB8224@amd>
References: <20190802103326.531250-1-lkundrak@v3.sk>
 <20190802103326.531250-7-lkundrak@v3.sk> <20190803085824.GB8224@amd>
Subject: Re: [PATCH v2 6/6] ARM: dts: mmp2: add OLPC XO 1.75 machine
MIME-Version: 1.0
X-Originating-IP: [10.13.37.1]
X-Mailer: Zimbra 8.6.0_GA_1153 (ZimbraWebClient - FF68 (Linux)/8.6.0_GA_1153)
Thread-Topic: mmp2: add OLPC XO 1.75 machine
Thread-Index: tSI++o0iWICeZ1TARJ86vAWcjaSjHw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_025616_586237_CB1D4D50 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

----- On Aug 3, 2019, at 10:58 AM, Pavel Machek pavel@ucw.cz wrote:

> On Fri 2019-08-02 12:33:26, Lubomir Rintel wrote:
>> This is a fairly complete description of an OLPC XO 1.75 laptop.
>> What's missing for now is the GPU, LCD controller, DCON, the panel and
>> audio.
> 
> Ok, but I need GPU/LCD/panel... that's my only output. Is video
> expected to work in 5.2? Does the firmware pass right device tree,
> including the GPU/LCD/DCON?

The firmware (and the dts) uses a simple-framebuffer. You won't get
any nifty features, but you'll get a framebuffer.

Hopefully we'll get a proper DRM video soon. The status is roughly
as follows:

LCDC: potentially supported by the Armada DRM driver. Patches sent to
Russell King some months ago, not there yet. I'd prefer not to nag him.

DCON: Russell dislikes the idea of a DRM bridge, DRM maintainers prefer
if the driver was not a DRM encoder driver. This seems to require
quite some work to fix [1].

[1] https://www.spinics.net/lists/dri-devel/msg201927.html

GPU: supported by the etnaviv driver, good enough for 2D acceleration
to work with xorg-x11-video-armada driver. 3D (weston and mutter alike)
is broken. To add this to the device tree, the clock and power needs
to be figured out.

> Is there config somewhere I could use?
> 
> Thanks a lot,
>								Pavel
> --
> (english) http://www.livejournal.com/~pavelmachek
> (cesky, pictures)
> http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
