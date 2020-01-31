Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 012E514F358
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 21:48:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5RMAR8Mkntw+zyYyhP46vC/Xkv62yqTTFx9rqznFITU=; b=ugPD/k2M0FV9oP
	YKpfZTIsTSfONFCsViIHGwwPuAkGKsX3R5ZxO+aF5U/polBEq2A3M+b0xksNW4XTcas4RgPs9yRZw
	h53FF4R0QzWFQLwX1wJT59tQCsJLYu1lzzKoEG8Ed6crXuDrtA4BaLIWO8tSAsRcr2qZe1JSpzH5u
	WmxuLRDaQSy4zBMcGjN6RShJf0sH4xkXI48gy2oJbWThv3FAXCbLhsDNxAMv7vjyw/Gk2ENR4Shqk
	qYZui9DDgtIUTLXGbJHilpiztTIp1b9DVYtvzFanugWaSBmftTuDwUf1Vv5vdDeTiYcGKlERiplRD
	M+ucYulY5XBLjWUu0yrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixdDf-00071I-Au; Fri, 31 Jan 2020 20:48:51 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixdDV-00070U-7w
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 20:48:42 +0000
Received: by mail-pf1-x441.google.com with SMTP id q8so3929813pfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 12:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=3C6QHOm9kLlMNSEBc1VIbyYgFyyrxZylD3jkKeywRZU=;
 b=ofZAaEqCrl3a0R/wvij9pEEI34+UVgFAmbhBB2Kbx7NFYXiZ8Y2GeVTHr0RCEyena8
 DE7jXQ+UVliiBLCo/VwvjaGcJG5zq2aZx0ZBBLnG0ynPpkghFygNgTZUOehbPjFkf1zt
 AYWvchulGKnfxKg/zwMLQeUMWx3aTSm7OAHw+LK9Wo5/E9Jo1x+RaDKeVhzqfdhxwJo1
 MUFjifbNUg6M3zZJJkLKkOQiixu/ADPc70yVVD3STnDitYdJmgOw1QacW6UEZyj8pIJ+
 gWnhUzEISvdOz9qJLFEZf/z+UuEWWoPeKMtvSKQ11vGRElej2jm5mAZI8WEbITBCyKVB
 RN0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=3C6QHOm9kLlMNSEBc1VIbyYgFyyrxZylD3jkKeywRZU=;
 b=GY0UmYGoh40bHkWoR/evl23AuNPrdDzHePPXJkbIKR/lw9Ik3vu4I2ojQ1+d2Ejx8C
 U+SeHdaMWcAUUFzjfmjOTruTropIFvmGpB6NpH8aDSgdL//d0j2ciFxUzcSny0AzlYEJ
 UumAoUXROkbW3qtxFLRGs/rjzmEojMujrJn+7nUbAxIi638jwLAfZ0s8BjDLwNH4n/08
 1QQjJvTWEZvQ+Bq41pv1LPI00f1hzkTr3rQAvqc7OM8uxEATQrkhsoe2SHKpAiNH7KPa
 OpoVnGiTk2OxHpEULfoh9ez0vJlH+Zn7lcqIGPy0fS3NLBchoQ9ABYFXQ+/R8qsSwlcF
 0xYg==
X-Gm-Message-State: APjAAAVuuLDYOFls+s4HIzhy5OsvsG/ZX3Vnt8UtETxNG/9cVpHCSj1s
 zmVXzBw2j8JLWgzDrtAkQqQ=
X-Google-Smtp-Source: APXvYqzOJRfqW17uCQm7Nv01ZzIqEWvenFXOJ535jg/Lxw2RfOrSbDIElC/ZGG2C46dCs/XadS1H5A==
X-Received: by 2002:a62:ab13:: with SMTP id p19mr3240625pff.98.1580503716828; 
 Fri, 31 Jan 2020 12:48:36 -0800 (PST)
