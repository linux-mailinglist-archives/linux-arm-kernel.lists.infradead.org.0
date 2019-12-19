Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2906612716E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:26:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTQUOQjYsAs7Q8i87TVwctMOP5OkuThBhKdjYSjX0xk=; b=ivQ0q0oC5Wtzk2
	AOky7UEb9P3nANxwxcnHEYwVIWWDprU/68QuQxk4e8RX0wnRDpMpifZb0U1a1apiFfuql7iPxURe9
	YiAsnvud7v/DJwuinDDqP1HgdE1mGYt344F7vWWijvPFEgg/GGfQ8xJmxq1IOTo3+D/g1mlfJdh7b
	k6js+3vBFTyRrxn8HBYHs/IRgZYaGJmCm0GBoilcg+knapNIOncO4wmZrQEiX6wnOlkJgK1K9oPjM
	BMqJFqphCagemLiT5fphlzRZVRO4xVYXLOBGdVhxOhevpVQzalq9R/UJKGrftnprm5y/ROo2p2tYG
	bJ5W9I5VfsGtPelBeBVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5Bg-0002rz-Hh; Thu, 19 Dec 2019 23:26:32 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5BS-0002r3-M4
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 23:26:23 +0000
Received: by mail-ot1-f65.google.com with SMTP id r27so9292188otc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 15:26:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nV+BwOwkoFNGnADPXtyiIrKryTMNdw3bUGpG/MrLtkc=;
 b=nacu9kFXe1eNhPJiodciEPrlv7fJQNGg7FMY/5LPS1adDPvtgjNUDICpCNhcJy+PIG
 5K93ATdSFqpz9x9WIsqpt1wObvOHk7CcKKgTFrsFYd2lzKbjuZsuFMF1dbvONCaA9SOA
 ghu69B08rKwLlkfd2nq6UYc86Y4BSz+JbU+vbZAfzN3si8MCag0Ue0F4u7ULzZRLljlk
 qVCJjd332ZxH5T21NKAUWe2xySQYXU+6dXZJXGSuuQVnXZSSFrdHGERBBnhRzllVHAFy
 PCHg/OOub0jCMqBumTBFVFk/82I/IyW1Hi+3OXuBgeCe3LEzNrkz0sFLMXY5ZAxehAfm
 QCpA==
X-Gm-Message-State: APjAAAXTmj6+qeQt8ILvwrxlDBRVjVShmHl0nuOzeEObJxAm5B3stddL
 AGO6eZP3M1hvoudExmN/ZA==
X-Google-Smtp-Source: APXvYqyMhydbGXWleaUiT/A93Xl/Z8gTg2Yqzd9flb8AyBp7uQbaXRQClmqLEnXRycV5GvBQ1gQAAQ==
X-Received: by 2002:a05:6830:9:: with SMTP id c9mr11785841otp.94.1576797977761; 
 Thu, 19 Dec 2019 15:26:17 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id 4sm2752337otu.0.2019.12.19.15.26.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:26:17 -0800 (PST)
Date: Thu, 19 Dec 2019 17:26:15 -0600
From: Rob Herring <robh@kernel.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 1/3] dt-bindings: watchdog: Convert QCOM watchdog timer
 bindings to YAML
Message-ID: <20191219232615.GA22811@bogus>
References: <cover.1576211720.git.saiprakash.ranjan@codeaurora.org>
 <0b095b65496073a2ddf9de120f7809619b42cd1c.1576211720.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0b095b65496073a2ddf9de120f7809619b42cd1c.1576211720.git.saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_152621_179216_78E07864 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Fri, Dec 13, 2019 at 10:23:18AM +0530, Sai Prakash Ranjan wrote:
> Convert QCOM watchdog timer bindings to DT schema format using
> json-schema.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  .../devicetree/bindings/watchdog/qcom-wdt.txt | 28 -----------
>  .../bindings/watchdog/qcom-wdt.yaml           | 47 +++++++++++++++++++
>  2 files changed, 47 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/qcom-wdt.txt
>  create mode 100644 Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml


> diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> new file mode 100644
> index 000000000000..4a42f4261322
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/watchdog/qcom-wdt.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Qualcomm Krait Processor Sub-system (KPSS) Watchdog timer
> +
> +maintainers:
> +  - Andy Gross <agross@kernel.org>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: qcom,kpss-timer
> +      - const: qcom,kpss-wdt
> +      - const: qcom,kpss-wdt-apq8064
> +      - const: qcom,kpss-wdt-ipq4019
> +      - const: qcom,kpss-wdt-ipq8064
> +      - const: qcom,kpss-wdt-msm8960
> +      - const: qcom,scss-timer

An 'enum' is better than oneOf+const.

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  timeout-sec:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Contains the watchdog timeout in seconds. If unset, the
> +      default timeout is 30 seconds.

Include watchdog.yaml and don't redefine this.

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +examples:
> +  - |
> +    watchdog@208a038 {
> +      compatible = "qcom,kpss-wdt-ipq8064";
> +      reg = <0x0208a038 0x40>;
> +      clocks = <&sleep_clk>;
> +      timeout-sec = <10>;
> +    };
> ---
> 
> I have added Andy as the maintainer here since the get_maintainer script
> showed him. If he is not happy, then I can change it to Bjorn probably and
> again if he is not happy ;-) then I will add myself or whoever they suggest.

Add yourself.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
