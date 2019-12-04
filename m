Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E86711259D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 09:43:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ok7TIk7J3SV30b9LioVkqakqczf93A59aPvZ2PWScUE=; b=qQoDUCCCPd/Llm
	n/f+84NMUz5rOfVn0wOVTdiVmEHK0un4EdyZmRxnZEEVUB2UL6QQcpdhxmuH6HziiXbh3Caawt8Sa
	B+EBRgH7YEXjueR/Fqh0Onz9wFiky2rLagOuOHqZuoUvWm4sEjaPdAMlGEZP4YOIvWbOmnYYMI4qW
	TSW9wOWUndkQZ29MgDYDbo4WUXwOZvszAncgdiecEjpXkQAZsBpLQ9GBIZyc/9N/bXyWjCtJiqgxK
	OpAeg4eWrhuGSpRiz/2CHK45Oc3kVrIICp5DZURnapMdYYmXOEwo8x6GJZGEgjD8wdyQicg/NW8YY
	E/e0DtqYdgarPydcl8fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQFw-0005XZ-Fk; Wed, 04 Dec 2019 08:43:32 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQFj-0005Wn-1B
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 08:43:20 +0000
Received: by mail-vs1-xe43.google.com with SMTP id x18so4337056vsq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 00:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+SZ9v7OkVrvJ6QaeG0oUf8yqDKkUw0TZlHMsxgTeAUg=;
 b=ozY/oy0LhPGAUReBjMed9tUWjdzGs68C98eMHleym7NGLw8mo6pEaKKTLUZRQlU3wM
 +2W9d3lE1B7K/VuDG4b06EE35ZprZsnEbnH+7MJU3sX1xgP1UBM9zxaVXY+3tyipy47e
 05R1f3cM8PLGhyXRKl9aPrapV8tcWSrLv8spXMyuXDx3rRb/UP2b9Qon7i2pDqAFVMC7
 q1T3/mgZWgR6MSBodZk5NOE6AL2VT8wrgq+PvXEsS0QV++4L/IHPuWjvfkd9ZponSZsW
 b+cjKPBB8iCGMrq9wPVv9zEF5gccNe6DUV9D5QEGixoQ5b1JV7QSFwBdNxsVX1P/N6YA
 Kg0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+SZ9v7OkVrvJ6QaeG0oUf8yqDKkUw0TZlHMsxgTeAUg=;
 b=GRvvHb5IqxVbKZnrczpxWy2+H0UeULltUVPnY92U4V7r3RIyrTAv2qY6R/t+qix0Kb
 +t+icEyoUXs9LL6e5aI9Vi7COY9XSNBnMr6t/oTCwuaVsFjTUU1t0cj2zfuRkj6mDjFH
 BdZNAEUyV2bOcqO4BxphC/HU8T0MW5prBMwvTo5RUv2xPVhZEwdzrMDy9Tiu8L0k/vVc
 izn09FN8nHM1S73V02xgOrRcCCKzx046mWV+U0v15y/TIsnCedWJ1x5I0Wm5ygZrCem5
 izF50UBpaCHOq5jJHJxLTkiuQWHb8FY380EZy1NaWQ8F1UkFhuBEzGHd2yUliB3+VcA9
 JOkg==
X-Gm-Message-State: APjAAAXrRZlyj8CGMOtcHKEQEvViSuTUrcViSP0cGDvazCPpuL74oa8O
 zMD4ggDFckYj2A2J+FXU1218TYJERl85m7x46qX72Q==
X-Google-Smtp-Source: APXvYqx74HU73kauUE3SN4x1GqN1piIReRrm6swkZnGHfssEu+YGONU15Um7fno0NFMP5mtYDaI+4iR27mqk+Wu+ryU=
X-Received: by 2002:a67:f496:: with SMTP id o22mr879529vsn.9.1575448997829;
 Wed, 04 Dec 2019 00:43:17 -0800 (PST)
MIME-Version: 1.0
References: <20191030182132.25763-1-f.fainelli@gmail.com>
 <20191030182132.25763-5-f.fainelli@gmail.com>
In-Reply-To: <20191030182132.25763-5-f.fainelli@gmail.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Wed, 4 Dec 2019 14:13:06 +0530
Message-ID: <CAHLCerMCLDo90Lq2Pwb6OgPxzk=r1aR86BFEXm7hm=viaCPUXA@mail.gmail.com>
Subject: Re: [PATCH 4/6] thermal: brcmstb_thermal: Add 16nm process thermal
 parameters
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_004319_078719_8F7219ED 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 11:52 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> Match the 7216 compatible string in order to derive the correct 16nm
> process thermal parameters to obtain correct readings.
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  drivers/thermal/broadcom/brcmstb_thermal.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
> index 2ad4eeb79f9c..41d4a142707c 100644
> --- a/drivers/thermal/broadcom/brcmstb_thermal.c
> +++ b/drivers/thermal/broadcom/brcmstb_thermal.c
> @@ -283,12 +283,18 @@ static const struct thermal_zone_of_device_ops of_ops = {
>         .set_trips      = brcmstb_set_trips,
>  };
>
> +static const struct brcmstb_thermal_params brcmstb_16nm_params = {
> +       .offset = 457829,
> +       .mult   = 557,
> +};
> +
>  static const struct brcmstb_thermal_params brcmstb_28nm_params = {
>         .offset = 410040,
>         .mult   = 487,
>  };
>
>  static const struct of_device_id brcmstb_thermal_id_table[] = {
> +       { .compatible = "brcm,avs-tmon-bcm7216", .data = &brcmstb_16nm_params },
>         { .compatible = "brcm,avs-tmon", .data = &brcmstb_28nm_params },
>         {},
>  };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
