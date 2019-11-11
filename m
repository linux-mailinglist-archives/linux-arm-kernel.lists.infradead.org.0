Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE3DF6C60
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 02:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:References:To:Subject:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RQ1jc/kI50MbWCQBw2yz5UK/zHqUhaoSn1DwVV9Z6Zw=; b=bEpd4Uxp2qOaJlX1w/fu0e1a2
	Po0YIYWj6wKcWxLOJHdePFzcTINIUQebjLT13WLxC9yAsEeun87qAKRisDdHUB7hoMb2JIVEPGn/c
	HayALk8oMYUsWp3I+JWn2pSoqWtOyQcwzulk5CW74ZlYUGAI1tBHjC6GtiZiscd55ORhL6AuPiJjI
	M8JlTPI5ogzvWdgfR97yA9UXI2wkKW7NYk1H6KUrwejFivyPHkNPSLAW/7dixLxvAzZ447DZ4d3kM
	qiqWr16hl5fALwFsySSb9fuTyrugxaBZxyK2CwBFbdZwjzgGmstZoenC3Y8MsrVZc53GW2/uVGHde
	DZSGR6LYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTyhK-0007B6-TA; Mon, 11 Nov 2019 01:40:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTyhC-0007AB-Nu
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 01:40:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6447D30E;
 Sun, 10 Nov 2019 17:40:39 -0800 (PST)
Received: from [192.168.3.111] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 531F73F534;
 Sun, 10 Nov 2019 17:40:37 -0800 (PST)
From: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
References: <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea>
 <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
 <20190808162628.pthvy3tgf3naj76s@flea>
 <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com>
 <20190812080420.saelmqb36vkelxn4@flea>
 <CA+E=qVchsqOF_hVD-qBuKwi7PTMYtUR-LE2dD_mpptFJcWE_yw@mail.gmail.com>
 <20190813053905.hu2hyi7fah2vujzz@flea>
 <CA+E=qVegU8M09tmbxGUaBSoueGU6PRsAtr9XWrc8V8HnCPjULg@mail.gmail.com>
 <CA+E=qVeArUV0u_17ty=HgaU35TwcBfQjSOJf0A5yM6L6+W-0Og@mail.gmail.com>
 <20190925110844.qfm5ris7xeze44th@gilmour>
 <CAJiuCcfcmkb_BgDcDJziUwoZXAgLN4Bh0GGZKR3NVNRpnFhBEQ@mail.gmail.com>
 <CA+E=qVeopby6zn1PBsOGb0JjA6-viTN_iXxRnWF6+NGtbZ_BtQ@mail.gmail.com>
 <CAJiuCcdZfbO+s2L-PcKA4PEm8B8=niYMO1w1nLVQ9hzq6Fjv=A@mail.gmail.com>
 <2e3e8dae-6678-6ca3-ca05-5acb691d5c0e@foss.arm.com>
Organization: ARM Ltd.
Message-ID: <235f89ce-50f2-a586-6fd1-61338702db24@arm.com>
Date: Mon, 11 Nov 2019 01:43:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <2e3e8dae-6678-6ca3-ca05-5acb691d5c0e@foss.arm.com>
Content-Type: multipart/mixed; boundary="------------D5F22A90D13B9F3168213002"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_174046_869898_77445B83 
X-CRM114-Status: GOOD (  44.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 "Jared D . McNeill" <jmcneill@netbsd.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Harald Geyer <harald@ccbib.org>, Robin Murphy <robin.murphy@arm.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.
--------------D5F22A90D13B9F3168213002
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 01/11/2019 15:47, Andre Przywara wrote:
> On 11/1/19 11:30 AM, Clément Péron wrote:

Hi,

for the sake of finishing this thread, in case search engines point to it:

>> On Thu, 31 Oct 2019 at 21:35, Vasily Khoruzhick <anarsoul@gmail.com>
>> wrote:
>>>
>>> On Thu, Oct 31, 2019 at 12:10 PM Clément Péron <peron.clem@gmail.com>
>>> wrote:
>>>>
>>>> Hi,
>>>>
>>>> Just a remark here but the interrupt are from 152 to 155 SPI.
>>>> But there is an offset of 32 no (remove SGI/PPI)?
>>>> This should be from 120 to 123
>>>
>>> I already tried it (and I believe someone already suggested it above),
>>> it doesn't fix PMU interrupts though.
>>
>> Ok thanks for the confirmation.
>>
>> Made a research about the PMU for A64 and found that Andre Przywara
>> made a patch to enable it:
>> https://gist.github.com/apritzel/d025abaa1425fcaf5991b5ffcf18a0a3
>>
>> Maybe he can confirm or not the issue on A64 ?
> 
> Well, I tried it back then, but couldn't make the interrupts work (and
> yes, I tried +/- 32). That's the reason I didn't send it back then.

