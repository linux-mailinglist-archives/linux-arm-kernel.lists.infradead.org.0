Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 533A310FD42
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:07:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRblaPfwNOE+J2+o1ZyqDYXEsrPMNK1RPL49h/TJ/mY=; b=aT9TLRpyE6Cfi3
	TLRCL/r2iKLJ9tGrOyWOZHCrZwoI3sgd5oJzNqCSCstXUXQ2EOT9huCpoIkvYt0TUyi2mayWhnGZ/
	+K7Fih6/ze8bKd52Y7hOuOYEpKWKKxTJczl6IYxCAGfyRqOx9GJCQpW3QsRPHdrX2AJbpZq/5DhgJ
	pcOxOEPmD8uNA8cpJrYj9Pshy1tSqoPMbS6Do8BV7IHXUzMVClCuzk5sHXhAJ56U7lS0yCrnCq8qd
	FHQ+9eUapHL9ZH2WfhcyCo+bJOEEI4azoNFjbSYzkClYhG6V9uHzQo/Ru3vytTBcbLLgUGqkDmSnW
	7XrCRPA64Ro42CYdmFUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6y5-00060e-Jt; Tue, 03 Dec 2019 12:07:49 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6v8-0002NW-4P
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:04:48 +0000
Received: by mail-lf1-x142.google.com with SMTP id 203so2681869lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 04:04:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=41gz7Pr3bu95rsc2AmP+uk3DRv43sggDSJGl0PUK5A8=;
 b=vbIBHcDr/qXhhDiGkKQDs2V+qghI3vJUjWRJZh+QM0n7WjE7nswn5FuYePJCHdHzT2
 avY0Mreifj3ivibbFeMUjPiHT+tse5RWRK63vnjmUS+IAjcQYfzm2Xx8LcDAK7FAmJRK
 +yUPtu9k6n+mzGGTQF8ICWdPsQnKyju/t4JU96PqX2wlaY8qdTg4pn2QAJeK+icv1Lky
 lfOihAkVdTDKuyvGQSRNZbXxh/DH+GeYqf4cXJLUXlCglkncka1j6IrhzSORGoPely9n
 b+4NVU8DzzaWt+bB8B1RFgwqtyAi3FMrobRFKfA05P2euNq7kzqUr+nm7yEpv8HcnxE1
 NJDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=41gz7Pr3bu95rsc2AmP+uk3DRv43sggDSJGl0PUK5A8=;
 b=OTbtzVslpXDMdI8N/wFpLRgfmuBC9ZcjNIc3aZFux9+/WWvgvHlARqFhvpPf9skZ1D
 +CfRrbiE8m1i0aVTH08DuOMBNUVjo9Pv8tqsJhqbt8pmjQhT9+5tdrt+ZLQ9JmFOouWn
 JaWXX4JVaW81sCa3awZebYF//yBCkY87f0Pnl6c4qJ+KcXlFc7eXm3LOnSk1OMw1msmV
 tW7MK/lem7JR7kZFR9L2A/DRtTBZgrl1SxsRbrgSOQueOcc0A8qfghI3XkPxs3BGloUt
 aPEqQGsGITYTtSTp+oVxbvYuFWEthsZvqzZFThHZGhtOFbNjA1mzY+DmCq6c0r7fjsLG
 A6LQ==
X-Gm-Message-State: APjAAAVhzrcFVYD3GwKdbPWaXyudToqRXJYboNmYm2Y7BOipdkoAzyH7
 n5Cxre4tnmTZMV7Hw25sfCrjmr8Mv7lYSTzUnGk=
X-Google-Smtp-Source: APXvYqzfZ00PJpD/WaW2YVAH/ohfpVaLwioqHtBL+vwNMKZqqB4MnjZ7lOePHAJd+K2wIAXl/jgDkhuvxG7sGPwy6Sc=
X-Received: by 2002:ac2:4119:: with SMTP id b25mr2532251lfi.90.1575374683194; 
 Tue, 03 Dec 2019 04:04:43 -0800 (PST)
MIME-Version: 1.0
References: <08794fde-cdd0-287c-62bf-e2e3b8c80686@gmail.com>
 <20191203101509.wte47aad5k4mqu2y@pengutronix.de>
In-Reply-To: <20191203101509.wte47aad5k4mqu2y@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 3 Dec 2019 09:04:58 -0300
Message-ID: <CAOMZO5Cn993y9VeFN6hPO3-cfNnUKiuFd_rqAZ8htz=dO6t6ig@mail.gmail.com>
Subject: Re: Issue with imx_get_temp()
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040446_262345_769A45B9 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Igor Plyatov <plyatov@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marco,

On Tue, Dec 3, 2019 at 7:15 AM Marco Felsch <m.felsch@pengutronix.de> wrote:

> Mh.. it seems that the irq gets enabled before a irq-handler is
> registered. As your backlog shows the thermal_zone_device_register()
> triggers a imx_get_temp() and during boot the irq_enabled is false and
> it seems that your temperature is below the alarm_temp. So in such a
> case the enable_irq() is executed. I don't know what happens if we
> enable a irq without a irq-handler.

I think your analysis makes sense.

Should we move the ' data->irq_enabled = true' just prior to calling
thermal_zone_device_register()?

--- a/drivers/thermal/imx_thermal.c
+++ b/drivers/thermal/imx_thermal.c
@@ -803,6 +803,7 @@ static int imx_thermal_probe(struct platform_device *pdev)
                goto legacy_cleanup;
        }

+       data->irq_enabled = true;
        data->tz = thermal_zone_device_register("imx_thermal_zone",
                                                IMX_TRIP_NUM,
                                                BIT(IMX_TRIP_PASSIVE), data,
@@ -837,7 +838,6 @@ static int imx_thermal_probe(struct platform_device *pdev)
        regmap_write(map, data->socdata->sensor_ctrl + REG_SET,
                     data->socdata->measure_temp_mask);

-       data->irq_enabled = true;
        data->mode = THERMAL_DEVICE_ENABLED;

        ret = devm_request_threaded_irq(&pdev->dev, data->irq,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
