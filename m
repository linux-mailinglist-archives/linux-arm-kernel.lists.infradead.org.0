Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BFF4BC92
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:10:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfsKNjRJ6RbubbwqwvZPRrbV15W6pNeLo31dRtzLWtk=; b=qdEOeuCks4Jgfz
	AY/kfRvfMp2kM3V2QgPWSJekKTxatxPPCbPdMoSzFx0vJZTbfLKpa7Xn4ak4rOKbo4QPHdivSq8xn
	wlYTek/Yb87mkrqjb7Q9liD2r/+YbPrvfQP9a6Trgpg2kRty9lmYbyN7Zk3+1pBaKrA7nIPTYUq/q
	J7z9VPzHdBdKh+YthNk5a8H+s8+E+ZdfRm83X00c2rsYNWTutEQOueKSQHIURqINzR8WfMiZsnHqt
	qlB7jNS8GxPL26LbIhy89TkdbV0bT6SK9E4IQLGiU4duTy+g8NchumfgdrdtVuC5Zd3hHssQBaaMP
	mDPHLByn3tiZre+N1F6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcEM-0006iM-So; Wed, 19 Jun 2019 15:10:34 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdcAK-0002Sh-Dy
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:06:25 +0000
Received: by mail-lj1-x244.google.com with SMTP id v18so3612167ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nDfkV8NBGFiURwassxD7ytfC0t1CNDepFq+TNmyLZT8=;
 b=oqMO/sHA/5NxzzT0yRXmVS1fov/gCBmlfxV3B0SZ3ubCH3qvBQq6dq2bhZA/OUg3Xv
 1mwhfi7d8DblOgSZg2KH27JNOEFCkUGTmTIjqBQa5tkKbJRLWZLzYFT16hcJh+j/Syp+
 29LEvGQIXavrXVXrXbaS/KFO2Wit0+kCy7JgfWxWX69KL6iZth0DCR3slFQqOx6/HW4V
 LdXg/GimvZP4Ccsge79zv2H1Ozk8Mif58qENy+l8WgHm4+SvduSJkkwCYioICI7g0ggr
 6dyQdufK1G3ho2rZBJi6gxJqSqooFfquIN1xmQ/iAGtGW0gnqs1RAE2rGfofviAc1my7
 wvMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nDfkV8NBGFiURwassxD7ytfC0t1CNDepFq+TNmyLZT8=;
 b=sTlTJ1KjDPHZlwnqrF9tq8xmyAoFrgjXTL7GZ/oVFgFZvztrW+g5JNf4XBCnfjUi1v
 I4sGVg+cjq6zcqACvW3GD+0Pf4QZmcVf581sySLPoNOQhI5txER5cTnRGp9pBO3SRTaS
 duz6zpkVZvaupCIxxuxkqqbG3K4ItcKfCHDYY1j/b9TsQu//6B6fuSpFw7tx3dELfkZ9
 le5DkGuddMJMgLL47YSHi3G4XRKLAvTG8ZV48xJYZ4Q9g7X3SVkVNffD1AQbMv5n9HCD
 4tLCnPNcui7tibnw+QH3JXU1k5z6busMNmG9sqh/juQkex0UHmoqQzpERmayRT2aRLni
 zl0A==
X-Gm-Message-State: APjAAAVQOVrFR9ITGbWZaMHwtsTfxEViyovqXqVyoU0bg582uhnqQiGO
 +b1A7Pdjo5AFgRpfp8SpU0cdiQ==
X-Google-Smtp-Source: APXvYqwiPMgPFpFbn6wMYwgtQdGcIZYTj3+AlxXKYiQQRRTPfzxTxIpULnMpbXQpRHYQpiV76HJLNw==
X-Received: by 2002:a2e:5b0f:: with SMTP id p15mr48417670ljb.82.1560956783120; 
 Wed, 19 Jun 2019 08:06:23 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id p2sm1747407lfc.89.2019.06.19.08.06.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 08:06:22 -0700 (PDT)
Date: Wed, 19 Jun 2019 07:27:22 -0700
From: Olof Johansson <olof@lixom.net>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: omap2: remove incorrect __init annotation
Message-ID: <20190619142722.hsujtf3svd7p2pt4@localhost>
References: <20190619130529.1502322-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619130529.1502322-1-arnd@arndb.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080624_519543_E7E308F1 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Paul Walmsley <paul@pwsan.com>, Rajendra Nayak <rnayak@codeaurora.org>,
 Tony Lindgren <tony@atomide.com>, linux-kernel@vger.kernel.org, arm@kernel.org,
 Nathan Chancellor <natechancellor@gmail.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 03:04:54PM +0200, Arnd Bergmann wrote:
> omap3xxx_prm_enable_io_wakeup() is marked __init, but its caller is not, so
> we get a warning with clang-8:
> 
> WARNING: vmlinux.o(.text+0x343c8): Section mismatch in reference from the function omap3xxx_prm_late_init() to the function .init.text:omap3xxx_prm_enable_io_wakeup()
> The function omap3xxx_prm_late_init() references
> the function __init omap3xxx_prm_enable_io_wakeup().
> This is often because omap3xxx_prm_late_init lacks a __init
> annotation or the annotation of omap3xxx_prm_enable_io_wakeup is wrong.
> 
> When building with gcc, omap3xxx_prm_enable_io_wakeup() is always
> inlined, so we never noticed in the past.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Acked-by: Tony Lindgren <tony@atomide.com>

Applied to fixes. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
