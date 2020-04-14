Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 219E51A857B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6dKcLxMPo2rGKOn8X4HGUB0A1qedTfFYiWZfUmaBK3g=; b=XHATVDqzBFYxxs
	MTgUZWd5q1yYJAfoV9icu30Qb1J3EL0flCuehdkNbvm2DUXCuGoOipZsTU054PGbXlIYlfFBeJYw2
	Vxr4H9Eapo3yisuhvguauQguYuPstOgLHoLiiIqZAYyAiV8uJusnCmKoM/bFBWn8MhZB6gGeYGKcT
	WaNjOHk3vUR5JsICvwxTQZyfOUSwQz036AXa2GoTzEYwlRB6VzYvXbZ65BLesv38kFhOVA4qgBzls
	HHhLcWOEgmmaRvNnfawLu3zK2SjvH6qTXPYqCqyxZOxUXdSFrv2NlnKXzPHDDYHs1uxK7ZCnVZH5w
	k4OtTbMwTnJZqwLD/OAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOfU-0003At-Sb; Tue, 14 Apr 2020 16:44:12 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOfJ-00039z-IU; Tue, 14 Apr 2020 16:44:02 +0000
Received: by mail-ot1-f67.google.com with SMTP id j4so231767otr.11;
 Tue, 14 Apr 2020 09:44:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mdJGN+n2VYiCEYSu8u8xlSZpkqPfV2n6FeIMEPtdiVw=;
 b=T8RUznbV3QYmFaqk2q0OUJ1VB3VELU0ndNKSMeOpQcrE+Hh4CmkG52RrkAQ2jx1tTr
 Pn6E1e8Lw91aridS4pAzc0vaqIVBYrZrbb0uyvyt1bRhUHfeX6ntWnuxbC5wkqIuxSUj
 UBlq3SZEOM3yS7baEMOULYNmmteNkMjLyXiVq67j33IfoqwqVTDPl+H7lvCBS6iEEOja
 65GRijwVI5WNZbb3bsA3u1JxRpY6DGPIxkBmXpgk2g6KJlUNf/qpFmOugQsLTZGm1hmk
 frdOIsukuuouJHP6iCxGmjEFB4gGLU8XQrjB9ubvSwWqCDf8sTF7JoNkUyody7Ldhu9+
 2WJg==
X-Gm-Message-State: AGi0PuZ54+JgiXbTAoAHQ7GGjSNYw3qc6m84OdNOIfvd19DAeyYwllV2
 gYjTS/lxJGcF3ZNhS/FNSg==
X-Google-Smtp-Source: APiQypINczSaAx3RvBdTvMgP/hZFPK9N4KYJKAMcgw+8KVN2riIwZXpaqEpmPb+hOROqaiW2MJnmaw==
X-Received: by 2002:a4a:a98b:: with SMTP id w11mr19105677oom.80.1586882640106; 
 Tue, 14 Apr 2020 09:44:00 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w15sm6274633ooq.24.2020.04.14.09.43.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 09:43:59 -0700 (PDT)
Received: (nullmailer pid 11212 invoked by uid 1000);
 Tue, 14 Apr 2020 16:43:57 -0000
Date: Tue, 14 Apr 2020 11:43:57 -0500
From: Rob Herring <robh@kernel.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Subject: Re: [PATCH] dt-bindings: thermal: Get rid of thermal.txt and replace
 references
Message-ID: <20200414164357.GA11178@bogus>
References: <cbd70c2f0f5ddae0d8e418fcb1e03101e408f6c2.1585753313.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cbd70c2f0f5ddae0d8e418fcb1e03101e408f6c2.1585753313.git.amit.kucheria@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_094401_610987_81FCFE93 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mans Rullgard <mans@mansr.com>, Heiko Stuebner <heiko@sntech.de>,
 Yangtao Li <tiny.windzz@gmail.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>, daniel.lezcano@linaro.org,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Andy Gross <agross@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, Guenter Roeck <linux@roeck-us.net>,
 devicetree@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 linux-tegra@vger.kernel.org, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 linux-arm-msm@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Talel Shenhar <talel@amazon.com>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Scott Branden <sbranden@broadcom.com>, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 lukasz.luba@arm.com, Sudeep Holla <sudeep.holla@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  1 Apr 2020 20:35:50 +0530, Amit Kucheria wrote:
> Now that we have yaml bindings for the thermal subsystem, get rid of the
> old bindings (thermal.txt).
> 
> Replace all references to thermal.txt in the Documentation with a link
> to the appropriate YAML bindings using the following search and replace
> pattern:
>  - If the reference is specific to the thermal-sensor-cells property,
>  replace with a pointer to thermal-sensor.yaml
>  - If the reference is to the cooling-cells property, replace with a
>  pointer to thermal-cooling-devices.yaml
>  - If the reference is generic thermal bindings, replace with a
>  reference to thermal*.yaml.
> 
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---
>  .../devicetree/bindings/arm/arm,scmi.txt      |   2 +-
>  .../devicetree/bindings/arm/arm,scpi.txt      |   2 +-
>  .../arm/marvell/ap80x-system-controller.txt   |   2 +-
>  .../arm/marvell/cp110-system-controller.txt   |   2 +-
>  .../bindings/cpufreq/cpufreq-dt.txt           |   3 +-
>  .../bindings/cpufreq/cpufreq-mediatek.txt     |   4 +-
>  .../devicetree/bindings/hwmon/gpio-fan.txt    |   3 +-
>  .../devicetree/bindings/hwmon/lm90.txt        |   4 +-
>  .../thermal/allwinner,sun8i-a83t-ths.yaml     |   2 +-
>  .../bindings/thermal/amazon,al-thermal.txt    |   2 +-
>  .../bindings/thermal/brcm,avs-ro-thermal.yaml |   2 +-
>  .../bindings/thermal/brcm,bcm2835-thermal.txt |   2 +-
>  .../bindings/thermal/hisilicon-thermal.txt    |   2 +-
>  .../bindings/thermal/max77620_thermal.txt     |   6 +-
>  .../bindings/thermal/mediatek-thermal.txt     |   2 +-
>  .../thermal/nvidia,tegra124-soctherm.txt      |  10 +-
>  .../thermal/nvidia,tegra186-bpmp-thermal.txt  |   2 +-
>  .../bindings/thermal/qcom-spmi-temp-alarm.txt |   2 +-
>  .../bindings/thermal/rockchip-thermal.txt     |   2 +-
>  .../bindings/thermal/tango-thermal.txt        |   2 +-
>  .../bindings/thermal/thermal-generic-adc.txt  |   2 +-
>  .../devicetree/bindings/thermal/thermal.txt   | 586 ------------------
>  .../bindings/thermal/uniphier-thermal.txt     |   2 +-
>  23 files changed, 33 insertions(+), 615 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/thermal/thermal.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
