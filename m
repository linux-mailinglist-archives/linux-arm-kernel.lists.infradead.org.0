Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C53151814
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 10:46:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4spbMAUT4f/TxcUZkoG0k6SpZGadjRxDrbKZJLdnQ8=; b=PxRQjQGfbt+ESy
	qjKF5fjT7kaBhHEjTWAUh+1Uq+s6O3Xn2sYGTY/mEUDwhQUYUghXI4fSRgw/dgJcX9dmGw3DMkBVB
	aCsnKbqjuCbtCdgdwfaPJsK5cRmR+WKdUOxl4QYuPZKV0uo9VqfdILhuzPGpGZLr2bKJdAFBGmR0E
	Z7KXu1fNuB8Mvfiom3hy0XTSCKFxML1cUs4xnaB86jSpqj43eF+tAeJTmrUWPp81fhuMROL5ez5Pf
	oB7aX6s00w4UUc2NrMYvIFVQsy+J2ALvKBz7EvJoc8Pl8TKL6qGWlv3rmMWx3Eh0lfpsrcY2U37ga
	WxB5vFhbGkwkfg2Dzf1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyumO-0000Zx-9r; Tue, 04 Feb 2020 09:46:00 +0000
Received: from mout01.posteo.de ([185.67.36.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyumH-0000Yi-CV
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 09:45:55 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 04E5616005C
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  4 Feb 2020 10:45:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
 t=1580809536; bh=ntRVVZfu2Cc3qCleVD+LFgHBHaO+67gzE+7IWaAp6gc=;
 h=Subject:To:Cc:From:Autocrypt:Date:From;
 b=Ah+OBS9DomDhxVsHAvEYG8EuZ8FeWwz2Izq4WHSIPN9+jIJF9jrUmr+UQelErsF+G
 H2/vzumjVCOGNjokkMQlYxtPavrySP9LKLI9GvxUUmCh4DGJpZYnUryO5Q/tj5C1/d
 y3F0GiJy3B51lduykmjtioyoGbzfhJhFANBrByH7ffiidHevuyaQGVbqptBpm5Z+Jc
 6PzBtzV9QekvBBPkfkPX9vY1Q84IC/ARo8Gota1RK4jzv2sSPU45xqMd8goHEh+2B6
 XCBxhH9Md+iMYXQBHilGpxOPCwyvE/n1fv2MpHsvfv9oCyeOLo3etjVu5mxQbsnB5T
 tzeBIL0qxlXVA==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 48Bfv371HSz6tmN;
 Tue,  4 Feb 2020 10:45:19 +0100 (CET)
Subject: Re: [PATCH RFC v6 2/9] PM / devfreq: Add generic imx bus scaling
 driver
To: Leonard Crestez <leonard.crestez@nxp.com>, Angus Ainslie
 <angus@akkea.ca>, Jacky Bai <ping.bai@nxp.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <f329e715898a6b9fd0cee707a93fb1e144e31bd4.1573761527.git.leonard.crestez@nxp.com>
 <e311a376e6aec0c380686a7e307d2c07@akkea.ca>
 <VI1PR04MB70233920AC838AD88E1ECC26EE4F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <008f2fa973b23fc716d678c5bd35af54@akkea.ca>
 <VI1PR04MB7023E7C380EFA956629EEB67EE4F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <d1ca09bdeb7580c9b62b491c6eb30148@akkea.ca>
 <VI1PR04MB702329DCBBC98C405421D8DFEE4F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
From: Martin Kepplinger <martink@posteo.de>
Autocrypt: addr=martink@posteo.de; keydata=
 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
Message-ID: <9a8dac5b-25c0-7dca-8c25-9796ba2b4df5@posteo.de>
Date: Tue, 4 Feb 2020 10:45:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB702329DCBBC98C405421D8DFEE4F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_014553_715077_A8661372 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.67.36.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 "linux-pm-owner@vger.kernel.org" <linux-pm-owner@vger.kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Silvano Di Ninno <silvano.dininno@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20.11.19 19:02, Leonard Crestez wrote:
> On 20.11.2019 18:38, Angus Ainslie wrote:
>> On 2019-11-20 08:30, Leonard Crestez wrote:
>>> On 20.11.2019 17:41, Angus Ainslie wrote:
>>>> Hi Leonard,
>>>>
>>>> On 2019-11-20 07:04, Leonard Crestez wrote:
>>>>> On 20.11.2019 16:08, Angus Ainslie wrote:
>>>>> Is "mainline ATF" an important criteria for Purism?
>>>>
>>>> Yes we intend to bring all of our patches to mainline and were hoping
>>>> that NXP would be doing the same. Shouldn't a mainline kernel run on a
>>>> mainline ATF ?
>>>
>>> You can still use mainline ATF (tested right now) but the imx8m-ddrc
>>> driver won't probe.
>>
>> Sorry I was talking about the DDR frequency scaling specifically. >
>>> The ability to mix and match different branches of firmware and kernel
>>> is very useful for testing. There might be slight incompatibilities but
>>> in theory if a feature depends on both firmware and kernel support then
>>> it should gracefully degrade rather than crash or hang.
>>
>> I saw the check you put in for the correct ATF version and that's very
>> helpful thanks.
>>
>>> ATF support for this feature will be mainlined eventually, I picked the
>>> linux side first because review is more challenging and changes are
>>> much larger relative to what we have in our internal tree.
>>
>> Do you have a patch against mainline ATF that we can test this feature
>> with ?
> 
> Not right now, and imx atf is based on a slightly older version so some 
> porting effort might be required.
> 

Hi Leonard,

Have you, by chance, looked at the mainline ATF side for your devfreq
work in the meantime? I'd happily test. (btw. the linux driver fails
"nicely" there.)

thanks,

                                  martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