I did the experiment drafted below, and found that the interrupts are
not 152-155, as the manual describes, but 148-151 instead.
And yes, those are the GIC interrupt IDs used, but the GIC binding
requires us to give the SPI numbers, so we need to subtract 32, which
was not the case for the original patch.
Thanks to Maxime for merging the fix patch:
https://archive.armlinux.org.uk/lurker/message/20191105.110651.914455de.en.html

In case someone wants to confirm this or in general needs to
find/confirm IRQ numbers for some peripherals:

> I can't say whether the IRQ lines are not wired or the manual just gives
> the wrong numbers. I don't have access to a board before Sunday, but if
> someone wants to beat me to it:
> - Hack U-Boot to add a command to program one PMU counter to expire
> quickly, and enable overflow interrupts.

Attaching a U-Boot patch to trigger a PMU cycle counter overflow IRQ.

> - Enable *all* SPIs on the GIC distributor level, and enable the
> distributor. Keep the GIC CPU interface disabled.

The GIC distributor on most Allwinner SoCs is located at 0x01c81000.
This is the first address shown in the GIC's DT node.
To enable all IRQs in U-Boot, on the U-Boot command prompt:
=> mw.l 0x01c81100 0xffffffff 0x20
This will set all possible 1024 bits in the GICD_ISENABLERn registers
(offset 0x100) to 1. Reading this back will reveal which IRQs the GIC
actually is configured for, typically we have much fewer SPIs supported.
To enable the distributor (really: group 1 interrupts):
=> mw.l 0x01c81000 1
As suggested, we don't touch the GIC CPU interface, so no interrupts
will actually reach the core.

> - Trigger the U-Boot command, and inspect the GICD_ISPENDR registers to
> see if any SPI fired.

Trigger the IRQ, for instance using the command provided by the patch
above. Keep the PMU enabled, because it will deassert the IRQ lines
otherwise:

=> pmuc start
=> pmuc
(check that the counter overflows)
=> md.l 0x01c81200 0x20

This will print the pending bits (GICD_ISPENDRn at offset 0x200) for
each IRQ. In U-Boot we expect no other IRQs to ever fire, so any bit set
in here would be due to our experiment.
In this case the output looked like:
01c81200: 00000000 00000000 00000000 00000000
01c81210: 00100000 00000000 00000000 00000000
If you do the counting, this is bit 20 in word 4, so 4 * 32 + 20 = 148.
Subtract 32 to get the number that goes into the DT node.
U-Boot is UP, so this is probably the IRQ on core 0. A reasonable
assumption is that the other cores just follow behind this, which you
can confirm in Linux, by running some perf command on only a single core
and watching the interrupt count increasing:
$ grep pmu /proc/interrupts
$ taskset -cp 1 $$
$ perf record sleep 3
$ grep pmu /proc/interrupts

> - Also double check the PMU overflow status register to verify that the
> event triggered.

Just calling "pmuc" will print the PMOVSCLR register.


Hope that helps!

Cheers,
Andre

