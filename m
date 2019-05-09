Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E39194FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 23:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3vfxwNjq9zRwPZWddQQtz8qz9MMRYugVkByNmOYfafc=; b=dmfZjeMfGCgJQr
	Z2uWA9lcTQZSP3ha0RjXo/hA+W/aQlf5yk149Uys1N/K8jDNNEc6JJVEFBbhC24hiLdXmhpLCVbUI
	VnbFWnZv6Vmb8VM8a9BwZlJkzhz/Xea0duGBkzfPVoOTUGJYBApRBzAVV75rBSoX6iSvEpbqwqyAO
	DF7J9i4WB6fLKuaodXVariatGbE8xy9c7mO7Xa4qaA8kUi6jlVWnvL8IXBwIO2Eg/SsunMvgDaZNV
	Iy2JeA5iTzPWJcUMyti3A8BUrNb+yhbQcAVDNheOu0Fwo1KL9ytGLFzWu3oPLdfqrTvG0CAYMc87R
	95UHj2bMMMHsSzSye6Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOr3h-0007L1-S2; Thu, 09 May 2019 21:58:33 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOr3Z-0007K4-VZ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 21:58:28 +0000
Received: by mail-vs1-xe43.google.com with SMTP id e2so2392025vsc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 14:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8FXPIq1hegck4+LUfvPI3e12GgUDRXQleew5eHpUJZ4=;
 b=GWU18C7YaAP+YZQi3muCAvs0KMaXaiY3pUYWpt1UWv65qwcRPAYuQhtt69DqUxV4f7
 iITK0m73QzNWHzEWWQTtFcEvXgMsGCKqzSf++mwGmIpww1ehMyP+vzRjgC9S6IRVORaW
 A27qAJi5bmbkLBWUdmMflVPq+oxdZCA0YqEcw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8FXPIq1hegck4+LUfvPI3e12GgUDRXQleew5eHpUJZ4=;
 b=AiiQbRqFl5qhLeL9SvanPiZHq0ilIc8QBU9h45Wr3tka8RAe1Q2DKiEqqXSamzddim
 0Y7V8aiUa/5DjSPaDATtZ6E6K9GWoK5rb699sShVlZlQaJkV5u10anMkRZjZC7maEiQm
 N8I//lJkw56S+p1nleun1yKz2WBBd6WoA9ywcoE/Y6jH4xECoYAK+vAcohAmVIlVUQ9T
 9nMhx9Eeh9PVwfF8YXwYjVwLb7bXtrSfdEkRl1QohDktfEojoIMz2tUpT+KJ+SWbbR/6
 TJLGht0C0Up7+IqXdWowle28QJOpJaz1oKY4rFPBPLuXD+oTqrI4qUQu5jHKWdUMI5Qb
 yMKg==
X-Gm-Message-State: APjAAAVsUXoFjJms7OKt1r7mLmRvrjGG8hrWCsIVLEoUvVkwbNjLjO0S
 9lV11441RvO+JxY79Nb9e0eqtdljeLs=
X-Google-Smtp-Source: APXvYqzOAONlgnq6uLS06zLwDPmFl9qw7+iPszJKT4TUHWORZv3/n4jik98kCqFTLD+krbD+AmCVCw==
X-Received: by 2002:a67:fad8:: with SMTP id g24mr3864234vsq.231.1557439102611; 
 Thu, 09 May 2019 14:58:22 -0700 (PDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com.
 [209.85.217.50])
 by smtp.gmail.com with ESMTPSA id r70sm2628880vke.36.2019.05.09.14.58.21
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 14:58:21 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id d128so2395166vsc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 14:58:21 -0700 (PDT)
X-Received: by 2002:a67:de07:: with SMTP id q7mr3837804vsk.66.1557439100581;
 Thu, 09 May 2019 14:58:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190507045433.542-1-hsinyi@chromium.org>
 <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
 <CAJMQK-iVhScf0ybZ85kqP0B5_QPoYZ9PZt35jHRUh8FNHKvu7w@mail.gmail.com>
 <CAL_JsqJZ+mOnrLWt0Cpo_Ybr_ohxwWom1qiyV8_EFocULde7=Q@mail.gmail.com>
 <CAJMQK-jjzYwX3NZAKJ-8ypjcN75o-ZX4iOVD=84JecEd4qV1bA@mail.gmail.com>
 <CAL_JsqLnmedF5cJYH+91U2Q_WX755O8TQs6Ue9mqtEiFKcjGWQ@mail.gmail.com>
 <CAJMQK-hJUG855+TqX=droOjUfb-MKnU0n0FYtr_SW2KByKAW1w@mail.gmail.com>
In-Reply-To: <CAJMQK-hJUG855+TqX=droOjUfb-MKnU0n0FYtr_SW2KByKAW1w@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
Date: Thu, 9 May 2019 14:58:07 -0700
X-Gmail-Original-Message-ID: <CAGXu5j+S3tQ3DFtmTJT_O1rNx4ofZWvaFpPrES9peHRhMqRGjg@mail.gmail.com>
Message-ID: <CAGXu5j+S3tQ3DFtmTJT_O1rNx4ofZWvaFpPrES9peHRhMqRGjg@mail.gmail.com>
Subject: Re: [PATCH] arm64: add support for rng-seed
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_145826_016761_0BEFBADD 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Architecture Mailman List <boot-architecture@lists.linaro.org>,
 Michal Hocko <mhocko@suse.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Stephen Boyd <swboyd@chromium.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 9, 2019 at 1:00 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> This early added entropy is also going to be used for stack canary. At
> the time it's created there's not be much entropy (before
> boot_init_stack_canary(), there's only add_latent_entropy() and
> command_line).
> On arm64, there is a single canary for all tasks. If RNG is weak or
> the seed can be read, it might be easier to figure out the canary.

With newer compilers[1] there will be a per-task canary on arm64[2],
which will improve this situation, but many architectures lack a
per-task canary, unfortunately. I've also recently rearranged the RNG
initialization[3] which should also help with better entropy mixing.
But each of these are kind of band-aids against not having sufficient
initial entropy, which leaves the canary potentially exposed.

-Kees

[1] https://gcc.gnu.org/git/?p=gcc.git;a=commitdiff;h=359c1bf35e3109d2f3882980b47a5eae46123259
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0a1213fa7432778b71a1c0166bf56660a3aab030
[3] https://git.kernel.org/pub/scm/linux/kernel/git/tytso/random.git/commit/?h=dev&id=d55535232c3dbde9a523a9d10d68670f5fe5dec3

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
