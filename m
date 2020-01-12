Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 803181387FA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 20:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfQ3Iwz1tJ6viC+vUaZ8QT7N2i/u+Y1v82UoaGv9oiQ=; b=PkWtpJGm2FHCNE
	27NXhykO3mLtRlbGYvEiQKKjWV959W56rDKa/enUXTMRv+fz0pqaTGkWUg/zuufVFc4cpBjaR6jKM
	z1Q5gkEr83gv2+IazOj7jrRDFbTfQ8acDQPrFG3p44zBDS35uILOwUz51QEw8ijnQJuTjQCQFCgKy
	/h/VLYjz5kEj3Y31Nw3+He2WYHRk5FraE3yTEcjr4p+7d6v3tnR489XyzN4mg+4drU0W5lQXE5v2l
	l4k8ArVNVztPK98j60lPdwMrRecWDaZCqFZQVWq2zxRrWX/uP8+0gqRTX1goIeYh7VGi4OgskXUiy
	NB/G0lnXS0t3vLGoY7HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqjII-0007MA-E6; Sun, 12 Jan 2020 19:53:06 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqjIA-0007La-W4
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 19:53:00 +0000
Received: by mail-il1-x144.google.com with SMTP id z12so6087143iln.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 11:52:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FciysstNs4s9XIIyOOQXxJ7o5Mf6P4dS67p4qSOo1sE=;
 b=aNDgy+hr/2CWmns4WXsiehuhiy59de3xALxmEK0X6qLdqVYJGmuRdNF1pZur/prkcZ
 L+LYtQbJjwuJYqqNnXQN4HUSGUjzyhXvoFlK5F+mdY5EWUn18bH+CXkdf8ny2+0UFWx3
 7C+pHn2/x9rCsu/PJ6+As90XZfxgA5XV/LV2T1PBo5Lu/UjnQNGn/Xb6Ak2PuKJOkb4I
 FzXhGm1QoDUQwzCoCoxDcwDXsrp/yFUhqboqLVJIIjYM+ehwuqqdUy8qx7z8NCjcFfIZ
 Fh5yZUPDzV0Ecl768zXLyr1aJAstXReQ54gX/t0Qvxean1muR3g+XhiYyWahmLWvIuBn
 31+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FciysstNs4s9XIIyOOQXxJ7o5Mf6P4dS67p4qSOo1sE=;
 b=lNktwgo96EunNg9+7cXstpsO7dP+b8fZISQo41EHSWcQe27dJLNxnFf1bnluB6bkmC
 NnUB2CXo/DuK0/FVXWkPZlUD43lPZ4e29SK9jV/byDXjdPop1pCdchkWJpkIoNOiXogM
 TZ11CI+Erniaw9H5dFMBxYYWYd/RFcupY5rPwktAno50EsBPoVM6Ig0aBEC9bSuCrzNx
 z2uj13jv6lJra0Yy5wkHtcSPiDm1X8Nu/XEV4rAZBUz7b3APxSkrFfCwl3V6ZOmtiil5
 /n4xBvOnu+URkkEYFI3XcyvVR/+bMakRb68DeWccZWfvzqkgS3vxUOsir0s72ZJwXteR
 2XgA==
X-Gm-Message-State: APjAAAXiel9zgicNR9NjidLsPL7juCisB7R+s0MCDddaWFWEiu656bn5
 WLSc9OBli9Bht4e//Qts3w81dYnJKOuonIsVUbs+i+MD2F/CXg==
X-Google-Smtp-Source: APXvYqxXS8qGoi4OUyj9E4Dm4YzfydoMzOV078KRrAVbCKfCs69aZo4A0j8oAy6wTvHhSoZv63HrWfu69V011lleQdA=
X-Received: by 2002:a92:db49:: with SMTP id w9mr11162510ilq.277.1578858778027; 
 Sun, 12 Jan 2020 11:52:58 -0800 (PST)
MIME-Version: 1.0
References: <18b6a136-9198-4d4c-878c-e6962e3a833e.lettre@localhost>
 <20200111225938.hp6xxr4k7jp7yvv2@localhost>
 <20200112134933.sq7njjxdm5gxtmek@gilmour.lan>
In-Reply-To: <20200112134933.sq7njjxdm5gxtmek@gilmour.lan>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 12 Jan 2020 11:52:47 -0800
Message-ID: <CAOesGMgWc4XBDSXnRsQ_Ba4oB0uvh5mgDq7Nj6P7FM6BhVdcyg@mail.gmail.com>
Subject: Re: [GIT PULL] Allwinner Device Tree Changes for 5.6
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_115259_032214_296FDBBF 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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
Cc: SoC Team <soc@kernel.org>, ARM-SoC Maintainers <arm@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 12, 2020 at 5:49 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi,
>
> On Sat, Jan 11, 2020 at 02:59:38PM -0800, Olof Johansson wrote:
> > On Fri, Jan 10, 2020 at 06:14:51PM +0100, Maxime Ripard wrote:
> > > Please pull the following changes for the next release.
> > >
> > > Thanks!
> > > Maxime
> > >
> > > The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
> > >
> > >   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
> > >
> > > are available in the Git repository at:
> > >
> > >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-dt-for-5.6
> > >
> > > for you to fetch changes up to 6163ce8467052cdfe42581036bc71fe4aac09eab:
> > >
> > >   arm64: dts: allwinner: a64: enable DVFS (2020-01-09 17:31:39 +0100)
> > >
> > > ----------------------------------------------------------------
> > > This is our usual set of DT patches for the Allwinner SoCs.
> > >
> > > It's fairly big this time, but the highlights are:
> > >   - Enable cpufreq and CPU thermal throttling on the A64
> > >   - CSI0 support on the R40
> > >   - CSI1 support on the A10 and A20
> > >   - SPI support on the R40
> > >   - PMU support on the H3, H5, H6 and R40
> > >   - MIPI-DSI support on the A64
> > >   - PWM support on the H6
> > >   - Thermal sensor on the A64, A83t, H3, H5, H6 and R40
> > >   - More DT schemas fixes and conversions
> > >   - New boards: LibreComputer ALL-H5-CC H5, LibreComputer ALL-H3-IT H5,
> > >                 Pine64 H64 Model B, Neutis N5H3
> >
> > This doesn't build for arm64 defconfig. What happened at your end
> > that made this slip through your testing? :(
>
> The patch in question is using a define that was merged into a
> separate branch, and I only tested the result of the merge between the
> two branches... Sorry.

It happens. Might be worth running each pull request through a quick
test at your end to avoid it in the future. Ideally we'll set up
automation on patchwork for it at some point as well, so we can catch
it pre-merge.

> > I've had to rebase arm/dt to drop this branch. Please send a new tested/fixed
> > version.
>
> Ok, I will, thanks!

Sounds good.

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
