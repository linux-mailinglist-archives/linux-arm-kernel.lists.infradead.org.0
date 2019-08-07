Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5145485085
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EgEz5GQElDmQAiy+OFbaAsxbapnEZZ9AysXcrMlLQhk=; b=SYpyoCZSKMPp58zAoxta4x2Fr
	OkvvSxl0Cv0Q0xLro2vmg589fLhG22eZKrmFYJA9uf9atU49zSJ1Zu7G6u0Cz+c0DWqGJj8vkE0Yg
	kuKBsyUbT7P0SSUcizlc2sjyzSlFoL6eshLI7yPnCnvgQFEXuwhvKPL5r3nSG+oTwaSh0mtYRdbIf
	I0YjMh5GQ5ZjzniKxiVusiSjhANGrs0ExZaAOcg8NaT3JYovgRqKPRlavy3idG0dlROMyLAlhqW1i
	C5+IhUp+9jbxv6TZQE5rkcfV5F9R2PSaMKvXwPLAklrg4U24ZUmvuoSYhe9Al1j+bUCuKjacNcna9
	fbXm2GA9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvONi-0003Tp-AI; Wed, 07 Aug 2019 16:01:42 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvONQ-0003Pi-JO
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:01:26 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 09:01:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="165358705"
Received: from knguye7-mobl.amr.corp.intel.com (HELO [10.255.81.127])
 ([10.255.81.127])
 by orsmga007.jf.intel.com with ESMTP; 07 Aug 2019 09:01:21 -0700
Subject: Re: [Sound-open-firmware] [PATCH v2 3/5] ASoC: SOF: Add DT DSP device
 support
To: Daniel Baluta <daniel.baluta@gmail.com>
References: <20190723084104.12639-1-daniel.baluta@nxp.com>
 <20190723084104.12639-4-daniel.baluta@nxp.com>
 <d85909d6-c7cb-c64b-dfa9-6cee6c0da2cb@linux.intel.com>
 <CAEnQRZARFQjutkvW3_xkQAQznNm8c5jSjtAG715VtrZnDxztoA@mail.gmail.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <123a1cf0-1eac-03bd-6628-8c67004eadc5@linux.intel.com>
Date: Wed, 7 Aug 2019 11:01:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAEnQRZARFQjutkvW3_xkQAQznNm8c5jSjtAG715VtrZnDxztoA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_090124_835788_5F344D31 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Olaru <paul.olaru@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 sound-open-firmware@alsa-project.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 8/7/19 10:29 AM, Daniel Baluta wrote:
> On Tue, Jul 23, 2019 at 6:19 PM Pierre-Louis Bossart
> <pierre-louis.bossart@linux.intel.com> wrote:
>>
>>
>>> diff --git a/sound/soc/sof/Kconfig b/sound/soc/sof/Kconfig
>>> index 61b97fc55bb2..2aa3a1cdf60c 100644
>>> --- a/sound/soc/sof/Kconfig
>>> +++ b/sound/soc/sof/Kconfig
>>> @@ -36,6 +36,15 @@ config SND_SOC_SOF_ACPI
>>>          Say Y if you need this option
>>>          If unsure select "N".
>>>
>>> +config SND_SOC_SOF_DT
>>> +     tristate "SOF DT enumeration support"
>>> +     select SND_SOC_SOF
>>> +     select SND_SOC_SOF_OPTIONS
>>> +     help
>>> +       This adds support for Device Tree enumeration. This option is
>>> +       required to enable i.MX8 devices.
>>> +       Say Y if you need this option. If unsure select "N".
>>> +
>>
>> [snip]
>>
>>> diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
>>> index fff64a9970f0..fa35994a79c4 100644
>>> --- a/sound/soc/sof/imx/Kconfig
>>> +++ b/sound/soc/sof/imx/Kconfig
>>> @@ -12,6 +12,7 @@ if SND_SOC_SOF_IMX_TOPLEVEL
>>>
>>>    config SND_SOC_SOF_IMX8
>>>        tristate "SOF support for i.MX8"
>>> +     select SND_SOC_SOF_DT
>>
>> This looks upside down. You should select SOF_DT first then include the
>> NXP stuff.
> 
> One more thing: So this should be 'depends on SND_SOC_SOF_DT' right?

I would do this:

config SND_SOC_SOF_DT
      	tristate "SOF DT enumeration support"
      	depends on OF # or whatever the top-level DT dependency is
      	select SND_SOC_SOF
      	select SND_SOC_SOF_OPTIONS


config SND_SOC_SOF_IMX_TOPLEVEL
	bool "SOF support for NXP i.MX audio DSPs"
	depends on ARM64 && SND_SOC_SOF_DT || COMPILE_TEST
	
if SND_SOC_SOF_IMX_TOPLEVEL

config SND_SOC_SOF_IMX8
	tristate "SOF support for i.MX8"

In other words push the dependencies at a higher level.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
