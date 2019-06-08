Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C16539FD2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 15:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5IPWGcX7OEvODscaPKJJBOk4wgjCO00YKNH8SGQ9r8=; b=bIO89RjaWlj2P5
	wu3Ne0Zp5ldB5DxazOlOL3kRMxYtJEmlOSio6bkQpjGQzRcWq1yn4+tSJxSel4+1sDUTkpPTWpCik
	o9hWKzSl4dqNKBqEaUu+dgB6/VSUG9LU8+sjnhKfdr4URTk9+YraTfrE/7R5o5b+rWmHoJii+6O92
	XtAKp3x5VP6G5PFNNpX0I74R3/YLdfikEljTwXiHj/h8XOfLYsP08ghJz7+lHdpfEyfxW1XrRg3Kg
	WR4UFuk0jAD/5k8fN5EAIFpzOithLQNRIBxkPdwQkQZzFFQ4hVuLurAUVFH8a/s/i38p07XmHEctf
	sdOWU8AYj6W4jz6YQd5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZb1y-0002FB-5Z; Sat, 08 Jun 2019 13:05:10 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZb1j-0002ED-8B
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 13:04:56 +0000
Received: by mail-pg1-x543.google.com with SMTP id v11so2599549pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Jun 2019 06:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=T8Ya1o7hhHocdfUGkwSQa9Us1KpqtbBriW+VXdzuGQk=;
 b=YkK7jUNgGVVkZQu6CN2ro5kXiPOm55Koi65N+e63Nk1jeQHuB9FrgTxkFWU06/7kZ6
 rIFzAkGp/7pjO4FUbWrQmw6gnsKiLLk9kpFDOlwSblEcEZbQObVJGuO/EUFBMmfHpyJ1
 p3ZOEo4IGa9jac2tpr6iWIEemUI4K6X953EiM9qbEA6yV2y3TNmMzX7jVnFp08r37mYN
 K7/iza1lowAnvxxiM8Ygy1tqbznI3VtKBd2+zUrjzAp9kRKnlPm5vQ6lG5A8XtJiywvR
 WpVa2LrShvhacagMlJwhyR73FQuMRjB8svBHXIyTYhnoxwsJTTmQ2RjdEb7hXkghSilu
 CasA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=T8Ya1o7hhHocdfUGkwSQa9Us1KpqtbBriW+VXdzuGQk=;
 b=tYb2JW8wr5ParMtf3t/U2J/BneJyjJ1dtkdaXIqp/W2tWzrmPkLDs7sd+VcYINegXK
 SSoTKMlFsNBeqfGpf6d4OpW7qjk4IzQaXprFF0csPqO31LNFFzsg9JHJ/bu1Ix1fVklF
 oYIyf5/UWR8cN+4HQv4rSdfNRGbCh+IHxemZa5PjV+HbcQ+nfderU/jAb2gGuR1SJhwb
 Sw38pq0WNxKg8nCCIVpv3TyJpFKTFeFYB4Cg52QHd5rR94hADkN7U9AsWXis5F7wTwAq
 H+6vbpPidRpPX8S7rfIKJkVSw8MSMP40U6U2UzJaUNes0Geuge4Ty467gKJRHSV6kiLr
 xmYg==
X-Gm-Message-State: APjAAAXHFiC1i5wM+/Nmh6KonnF9Lzo5nKTd3xOfsRI7FNDHfdS7LGt1
 vfDyoq6UvBOIcBHUMv34ywU=
X-Google-Smtp-Source: APXvYqzaSSwafnMqzsoKd0z9DI5JL4+Rdt6pOO14OK6m1H70Ndr0j/nT4mOEqzMp2/NOC7C37xtK0A==
X-Received: by 2002:a62:7d13:: with SMTP id y19mr6104431pfc.62.1559999094113; 
 Sat, 08 Jun 2019 06:04:54 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id q125sm8246038pfq.62.2019.06.08.06.04.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 06:04:53 -0700 (PDT)
Date: Sat, 8 Jun 2019 06:04:52 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V4 RESEND 1/3] dt-bindings: watchdog: move i.MX system
 controller watchdog binding to SCU
Message-ID: <20190608130452.GA22130@roeck-us.net>
References: <20190527070317.16904-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527070317.16904-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_060455_306392_079EF7D4 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, ulf.hansson@linaro.org,
 linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, peng.fan@nxp.com, daniel.baluta@nxp.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, wim@linux-watchdog.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 03:03:15PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> i.MX system controller watchdog depends on SCU driver to support
> interrupt function, so it needs to be subnode of SCU node in DT,
> binding doc should be moved to fsl,scu.txt as well.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> No changes, just rebase the patch to top of linux-next.
> ---
>  .../devicetree/bindings/arm/freescale/fsl,scu.txt  | 15 ++++++++++++++
>  .../bindings/watchdog/fsl-imx-sc-wdt.txt           | 24 ----------------------
>  2 files changed, 15 insertions(+), 24 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt
> 
> diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> index f378922..a575e42 100644
> --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> @@ -145,6 +145,16 @@ Optional Child nodes:
>  - Data cells of ocotp:
>    Detailed bindings are described in bindings/nvmem/nvmem.txt
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
> +
>  Example (imx8qxp):
>  -------------
>  aliases {
> @@ -207,6 +217,11 @@ firmware {
>  		rtc: rtc {
>  			compatible = "fsl,imx8qxp-sc-rtc";
>  		};
> +
> +		watchdog {
> +			compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
> +			timeout-sec = <60>;
> +		};
>  	};
>  };
>  
> diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt b/Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt
> deleted file mode 100644
> index 02b87e9..0000000
> --- a/Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -* Freescale i.MX System Controller Watchdog
> -
> -i.MX system controller watchdog is for i.MX SoCs with system controller inside,
> -the watchdog is managed by system controller, users can ONLY communicate with
> -system controller from secure mode for watchdog operations, so Linux i.MX system
> -controller watchdog driver will call ARM SMC API and trap into ARM-Trusted-Firmware
> -for watchdog operations, ARM-Trusted-Firmware is running at secure EL3 mode and
> -it will request system controller to execute the watchdog operation passed from
> -Linux kernel.
> -
> -Required properties:
> -- compatible:	Should be :
> -		"fsl,imx8qxp-sc-wdt"
> -		followed by "fsl,imx-sc-wdt";
> -
> -Optional properties:
> -- timeout-sec : Contains the watchdog timeout in seconds.
> -
> -Examples:
> -
> -watchdog {
> -	compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
> -	timeout-sec = <60>;
> -};

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
