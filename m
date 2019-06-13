Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F602432AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 06:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ju7KnVr9wf5RVz5h7C9lj2Dtmi3ZQkZnvisEy39+Hvg=; b=pXuO3VGswIzMkW
	cmInLIYdWlPmKkpbbfwxiizeJMfEzpetLwPxLVHLr2aC6wQyX2nW+rUIa+cnxwco/DqefqkwSel1g
	uN54boQiv/mbDf/TNre/9KtNrA+gdfUFRv0rGqee5TrYaOzZMvbwxvGWKi7aj84eoLAcI4RR+L4S3
	sHRms2EGV0gHWPH0xILC3dn3szD3aQIRww/6pGl91TT5nLxVRIyZWS6nGuX1syJnDm0bhZhihPZqG
	XfjKnQoqua12HTmYD3ZwY7bvXYgssnqOm95C8rm0eAg9QPZaXrPGtbLenOEv0HdjbD9ZSpz5H/+5w
	7YQVricr0oxIZ4fXJbEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbHPZ-0000Du-3e; Thu, 13 Jun 2019 04:32:29 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbHPK-0000DM-Nc; Thu, 13 Jun 2019 04:32:16 +0000
Received: from [192.168.1.162] ([37.4.249.160]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MZl1l-1i7PGS1Jwd-00WmSh; Thu, 13 Jun 2019 06:31:59 +0200
Subject: Re: [PATCH v4 0/7] cpufreq support for Raspberry Pi
To: Florian Fainelli <f.fainelli@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-kernel@vger.kernel.org
References: <20190612182500.4097-1-nsaenzjulienne@suse.de>
 <6a9e1450-80ad-a13c-59d2-d0b39f25f67e@gmail.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <7acfd967-0a82-5429-4eed-8b802e6620f5@i2se.com>
Date: Thu, 13 Jun 2019 06:31:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <6a9e1450-80ad-a13c-59d2-d0b39f25f67e@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:JVQIgpWCtEazzL5rYiYN0IJEAR5Tb9mY8miRG4xc6XNEwCRWInY
 TBwHbJFIaEUrGyLOdt+lXcrTaziNHMDMs64ofG55owRH1Hd/pEOrQrkqoSTEKiQjrw3qqMT
 PGjkYDSvB+3PNpnSt/fsfWOKgiKhM8yfyq8E4iBNUJab5rhepnrj4VioMJI95IQYvgQsocg
 ukaDas5WPpS6ZzzEt5xgQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qTId+nsNh3Q=:i8CAXhIIDdMqRAoBpJ9bt2
 ElRxq5FvcgqdFuSs46Gehl0C5YDmpEC4nUw0cXizSVc+cWPR4aDgNyt5MPdUasAcqCukaufE0
 A7rpfAf14PYX14/UuixSC8G6rwBWtySYTocpCMRNmuRIYvd/1IF1sc5EzGLAv3XPnQDORdHeL
 FHFY0elcDduUGr00RxgyLZUa52To9/aHr0Jy+BzdK2szuPoTyPClXcwRZWx2CoOQY2jiAQwAz
 VEhOgJ/NwhZ+nh18bkePYiEyoN1Et5gjqHD0vpa3a3BPC3XpGJbtTbuBeRsRlYe0hFyDjCXZj
 a4hxDc4qiuzX4hIRjsZUkKVyyHKngdQWTY4199PaN16W8r3siQLEBtoTFOeO0zeSGLqnvebAv
 e91JVWr0VJc/D7LOEr8ZAl+AgA9PGOq+tG4vaV1XKof8TU37n4eGKOFxIR8JrQ5KHC1cKyiHL
 0Plpno2LtvUS5UOjEfuMGSbLuMdsZHcyd0TxhmnQw5Wk71nHTwOunWsosug8d+btZr1JWHTE2
 2+a+C/kaaWlfoi7FInYZxLiYPCiCCwNkuWfwgiss98//YWHRwvEQCs9JbUC9Lv2BvCUHrpYHi
 d8edz+iAQZ1HWZv5zZ/nAG6S8LXQM+jRAO4DNxlesBvt/RBD4nqViubNWwCk8zPu+U2X5dflG
 M3hUe7u2xoBMl81wdQrWiXhYgk2o+pp2G8+E+KUd61+6gVOEOUSn0pHXeLQWn1TnEG73iTKBZ
 5eCFdS73IJl8M4suuTFS2oS17r+uowBuhkjRzVPTW60WV8bJZrvzTk78XUc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_213215_069255_1F28A92E 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,
hi Stephen,

Am 13.06.19 um 05:31 schrieb Florian Fainelli:
>
> On 6/12/2019 11:24 AM, Nicolas Saenz Julienne wrote:
>> Hi all,
>> this aims at adding cpufreq support to the Raspberry Pi family of
>> boards.
>>
>> The series first factors out 'pllb' from clk-bcm2385 and creates a new
>> clk driver that operates it over RPi's firmware interface[1]. We are
>> forced to do so as the firmware 'owns' the pll and we're not allowed to
>> change through the register interface directly as we might race with the
>> over-temperature and under-voltage protections provided by the firmware.
>>
>> Next it creates a minimal cpufreq driver that populates the CPU's opp
>> table, and registers cpufreq-dt. Which is needed as the firmware
>> controls the max and min frequencies available.
>>
>> This was tested on a RPi3b+ and RPI2b, both using multi_v7_defconfig and
>> arm64's defconfig.
> How do we go about merging this? Stefan, will you pick up patch 3, 6 and
> 7 and submit them for 5.3/5.4? Viresh has already picked up patch 4.

is it possible to let patches 1,2, 3 and 5 go via clk-tree?

I would take care of 6 and 7.

Stefan

>
>> That's all,
>> kind regards,
>> Nicolas
>>
>> [1] https://github.com/raspberrypi/firmware/wiki/Mailbox-property-interface
>>
>> ---
>>
>> Changes since v3:
>>   - Fix sparse warnings in clk-raspberrypi.c
>>   - Minor cleanups
>>
>> Changes since v2:
>>   - Fixed configs to match Stefan's comments
>>   - Round OPP frequencies
>>   - Rebase onto linux-next
>>   - Minor cleanups & checkpatch.pl
>>
>> Changes since v1:
>>   - Enabled by default on the whole family of devices
>>   - Added/Fixed module support
>>   - clk device now registered by firmware driver
>>   - raspberrypi-cpufreq device now registered by clk driver
>>   - Reimplemented clk rounding unsing determine_rate()
>>   - Enabled in configs for arm and arm64
>>
>> Changes since RFC:
>>   - Move firmware clk device into own driver
>>
>> Nicolas Saenz Julienne (7):
>>   clk: bcm2835: remove pllb
>>   clk: bcm283x: add driver interfacing with Raspberry Pi's firmware
>>   firmware: raspberrypi: register clk device
>>   cpufreq: add driver for Raspberry Pi
>>   clk: raspberrypi: register platform device for raspberrypi-cpufreq
>>   ARM: defconfig: enable cpufreq driver for RPi
>>   arm64: defconfig: enable cpufreq support for RPi3
>>
>>  arch/arm/configs/bcm2835_defconfig    |   9 +
>>  arch/arm/configs/multi_v7_defconfig   |   2 +
>>  arch/arm64/configs/defconfig          |   2 +
>>  drivers/clk/bcm/Kconfig               |   7 +
>>  drivers/clk/bcm/Makefile              |   1 +
>>  drivers/clk/bcm/clk-bcm2835.c         |  28 +--
>>  drivers/clk/bcm/clk-raspberrypi.c     | 315 ++++++++++++++++++++++++++
>>  drivers/cpufreq/Kconfig.arm           |   8 +
>>  drivers/cpufreq/Makefile              |   1 +
>>  drivers/cpufreq/raspberrypi-cpufreq.c |  97 ++++++++
>>  drivers/firmware/raspberrypi.c        |  10 +
>>  11 files changed, 456 insertions(+), 24 deletions(-)
>>  create mode 100644 drivers/clk/bcm/clk-raspberrypi.c
>>  create mode 100644 drivers/cpufreq/raspberrypi-cpufreq.c
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
