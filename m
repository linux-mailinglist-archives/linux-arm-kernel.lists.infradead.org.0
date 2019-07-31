Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8B57C4EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 16:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5RprEOtRMMHtgDhLgH1OIW1vShOFZY/i5gudVTAJjB8=; b=Zd3VWN8rYueX7W
	ELstVmRFlRgHagpPtp/PTQJFryzr/qoAgc88RmGZhKJPD0wq8uJv0PjsMeapskaANpekHRl2+FQ6C
	aHDHTW+NRJe39g6L8uuDImde2COYq7KpUQJexd8XHIV+38huthAgWiUc4/ia39nIDMm2fU7pOv3cf
	nyjOPC/iCbAp5Bsb/M7r0uv3wWNW3qnvptblHLqONuySLemwco/frUgBjdz2jCJPrYZCfuHZm+EqE
	fjzbodVF/X/y5cykw0OfeMjHKlDRpRG2zNRMnoHMds4i/NMYndtXWTwYJh2zFMPxSeao9HV0FRCO8
	OBHJ883PxGdkSNlH6M5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hspdD-0002FP-O6; Wed, 31 Jul 2019 14:31:07 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hspd6-0002EI-Iq
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 14:31:02 +0000
Received: by mail-wm1-x343.google.com with SMTP id s3so61030279wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 07:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=MDnPbJodK/a6eTFi3yfzZVR2rm3ZSgLhYLWa+WneOcQ=;
 b=LObSE0fFJUw55SB99a92enfrZZUq30eu9bG2F/nsfWNxuzV9x2HmIAvxj0KJ9w0KTU
 qrIclXt78r1QBfee5k0HYdjVZ0gbj9fNSGTnKWLZ6ndr3dOMOX7Y3VDxa3DQq8RHuZm5
 /48OTXttWhRqrIZkeXdW6N77lLaaOtC6y8buit2VDJx/IGQ2OpeOYR2S+G8mfirEjQ7g
 NG0SSL/kykYLqhLsE7AUDUa3AqwG9sCxx+/LNHCTnGNh63e8AYQFw+tzeNt3Qzt+XsbL
 JU1G4bO3AWErvXFZ4ADhul3FeEJLOAWayBNWrKY7rYuU1Uxboou2Yj/gCmQ/Ty+MX81g
 igkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MDnPbJodK/a6eTFi3yfzZVR2rm3ZSgLhYLWa+WneOcQ=;
 b=Gt4makjg5m4vjNNwnq7JGCvWIGAwElFDSoZBBwvq528yzTwezKndEsNCOrtAFRTn3v
 ViC8/GsknINpYplqr8XNggIEs/7LCbSMUFLANcnVoDpxEruciR7RtWWpKo9U4ihP4tzq
 4xP3xs+iQvKG6YDwECLJMNgLD9T0wDl2nIEIwvXAIxZv/fdRmIDURm1uIChpSOKwpMhF
 CTMEJPyS10UP1fkT/QJewXK8pIL2K6ZiO1EFKJvoYGE30E6x+FfIKQQW/oPmdh1Ne/nw
 W20GDT2ESzeDnZ3uzDgVK+QuHfHmJSeXXdvwoXPL2DmMoLCXGIGExoLCZeQulQHPbQ6a
 PacQ==
X-Gm-Message-State: APjAAAWxyKGDe1D2v6hnkDdZYqioI+C0GXi4R/OcYlK9H5tKjaJP+bVP
 Hg0y4B7EE/MOrExIN5NSEVN/hQ==
X-Google-Smtp-Source: APXvYqx/TyzoXLdTkhlTg/t7F+eHNs+DVxViJq91/dI341xTx6DKJZgNxhl4ivgKkc2HMYfOY6jBEw==
X-Received: by 2002:a1c:e90d:: with SMTP id q13mr110692820wmc.89.1564583455255; 
 Wed, 31 Jul 2019 07:30:55 -0700 (PDT)
