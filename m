Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 467F7A6AA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:02:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDy4yORsEQW3iUQmCzdNu8iMhugRiqoQQTMX3Li6PTg=; b=bSKRudJdRM1WHt
	o4y5Vabdb89xhbnVDIs0YtgXXcqjmzrJsFx4qKuHv2B1RPqtVzQh0xB30wyp9Un05AS+Pr3ijnfiD
	5TksX611AIre0mAGwZaGVJT62MjeUuOA8PiPqtolMRbYTu574pMArEZWmgQJ/qNuhgBGm8fvRdQ3G
	GMdeu7cMBHN5k1zhBOj+pWT3BNAPmiOvwsBMAJgspgpgMoK+vXsC0pV5DS8JkOBGnFuq4Ph5qhCm5
	pazlZTusEwM1w6q+ygPGgopZc1Qq3CV3pWcLaqwU2ep/8ndvA7+1UBGl8Qm4Cc4fPFkGmnpV3FHmv
	jZ3dnYaqHJ0ts8DHrSmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59Nm-0001FF-EQ; Tue, 03 Sep 2019 14:02:06 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59Na-0001Ey-2M
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:01:55 +0000
Received: by mail-qk1-f195.google.com with SMTP id m2so15988721qkd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 07:01:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Okv1zvAd1ldoCpyTNAaJ+bu2tE+K7RIrffUiTBuevuw=;
 b=WilKtPOWvsodObPR13uVnD4KCb38DxFaFRh5ROyXikn5oJClFyey9MBlWcZ7um10JL
 NJ1WhPmJeCBulmh6+Fot+Oslti/aspRIfB2rcavMGM8d3tMOvHJwgqNuHP7f619bT4n6
 RBdiJblm3IdtEOlBPju3BOvqOwpu/SnOQ+YEML+iIoli4cAonv6i7Nqnpt52vce6s09c
 T7E3L/cA9/hTlSeabQIVXqEdc4kBnFaReHAsS0sadxk8AmR10Krqr81N/rkITg3VpAao
 XyveCP8jt3cuJgEJc+ETzU08gOHfaJmuIjGv7hY6NwwoZVR/SMn8DJE3JV4n53r+SLCv
 rljA==
X-Gm-Message-State: APjAAAVxT7Wp7yEtAahsns0GfHqTlCuxtYUngRkloNff3/tI1JbzcZxr
 KHpie+ykpx/+K2D0y6Jnp+7Gk/V9ErVeEL8ACmw=
X-Google-Smtp-Source: APXvYqwnYV6Q1VYs3bLAj6j0OCrXMgkORiMcHL+FkNWNAfswMiQNrIgk/qlq/ZtfE+s+MKED0F0rQi7ZNVmB9wZD+0Q=
X-Received: by 2002:a37:4fcf:: with SMTP id
 d198mr33813224qkb.394.1567519313258; 
 Tue, 03 Sep 2019 07:01:53 -0700 (PDT)
MIME-Version: 1.0
References: <pull-1566599057-142651@atomide.com>
 <pull-1566599057-142651@atomide.com-2>
In-Reply-To: <pull-1566599057-142651@atomide.com-2>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 16:01:37 +0200
Message-ID: <CAK8P3a3SQKV3qCebMpvUgPZE5DVjwfJ-pub=FWwbnyY4m=iVeQ@mail.gmail.com>
Subject: Re: [GIT PULL 2/2] dts changes for omap variants for v5.4
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_070154_110486_57FC4EB6 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-omap <linux-omap@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 24, 2019 at 12:24 AM Tony Lindgren <tony@atomide.com> wrote:
> ----------------------------------------------------------------
> dts changes for omap variants for v5.4
>
> Remove regulator-boot-off properties that we never had in the mainline
> kernel so they won't do anything. We add stdout-path for gta04, and
> make am335x-boneblue use am335x-osd335x-common.dtsi file.

Pulled into arm/dt, thanks!

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
