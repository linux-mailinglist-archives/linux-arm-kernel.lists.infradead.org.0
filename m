Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B50C1383E5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 00:04:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9gmY+9zDebu4C7bPsJl3Bd3uqnRooeKwPTwmYvYgRJQ=; b=WvFToy7QnocXXb
	RZmKaHChGQxaaQJSA2pKJmb0d0llRXN0TrESwJGyMz0DKJq8gcLDGU+HbDyleWAh8VJswYgLhlfFh
	YxdvOw1aRLOj8OO2sy/jZWnzb6TzUxKj52cUEkA2uPV7lwFzA6wlEpPsrzybUcpTnR4sI5p6FZIDg
	RAYP5MSjICiURFHW2+WsM1vmGoM7xtL6Uyxkm8OhqOAmV2fhjPUviKX1Tqr/zdlf/CbbcTc+yW93l
	D/TysJgpISslfHnkDd97pj9nq3H4ZaV6tvt2gXdjlfDL1xBi7KoUnbav1ANYaCPkvJbk/8T/D3y0o
	PJYcosAlXPU9SgEq/Fsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqPnx-0004lT-CW; Sat, 11 Jan 2020 23:04:29 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqPnn-0004ki-9T
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 23:04:20 +0000
Received: by mail-lf1-x142.google.com with SMTP id r14so4237163lfm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Jan 2020 15:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FXmVy8WI9jo1NG08iEq3TqryY5k6/1rmswDJCjWMYwI=;
 b=CQeBcUgwrOhTEzzoSh/35DH2Y0LZ/E1+jGDo7glVMzfsCrbGvYlw2KJ4eCip0PGjav
 mnP03VpW45dUFZooiKW4cJdCqMHVy7H+QtrQ/mcePUGxfimMwVxMgJpkYEZECBgFhqQY
 YCa6SBpximN79uTiqWn8Zpb+Gaw0+lSATeKjRlnFwj1abXxpr6gcc8rGeK5Vp2TaqU66
 xIOV1la7i6wx7wy4eLx22Pz56np7PjhZwqNOOLNppfUo0FccoeZzbKVNLapsakMDr33W
 Uwdumd84trj0NmHp5eKS4cGBx1u92fBCI8xwt7V9VkkCc+J79lhqu9WvRMmlgEQWmL0k
 dfJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FXmVy8WI9jo1NG08iEq3TqryY5k6/1rmswDJCjWMYwI=;
 b=YA8FaxuH0bXgJywpPV/G6bH8H7KGX1bV7HgtjMN48HhrqHVSVJAHcMtAiAmVAzmUEH
 0ewJ7+k7jTKbhj9ne5/UaaVJjVKZOkwShON9jTlxw390nSdFsa7xdSdAHPtBsrZ/WiC1
 jHXV65PuON/RfjSUES03T3FrEzXQ5auw89yzEK2CF/L2Z/DsXvJfkDVyHZzLJfcq0MRr
 5z8iwJWe0xQ0MWrPaXmU2g+yKZf1HpbFLhh/js90xwKolDACC1RcD2S0PaHbJcKQ+aRT
 sYJQKVjkKoe/5j7TG9LEPn2jdaU/iccGLGpbwHPfwRzMbRS0RfCeB61I4ZQTOClNRQAg
 q/pA==
X-Gm-Message-State: APjAAAXcuGUwzstOYI+FfoVnLEMrNL5Zw0gQcumB3AJyObIo/PAdqD1t
 0curuiQL8M/KA0WsVhWBpL7B9Q==
X-Google-Smtp-Source: APXvYqy+S4UpkBrYq3VPGjDP7R71mhfQxifaU6SBxA0JlE/eXkDDC16qgbRQmG7a78MkxyTmiVlKEg==
X-Received: by 2002:a05:6512:244:: with SMTP id
 b4mr6031684lfo.85.1578783855752; 
 Sat, 11 Jan 2020 15:04:15 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id j204sm3327792lfj.38.2020.01.11.15.04.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 11 Jan 2020 15:04:14 -0800 (PST)
Date: Sat, 11 Jan 2020 14:58:20 -0800
From: Olof Johansson <olof@lixom.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [GIT PULL] Allwinner arm64 Defconfig Changes for 5.6
Message-ID: <20200111225820.b2qlfi3vaegqyyby@localhost>
References: <3b09a9b4-9d46-4f05-9c4d-420b93f0f88b.lettre@localhost>
 <20200111062349.esn2rfeppbt4b5kv@localhost>
 <20200111090942.su7j3v3dvfbfhmrr@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200111090942.su7j3v3dvfbfhmrr@gilmour.lan>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_150419_356477_A335F746 
X-CRM114-Status: GOOD (  24.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: soc@kernel.org, arm@kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 11, 2020 at 10:09:42AM +0100, Maxime Ripard wrote:
> Hi Olof,
> 
> On Fri, Jan 10, 2020 at 10:23:49PM -0800, Olof Johansson wrote:
> > On Fri, Jan 10, 2020 at 06:13:57PM +0100, Maxime Ripard wrote:
> > > Hi,
> > >
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
> > >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-config64-for-5.6
> > >
> > > for you to fetch changes up to cb4132672f76954ddc234aa343b4d2a1f1b8437a:
> > >
> > >   arm64: defconfig: Enable DRM_SUN6I_DSI (2020-01-02 10:30:35 +0100)
> > >
> > > ----------------------------------------------------------------
> > > Two patches to enable the new thermal sensor driver found on newer
> > > Allwinner SoCs and to enable the MIPI-DSI controller.
> >
> > This adds a SUN8I_THERMAL that I can't find in the tree? (this also goes for
> > the 32-bit branch)
> 
> This is a new driver that got merged through the thermal tree and
> should be in 5.6 as well:
> https://git.kernel.org/pub/scm/linux/kernel/git/thermal/linux.git/commit/?h=thermal/linux-next&id=730a45ccd9322dd918a5dcaf8ae1482400fa5b23

The way we have been handling this is that we add the config options
after the merge window instead. Because right now, if someone runs
savedefconfig, they disappear.

So, please submit after -rc1 (but not too far after) to enable new
drivers merged in that window.

> > Also, is there a reason to have it =y, or would =m suffice? I see that RCAR is
> > =y, but we should revisit that as well.
> 
> That driver is used for thermal throttling which is pretty critical
> for us since the boards can get pretty hot, pretty fast (and they
> don't have a pretty wide temperature operating range either), so it
> felt natural to have it as y?

The problem with this is that all platforms now have to pay the price
of keeping this driver in memory even if it's not needed on that
hardware. This is why we're pushing back on drivers being statically
built in on the large shared defconfigs.

Loading it from ramdisk is usually done early enough that it works out for
these cases, or from rootfs if needed.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
