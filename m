Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E274ED490
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 21:20:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZYzc51eY5RRnofniD0e+CH3bpIU47eZp8teKTNrgzgo=; b=GS8saXXO1KF10iwvcxmBfxS42
	bYJQSIdPCb6LM1XrmYogv/ypbycLnGmQPCEGpLzdo46uxZrd7g/LyBzvyiJNWBX5ceZQBzgg0T03o
	2q/8QPMIpaAeQCOw8+usQdXfPZuQFsfx/N9y2DL6xtqBL5hOxjdok6B+ga0efnTi2MKhJjh1xDIDE
	wwfLa6O8RfiqrEGyr7LxPWil6VUhx4/+0BANmLDRYpwMWN8kSmizxgQTn0il8D7PU3eCRbSbF5GG4
	wXRuxKXSO/JhiAe+eXa/Frh+K9S1yn2kS+aUFY3U44DGgxhn85Aysoh8R276QXKTPrED62LoFjBPA
	eAgCzIxQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRMMT-0002iA-6n; Sun, 03 Nov 2019 20:20:33 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRMMM-0002h0-6I
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 20:20:28 +0000
Received: by mail-pl1-x641.google.com with SMTP id e3so4573122plt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 12:20:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=f0HW53UhzZxLi7gaMbN8yOOsbqLPfhG1rIvHlbGqc5I=;
 b=bF15LL7nNRA0mKhTGBaY2y4I0bHR0KqPpDLtd9Zo+p2WxF8tBDUqMUzFawdBjgzGWn
 fVDmpGO2xoZxCny4T98YctDUiLRRQ7/8mg+lIFWlOwdfiHr2LyDyt/vCOxqkFcPs9VwY
 hF/b//7H7+0tfS5EuU0ldsfp7OvbnkjtvD6T8T/ZTXi2FSE1lBvWfnAC2+xkmsMTiwJI
 6hJTUkYnucfT+zr6BErQ77JOCY0Gzhzchra2/2lQf8kYYoj1J5OaAXnc09LkQD4Z65Qt
 2A+dmyTvHg0CRusfGfN+Yg+gja6FFxK8uekDwIpzDYkWH2nX2dSh356aUy/zEK41vx1V
 UUdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=f0HW53UhzZxLi7gaMbN8yOOsbqLPfhG1rIvHlbGqc5I=;
 b=lCZW4pYfcOqy8x43DfVYdKRDwEc2Ke59GmMhoPM0tsKuh3eBK+bvx1U2m5wHIrNsyQ
 ldnbPQa2pQFBXX0lGz4onXx9ExQ24fj+8PXI9kYNf/cEQTh9I7wazOo6ZPWfmhT6nYb4
 CAcKooDhQEInwEtepswl68xhgA5SJIUIDN4teIUa0mS93UsbSLNZ+6X7Omfg1I/QiWOb
 Eg9ahJfqTmkaKiGbqHIDdNkB/fxUuzVN9zZ2b1QhZ4cJuiHCztyZtiBzuhAG51EAqhzZ
 C6R6yZfGOm6XErlz2xmQAkcb4v1rdbh+iOwFJp/QEYxzBjImwtdToWQm4OmkOjQ3g1IC
 En9A==
X-Gm-Message-State: APjAAAXj5wYPTXmOG29h3ykttY4YdL7smklfNS0xPrZDzaoXYMWxhNOq
 ExlSOcJkiriFs9IgxgtHQPvl9THd
X-Google-Smtp-Source: APXvYqylGlhuAYodJffQ+SXMC0TkhHYBVHAb7NBcN69U2OM0wCLO0xmbTRn1hdd5SasKaXeQky72Ww==
X-Received: by 2002:a17:902:6bc1:: with SMTP id
 m1mr24261772plt.67.1572812424659; 
 Sun, 03 Nov 2019 12:20:24 -0800 (PST)
