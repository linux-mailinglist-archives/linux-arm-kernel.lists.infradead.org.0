Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FADE7D5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 01:00:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c5XQ8/66TB2FlTsbAcTMIZ04dK7UbT/kQ/tIkJ9sYEg=; b=P2JgCZaglTo1QkKzB2Mv1WsCk
	N5GotOOhZvFZImOob5GFKzpBOq6npRnpVmaEqZXjkQlc1HSEWOYkCEQ0SmbvAh2EiG+2bV7DgNs7m
	Xike7c1czFGDthYk/pgsQ3JBCRgI81/MA/ZsqIxEEyedy4AIKoamsERwBEURTb6yUVvQGo1MReOvD
	5YFLoPX4Wr56TK2qMiPiZOuRwg65o8Ysg6Y5Z6rPTOgS/huc8PIHJr7zaYXAySV9Ti5ndcueJepp9
	r3dzVIgLJYUgHjfSUT6Iux+lQRcnxpOFlXMjnXFCRKciWvGb2BGpvU/zfAVu+61QEzHajd3ctA0Xm
	dbvkldb8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPEvW-000588-Al; Mon, 28 Oct 2019 23:59:58 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPEvJ-00057F-SM
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 23:59:47 +0000
Received: by mail-pl1-x644.google.com with SMTP id p5so1389149plr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 16:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=6PbNC9ZYBewrGx4YYy/4pVIAWb+IMk+47XVy1Sx5zzI=;
 b=HYAW/Y0L2chXTWqpU2iL0mEYEyFN8O5JV3K7uT5zi5MVAHM10rAzOumCdJH84zYxS+
 6KQq51xBpAp+0GQjRvOibReUcU59U3AUuy1kQUQ5CcdwbzgoBwp0KdeN6itX3xSo5UQt
 /mMMuxzxj/B7EGZayugehJU3wbrFEknjC+t+/sf5/LUs5Mr0rkWMLHvjdv6ao6IUbVCf
 mS/H6anHtrzQWKZmdnph7Hx4LDFc1h3T5W1gxadaykgczBZakktCleeu5MV+gy2d37/d
 ebNnz9/PmR6LKowLihYoAiAvHmgj3N+3IbUVfnIaVRrnL8N4c6OjMLxR/1QN5mTnFtKz
 15Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=6PbNC9ZYBewrGx4YYy/4pVIAWb+IMk+47XVy1Sx5zzI=;
 b=PLSxrVKB6ywGFgkg77sreSrXy52Cjg/n4Sh+f4Eex70NVUWkZwj89D8B6XO90fKaoF
 apim/7Z89VKI8KSaWRo0tTDiCGMV1/Dokhae0Ln+wocwewaV+Cdy/KG06xpqCN2oJJ7a
 XQKBggwGpLd/AT1cOvR7pgcl3WchBgviioEFjh9wjlss5Hkhw/vuzdv6Zyj1kVDwnFN9
 zl9Bkfp9gZ+E2W0dql7BU92FXMlU1voEfAwVoX0pv+sG0D8KFu8iU3eWf2Kr5Jh8kbJ9
 gKp/TTr61eC5QpqWLP+jSAvVq+8uVUjC6jTj6LBuT0NDwZKkzuG3l/BpWMqHHZbDkP46
 3q4A==
X-Gm-Message-State: APjAAAVk2gX0Vt+X68wQzC+Gv/GG6FbPgnDnnSiAhxZX/354CmZeYPM0
 aouuv+KhUeiBCPCMnZWRnuYgMeE4
X-Google-Smtp-Source: APXvYqxHQOFG5/pQ1j8cv44WDxjt9j7KSDG8Izwx7Veg0LydX0N9MI97H/fzaTvx1p1mbLvx6KdoyA==
X-Received: by 2002:a17:902:7089:: with SMTP id z9mr751398plk.51.1572307184139; 
 Mon, 28 Oct 2019 16:59:44 -0700 (PDT)
