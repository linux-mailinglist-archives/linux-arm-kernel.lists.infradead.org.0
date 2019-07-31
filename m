Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E968D7C470
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 16:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeA5ua27yP60N4mgqeYeNTAtv4/er3aI/wD6fFs2flc=; b=s3AIItQXXy4DIC
	B9RTQFz6x2wDqjJ7DBwDu6AsM3IgST7Qmg5xwvrEYzKaxGVKY2wE9xJZ2KRZwte0XGVOfeimPaiMl
	0RrwRddPHoXNLNnYuEBcjAHfAW4hPv/0hPwtdmCqlpnpkroTI4x9UH0Kw4AC4G1Yk2GzgYUUoLVY6
	ndE3pJWquLLs8WNOTJzp9xaAWxV8q4IjvCZUSz/nv2DjLAYmDCV7EJIXSgULncq6Hr0lid0EFzJqk
	4yZqUtmNt8YsgyplvkGQZaK9j/gtfk8avfy/qbOC/buVzB61KU3iG4u0YZWgKMo70wmKlzA1tfzjF
	JYQQW+s7tqamQVOdmHrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hspJw-0003SD-UH; Wed, 31 Jul 2019 14:11:12 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hspJq-0003RF-9C
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 14:11:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id w9so1397369wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 07:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DaSfQVSBloP6ituQwd3gN2sNQYfvnC2s71RqutisBq0=;
 b=Pn45YGzOCoqVPj5ruMllJckodlhVBmgzWrH3x/e0USvGBmmg4/Ju4GVTO3/dRSpBTY
 576PmDDVUKYSxfaA1m94qhQ8UbmUNa4NfL1mXsG4Cq5I/yz4KkQozkzA+tTJ5oyrS9a5
 wahvQMETUJkBFk2+TS9+O3vcsd4sB1rUI5rgIBWJvS6kGoYyzNBRtoOh/brUuKjLVgqb
 lJkOws6k7U0nPUeGV0XD+Cc9eDsiWdIXbue+NdiSajyLETAOv5J2/b38B0MNu0VMg1ss
 pRO70fcoPMvX0eHH4aQKvcl9z9u4yPd3QOFBhz23Zxc8o6UX+WAxo7JKNb4ZvLBDrnWr
 m9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DaSfQVSBloP6ituQwd3gN2sNQYfvnC2s71RqutisBq0=;
 b=WvMk5KuvgAypiJ/LtCmMCY7DSfmhV2TP+PttpA0/2UPFVGXiO1sapqm58Rp38jJFyC
 iieFnLlA5yipiPGFDynGTE3813mQuCzDpOM3W6BBtRFuHSDk3rFoviGfvMm03plXwXhN
 mPt/E41uj8bxHX79GyMMmnnHG21+k8NxaGv8rnM0f16s9xOTpx/lfswmkKDuxodK++Cz
 1PsZYfAii4h2TWqqVFAkEUjkbrRh8kLqw72HDjktBPrFfm8CdUBKBQepEKgJ4VuS/OTS
 5dImLjYc+wvTxQKwVTdXQr86dDD8YRVucWW+MZBC1/y2by8m5/nchAeOClpDM+Ij7LHt
 MRmg==
X-Gm-Message-State: APjAAAV0MbbOdhyP9cLHcpkNlw43fixAd6UNK7IZ0wfqF7axVI62z0+/
 2fCFSo6235PKWrsXCX5pX5Hxqw==
X-Google-Smtp-Source: APXvYqw/pUX7GShISMzCbUQtESxSOCGVNvngtydQFUT3NN7ACbQtiRIRf1AbgIrVwpXKDn1FZaNSkQ==
X-Received: by 2002:a05:600c:34d:: with SMTP id
 u13mr85321496wmd.48.1564582262533; 
 Wed, 31 Jul 2019 07:11:02 -0700 (PDT)
Received: from [192.168.1.6] (19.red-176-86-136.dynamicip.rima-tde.net.
 [176.86.136.19])
 by smtp.gmail.com with ESMTPSA id a81sm71773684wmh.3.2019.07.31.07.11.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 07:11:01 -0700 (PDT)
Subject: Re: [PATCH v3 02/14] mbox: qcom: add APCS child device for QCS404
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-3-jorge.ramirez-ortiz@linaro.org>
 <20190711144424.GD7234@tuxbook-pro>
From: Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
Message-ID: <5111bc6e-4155-e99e-71b2-1aac3610b71e@linaro.org>
Date: Wed, 31 Jul 2019 16:10:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190711144424.GD7234@tuxbook-pro>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_071106_334910_E4D81D01 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, heiko@sntech.de, mturquette@baylibre.com,
 will.deacon@arm.com, david.brown@linaro.org, linux-clk@vger.kernel.org,
 jassisinghbrar@gmail.com, sibis@codeaurora.org, jagan@amarulasolutions.com,
 devicetree@vger.kernel.org, niklas.cassel@linaro.org, arnd@arndb.de,
 linux-arm-msm@vger.kernel.org, olof@lixom.net, robh+dt@kernel.org,
 horms+renesas@verge.net.au, linux-arm-kernel@lists.infradead.org,
 sboyd@kernel.org, linux-kernel@vger.kernel.org, amit.kucheria@linaro.org,
 vkoul@kernel.org, khasim.mohammed@linaro.org, enric.balletbo@collabora.com,
 georgi.djakov@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/11/19 16:44, Bjorn Andersson wrote:
> On Tue 25 Jun 09:47 PDT 2019, Jorge Ramirez-Ortiz wrote:
> 
>> There is clock controller functionality in the APCS hardware block of
>> qcs404 devices similar to msm8916.
>>
>> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
>> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
>> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
>> ---
>>  drivers/mailbox/qcom-apcs-ipc-mailbox.c | 18 ++++++++++--------
>>  1 file changed, 10 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/mailbox/qcom-apcs-ipc-mailbox.c b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
>> index 705e17a5479c..a05dc3aabac7 100644
>> --- a/drivers/mailbox/qcom-apcs-ipc-mailbox.c
>> +++ b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
>> @@ -89,16 +89,18 @@ static int qcom_apcs_ipc_probe(struct platform_device *pdev)
>>  		return ret;
>>  	}
>>  
>> -	if (of_device_is_compatible(np, "qcom,msm8916-apcs-kpss-global")) {
>> -		apcs->clk = platform_device_register_data(&pdev->dev,
>> -							  "qcom-apcs-msm8916-clk",
>> -							  -1, NULL, 0);
>> -		if (IS_ERR(apcs->clk))
>> -			dev_err(&pdev->dev, "failed to register APCS clk\n");
>> -	}
>> -
>>  	platform_set_drvdata(pdev, apcs);
>>  
>> +	if (!of_device_is_compatible(np, "qcom,msm8916-apcs-kpss-global") &&
>> +	    !of_device_is_compatible(np, "qcom,qcs404-apcs-apps-global"))
> 
> If the remainder of the function was a long snippet I think this would
> motivate the somewhat unusual early return. But I think it would be
> cleaner to just add to the existing conditional.

sure can do that. I dont agree (I wouldnt have bothered otherwise :))
but will do

> 
> Regards,
> Bjorn
> 
>> +		return 0;
>> +
>> +	apcs->clk = platform_device_register_data(&pdev->dev,
>> +						  "qcom-apcs-msm8916-clk",
>> +						  -1, NULL, 0);
>> +	if (IS_ERR(apcs->clk))
>> +		dev_err(&pdev->dev, "failed to register APCS clk\n");
>> +
>>  	return 0;
>>  }
>>  
>> -- 
>> 2.21.0
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
