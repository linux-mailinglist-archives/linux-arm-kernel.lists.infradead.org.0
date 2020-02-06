Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0EF154D7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 21:48:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytQbWqC0BHCjQh/sfbj6+d1Md1kysKfvU4fLfeYNslA=; b=LSdmVVVroJ6e35
	2atWb7aCh15+1rFmWPQyGUsx5uo6Pqs0Xf+gNsjYpXc+zQ6Y3AWuhoFslfSRPAGeRcenxPO6m7b/S
	YEPS6biLDuZlN5+h+DGXiAErgz/Zm5owuTy+KOGI2HTR8IT3lpgUqFA/ClZjiL+Blz05rU2Fgb1XN
	xdfgiS3ybJCWeG2En8vYUM94aicZSw+YyWFzOrujihk3hRx1w7MZ59l0pOekDBlAm/22S94l4WaZ2
	e7+MbjEquI6WrYBYFYnW+T/j2t64S0a0ta8epn6GVsUt8OTTf3wJb1WMvAFwysnNXovLtWK7cfMAG
	2m8DvvQrQK2Px2rfTc2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izo47-0001Bk-3u; Thu, 06 Feb 2020 20:47:59 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izo2W-0008BF-Ap
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 20:46:21 +0000
Received: by mail-pf1-f193.google.com with SMTP id 4so42013pfz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 12:46:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OMFNCbQ2YO6A1Z0/9//8yj3l6sKmNNuU0vkSgP75wls=;
 b=PKHV3MeOeUaWFq2dtUuie8U0yF0mfOQP7RBCxsHZeBfafgL2iR2G+cwhV7DUEnm5JO
 QkPUBl7KqPjSddc5irQzaFyqMbkonMCmvst4tX8yaQYVhI40cJNuD0Dhvm0ZU7Yrh+u2
 +YNTaJBNNy56zVEYF1r/rtmtTAOKh625iGMWzVsM/FTTGr83rCwqsXTTFGTBAlJ9CtIC
 9TFUZ4WJoWtgrDuozTRqtaf/QV4hPbW0ASZmpO02YHVZOjhjmkEQ8aBg3PbvMGbihNqv
 kdhjTJmnlc8fxNA7p9tqDvDCgoyyqlvdK+H+EgTQ9WnL2EASUZYzrA53NPAmuQB5/nPC
 u50A==
X-Gm-Message-State: APjAAAVzQSt0ckprkKpB0xbYsFal4rfhWBE82qtHnaqcds/RG2rrKxgh
 sWBH2mz8VHE/Rz/nTyvpqA==
X-Google-Smtp-Source: APXvYqwH78fxlFILftQEY20o54bUm9mztPia+dIoyrhMNnALF+J3ZEFdR49H/rI11iwOjeJV6j3e4w==
X-Received: by 2002:aa7:86c2:: with SMTP id h2mr5915628pfo.45.1581021978524;
 Thu, 06 Feb 2020 12:46:18 -0800 (PST)
Received: from rob-hp-laptop (63-158-47-182.dia.static.qwest.net.
 [63.158.47.182])
 by smtp.gmail.com with ESMTPSA id w11sm292136pfn.4.2020.02.06.12.46.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 12:46:18 -0800 (PST)
Received: (nullmailer pid 9330 invoked by uid 1000);
 Thu, 06 Feb 2020 18:38:08 -0000
Date: Thu, 6 Feb 2020 18:38:08 +0000
From: Rob Herring <robh@kernel.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCHv2 2/2] dt-bindings: watchdog: Add compatible for QCS404,
 SC7180, SDM845, SM8150
Message-ID: <20200206183808.GA5019@bogus>
References: <cover.1580570160.git.saiprakash.ranjan@codeaurora.org>
 <ff71077aa09c489b2b072c6f5605dccb96f60051.1580570160.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ff71077aa09c489b2b072c6f5605dccb96f60051.1580570160.git.saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_124620_480481_5223F161 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Kaehlcke <mka@chromium.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 01, 2020 at 08:59:49PM +0530, Sai Prakash Ranjan wrote:
> Add missing compatible for watchdog timer on QCS404,
> SC7180, SDM845 and SM8150 SoCs.

That's not what the commit does. You are changing what's valid.

One string was valid, now 2 are required.

> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  .../bindings/watchdog/qcom-wdt.yaml           | 21 ++++++++++++-------
>  1 file changed, 13 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> index 5448cc537a03..7180c64f54fb 100644
> --- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> @@ -14,14 +14,19 @@ allOf:
>  
>  properties:
>    compatible:
> -    enum:
> -      - qcom,kpss-timer
> -      - qcom,kpss-wdt
> -      - qcom,kpss-wdt-apq8064
> -      - qcom,kpss-wdt-ipq4019
> -      - qcom,kpss-wdt-ipq8064
> -      - qcom,kpss-wdt-msm8960
> -      - qcom,scss-timer
> +    items:
> +      - enum:
> +          - qcom,apss-wdt-qcs404
> +          - qcom,apss-wdt-sc7180
> +          - qcom,apss-wdt-sdm845
> +          - qcom,apss-wdt-sm8150
> +          - qcom,kpss-timer
> +          - qcom,kpss-wdt-apq8064
> +          - qcom,kpss-wdt-ipq4019
> +          - qcom,kpss-wdt-ipq8064
> +          - qcom,kpss-wdt-msm8960
> +          - qcom,scss-timer
> +      - const: qcom,kpss-wdt
>  
>    reg:
>      maxItems: 1
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