Received: from [10.67.48.234] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id g13sm7288640pfo.169.2020.01.31.12.48.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Jan 2020 12:48:36 -0800 (PST)
Subject: Re: [PATCH v2 0/7] Introduce bus firewall controller framework
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Sudeep Holla <sudeep.holla@arm.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128163628.GB30489@bogus> <7f54ec36-8022-a57a-c634-45257f4c6984@st.com>
 <20200128171639.GA36496@bogus> <26eb1fde-5408-43f0-ccba-f0c81e791f54@st.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <548b1427-cf6e-319a-36e2-c3e9363b930d@gmail.com>
Date: Fri, 31 Jan 2020 12:48:33 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <26eb1fde-5408-43f0-ccba-f0c81e791f54@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_124841_288255_AEA0B01D 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, "robh@kernel.org" <robh@kernel.org>,
 Loic PALLARDY <loic.pallardy@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, "lkml@metux.net" <lkml@metux.net>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Robin.Murphy@arm.com" <Robin.Murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/28/20 12:06 PM, Benjamin GAIGNARD wrote:
> 
> On 1/28/20 6:17 PM, Sudeep Holla wrote:
>> On Tue, Jan 28, 2020 at 04:46:41PM +0000, Benjamin GAIGNARD wrote:
>>> On 1/28/20 5:36 PM, Sudeep Holla wrote:
>>>> On Tue, Jan 28, 2020 at 04:37:59PM +0100, Benjamin Gaignard wrote:
>>>>> Bus firewall framework aims to provide a kernel API to set the configuration
>>>>> of the harware blocks in charge of busses access control.
>>>>>
>>>>> Framework architecture is inspirated by pinctrl framework:
>>>>> - a default configuration could be applied before bind the driver.
>>>>>     If a configuration could not be applied the driver is not bind
>>>>>     to avoid doing accesses on prohibited regions.
>>>>> - configurations could be apllied dynamically by drivers.
>>>>> - device node provides the bus firewall configurations.
>>>>>
>>>>> An example of bus firewall controller is STM32 ETZPC hardware block
>>>>> which got 3 possible configurations:
>>>>> - trust: hardware blocks are only accessible by software running on trust
>>>>>     zone (i.e op-tee firmware).
>>>>> - non-secure: hardware blocks are accessible by non-secure software (i.e.
>>>>>     linux kernel).
>>>>> - coprocessor: hardware blocks are only accessible by the coprocessor.
>>>>> Up to 94 hardware blocks of the soc could be managed by ETZPC.
>>>>>
>>>> /me confused. Is ETZPC accessible from the non-secure kernel space to
>>>> begin with ? If so, is it allowed to configure hardware blocks as secure
>>>> or trusted ? I am failing to understand the overall design of a system
>>>> with ETZPC controller.
>>> Non-secure kernel could read the values set in ETZPC, if it doesn't match
>>> with what is required by the device node the driver won't be probed.
>>>
>> OK, but I was under the impression that it was made clear that Linux is
>> not firmware validation suite. The firmware need to ensure all the devices
>> that are not accessible in the Linux kernel are marked as disabled and
>> this needs to happen before entering the kernel. So if this is what this
>> patch series achieves, then there is no need for it. Please stop pursuing
>> this any further or provide any other reasons(if any) to have it. Until
>> you have other reasons, NACK for this series.
> 
> No it doesn't disable the nodes.
> 
> When the firmware disable a node before the kernel that means it change
> 
> the DTB and that is a problem when you want to sign it. With my proposal
> 
> the DTB remains the same.

Could you use an overlay then which is the result of the firewalling
results by your firewall block, which is smaller than the main SoC/board
DTB and can be easily audited not to accidentally enable blocks, but
only disable them by adding/changing the respective "status" property.
Worst case, your driver probes, has been firewalled and this is not
reflected in the DTB, you get a bus error, or a hang, or however it gets
implemented.

Like Robin and Sudeep here, I do not understand why the kernel should
have any business in this, let alone allowing blocks to change owners,
that sounds contrary to the purpose of a firewall being controlled under
an untrusted entity (Linux).
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