>>>> On Wed, 25 Sep 2019 at 13:09, Maxime Ripard <mripard@kernel.org> wrote:
>>>>>
>>>>> On Mon, Sep 23, 2019 at 04:55:59PM -0700, Vasily Khoruzhick wrote:
>>>>>> On Mon, Sep 23, 2019 at 4:51 PM Vasily Khoruzhick
>>>>>> <anarsoul@gmail.com> wrote:
>>>>>>>
>>>>>>> On Mon, Aug 12, 2019 at 10:39 PM Maxime Ripard
>>>>>>> <maxime.ripard@bootlin.com> wrote:
>>>>>>>>
>>>>>>>> On Mon, Aug 12, 2019 at 11:01:51AM -0700, Vasily Khoruzhick wrote:
>>>>>>>>> On Mon, Aug 12, 2019 at 1:04 AM Maxime Ripard
>>>>>>>>> <maxime.ripard@bootlin.com> wrote:
>>>>>>>>>>
>>>>>>>>>> On Thu, Aug 08, 2019 at 12:59:07PM -0700, Vasily Khoruzhick
>>>>>>>>>> wrote:
>>>>>>>>>>> On Thu, Aug 8, 2019 at 9:26 AM Maxime Ripard
>>>>>>>>>>> <maxime.ripard@bootlin.com> wrote:
>>>>>>>>>>>>
>>>>>>>>>>>> On Wed, Aug 07, 2019 at 10:36:08AM -0700, Vasily Khoruzhick
>>>>>>>>>>>> wrote:
>>>>>>>>>>>>> On Wed, Aug 7, 2019 at 4:56 AM Maxime Ripard
>>>>>>>>>>>>> <maxime.ripard@bootlin.com> wrote:
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> On Tue, Aug 06, 2019 at 07:39:26PM -0700, Vasily
>>>>>>>>>>>>>> Khoruzhick wrote:
>>>>>>>>>>>>>>> On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy
>>>>>>>>>>>>>>> <robin.murphy@arm.com> wrote:
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
>>>>>>>>>>>>>>>>> On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer
>>>>>>>>>>>>>>>>> <harald@ccbib.org> wrote:
>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>> Vasily Khoruzhick writes:
>>>>>>>>>>>>>>>>>>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy
>>>>>>>>>>>>>>>>>>> <robin.murphy@arm.com> wrote:
>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
>>>>>>>>>>>>>>>>>>>>> Looks like PMU in A64 is broken, it generates no
>>>>>>>>>>>>>>>>>>>>> interrupts at all and
>>>>>>>>>>>>>>>>>>>>> as result 'perf top' shows no events.
>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>> Does something like 'perf stat sleep 1' at least
>>>>>>>>>>>>>>>>>>>> count cycles correctly?
>>>>>>>>>>>>>>>>>>>> It could well just be that the interrupt numbers are
>>>>>>>>>>>>>>>>>>>> wrong...
>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>> Looks like it does, at least result looks plausible:
>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>> I'm using perf stat regularly (cache benchmarks) and
>>>>>>>>>>>>>>>>>> it works fine.
>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>> Unfortunately I wasn't aware that perf stat is a poor
>>>>>>>>>>>>>>>>>> test for
>>>>>>>>>>>>>>>>>> the interrupts part of the node, when I added it. So
>>>>>>>>>>>>>>>>>> I'm not too
>>>>>>>>>>>>>>>>>> surprised I got it wrong.
>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>> However, it would be unfortunate if the node got
>>>>>>>>>>>>>>>>>> removed completely,
>>>>>>>>>>>>>>>>>> because perf stat would not work anymore. Maybe we can
>>>>>>>>>>>>>>>>>> only remove
>>>>>>>>>>>>>>>>>> the interrupts or just fix them even if the HW doesn't
>>>>>>>>>>>>>>>>>> work?
>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>> I'm not familiar with PMU driver. Is it possible to get
>>>>>>>>>>>>>>>>> it working
>>>>>>>>>>>>>>>>> without interrupts?
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> Yup - you get a grumpy message from the driver, it will
>>>>>>>>>>>>>>>> refuse sampling
>>>>>>>>>>>>>>>> events (the ones which weren't working anyway), and if
>>>>>>>>>>>>>>>> you measure
>>>>>>>>>>>>>>>> anything for long enough that a counter overflows you'll
>>>>>>>>>>>>>>>> get wonky
>>>>>>>>>>>>>>>> results. But for counting hardware events over
>>>>>>>>>>>>>>>> relatively short periods
>>>>>>>>>>>>>>>> it'll still do the job.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>> I tried to drop interrupts completely from the node but
>>>>>>>>>>>>>>> 'perf top' is
>>>>>>>>>>>>>>> still broken. Though now in different way: it complains
>>>>>>>>>>>>>>> "cycles: PMU
>>>>>>>>>>>>>>> Hardware doesn't support sampling/overflow-interrupts.
>>>>>>>>>>>>>>> Try 'perf
>>>>>>>>>>>>>>> stat'"
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> I have no idea if that's the culprit, but what is the
>>>>>>>>>>>>>> state of the
>>>>>>>>>>>>>> 0x09010000 register?
>>>>>>>>>>>>>
>>>>>>>>>>>>> What register is that and how do I check it?
>>>>>>>>>>>>
>>>>>>>>>>>> It's in the CPUX Configuration block, and the bits are
>>>>>>>>>>>> labelled as CPU
>>>>>>>>>>>> Debug Reset.
>>>>>>>>>>>>
>>>>>>>>>>>> And if you have busybox, you can use devmem.
>>>>>>>>>>>
>>>>>>>>>>> CPUX configuration block is at 0x01700000 according to A64 user
>>>>>>>>>>> manual, and particular register you're interested in is at
>>>>>>>>>>> 0x01700080,
>>>>>>>>>>> its value is 0x1110110F.
>>>>>>>>>>>
>>>>>>>>>>> Bits 16-19 are not defined in user manual and are not set.
>>>>>>>>>>
>>>>>>>>>> Sorry, I somehow thought this was for the H6...
>>>>>>>>>>
>>>>>>>>>> I don't have any idea then :/
>>>>>>>>>
>>>>>>>>> OK, so what should we do? 'perf top'/'perf record' work fine if
>>>>>>>>> PMU
>>>>>>>>> node is dropped, but they don't work if PMU node is present
>>>>>>>>> (even with
>>>>>>>>> interrupts dropped). I'd prefer to have 'perf top' and 'perf
>>>>>>>>> record'
>>>>>>>>> working instead of 'perf stat'
>>>>>>>>
>>>>>>>> Well, it doesn't work so we should just remove the node, and if
>>>>>>>> someone wants it back, they should figure it out.
>>>>>>>
>>>>>>> Hey Maxime,
>>>>>>>
>>>>>>> So can you merge this patch?
>>>>>>
>>>>>> Added new Maxime's email to CC
>>>>>
>>>>> Queued as a fix for 5.4, thanks!
>>>>> Maxime
>>>>> _______________________________________________
>>>>> linux-arm-kernel mailing list
>>>>> linux-arm-kernel@lists.infradead.org
>>>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


--------------D5F22A90D13B9F3168213002
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-arm64-Add-performance-monitoring-unit-test-command.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-arm64-Add-performance-monitoring-unit-test-command.patc";
 filename*1="h"

From 169f01c8545a68b5f36515c49d171b9e0555ec1b Mon Sep 17 00:00:00 2001
From: Andre Przywara <andre.przywara@arm.com>
Date: Mon, 4 Nov 2019 21:54:51 +0000
Subject: [PATCH] arm64: Add performance monitoring unit test command

Mostly useful for identifying the interrupts used.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 cmd/Makefile  |  1 +
 cmd/arm_pmu.c | 78 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 79 insertions(+)
 create mode 100644 cmd/arm_pmu.c

diff --git a/cmd/Makefile b/cmd/Makefile
index ac843b4b16..bced333222 100644
--- a/cmd/Makefile
+++ b/cmd/Makefile
@@ -182,6 +182,7 @@ endif # !CONFIG_SPL_BUILD
 
 # core command
 obj-y += nvedit.o
+obj-$(CONFIG_ARM64) += arm_pmu.o
 
 obj-$(CONFIG_TI_COMMON_CMD_OPTIONS) += ti/
 
diff --git a/cmd/arm_pmu.c b/cmd/arm_pmu.c
new file mode 100644
index 0000000000..0bc072b2f5
--- /dev/null
+++ b/cmd/arm_pmu.c
@@ -0,0 +1,78 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * (C) Copyright 2019 Arm Ltd.
+ */
+
+#include <common.h>
+#include <command.h>
+#include <linux/bitops.h>
+
+
+int do_pmuc(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
+{
+	u64 reg;
+
+	if (argc < 2) {
+		/* PMU control register */
+		__asm__ volatile("mrs %0, PMCR_EL0\n" : "=r"(reg));
+		printf("PMCR: 0x%llx\n", reg);
+		/* overflow status register */
+		__asm__ volatile("mrs %0, PMOVSCLR_EL0\n" : "=r"(reg));
+		printf("PMOVSCLR: 0x%llx\n", reg);
+		/* counter register */
+		__asm__ volatile("mrs %0, PMCCNTR_EL0\n" : "=r"(reg));
+		printf("counter: 0x%llx\n", reg);
+		return CMD_RET_SUCCESS;
+	}
+
+	if (!strcmp(argv[1], "start")) {
+		/* enable cycle counting */
+		__asm__ volatile("msr PMCNTENSET_EL0, %0\n" :: "r"(BIT(31)));
+		/* enable overflow interrupt */
+		__asm__ volatile("msr PMINTENSET_EL1, %0\n" :: "r"(BIT(31)));
+		/* allow counting in EL2 */
+		__asm__ volatile("msr PMCCFILTR_EL0, %0\n" :: "r"(BIT(27)));
+		__asm__ volatile("mrs %0, PMCR_EL0\n" : "=r"(reg));
+		/* enable PMU */
+		reg |= 0x1;
+		__asm__ volatile("msr PMCR_EL0, %0\n" :: "r"(reg));
+		return CMD_RET_SUCCESS;
+	}
+	if (!strcmp(argv[1], "reset")) {
+		/* disable all event and cycle counting */
+		__asm__ volatile("msr PMCNTENCLR_EL0, %0\n" :: "r"(0xffffffff));
+		/* disable all overflow interrupts */
+		__asm__ volatile("msr PMINTENCLR_EL1, %0\n" :: "r"(0xffffffff));
+		/* clear all overflow interrupts */
+		__asm__ volatile("msr PMOVSCLR_EL0, %0\n" :: "r"(0xffffffff));
+		/* clear filter (blocks EL2 counting) */
+		__asm__ volatile("msr PMCCFILTR_EL0, %0\n" :: "r"(0));
+		__asm__ volatile("mrs %0, PMCR_EL0\n" : "=r"(reg));
+		/* disable PMU */
+		reg &= ~0x1;
+		__asm__ volatile("msr PMCR_EL0, %0\n" :: "r"(reg));
+		return CMD_RET_SUCCESS;
+	}
+	if (!strcmp(argv[1], "stop")) {
+		__asm__ volatile("mrs %0, PMCR_EL0\n" : "=r"(reg));
+		/* disable PMU */
+		reg &= ~0x1;
+		__asm__ volatile("msr PMCR_EL0, %0\n" :: "r"(reg));
+		return CMD_RET_SUCCESS;
+	}
+
+	reg = simple_strtoul(argv[1], NULL, 16);
+	__asm__ volatile("msr PMCCNTR_EL0, %0\n" :: "r" (reg));
+
+	return CMD_RET_SUCCESS;
+}
+
+U_BOOT_CMD(
+	pmuc,	2,	1,	do_pmuc,
+	"test the ARM performance monitoring unit",
+	"(no argument): print the cycle counter, PMCR and overflow status\n"
+	"        start: enable the cycle counter and interrupts\n"
+	"         stop: disable the cycle counter and interrupts\n"
+	"        reset: reset the PMU\n"
+	"      <value>: set the cycle counter\n"
+);
-- 
2.14.5


--------------D5F22A90D13B9F3168213002
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--------------D5F22A90D13B9F3168213002--

