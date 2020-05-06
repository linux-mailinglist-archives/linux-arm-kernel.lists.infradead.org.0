Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA9F1C6F5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 13:31:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjY49SfF7+VeTH42F4WO0wOKKv4RFqL+ARdQM6/A/tU=; b=KGzSPvV+Vb26tW
	2ht0QYvfPZK6zcSdF8Yuln4/czGFT588XUk9IR0oUNBB6fjYQHmj4xmuWyCcczjiz/Bt62JnhBPE5
	V1vXj6y1VfVOoP5++R7PLGFjLvFpNu7Z6GOKge9EuMMcfaOBteJJhbTt52QpD86W82lb2WeVHbtv2
	z696JFP9IU1MqDfxGnjwpRLYuvEY3at5mI4GRdPEuNPVCYsgdc6CqwWMcHoJsrXjyLzXNUmu9mr0W
	pX9XrkCPF5tfrOibHPI+6k1td7rl/mF7O9lDfjcCT5mWCjoXxRGPGx9gUwp1B+BBr8/Oir2/oRQ3G
	4pqDn+KIN4Fa+n0i5FaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWIGS-0005ni-Lc; Wed, 06 May 2020 11:31:00 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIGF-0005mQ-Lt
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 11:30:49 +0000
Received: by mail-ot1-x341.google.com with SMTP id g14so1019061otg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 04:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i/mnRlrL4hTk5ZWZZBpQB+A2vYhFKnlQEEPlCkWsPZE=;
 b=ahVcX9y0875VtYAfqeLGE8/rEUacYR6cv0gOwEAGAK2TtEt3EZqIgzdUxj8+oqmEtg
 x9e9VKyqjWNyJMH3BbsQqcIEjgMedce3ldo/d88jKQw534PPBjFG3b1ecntQ/L+MSrcl
 ZSsO+EEouEiGHHSZtucCvwmF6m6HWcUfia96aiIq5kRGKvsJhToKu+3nBY4adWL1wQj9
 Zgu3L2lTon+z/3KU5UDDwaKQWxILJ9o47N4Yzpd9MGuGXRq/E0gFe5pgMh3uEVm/hpkD
 otLpeiuEMsLF4/Qq9XuYwSDdlDq6/9PsatWSJf8CRiWCWwW7t7ejcu+eVg5Gn6WRWeku
 k3Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i/mnRlrL4hTk5ZWZZBpQB+A2vYhFKnlQEEPlCkWsPZE=;
 b=mUcB+Mt8Vx6duT1zDc8Z+36Adt1962uxVNwLmyBtfBl7XnNFiOxxpvGjanpSSEunau
 BEULX3CSYZxXFxGPNQaZvWapW/08jRRLaMJp9rEnnbhENImhM5z+ix5y33U9zavAhx1O
 y6huOOtg9evlBNJi9hTDyJf8TixHuLc9TY4UbGjMOMirqUdkyrKKjy20Z7rFz8j0pg0j
 FjmoKsqAEqz4pj+7By4R3kKEzM3h/ngvrYwVVS6CgoNuvfXlnIsq+z2eHM8oF3EWXMGX
 jmKY0IGXQFhT/2YSUCzBSc2x83b1cp8kEvo64cGBoO+GKXbwheTQMRqraW2rTz+plaKV
 21Pw==
X-Gm-Message-State: AGi0PuYlnfsH2g9ty96052c6VI5UppELvTn2gHjtKix6OhJY0mzSW6G3
 xn4jUe2KA9/SHHUFh9gXXy/Mny3PmwGOpudOpkSKyA==
X-Google-Smtp-Source: APiQypI10Opg1+VL0qGtAj9swPO65KogncWTx9LO8yV8j8xz4TIqaR59fBT2pvHi/zHAbFL61M3nNSKybpyU+5oO17k=
X-Received: by 2002:a9d:7645:: with SMTP id o5mr5754004otl.272.1588764646808; 
 Wed, 06 May 2020 04:30:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200505100129.104673-1-robert.foss@linaro.org>
 <20200505100129.104673-2-robert.foss@linaro.org>
 <20200505154913.GA17438@bogus>
In-Reply-To: <20200505154913.GA17438@bogus>
From: Robert Foss <robert.foss@linaro.org>
Date: Wed, 6 May 2020 13:30:35 +0200
Message-ID: <CAG3jFytNwG0tZJnf-qCGEzY_cXucMDYxmCn8z4QW+EHrab8m_A@mail.gmail.com>
Subject: Re: [PATCH v10 1/3] media: dt-bindings: ov8856: Document YAML bindings
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_043047_712465_403FE8FF 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Marco Felsch <m.felsch@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Ben Kao <ben.kao@intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Maxime Ripard <maxime@cerno.tech>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks Rob!

On Tue, 5 May 2020 at 17:49, Rob Herring <robh@kernel.org> wrote:
>
> On Tue,  5 May 2020 12:01:29 +0200, Robert Foss wrote:
> > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> >
> > This patch adds documentation of device tree in YAML schema for the
> > OV8856 CMOS image sensor.
> >
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > Signed-off-by: Robert Foss <robert.foss@linaro.org>
> > Reviewed-by: Maxime Ripard <mripard@kernel.org>
> > ---
> >
> > - Changes since v9:
> >   * Remove remote-endpoint property
> >   * Marco: Make port property required again
> >   * Sakari: Remove Ben as a maintainer
> >   * Sakari: Replace data-lanes with const items
> >   * Sakari: Remove clock-lanes property
> >   * Sakari & Rob Herring: Change type of link-frequency
> >     work around dt-schema bug
> >
> > - Changes since v8:
> >   * Maxime: Added r-b
> >
> > - Changes since v7:
> >   * Marco: Make 'port' property optional
> >   * Maxime & Sakari: Add 'link-frequencies' property to dt binding
> >   * robher: Improve description for 'port' property
> >
> > - Changes since v6:
> >   * Marco: remove qcom specifics from DT example
> >
> > - Changes since v5:
> >   * Add assigned-clocks and assigned-clock-rates
> >   * robher: dt-schema errors
> >
> > - Changes since v4:
> >   * Fabio: Change reset-gpio to GPIO_ACTIVE_LOW, explain in description
> >   * Add clock-lanes property to example
> >   * robher: Fix syntax error in devicetree example
> >
> > - Changes since v3:
> >   * robher: Fix syntax error
> >   * robher: Removed maxItems
> >   * Fixes yaml 'make dt-binding-check' errors
> >
> > - Changes since v2:
> >
> > - Changes since v1:
> >   Fixes comments from Sakari, Tomasz
> >   * Add clock-frequency and link-frequencies in DT
> >
> >  .../devicetree/bindings/media/i2c/ov8856.yaml | 142 ++++++++++++++++++
> >  MAINTAINERS                                   |   1 +
> >  2 files changed, 143 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> >
>
> Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
