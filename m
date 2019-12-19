Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 474FB127173
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:29:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/wjhsywhlfnjSg3DVQqlWVZKEFm7gkuEMnrnIPzvfbM=; b=GDRc8sq2/ZhHqZ
	sOVJOsThBaysPrL2mI53ODbLe32exhpGwda4XhO7ipNhgnU/IPeYWGVvHU4jhCCNHJPzJTgWWuAzq
	aNmkMHBkGWa6wYeSLDN4Va6iVlyNKZTDKojayMS4MhqWcfkQ983cq08nwcuJ4Yok09Qm84DfQp+Uu
	mRSNUh2or2qRyCGx7zpROLex0wkWOx8g1Wc6hd5f6SPXQVqE9YkoZxWSkadqgmDBorjxybT/Lwjoc
	4QpeC0ewls/Ht+/cq4U+kFwgqIWLUOVTIOJXIu/EZuUlve4p3wR7XeRVfP9nA0v/8EOigU9bNo8lV
	f8PrVWIiEGY4aocjRuNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5E9-0003FO-RR; Thu, 19 Dec 2019 23:29:05 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5Dy-0003Er-Hw
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 23:28:55 +0000
Received: by mail-ot1-f65.google.com with SMTP id 59so9286711otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 15:28:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dZc4CLv8kZIr/vJ/6M0jIfH8aJfjaIHQ9haPA3itFeA=;
 b=Fj5nQmepYPVhPVVxuvT338sGmmBY4uRC9lkj9vFz3CvcnvTuHhxikJaWYOW4F3aAxX
 ty2L1G/XhnCswrX3JTb3Viz5fER5DYO338S2z0/a29zLtBzOWoXNW9zKw3OCEgUwwx1N
 9IYA3+kyZbBex1/F5Wx1a0e3vUFK+RPqiiQt73TFSL2YmaMzC0fRtyGbCXxSSXoS8Ys3
 0GjT8SIb57aUqbGwXfX3dYNtNZKgoVpolIBTOGi3yogtwpIZvTNRdaYjEcAVd+y1bpdc
 BB6HCbaxwuS2uP47eMs81SVw5yM7A2Lta/Ib+rJwhq4ZYxR4q/EuPwls+B38Y6IEiQdm
 pXGA==
X-Gm-Message-State: APjAAAVWiUwu/OnN0mKYEN3VkOeVY4a++9E9OZEFvKaadTk4Pd/fsyNX
 +dawBiLflHvqLG6USXZi2g==
X-Google-Smtp-Source: APXvYqz3vydD7qxl9vmrh9gJ7OwGh6nFWh3nanGC5T8eoWxhRvI9WO7VGvCC5pB/6mq8ImkuJ3zjFQ==
X-Received: by 2002:a9d:7552:: with SMTP id b18mr10985654otl.20.1576798133884; 
 Thu, 19 Dec 2019 15:28:53 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id 97sm2696476otx.29.2019.12.19.15.28.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:28:52 -0800 (PST)
Date: Thu, 19 Dec 2019 17:28:51 -0600
From: Rob Herring <robh@kernel.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 2/3] dt-bindings: watchdog: Add compatible for QCS404,
 SC7180, SDM845, SM8150
Message-ID: <20191219232842.GB22811@bogus>
References: <cover.1576211720.git.saiprakash.ranjan@codeaurora.org>
 <3f871ae3818b46423430074689e33bc34b28aa1c.1576211720.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3f871ae3818b46423430074689e33bc34b28aa1c.1576211720.git.saiprakash.ranjan@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_152854_594067_9189F967 
X-CRM114-Status: GOOD (  15.19  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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

On Fri, Dec 13, 2019 at 10:23:19AM +0530, Sai Prakash Ranjan wrote:
> Add missing compatible for watchdog timer on QCS404,
> SC7180, SDM845 and SM8150 SoCs.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  .../devicetree/bindings/watchdog/qcom-wdt.yaml       | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> index 4a42f4261322..ec25ce1c9e2e 100644
> --- a/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/qcom-wdt.yaml
> @@ -12,6 +12,18 @@ maintainers:
>  properties:
>    compatible:
>      oneOf:
> +      - items:
> +          - const: qcom,apss-wdt-sc7180
> +          - const: qcom,kpss-wdt
> +      - items:
> +          - const: qcom,apss-wdt-sdm845
> +          - const: qcom,kpss-wdt
> +      - items:
> +          - const: qcom,apss-wdt-sm8150
> +          - const: qcom,kpss-wdt
> +      - items:
> +          - const: qcom,apss-wdt-qcs404
> +          - const: qcom,kpss-wdt

This can be one entry:

- items:
    - enum:
        - ...
    - const: qcom,kpss-wdt

>        - const: qcom,kpss-timer
>        - const: qcom,kpss-wdt
>        - const: qcom,kpss-wdt-apq8064
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
