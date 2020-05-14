Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 570331D365C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wkD3+e+xTuLwWMD5ClZj6TljUpmcLS/s3U9aKbcBtAc=; b=n1Vr/sS2E8jLv3
	6pH2ie7JiOQJNfi6xxO0vJfZdqwRi9Rg0F3dOJdJIkjMWu1fMNRglHZEvybuy2vFzcbvXncZxJucE
	tS1tu/3i/+Sms/lO8BRR/CytpR1NmQ2tvacXKGQQ9gwlyYuFyUDrw167ue6oL423OMA3HPzt+uCWa
	ZDBTNTwwibLsWt0G2a943x4aUyNPBb6MEpuS3HxYJ6Yh+3wtEPuQCuDQD/+cpzp6YisMfbMGpPQbx
	Sl07Q9360zW9ncprJ8+tx1s7QnPECmTMEH1FlRxhpjH65x5vGymQBc0TzgYt7YNTZ48AIb3j4+IqC
	cnAL+8+872os1ki6+iIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGbx-0005Yy-Qe; Thu, 14 May 2020 16:21:29 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGbi-0005Xv-1t
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 16:21:17 +0000
Received: by mail-wm1-x343.google.com with SMTP id m12so26298101wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 09:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KV4BSoviEBOfIIyT+7Io9PqJ+AxGL6m4ncG0jX3R3Vg=;
 b=iiHyiJ4q0+KsNNeDxvvCz9wtZO9sC8IuSU69MkWg6ukuylaAreG2+ufhhS2q0LvI4a
 9ZFBQEB3gresJbeadDdort7B7CJztVaOzd+imGLK9adisFs8l1EkEXwjPix6DMwXWpjX
 /bCdQB8gtMafG88ExRQb7sOFOT2TnNJlqCmCoaS8LyHnYhBzplYGqcazpRuc/Byl/kdH
 h8OE0uxsaWxjlIp/J8ewc/SWJUPpFj3CJfpjNNHOJYP6BbciN+6P7zMR4GQBICDm8oYj
 m2m8J1vRn9sCMPHm5LZbqiU0px2GbT9jNPn6q/3jziLa6B8kfu211fXDrBPg+K08gUdF
 P8BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KV4BSoviEBOfIIyT+7Io9PqJ+AxGL6m4ncG0jX3R3Vg=;
 b=gwDixBnL6hsUHewbawhkMmesdRBhVhR2uxRBy5vgfgrJKX5khVcb/skugy2NUZc84w
 cOivGQkfCoDzwMjIMFdjynqiw7oYR9pFGPTcsnJT1oPjpKkKCbwBFdMWH7kdO594zAsz
 2KDNsX9nos1Ve9qcyEnRG/RQsoLJD90DqyP6UhpbwaLQbPRt7/reAey83l8T4GJWX5LX
 nReU7EkHlP0qe8UHHrHLHEanX5828/2/be4ERMywnqMF2Lw4HtAgzScjkjHMd4ylY5uZ
 Z/xUitMNOsgxRZPxTiBKo0/bW6ucBVNB5FltHApQCNa3DVKRiit7RGCvCp0KlTq3GFta
 Xzbw==
X-Gm-Message-State: AGi0PuZemcj+ZW/1WWPDcJ3UE6pb9AVHeH+FHUGFdcCcIh1Qag9XuBdm
 6heU4QFaKwwFSnHnLhI7Ah1rDg==
X-Google-Smtp-Source: APiQypKzrysBhAd4T+CnYHlYyQM0grnydFJdjF31clt1OcgBcXllaYep5/9TgtCb41lshr5MEdxP5g==
X-Received: by 2002:a1c:ed04:: with SMTP id l4mr49969579wmh.93.1589473272074; 
 Thu, 14 May 2020 09:21:12 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id b14sm29577880wmb.18.2020.05.14.09.21.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 09:21:11 -0700 (PDT)