Received: from [192.168.1.59] (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.gmail.com with ESMTPSA id q8sm12188107pgg.15.2019.11.03.12.20.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 03 Nov 2019 12:20:24 -0800 (PST)
Subject: Re: [PATCH 2/2] dt-bindings: timer: imx: gpt: Add pin group bindings
 for input capture
To: Rob Herring <robh@kernel.org>
References: <20191016010544.14561-1-slongerbeam@gmail.com>
 <20191016010544.14561-3-slongerbeam@gmail.com> <20191027212121.GA3049@bogus>
 <2daa37a6-83a7-ec08-b89c-a07268b3ea4a@gmail.com>
 <CAL_JsqJK5CzQDpCWGZWKgp_8dPG7x0W1HLe+B3zHRP-Te9SToA@mail.gmail.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <ef514e28-e92f-d8fc-0a5f-330a6207b638@gmail.com>
Date: Sun, 3 Nov 2019 12:20:20 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJK5CzQDpCWGZWKgp_8dPG7x0W1HLe+B3zHRP-Te9SToA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_122026_260898_E2FFECC7 
X-CRM114-Status: GOOD (  31.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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



On 10/29/19 12:58 PM, Rob Herring wrote:
> On Mon, Oct 28, 2019 at 6:59 PM Steve Longerbeam <slongerbeam@gmail.com> wrote:
>> Hi Rob,
>>
>> Thanks for reviewing.
>>
>> On 10/27/19 2:21 PM, Rob Herring wrote:
>>> On Tue, Oct 15, 2019 at 06:05:44PM -0700, Steve Longerbeam wrote:
>>>> Add pin group bindings to support input capture function of the i.MX
>>>> GPT.
>>>>
>>>> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
>>>> ---
>>>>    .../devicetree/bindings/timer/fsl,imxgpt.txt  | 28 +++++++++++++++++++
>>>>    1 file changed, 28 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt b/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
>>>> index 5d8fd5b52598..32797b7b0d02 100644
>>>> --- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
>>>> +++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.txt
>>>> @@ -33,6 +33,13 @@ Required properties:
>>>>               an entry for each entry in clock-names.
>>>>    - clock-names : must include "ipg" entry first, then "per" entry.
>>>>
>>>> +Optional properties:
>>>> +
>>>> +- pinctrl-0: For the i.MX GPT to support the Input Capture function,
>>>> +         the input capture channel pin groups must be listed here.
>>>> +- pinctrl-names: must be "default".
>>>> +
>>>> +
>>>>    Example:
>>>>
>>>>    gpt1: timer@10003000 {
>>>> @@ -43,3 +50,24 @@ gpt1: timer@10003000 {
>>>>                <&clks IMX27_CLK_PER1_GATE>;
>>>>       clock-names = "ipg", "per";
>>>>    };
>>>> +
>>>> +
>>>> +Example with input capture channel 0 support:
>>>> +
>>>> +pinctrl_gpt_input_capture0: gptinputcapture0grp {
>>>> +    fsl,pins = <
>>>> +            MX6QDL_PAD_SD1_DAT0__GPT_CAPTURE1 0x1b0b0
>>>> +    >;
>>>> +};
>>>> +
>>>> +gpt: gpt@2098000 {
>>> timer@...
>> Ok.
>>
>>> I don't really think this merits another example though.
>> Ok.
>>
>> But for version 2 of this patch-set I'd like to run some ideas by you.
>>
>> Because in this version I did not make any attempt to create a generic
>> timer capture framework. I just exported a couple imx-specific functions
>> to request and free a timer input capture channel in the imx-gpt driver.
>>
>> So for version 2 I am thinking about a simple framework that other SoC
>> timers with timer input capture support can make use of.
>>
>> To begin with I don't see that timer input capture warrants the
>> definition of a new device. At least for imx, timer input capture is
>> just one function of the imx GPT, where the other is Output Compare
>> which is used for the system timer. I think that is likely the case for
>> most all SoC timers, that is, input capture and output compare are
>> tightly interwoven functions of general purpose timers.
>>
>> So I'm thinking there needs to be an additional #input-capture-cells
>> property that defines how many input capture channels the timer
>> contains, where a channel refers to a single input signal edge that can
>> capture the timer counter. The imx GPT has two input capture channels (2
>> separate input signals).
> #foo-cells is not how many of something, but how many u32 parameters a
> 'foos' consumer property has. But seems like that's what you meant
> based on the example.

Sorry yes that's what I meant, my wording was imprecise. If a timer has 
only one input capture channel, no arguments are needed to specify the 
channel in the timer-input-capture property and #input-capture-cells 
would be <0>.


>
>> For example, on imx:
>>
>> gpt: timer@2098000 {
>>          compatible = "fsl,imx6q-gpt", "fsl,imx31-gpt";
>>          /* ... */
>>          #input-capture-cells = <1>;
>>          pinctrl-names = "default", "icap1";
>>          pinctrl-0 = <&pinctrl_gpt_input_capture0>;
>>          pinctrl-1 = <&pinctrl_gpt_input_capture1>;
>> };
>>
>>
>> A device that is a listener/consumer of an timer capture event would then refer to a timer capture channel:
>>
>> some-device {
>>          /* ... */
>>          timer-input-capture = <&gpt 0>;
>> };
> We'd want to be more consistent in the naming, but seems reasonable.

Yeah, maybe rename the properties to #timer-capture-cells and timer-capture.


> One of the challenges with timers is selecting which timer is used for
> what function. This helps as you can know if a timer is used for input
> capture or not. One issue will be is having '#input-capture-cells'
> enough to decide that,


Yes, it does bother me somewhat that

timer-capture = <&gpt 0>;

is referring to the timer itself and not its input-capture functionality.

Maybe it would be better, since the timer has multiple functions, to 
make the timer compatible with simple-mfd, so that a timer-capture 
sub-device can be defined, for example on i.MX6:

gpt: timer@2098000 {
         compatible = "fsl,imx6q-gpt", "fsl,imx31-gpt", "simple-mfd";
         /* ... */

	tcap: timer-capture {
		compatible = "fsl,imx6q-gpt-capture";
		#timer-capture-cells = <1>;
		pinctrl-names = "default", "icap1";
         	pinctrl-0 = <&pinctrl_gpt_input_capture0>;
         	pinctrl-1 = <&pinctrl_gpt_input_capture1>;
	};
};

some-device {
         /* ... */
         timer-capture = <&tcap 0>;
};


>   or does one have to walk the DT and find all
> the 'timer-input-capture' properties (shouldn't be a lot)?
>   You could
> also want to use input capture, but not describe the connection in DT.

That's a thought, but I'm not sure how the kernel API would look in that 
case, i.e. it would not be as straightforward to locate the timer 
clocksource driver that contains the timer capture support. The 
advantage of using a 'timer-capture' property that contains a timer 
phandle, is that it is simple to locate the clocksource driver that has 
the timer capture function.

>
> Another thought is should it be just 'timers' to cover both input
> capture and output compare with those being selected with flags (like
> GPIO).
>
> My other question is just what are some real examples of devices
> needing to describe this connection. Timers have had input capture
> forever, but I've rarely seen it used. Output compare even less so.

In this specific use-case, the i.MX6 CSI often cannot recover from 
corrupted frame synchronization info in the incoming video frames, 
especially for BT.656 sources (too many or too few lines between two 
SAV/EAV codes, or missing codes altogether). The result is loss of 
vertical sync in the captured frames. The only indication of this error 
condition on i.MX6 is a drop in the captured frame intervals. So a 
workaround is to implement a frame interval monitor that measures the 
FI's and reports a V4L2 event to userspace when a FI falls outside some 
tolerance value. Userspace can then take corrective action such as 
restarting video streaming. Finally getting to the use-case here, the 
most accurate way to measure FI's is to capture a timer counter between 
two falling edges of a VSYNC signal from the video source.

Steve


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
