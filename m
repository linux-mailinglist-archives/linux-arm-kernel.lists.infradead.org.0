Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C661114FB7D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 05:43:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:From:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYuvA4ZZfKz3JQ0+aq0QHZL36n2R5OVkR62g6rB08Ek=; b=e7SUnv+7d+cIbh
	QUPrjShaCH6lqgdT7XXORQ1YbWTNEybQ/JvnbEqlNIV71b2nV9PpEVWEtegwdkWD9EcLsoPKP4j+X
	eV91uP0dcbQSjlsUq58ahpgK9tUsNjOSyXjoi0b+yz0SryAS4WD6iB0E+czkNHHKvA4RMNDsXDXnn
	8P4sHbZ7oPtuMIscNW3z3FGs97/NMyw3V7YQNlsYuhtLVMnBrh11ieT3Cc89VCe01xi+k8VSuk/DU
	Be6oJf7sms4esv3gMoKmMhE6gEY0c+S/9QnecLlM5cgjEp6MPLjs6nok3EgCuEgJhpS+R5Pjpn/uU
	qXQDDR4gUTBZgYofqTBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iy76L-00006H-Kd; Sun, 02 Feb 2020 04:43:17 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iy76G-00005G-3d
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 04:43:13 +0000
Received: by mail-pl1-x629.google.com with SMTP id e8so1849727plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 01 Feb 2020 20:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:from:subject:to:cc:user-agent:date;
 bh=WVYttVnSjhlDMR2gVja4CMRjqdc6hYD+bYx+dfA+kjA=;
 b=GdZbQ2ee09Zy+6IaQ8V2DWdqd1AQreSrjhMPEJd35jiz2k8OxaN4ljeBLU8fQuGHxK
 IJDPkykmOkL7wT66wQsI6n/3uHumV5ZW0DtIQa0swlmLB1zoZab6S746WzH0XV6uPJVx
 D1fhGZQtOTcyeTAnFj+RfEv3E/a6pehVTN2NM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:from:subject:to:cc
 :user-agent:date;
 bh=WVYttVnSjhlDMR2gVja4CMRjqdc6hYD+bYx+dfA+kjA=;
 b=NE5LDgaQVOIGyMsuSQjj7fkZjGDpFx/7ryZHFRoh+YIVUg6PMT4TcZy+M7phpoxFUe
 8t5w8C7+kGci/zCqf1RSKijEP1n4C8EVkBHvO7PRUIOE3U0+/KhmWV4SYgyin9zBV+6R
 7eX1s57AarQecpFj42gAa/S77NgF3xvCjgqWqJMWaNrAyuUHwL0jG/3RXtmXj40Rb8M/
 gtBf6UOgEMq/usqfNQt6TT97xDA4MdB6JKhg6UJdDbxv07JnElapJPUUvzqoLGIoaiPb
 iHcdxzrFMj3cAK3jYYX/nMChlzSynUXLnGvzjv+Bvmcl0cGML4f9yLGFk+DUpmbih3E0
 bS9w==
X-Gm-Message-State: APjAAAV2tPAnyEP4c6V6HuZVZljndaQlVYDBKTDlJeaS5JH2f9+UMkp/
 C5f5pZ75TR7ftHHwxJcst04YHw==
X-Google-Smtp-Source: APXvYqwE1x9wfemYAznSfOFcQB/dTrqmq3F5ol77Z/XC3KlmQ+tkCkE9qZ2lFR0WuNyX7+LykqGJVw==
X-Received: by 2002:a17:902:7d86:: with SMTP id
 a6mr17891671plm.212.1580618591163; 
 Sat, 01 Feb 2020 20:43:11 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id e17sm16176605pfm.12.2020.02.01.20.43.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 01 Feb 2020 20:43:10 -0800 (PST)
Message-ID: <5e36535e.1c69fb81.510f6.ba36@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <2edca4b54ee6b33493e0427c17de983d3ce3012f.1580570160.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1580570160.git.saiprakash.ranjan@codeaurora.org>
 <2edca4b54ee6b33493e0427c17de983d3ce3012f.1580570160.git.saiprakash.ranjan@codeaurora.org>
From: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCHv2 1/2] dt-bindings: watchdog: Convert QCOM watchdog timer
 bindings to YAML
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 devicetree@vger.kernel.org
User-Agent: alot/0.8.1
Date: Sat, 01 Feb 2020 20:43:09 -0800
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_204312_149597_E345121D 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:629 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sai Prakash Ranjan (2020-02-01 07:29:48)
> diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> new file mode 100644
> index 000000000000..5448cc537a03
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/qcom-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Krait Processor Sub-system (KPSS) Watchdog timer
> +
> +maintainers:
> +  - Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> +
> +allOf:
> +  - $ref: watchdog.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,kpss-timer
> +      - qcom,kpss-wdt
> +      - qcom,kpss-wdt-apq8064
> +      - qcom,kpss-wdt-ipq4019
> +      - qcom,kpss-wdt-ipq8064
> +      - qcom,kpss-wdt-msm8960
> +      - qcom,scss-timer
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1

By the way, I would expect the watchdog to have an interrupt property.
Not sure why it isn't described in the existing binding.

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
