Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 993C7121015
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 17:51:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cthKL7XZo6AkPjv12bzVss1k+AefYD5upkXro0YuE0Q=; b=StnbdNljH+Ub0N
	epssB7qYyfTxjwvJ8U+oCCJiI7aM07SHPVgDRNjt3JcPW1FHs1om0ox4BjoZKam55uir//lxKqgSj
	h5UlmcX6XgK41N2hOV3kxIuKidZFzO5X2jJYuKUum/2bQ687u/zhMIQqGuxhiXe7U3x1eb6wA22GN
	Af1AiIcO87u63M1cY12Lw8beJf9lKSGPU4BM4dCLnr0You9dz0hVZewgYsaButhsT4ghKyPaKLOnG
	O/y/+qZyZCkFY1uS8Og+wBYseZyCbIY2ybpXyRCuNJJNAACl+zBFV/fZpcZ+8FnwF7waKy3nRlsKa
	Yt4IadJyOvm94wes1vrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igtaf-0005wM-VC; Mon, 16 Dec 2019 16:51:25 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igtaV-0005w2-Rp
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 16:51:17 +0000
Received: by mail-pf1-x444.google.com with SMTP id 2so5887199pfx.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 08:51:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:subject:to:from:cc:user-agent:date;
 bh=2Ylb8RAUHDt6uXs6N1X26YzaU+OrLAk5dbKawEMPDfo=;
 b=DS8lPAwXehgfBJoqmz8c8whNUVVi9nJmdEc6EF+qSzlxr44w1Hvxqs46rR9alR4hli
 U5l1P47fgvvMnpNm2DekEyEpo+NuIFtMFJQbG7I3wIDumHiqbkNm9cvPzYJ1il78IEQg
 cY1h0WCdecdV4AqvqbpX675A7Ceq1StueuNOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:subject:to:from:cc
 :user-agent:date;
 bh=2Ylb8RAUHDt6uXs6N1X26YzaU+OrLAk5dbKawEMPDfo=;
 b=bzYF7tyex5hGDhvsbygKbnFusjzRATzZkFR0Ci7u4KZk2+KRpiDY/rynQX8wAsbBq9
 clFWW0p00Vf0mEFHLbq6FUcKwFhFHY0wBCmfZbGjU1He1VRhVbyRdpSKyG6fffQR+8nb
 1M4BmlyqGYmYilN/fdxKRlVoozcr/cVwF19+0No25OpJLW4UI7xtpxEQejhxvfS3oMA0
 9PxUNszCi/u0SDgGw+xh0Z9a0qshEk1FTH6jwnan7QI1HI+ko5RMNZ60euRrCCCGgIMo
 yoaCQjaE79fNdUQQbYnvBU33VKVQ2/0sSveq5SKLqAu+fYgbUSLR1+J3t5v61eZBJXpM
 BxAA==
X-Gm-Message-State: APjAAAUWe+0xT5i8zwuOAkiY+2aptPNiAVr+TbGtNAfiMGFrfzZXj3yC
 LAdCFaSoKdBwoafySCdjqAk/yA==
X-Google-Smtp-Source: APXvYqz2TUPMp9l6vXOgZkKT0dQRsgynYy65U5RHHMLI87DnD+AB3tl322toM4RxbmC0kzWhjKIX9g==
X-Received: by 2002:a63:cb48:: with SMTP id m8mr20015111pgi.128.1576515074891; 
 Mon, 16 Dec 2019 08:51:14 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id 23sm22974569pfj.148.2019.12.16.08.51.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 08:51:13 -0800 (PST)
Message-ID: <5df7b601.1c69fb81.f092b.26d7@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <CAD=FV=X3Akg07hetQOgd0P_wTVWs3QpuCNQ8O6qQ5LK2ZeWSaQ@mail.gmail.com>
References: <cover.1576037078.git.saiprakash.ranjan@codeaurora.org>
 <0101016ef3391ded-57772416-f32d-40e8-acb5-5dd1b6064f73-000000@us-west-2.amazonses.com>
 <CAD=FV=X3Akg07hetQOgd0P_wTVWs3QpuCNQ8O6qQ5LK2ZeWSaQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sc7180: Add APSS watchdog node
To: Doug Anderson <dianders@chromium.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date: Mon, 16 Dec 2019 08:51:13 -0800
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_085115_900525_D14A959C 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
 <devicetree@vger.kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 Guenter Roeck <groeck@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Doug Anderson (2019-12-11 11:25:23)
> On Tue, Dec 10, 2019 at 8:30 PM Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
> 
> Unrelated to sc7180, but it also feels like something is awfully
> screwy here in terms of the various Qualcomm device tree files
> referring to watchdog timers.  It feels wrong, but perhaps you can
> educate me on how it works and I'll see the light.  Specifically:
> 
> 1. It seems like the same node is used for two things on other Qualcomm SoCs
> 
> If I grep the bindings for "qcom,kpss-timer" or "qcom,scss-timer", I
> get two hits:
> 
> Documentation/devicetree/bindings/timer/qcom,msm-timer.txt
> Documentation/devicetree/bindings/watchdog/qcom-wdt.txt
> 
> ...and, in fact, there appear to be two drivers claiming compatibility here:
> 
> drivers/clocksource/timer-qcom.c
> drivers/watchdog/qcom-wdt.c
> 
> That seems super odd to me.  Is that really right?  We have two
> drivers probing against the same device tree nodes?  ...and that's OK?
>  If so, why does only one of the bindings list the SoC-specific
> bindings names?

The drivers/clocksource/timer-qcom.c file isn't a "driver", at least not
in the linux device driver model. It's a clocksource driver that probes
early so in this case the clocksource code runs early and then the
qcom-wdt driver probes later as a platform device driver.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
