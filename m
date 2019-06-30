Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3D45B062
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 17:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4sCct0qRMLmtNhrP0nfGNSFz7jam0apFfafmJ7NgBE=; b=sm/Mj509YV0Znh
	YKbkwCkxODhghxrXJC5TSaPXjpuaMEsOpH9dvNlu8ddw7u1lsF6cTi4MqlR49LJGYK+Y9OY3pICV7
	pmzR98lVymjvdlaXqQKSYyYEhiqdriNtSOe+hC2IXRQ1zHcIlTBQsZTUzkjogjpGuXkTMJP4Nrssd
	/odbxVAcMznOOPBBGa0WGCOL03+vAKuVIGM4nTlbyu5rTZRoy4e9xfVEwd5uLB1O4OmxAR2HygPsR
	192j2MZQPejWHKO3iqFKHw1vJJfu0pHjeiBZkP1XReLa8TrSpfBwothO5jW+7fHuVukpa0xiqf4Sf
	CFZPJzXzwa46wiNVpMhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhbib-0005Sx-Q5; Sun, 30 Jun 2019 15:26:17 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhbiP-0005SS-CR
 for linux-arm-kernel@lists.infradead.org; Sun, 30 Jun 2019 15:26:06 +0000
Received: by mail-ed1-x541.google.com with SMTP id r12so18565078edo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 30 Jun 2019 08:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gHDuyQyipf6+B4/tN6dPauaHdhnnRjQUM73xUOdIo4Y=;
 b=JLRZSukeG+yRwOttw1L3BnWxitCLcqmur4EOXDxIG1IzDA7QVtWhebBqbRTwt1ClYD
 HE/OZsAycryAGYPJacynE3B2iCj3goyRHRZl7qGK1rvaLQ5cuF9k2pH6CUkkZiZdEsbb
 xtc/yFonh5PK7r0GaA3G22L+BsSbGO+dWDCuEIwB+jIyufhe2uWZn7qNk6BCf34eJ3ey
 BjIJUJFpsll2YFXWvH6Oy8elJIMhdmpx0YlEg9ydydXfCcMF/mrsKkTECG9Tu81P4Y5D
 sKt2/HA45TFFtbsAq8VA0mIIemFtNUHr9n3trpgiVyRwUIuRcvJwC3Z8/qqIYKVLNg2K
 JaaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gHDuyQyipf6+B4/tN6dPauaHdhnnRjQUM73xUOdIo4Y=;
 b=VFX1MnEAjyWm/veR5iYyvb2s+lpGyBQGgw6064BTh48I2X8HnKziIMNoKNf0Q7PQ6k
 LjF5GFV0JzBOVyyu7fIFfI2PAImeXJoQqT/EUlPdQxNhq1Tbq0dQDFzAw6de/+IXUn+N
 zDACGT9pxh9SBYjZYaROyGFCPOOGXlNwYgsK/TrIKxSoAVzTxRxRCvzHzy8qUezG7q9e
 Fl+W492wdln+qFpOR2/N7BqLo2r0IGr4GowORwEakbT5/rzN+2kM0KW1fMfyVUHbvoiF
 cSwj7PQt9+7uGUSMdJQTEVn6H01w7WE/lihYqmPQBcDljuiX9J5ZeS5/BqV2BjPEiej9
 sfyA==
X-Gm-Message-State: APjAAAWjL75y9trisuUtemVbFQCfI7mVdkHErN1CULLL5ocoldBt0taR
 EXmLqUyCyvSOR1VeNTAr8o5+7Jp8eKdFMFymuTY=
X-Google-Smtp-Source: APXvYqxZ9nP6Qq2+dhZaSf9o86LLcNw3JpZzAZYVZtz/9E9mZvwLSU8JYIAlcm9Ap2Rzd45G312eAPczGSWb4PiCoFo=
X-Received: by 2002:aa7:d888:: with SMTP id u8mr23439480edq.264.1561908360841; 
 Sun, 30 Jun 2019 08:26:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190629125933.679-1-linus.walleij@linaro.org>
 <20190629125933.679-4-linus.walleij@linaro.org>
 <CAF6AEGun2QEMVyO+L3W0UJubgzVPrFr5jkVoTOwHpy9b4MeJMQ@mail.gmail.com>
 <CACRpkdYAmVSiUQozgCvaNe_X1hcmhAzeApQcSxdhWC_wg0tdsg@mail.gmail.com>
In-Reply-To: <CACRpkdYAmVSiUQozgCvaNe_X1hcmhAzeApQcSxdhWC_wg0tdsg@mail.gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Sun, 30 Jun 2019 08:25:44 -0700
Message-ID: <CAF6AEGtn+VEHszMeuap9zkPCm4NFc0CskjnF40HprUOzYi=1+Q@mail.gmail.com>
Subject: Re: [PATCH 4/7] gpio: of: Support some legacy Qualcomm HDMI bindings
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_082605_448895_D5537802 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: freedreno <freedreno@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 30, 2019 at 8:18 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Sun, Jun 30, 2019 at 3:26 PM Rob Clark <robdclark@gmail.com> wrote:
>
> > I'm ok with this.. although I wonder if we need to try this hard for
> > backwards compat?  At least I don't see any upstream dts
> > using the old names.  Maybe it is ok to just look the other way and break them.
>
> I am usually of the opinion that if a tree falls in the forest and noone
> is there to hear it, who cares what sound it makes.
>
> So we can just apply the other patches and not this one, which
> should work just fine. It will support the variants of the
> bindings ending with "-gpios" or "-gpio".

Sounds good.. if the tree falls loud enough that someone does indeed
hear it, we can resurrect this patch :-)

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