Date: Thu, 14 May 2020 17:21:09 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v4 00/12] kgdb: Support late serial drivers; enable early
 debug w/ boot consoles
Message-ID: <20200514162109.6qt5drd27hpilijh@holly.lan>
References: <20200507200850.60646-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507200850.60646-1-dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_092114_103700_468D292D 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-doc@vger.kernel.org,
 catalin.marinas@arm.com, bjorn.andersson@linaro.org, hpa@zytor.com,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, will@kernel.org,
 corbet@lwn.net, frowand.list@gmail.com, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 jinho lim <jordan.lim@samsung.com>, agross@kernel.org,
 Pawan Gupta <pawan.kumar.gupta@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 kgdb-bugreport@lists.sourceforge.net, Dave Martin <Dave.Martin@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, linux-arm-msm@vger.kernel.org,
 jslaby@suse.com, Alexios Zavras <alexios.zavras@intel.com>, bp@alien8.de,
 tglx@linutronix.de, mingo@redhat.com, Allison Randal <allison@lohutok.net>,
 Juergen Gross <jgross@suse.com>, sumit.garg@linaro.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 jason.wessel@windriver.com, Andrew Morton <akpm@linux-foundation.org>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 01:08:38PM -0700, Douglas Anderson wrote:
> <snip>
>
> My first attempt was to try to get the existing "ekgdboc" to work
> earlier.  I tried that for a bit until I realized that it needed to
> work at the tty layer and I couldn't find any serial drivers that
> managed to register themselves to the tty layer super early at boot.
> The only documented use of "ekgdboc" is "ekgdboc=kbd" and that's a bit
> of a special snowflake.  Trying to get my serial driver and all its
> dependencies to probe normally and register the tty driver super early
> at boot seemed like a bad way to go.  In fact, all the complexity
> needed to do something like this is why the system already has a
> special concept of a "boot console" that lives only long enough to
> transition to the normal console.
> 
> <snip>
> 
> The devices I had for testing were:
> - arm32: rk3288-veyron-jerry
> - arm64: rk3399-gru-kevin
> - arm64: qcom-sc7180-trogdor (not mainline yet)
> 
> These are the devices I tested this series on.  I tried to test
> various combinations of enabling/disabling various options and I
> hopefully caught the corner cases, but I'd appreciate any extra
> testing people can do.  Notably I didn't test on x86, but (I think) I
> didn't touch much there so I shouldn't have broken anything.

I have tested a slightly earlier version using qemu and will test this
set before it moves forwards.


>  .../admin-guide/kernel-parameters.txt         |  20 ++
>  Documentation/dev-tools/kgdb.rst              |  24 ++
>  arch/arm64/Kconfig                            |   1 +
>  arch/arm64/include/asm/debug-monitors.h       |   2 +
>  arch/arm64/kernel/debug-monitors.c            |   2 +-
>  arch/arm64/kernel/traps.c                     |   3 +
>  arch/x86/Kconfig                              |   1 +
>  drivers/tty/serial/8250/8250_early.c          |  23 ++
>  drivers/tty/serial/amba-pl011.c               |  32 +++
>  drivers/tty/serial/kgdboc.c                   | 268 ++++++++++++++++--
>  drivers/tty/serial/qcom_geni_serial.c         |  32 +++
>  include/linux/kgdb.h                          |   4 +
>  kernel/debug/debug_core.c                     |  52 +++-
>  lib/Kconfig.kgdb                              |  18 ++
>  14 files changed, 436 insertions(+), 46 deletions(-)

Any thoughts on how best to land these changes?

AFAICT the arm64 and 8250/amba-pl011/qcom_geni_serial code
could be applied independently of the kgdb changes (though we must keep
changes to drivers/tty/serial/kgdboc alongside the kgdb changes).

I can hoover them up but I'd need a solid set of acks and
I don't think we've got that yet.

I'd also be happy to ack where needed and let someone else pick it up
(the other changes queued for kgdb this cycle are pretty small so we
shouldn't see much conflict in kernel/debug/ ).


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
