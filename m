Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CFC2F772
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 08:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2dXUl4hJSXqLewT8rkGm1hcH4xi9NU5Cp4UexahPQE=; b=EJ+C2Bnx6Dq3SP
	HJz8snwOOCy8d9V1lqEPSdfn7qqVxiKmgQ2htX9fYM3mnLgs1qCsMzCYEZeSapF2TTaGp14DNotlR
	osuHRNXLLpHrsWP1la1TSzYKTIA2/9ahqHKu+jQ832Mc2IAHG941krTr8bIzSph+9mjf4KdQOwmMt
	5cDPLvsxjk2T6cLqhfZcY93xYa21WY7Dr4Ki9VwvFV6uTmETO9B6uJbn7xDQ32Rk0JiXpBKn5o/YJ
	aOfbYvFvGGZ1rgKXOGmmG3VbNPI/E8k6IoWgwU1qnCtrevFewMG2kwzBDymtbm/y2dYVYBXbxKBLA
	wph1JBBIFmpPvhPU5zAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWEXq-0006mZ-Vz; Thu, 30 May 2019 06:28:11 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWEXd-0006l5-SF
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 06:27:59 +0000
Received: by mail-qt1-x842.google.com with SMTP id y57so5677547qtk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 23:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EDB9NEzcrpM7vrzDugTKwabI3NuPP3IyLOyki6rb9uw=;
 b=TeMX9NEYaD2Qb/D8oQumCOS5CTT5UUG3au1rn0yH9MGA8q2jHPcpr5bZd7JUPdwRha
 m5ZvqEa54g94x1DtzRPQXWKXAZdSvFoMgS4B1EAeBL+A2iVZ3Rdip21Yh6WWJhg1s3dc
 r2HUIPMkLO6PQjVZQzMZFNnBB2IZuUatc64XY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EDB9NEzcrpM7vrzDugTKwabI3NuPP3IyLOyki6rb9uw=;
 b=neLZ2pTTH7L+ne7cph7hh2MaSTeF/FdHN10WVO2SRfdQcItrh11aoQ2Qq9KoJ809/5
 jYXEYn1QBZK+CZSQpofx2hw/vfv2qv/rvVnbTaCT2wbgwWU4aSCSW5Tds9D4OAinLV0t
 IjgPDXz0fQVLq/eH7HLWK8QXrtbwXr5Q3aKemyOVJb0OYjLBYz34ZNQ2bl3tGqqE9/KD
 c9QIHXcEuEQE0H6a85LjmfvnsbNIO8cMzi0mNU9G2VyMPxBMJKrkAgmu1aVsvdSW2WKx
 8UCxdqyBVDy3IARzrssIqmkEg+EnGBqrV2dw2xUiBU8yFI1wUgOYjbmLiVLX0i2ULs2U
 fRmQ==
X-Gm-Message-State: APjAAAVwU1a2WAitei5R59jWdT0TY2VpIlec7DUPcIQPsWSlfwOursvX
 ZYk9Y+3yYAcCpZviAc8fwAPhuON6k2T9PrF6Fb7gNg==
X-Google-Smtp-Source: APXvYqzHDlQemfhL+uQX+PxIu9PwWEguqnHq/qbjiPCrDdlMTXx+BXHgxPzV/YR2FBce1yN3dYhDwycDzH8cXlXCGsc=
X-Received: by 2002:ac8:ecc:: with SMTP id w12mr1935044qti.344.1559197674339; 
 Wed, 29 May 2019 23:27:54 -0700 (PDT)
MIME-Version: 1.0
References: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
 <1557494826-6044-2-git-send-email-michael.kao@mediatek.com>
In-Reply-To: <1557494826-6044-2-git-send-email-michael.kao@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 30 May 2019 14:27:28 +0800
Message-ID: <CAJMQK-giJTeERnqjxoSMjF-JXxW9SPmeARWf3f9ZyRgBsYN5fg@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] arm64: dts: mt8183: add thermal zone node
To: "michael.kao" <michael.kao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_232757_924269_46628BC7 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 lkml <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 9:27 PM michael.kao <michael.kao@mediatek.com> wrote:

> +
> +                       tzts1: tzts1 {
> +                               polling-delay-passive = <0>;
> +                               polling-delay = <0>;
> +                               thermal-sensors = <&thermal 1>;
> +                               sustainable-power = <0>;
> +                               trips {};
> +                               cooling-maps {};
> +                       };
> +
Is 0 a valid initial sustainable-power setting? Since we'll still get
warning[1] about this, though it might not be harmful.

If 0 is a valid setting, maybe we should consider showing the warning
of not setting this property in [2]?

[1] https://elixir.bootlin.com/linux/latest/source/drivers/thermal/power_allocator.c#L570
[2] https://elixir.bootlin.com/linux/latest/source/drivers/thermal/of-thermal.c#L1049

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
