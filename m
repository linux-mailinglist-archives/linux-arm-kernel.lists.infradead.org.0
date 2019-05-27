Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AF02B125
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 11:13:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hURqUUk/kRlSrYBSB+sAV4WJfkvC2WALcGJYqxu0SzU=; b=WqqMcJZNvzWt1b
	SonNsD6z5YuN1ACGyPlDBe5PPyIGzuZW+Gxi/y41Y5Oa9ORCCEzqxPA3L54YRISIyfMkKOI4a04gC
	EkpH5BUJ0cnGt/+yhhjPQuAOzNKp0gnI6izIz41RJKw48BllzrW0hWnZerh1xB/HAoCIFlGY/K8hh
	kWhE+DCPPFixc/5Pm94K3HMPQ4memB43lglZ4t1rN87dM04L31Ak4rjxDjv/Hsqt9t0igjzmBOSqR
	RtyDmWz0UVM3mQlac/sbdJJCHs180jSxpxoJn0BivONK7/1uuo9l6M8vzIKs2Togi5N8Z2XK1WP/A
	wCA9egr3/cbib9IXsbxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVBhV-0002Fy-3A; Mon, 27 May 2019 09:13:49 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVBhN-0002FU-Ni
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 09:13:43 +0000
Received: by mail-lf1-x143.google.com with SMTP id n22so3789175lfe.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 02:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a/7xc7v9tJJNaiyPfxrhOl/58adqp4n0uezKun8Lw2E=;
 b=rlDkQN39x24oD/0Fx/igoqVAOkOn0hmIEsqGZjmKNz0/nL36PAqCBnNBK+QfoOTSX+
 npQ5mAPZW2Ywl3J8Rye284g602C47GrM3i/PfBwN6i+EXW+TNHb1VNJDL6XS73+mTO57
 NfoD/LbHrmQ2kxyfnvJss8TDpL7xSqoBsYUP1A8aRgAGqWhoEjW8H1GaAF70E4iQn3B9
 4y5uhI3c3z1WW0IHkiekCy3FfCZKGiUlk6mBDStXbt8HIYdCIDFvzfuaxjPfLcUfntxU
 ryhsjlGZZeu2HbXwrYGsJMFW0Dvn1kszD4iHFDt/ixgoRz/n9rLOdVgtYZuxDhBtwr3P
 WDRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a/7xc7v9tJJNaiyPfxrhOl/58adqp4n0uezKun8Lw2E=;
 b=sScQ/Jq2cVnT0g8jyKrFfTiAGQo/hGc0BUNmqwV5D7FUTenKTuRiO4Rgh+jBnCGb9I
 FDLClxWbz5MZOe0XyALLesMyD29w4f0hVmYe/cbj3nkg4dYcJK0mqLhhQonmTjBHhiHA
 wAdD13XYzkZcwdPw/9Y3ZecPa/P0YvoRidyBNOZwfGq+c21cHwHTJwzaJIz1Xx888AvZ
 lwBTV94NsdrDYy6dztKFmYOKkxgmF2L7nfL7oaZPHIB3rV82m9e0pJWNzfKRSGWKTNOI
 n5HSep+naZNq8ttJbcG8ld0y481v6ZkJAAJdsTHeYce2K3FqU2AEeKpjZBjnOYp06Tzj
 trig==
X-Gm-Message-State: APjAAAWpPqfcaO3K2ULTLWYItU/jvVBfQjl0CmMOlLIyLUhevDxUfa1a
 YWgQun7vVpYDgzLXwUHl2mltZQs4tJK5ZP6TaJrzHQ==
X-Google-Smtp-Source: APXvYqxMD3x3Zg9ONiCBorxk0Q9XTDz80b+4NRApQxGryM34b0wKEecvJIiWl4fu361pYvYyrTrBpySqptqbXxrm9nA=
X-Received: by 2002:ac2:48a8:: with SMTP id u8mr7983174lfg.141.1558948419094; 
 Mon, 27 May 2019 02:13:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190508021902.10358-1-leo.yan@linaro.org>
 <20190508021902.10358-5-leo.yan@linaro.org>
In-Reply-To: <20190508021902.10358-5-leo.yan@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 May 2019 11:13:27 +0200
Message-ID: <CACRpkdb9SGN6N4y1Po6yY3dROkDhGOHaip=YRRaFKfv10r=sAQ@mail.gmail.com>
Subject: Re: [PATCH v2 04/11] ARM: dts: ste: Update coresight DT bindings
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_021341_835814_A04ABCF1 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 David Brown <david.brown@linaro.org>, Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
 Andy Gross <agross@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Orson Zhai <orsonzhai@gmail.com>, Mike Leach <mike.leach@linaro.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Baolin Wang <baolin.wang@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 8, 2019 at 4:20 AM Leo Yan <leo.yan@linaro.org> wrote:

> CoreSight DT bindings have been updated, thus the old compatible strings
> are obsolete and the drivers will report warning if DTS uses these
> obsolete strings.
>
> This patch switches to the new bindings for CoreSight dynamic funnel and
> static replicator, so can dismiss warning during initialisation.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>

Patch applied to the Ux500 tree.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