Received: from [192.168.1.6] (19.red-176-86-136.dynamicip.rima-tde.net.
 [176.86.136.19])
 by smtp.gmail.com with ESMTPSA id z6sm61429920wrw.2.2019.07.31.07.30.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 07:30:54 -0700 (PDT)
Subject: Re: [PATCH v3 08/14] clk: qcom: hfpll: CLK_IGNORE_UNUSED
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-9-jorge.ramirez-ortiz@linaro.org>
 <20190711151631.GI7234@tuxbook-pro>
From: Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
Message-ID: <cd91801a-1be3-86fd-6e15-da7e82fddb53@linaro.org>
Date: Wed, 31 Jul 2019 16:30:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190711151631.GI7234@tuxbook-pro>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_073100_654932_E012B972 
X-CRM114-Status: GOOD (  24.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

On 7/11/19 17:16, Bjorn Andersson wrote:
> On Tue 25 Jun 09:47 PDT 2019, Jorge Ramirez-Ortiz wrote:
> 
>> When COMMON_CLK_DISABLED_UNUSED is set, in an effort to save power and
>> to keep the software model of the clock in line with reality, the
>> framework transverses the clock tree and disables those clocks that
>> were enabled by the firmware but have not been enabled by any device
>> driver.
>>
>> If CPUFREQ is enabled, early during the system boot, it might attempt
>> to change the CPU frequency ("set_rate"). If the HFPLL is selected as
>> a provider, it will then change the rate for this clock.
>>
>> As boot continues, clk_disable_unused_subtree will run. Since it wont
>> find a valid counter (enable_count) for a clock that is actually
>> enabled it will attempt to disable it which will cause the CPU to
>> stop.
> 
> But if CPUfreq has acquired the CPU clock and the hfpll is the currently
> selected input, why does the clock framework not know about this clock
> being used?

right, see the comment right below - maybe I should have been more
explicit at the time. sorry about it.

> 
>> Notice that in this driver, calls to check whether the clock is
>> enabled are routed via the is_enabled callback which queries the
>> hardware.

calls to check whether the clock is enabled dont use the usage counter
but a hardware read. IIRC the clock framework will check some counter to
know if the clock is being used.

>>
>> The following commit, rather than marking the clock critical and
>> forcing the clock to be always enabled, addresses the above scenario
>> making sure the clock is not disabled but it continues to rely on the
>> firmware to enable the clock.
>>
>> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
>> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
>> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
> 
> 
> I can see that we have a real issue in the case where CPUfreq is not
> enabled and hence there are no clients, according to Linux. And that I
> don't know another way to guard against.

the issue is there when CPUfreq is enabled that is for sure (if we just
remove this commit the system will not boot due to the situation I tried
to describe above).

> 
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> 
> Regards,
> Bjorn
> 
>> ---
>>  drivers/clk/qcom/hfpll.c | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/clk/qcom/hfpll.c b/drivers/clk/qcom/hfpll.c
>> index 0ffed0d41c50..d5fd27938e7b 100644
>> --- a/drivers/clk/qcom/hfpll.c
>> +++ b/drivers/clk/qcom/hfpll.c
>> @@ -58,6 +58,13 @@ static int qcom_hfpll_probe(struct platform_device *pdev)
>>  		.parent_names = (const char *[]){ "xo" },
>>  		.num_parents = 1,
>>  		.ops = &clk_ops_hfpll,
>> +		/*
>> +		 * rather than marking the clock critical and forcing the clock
>> +		 * to be always enabled, we make sure that the clock is not
>> +		 * disabled: the firmware remains responsible of enabling this
>> +		 * clock (for more info check the commit log)
>> +		 */
>> +		.flags = CLK_IGNORE_UNUSED,
>>  	};
>>  
>>  	h = devm_kzalloc(dev, sizeof(*h), GFP_KERNEL);
>> -- 
>> 2.21.0
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
