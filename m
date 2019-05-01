Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FC010DCB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:11:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6v5r8cjqlUU3bcTw+QOw9kFSBxJYsf1skoDYbAhv9vI=; b=UfZBf36aTPSs2q
	UAwjVXPAtsSCuC6FGZ9M9DE+PKhdHKBW0ysa1ZpQ1ZoF5J5mQIlzy+liW5eteeQVh/wAy9DoUg/vT
	9SFa+dWvFolPQxsVQYvj7Unas78Ud5x+WGtYNpG8BiC11U2ld/NLze3Sd3fozGmXKYl1dX8Rl91HQ
	iKD3ncIs5Vc7FG6JWbEC+Ee0CmMOgJMy5qxwf84NWZBTTlOk2AzTzgXVCSFs0uqz8WxzoVDVkzMgm
	35JQFoWc8wvt2fRgIfHKe04qHtzyUDBVmynpd2j+re4xZ0cyF07haVWgEOYdVfJb/p80RQZkdkyo6
	4kcLqWVu1AumfGpFTm8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLvZw-0006Av-UD; Wed, 01 May 2019 20:11:44 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvYS-0005yx-NV
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 20:10:20 +0000
Received: by mail-ot1-f65.google.com with SMTP id n15so105205ota.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 13:10:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Li1WCYAdhD2QkMcE4ruPAS6fhCxmScJLOyEkxKVVobU=;
 b=dSN/AjKuZXMH5/t4AjgjrgMBzD6FH5Q7o7AmOlje+GxfCCw8OWVZiUfDhqW0vBt8YK
 G9xqy4R9ndf1vJFds+tbyJ/T+peVgtYUe/JGi+8XJZF56ImtZSP6/b7bqMWl89nsJS8d
 GQChVUzyczg0ozXXC7ot7/PknqnPbs5Uv8ERJsxZ0G1pgv7i6ET9s+gB+gExkPwjWWn6
 CocOHa+H4PP4Q8CGKLlExSfs8tCqM4CqHVx1CnsdSjV9zhf4ltaWnYaeyB11bAiHhNGU
 QI/qc1Ke4UijCR+f8CMbwMkVTFc0fVgSUsdHb7UD/3ia+R12qhYd0Q41QC0UbwqXFUhg
 HBig==
X-Gm-Message-State: APjAAAXd6yNsRS0Sh746/7rYiu6lo9riCGsQAOUCB6qipcFifz26cFt5
 vXciShyr88P463J2VKFvdg==
X-Google-Smtp-Source: APXvYqyd/tRgzRRtNvYE+Ndpu5/eEiN+nwsOv+vpJslnGlpkbWEws5Vx8h9SHYzmsSInIENUj5oIxg==
X-Received: by 2002:a9d:61c6:: with SMTP id h6mr9873837otk.316.1556741411946; 
 Wed, 01 May 2019 13:10:11 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d78sm5529492oib.15.2019.05.01.13.10.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 13:10:11 -0700 (PDT)
Date: Wed, 1 May 2019 15:10:10 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V2 1/4] dt-bindings: fsl: scu: add watchdog binding
Message-ID: <20190501201010.GA7249@bogus>
References: <1556421727-7401-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556421727-7401-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_131015_969274_9ADDB2BD 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>, dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 28, 2019 at 03:27:00AM +0000, Anson Huang wrote:
> i.MX system controller watchdog has pretimeout function which
> depends on i.MX SCU driver, so watchdog DT node needs to be
> subnode of SCU, this patch adds i.MX system controller watchdog
> binding to SCU binding doc.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> New patch.
> ---
>  .../devicetree/bindings/arm/freescale/fsl,scu.txt         | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> index 5d7dbab..1b56557 100644
> --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> @@ -133,6 +133,16 @@ RTC bindings based on SCU Message Protocol
>  Required properties:
>  - compatible: should be "fsl,imx8qxp-sc-rtc";
>  
> +Watchdog bindings based on SCU Message Protocol
> +------------------------------------------------------------
> +
> +Required properties:
> +- compatible: should be:
> +              "fsl,imx8qxp-sc-wdt"
> +              followed by "fsl,imx-sc-wdt";
> +Optional properties:
> +- timeout-sec: contains the watchdog timeout in seconds.

This should be the time to reset the system, but the subject talks about 
the pre-timeout which I guess is just an interrupt. If it is pre-timeout 
you want add a new property and don't abuse the existing one.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
