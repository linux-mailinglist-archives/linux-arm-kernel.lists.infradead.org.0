Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F844C39CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 18:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rrBtWt9GEqQhxe/sGUZLFdxB/U2JRWdE7Z1W1mX3LU8=; b=rrGudvaUGO030uewUaoHjXwco
	ZzNtEoKXp1DQVtQEGjh/Pik1UGEn3YBDvR2r+LXAh2tjnNRJgZbkryNRZyD1wSNiPen9ppMlVnEbd
	Ehy/1yxf//hoyUaQIgDtAEBA6Uqx8ISaSux9TC/nxj00f/g5TNvjEzWemz3BIkd+TGJg+1L5e8c5k
	GkNVK/yiRhYB7+sMPqrh8737DZZ+17bscrZTHevasrC3ccbhjJ8n6Oy5u0PdVYdplyVOQYBPMGxMX
	WuH47cwlsH6STKXLc5o0NYe3ZOkA9KSNg8Ob9aqywFqd7Snnmo+aLmh6DNVQFupPeKe7trbHf0X87
	PZ3qX5Hug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFKd4-0006ct-Fw; Tue, 01 Oct 2019 16:03:58 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFKcv-0006cE-7Y
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 16:03:50 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 09:03:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="216117152"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga004.fm.intel.com with ESMTP; 01 Oct 2019 09:03:46 -0700
Received: from abapat-mobl1.amr.corp.intel.com (unknown [10.251.1.101])
 by linux.intel.com (Postfix) with ESMTP id 1AC725803FA;
 Tue,  1 Oct 2019 09:03:46 -0700 (PDT)
Subject: Re: [alsa-devel] [PATCH] ASoC: SOF: imx: fix reverse
 CONFIG_SND_SOC_SOF_OF dependency
To: Arnd Bergmann <arnd@arndb.de>
References: <20191001142026.1124917-1-arnd@arndb.de>
 <bb58c7cc-209d-7a2f-0e5b-95a9605ffe7b@linux.intel.com>
 <CAK8P3a3Js2dNhnRhP7PLadWZ69DZr1mz6DowN9HDJL4CFDAAFw@mail.gmail.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <e4b90233-846c-bfc1-68a3-a7b7c28b60bd@linux.intel.com>
Date: Tue, 1 Oct 2019 11:03:45 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3Js2dNhnRhP7PLadWZ69DZr1mz6DowN9HDJL4CFDAAFw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_090349_285006_50A00CB3 
X-CRM114-Status: GOOD (  21.94  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Takashi Iwai <tiwai@suse.com>, YueHaibing <yuehaibing@huawei.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Hulk Robot <hulkci@huawei.com>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/1/19 10:41 AM, Arnd Bergmann wrote:
> On Tue, Oct 1, 2019 at 5:32 PM Pierre-Louis Bossart
> <pierre-louis.bossart@linux.intel.com> wrote:
>> On 10/1/19 9:20 AM, Arnd Bergmann wrote:
>>> CONFIG_SND_SOC_SOF_IMX depends on CONFIG_SND_SOC_SOF, but is in
>>> turn referenced by the sof-of-dev driver. This creates a reverse
>>> dependency that manifests in a link error when CONFIG_SND_SOC_SOF_OF
>>> is built-in but CONFIG_SND_SOC_SOF_IMX=m:
>>>
>>> sound/soc/sof/sof-of-dev.o:(.data+0x118): undefined reference to `sof_imx8_ops'
>>>
>>> Make the latter a 'bool' symbol and change the Makefile so the imx8
>>> driver is compiled the same way as the driver using it.
>>>
>>> A nicer way would be to reverse the layering and move all
>>> the imx specific bits of sof-of-dev.c into the imx driver
>>> itself, which can then call into the common code. Doing this
>>> would need more testing and can be done if we add another
>>> driver like the first one.
>>
>> Or use something like
>>
>> config SND_SOC_SOF_IMX8_SUPPORT
>>          bool "SOF support for i.MX8"
>>          depends on IMX_SCU
>>          depends on IMX_DSP
>>
>> config SND_SOC_SOF_IMX8
>>          tristate
>>          <i.mx selects>
>>
>> config SND_SOC_SOF_OF
>>          depends on OF
>>          select SND_SOC_SOF_IMX8 if SND_SOC_SOF_IMX8_SUPPORT
>>
>> That way you propagate the module/built-in information. That's how we
>> fixed those issues for the Intel parts.
> 
> Yes, I think that would work here as well, but it keeps even more
> information about the specific drivers in the generic code. It also
> requires adding more 'select' statements that tend to cause more
> problems.
> 
> The same could be done with a Kconfig-only solution avoiding
> 'select' such as:
> 
> config SND_SOC_SOF_IMX8_SUPPORT
>           bool "SOF support for i.MX8"
>           depends on IMX_SCU
>           depends on IMX_DSP
> 
>   config SND_SOC_SOF_IMX8
>           def_tristate SND_SOC_SOF_OF
>           depends on SND_SOC_SOF_IMX8_SUPPORT

Ah, nice, thanks for the suggestion! That would be my preference, we 
have a similar select for PCI and ACPI parts in sound/soc/sof/Kconfig 
and I was looking for a means to do this more elegantly.
I can submit a new fix or let you sent a v2, whatever is more convenient.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