Received: from [172.30.89.111] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id r33sm579115pjb.5.2019.10.28.16.59.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 28 Oct 2019 16:59:43 -0700 (PDT)
Subject: Re: [PATCH 2/2] dt-bindings: timer: imx: gpt: Add pin group bindings
 for input capture
To: Rob Herring <robh@kernel.org>
References: <20191016010544.14561-1-slongerbeam@gmail.com>
 <20191016010544.14561-3-slongerbeam@gmail.com> <20191027212121.GA3049@bogus>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <2daa37a6-83a7-ec08-b89c-a07268b3ea4a@gmail.com>
Date: Mon, 28 Oct 2019 16:59:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191027212121.GA3049@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_165945_918649_7DE0A2BD 
X-CRM114-Status: GOOD (  23.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, "open list:CLOCKSOURCE,
 CLOCKEVENT DRIVERS" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Thanks for reviewing.

On 10/27/19 2:21 PM, Rob Herring wrote:
> On Tue, Oct 15, 2019 at 06:05:44PM -0700, Steve Longerbeam wrote:
>> Add pin group bindings to support input capture function of the i.MX
>> GPT.
>>
>> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
>> ---
>>   .../devicetree/bindings/timer/fsl,imxgpt.txt  | 28 +++++++++++++++++++
>>   1 file changed, 28 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt b/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
>> index 5d8fd5b52598..32797b7b0d02 100644
>> --- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
>> +++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
>> @@ -33,6 +33,13 @@ Required properties:
>>              an entry for each entry in clock-names.
>>   - clock-names : must include "ipg" entry first, then "per" entry.
>>   
>> +Optional properties:
>> +
>> +- pinctrl-0: For the i.MX GPT to support the Input Capture function,
>> +  	     the input capture channel pin groups must be listed here.
>> +- pinctrl-names: must be "default".
>> +
>> +
>>   Example:
>>   
>>   gpt1: timer@10003000 {
>> @@ -43,3 +50,24 @@ gpt1: timer@10003000 {
>>   		 <&clks IMX27_CLK_PER1_GATE>;
>>   	clock-names = "ipg", "per";
>>   };
>> +
>> +
>> +Example with input capture channel 0 support:
>> +
>> +pinctrl_gpt_input_capture0: gptinputcapture0grp {
>> +	fsl,pins = <
>> +		MX6QDL_PAD_SD1_DAT0__GPT_CAPTURE1 0x1b0b0
>> +	>;
>> +};
>> +
>> +gpt: gpt@2098000 {
> timer@...

Ok.

>
> I don't really think this merits another example though.

Ok.

But for version 2 of this patch-set I'd like to run some ideas by you.

Because in this version I did not make any attempt to create a generic 
timer capture framework. I just exported a couple imx-specific functions 
to request and free a timer input capture channel in the imx-gpt driver.

So for version 2 I am thinking about a simple framework that other SoC 
timers with timer input capture support can make use of.

To begin with I don't see that timer input capture warrants the 
definition of a new device. At least for imx, timer input capture is 
just one function of the imx GPT, where the other is Output Compare 
which is used for the system timer. I think that is likely the case for 
most all SoC timers, that is, input capture and output compare are 
tightly interwoven functions of general purpose timers.

So I'm thinking there needs to be an additional #input-capture-cells 
property that defines how many input capture channels the timer 
contains, where a channel refers to a single input signal edge that can 
capture the timer counter. The imx GPT has two input capture channels (2 
separate input signals).

For example, on imx:

gpt: timer@2098000 {
	compatible = "fsl,imx6q-gpt", "fsl,imx31-gpt";
	/* ... */
	#input-capture-cells = <1>;
	pinctrl-names = "default", "icap1";
	pinctrl-0 = <&pinctrl_gpt_input_capture0>;
	pinctrl-1 = <&pinctrl_gpt_input_capture1>;
};


A device that is a listener/consumer of an timer capture event would then refer to a timer capture channel:

some-device {
	/* ... */
	timer-input-capture = <&gpt 0>;
};


Is this a sound approach? Let me know what you think.

Thanks,
Steve


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
