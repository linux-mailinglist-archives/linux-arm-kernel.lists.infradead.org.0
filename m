Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A05F39A3A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 05:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrMbWedtX4a6PqkFdyHbP9I9+Qxc1lMh/Ia7DaHcVk4=; b=eVuHKmZMm9HwLy
	DyQkkYJu+QQQe4Hk25sFiinbMpQ3WeQzjv78zsB/FdHjQnVUyb4UTsmC0DzTlIbNBTb/4y6Y87k6m
	DH/e9ftGrlXGwQfwIG1J/PZkiDW4r393Bxa/+Y33y7PV3LFDgwnSjUCcibiJXxbU7onIpHH2+VYbg
	ofk+ooAzxQvSgreZXrhDnfmWqezldfdjQRgnZHIv7zMa4bTXjWgP+PW9ksBm2DVPtRb/v0E9tRMgy
	cEdWpYOBqHR1nJaz47erYYobkIW9OSy1NuI2hEcy+m8eY3YjjTtVL62Jd88fEGzgNZfJ8VnWlYZUS
	OW2+1pmJaGZyBT83OQpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZRzy-0007WD-9N; Sat, 08 Jun 2019 03:26:30 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZRzq-0007VK-G6
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 03:26:23 +0000
Received: by mail-pg1-x541.google.com with SMTP id 196so2119173pgc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 20:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=85fGZyxeIESYVExgLJEz9zbguq3QsyqJkOP+evG9ReA=;
 b=jq1gW6sZNN9W+SZw8GIqmtfSCoc/FhohIUENUFTOmro4SJs00F/gjtrry7bYU3QGK/
 RzmFcbJ978ADB0K3ymaWhxsOYZN6XAiPsG2w4jkhk+kSSNh0D6ewYD581T+ZLHmh1Jbn
 uHfjB5qGiRmr9/xjonUtDPMDWXlsLlQ2hhNKVIE9/NXcF825nnv6hnBLjgJX7HlXWc5G
 t0RVTpcQsfe1liymwWfcbFzVnjI46JhcZxKFOVqqAOcXN4fJMHLvWXwlKRS0Tb36vWnH
 NVA6r++ey7swlBljZo4T7+NSK28k9zJeLH8kCd356ZGymiO+wHbjNfzL08TWwowERqUy
 VHAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=85fGZyxeIESYVExgLJEz9zbguq3QsyqJkOP+evG9ReA=;
 b=Xdi8VyLm4PfpSeepH5tePTBlJURy+oWPAcuKr33p9L3p+Bt7suVZRzYpJJlHOqQB+d
 m5Pka96rlZWBHo8Gs2qYl/4HhJvUb8axr9nQd0jNsg6KReYXl5THdH0fjXqiVVtlld6u
 ygvWklyhNUV4C5EsxyKUNyzoNQAK6R1b7GOTOALka2ouen/Rdh9IOnau8ew3plA6N72u
 EJPc0eEhTHAeAwcN23KYYyKO46APn5d0UMz2j9eypqelRlLsCWzH6BUkH5fGqL0CQ7tL
 6d4dUHdOBG8DzXqBaaoMnyM+QxX61zlM0ASCSVLj5EuQXyY0Vp7P5lHC1+VRmT97jMHI
 rrGA==
X-Gm-Message-State: APjAAAXdCYMr5w18gjF0bt5ismVEk90diaxeTn0VvLkkV6pWlBFjIwQM
 33PMi3vCh5wWIAr3uNxxtRUPzw==
X-Google-Smtp-Source: APXvYqxE0z2KpZOn+l9dr6k9neNYGoDZ2dl92CSG/dDZ8h4Ozz7buZcUC4AmV1m+V8ZqSGKMWx2LPg==
X-Received: by 2002:a63:490b:: with SMTP id w11mr4312263pga.127.1559964377447; 
 Fri, 07 Jun 2019 20:26:17 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 124sm430653pfd.63.2019.06.07.20.26.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 20:26:16 -0700 (PDT)
Date: Fri, 7 Jun 2019 20:26:13 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH 1/6] pinctrl: qcom: Add ipq6018 pinctrl driver
Message-ID: <20190608032613.GC24059@builder>
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <1559754961-26783-2-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559754961-26783-2-git-send-email-sricharan@codeaurora.org>
User-Agent: Mutt/1.10.0 (2018-05-17)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_202622_540455_ACBBB83C 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, sboyd@codeaurora.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 05 Jun 10:15 PDT 2019, Sricharan R wrote:

> Add initial pinctrl driver to support pin configuration with
> pinctrl framework for ipq6018.
> 
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> Signed-off-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
> Signed-off-by: speriaka <speriaka@codeaurora.org>

These should start with the author, then followed by each person that
handled the patch on its way to the list - so your name should probably
be last.  If you have more than one author add Co-developed-by, in
addition to the Signed-off-by.

And please spell our speriaka's first and last name.

[..]
> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.txt
[..]
> +- #gpio-cells:
> +	Usage: required
> +	Value type: <u32>
> +	Definition: must be 2. Specifying the pin number and flags, as defined
> +		    in <dt-bindings/gpio/gpio.h>

You're missing the required "gpio-ranges" property.

> +
[..]
> +- function:
> +	Usage: required
> +	Value type: <string>
> +	Definition: Specify the alternative function to be configured for the
> +		    specified pins. Functions are only valid for gpio pins.
> +		    Valid values are:
> +	adsp_ext, alsp_int, atest_bbrx0, atest_bbrx1, atest_char, atest_char0,

Please indent these.

[..]

The rest should be in a separate patch from the binding.

> diff --git a/drivers/pinctrl/qcom/Kconfig b/drivers/pinctrl/qcom/Kconfig
[..]
> +enum ipq6018_functions {
[..]
> +	msm_mux_NA,

I like when these are sorted, and if you make the last entry msm_mux__
the msm_pingroup array becomes easier to read.

> +};
[..]
> +static const struct msm_function ipq6018_functions[] = {
[..]
> +	FUNCTION(gcc_tlmm),

As above, please sort these.

> +};
> +
> +static const struct msm_pingroup ipq6018_groups[] = {
> +	PINGROUP(0, qpic_pad, wci20, qdss_traceclk_b, NA, burn0, NA, NA, NA,
> +		 NA),

Please ignore the 80-char and skip the line breaks.

> +	PINGROUP(1, qpic_pad, mac12, qdss_tracectl_b, NA, burn1, NA, NA, NA,
> +		 NA),
> +	PINGROUP(2, qpic_pad, wci20, qdss_tracedata_b, NA, NA, NA, NA, NA, NA),
> +	PINGROUP(3, qpic_pad, mac01, qdss_tracedata_b, NA, NA, NA, NA, NA, NA),
> +	PINGROUP(4, qpic_pad, mac01, qdss_tracedata_b, NA, NA, NA, NA, NA, NA),
> +	PINGROUP(5, qpic_pad4, mac21, qdss_tracedata_b, NA, NA, NA, NA, NA, NA),

Is there a reason to keep qpic_padN as separate functions from qpic_pad?

[..]
> +static struct platform_driver ipq6018_pinctrl_driver = {
> +	.driver = {
> +		.name = "ipq6018-pinctrl",
> +		.owner = THIS_MODULE,

.owner is populated automagically by platform_driver_register, so please
omit this.

> +		.of_match_table = ipq6018_pinctrl_of_match,
> +	},
> +	.probe = ipq6018_pinctrl_probe,
> +	.remove = msm_pinctrl_remove,
> +};

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
