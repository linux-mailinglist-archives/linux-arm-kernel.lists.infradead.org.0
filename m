Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6261460C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 10:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4kuql5uxgrNwlitPPkYUBBI2tpx76zptu3ib9/JJmUc=; b=jDPeSHHdu4IQWT
	zX007v4dKjgiW7n5L5kqaVQhpntPMLy+ih7klA/nsz2iWN/GAF+XuEFCYAjTT3Sp4jvHxbhIOT/aW
	ScOOYIebK2rSf+JU72iCVd1fOvgNDc7yIlJ1R/mK+72soQD9cuvRL/z14sJzGVZLypAvBzTtfSPxH
	FIjsaH28Qv8wAobvREKHQhZaml3xiZ2QPYPDCyaY9NyOJNv0c98ks7u1qehYa3yfYtmkBJJtA8vRj
	kjq0KQjninhFXAFyP3eMDTIX/mB4BApeUmANsa098HICOZRBFo8N9h57wpIZHVUhYmrbrrJiu6XpV
	fcE+JrLP9aObP4kqWnUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYsd-0005E2-K2; Mon, 06 May 2019 08:21:47 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYrq-0004UH-NT
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 08:21:02 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 92FD5C0C1F92AA5F111A;
 Mon,  6 May 2019 16:20:43 +0800 (CST)
Received: from euler.huawei.com (10.175.104.193) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.439.0; Mon, 6 May 2019 16:20:40 +0800
From: Wei Li <liwei391@huawei.com>
To: <catalin.marinas@arm.com>, <will.deacon@arm.com>, <marc.zyngier@arm.com>, 
 <tglx@linutronix.de>, <jason@lakedaemon.net>
Subject: [PATCH 0/3] arm64: Add support for on-demand backtrace by NMI-like IPI
Date: Mon, 6 May 2019 16:25:39 +0800
Message-ID: <20190506082542.11357-1-liwei391@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.104.193]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_012059_224810_7BF9643F 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: julien.thierry@arm.com, daniel.thompson@linaro.org,
 lorenzo.pieralisi@arm.com, Suzuki.Poulose@arm.com, steve.capper@arm.com,
 linux-kernel@vger.kernel.org, james.morse@arm.com, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In this patch series, we add the backtracing support of other CPUs in the
system on lockups, which is based on the arm64 NMI-like IPI.

The test log is as follows (pmr_save == 0x70 means the IRQ is OFF):

[  272.165995] watchdog: BUG: soft lockup - CPU#5 stuck for 82s! [lockup_test5:255]
[  272.166342] Modules linked in: lockup_test(OE) [last unloaded: lockup_test]
[  272.166835] CPU: 5 PID: 255 Comm: lockup_test5 Tainted: G           OEL    5.1.0-rc7+ #10
[  272.167179] Hardware name: linux,dummy-virt (DT)
[  272.167432] pstate: 60000005 (nZCv daif -PAN -UAO)
[  272.167751] pc : hardlockup_test_loop+0x7c/0xe8 [lockup_test]
[  272.168529] lr : hardlockup_test_loop+0xc4/0xe8 [lockup_test]
[  272.168889] sp : ffff0000149abe00
[  272.169069] pmr_save: 000000f0
[  272.169241] x29: ffff0000149abe00 x28: 0000000000000000 
[  272.169521] x27: ffff000014983a98 x26: ffff8003ec8b23b8 
[  272.169819] x25: ffff000008d671b8 x24: 0000000000000000 
[  272.170097] x23: ffff000011081f58 x22: 000000003b9ac9ff 
[  272.170369] x21: 0000000000000005 x20: ffff000008d68110 
[  272.170642] x19: ffff000008d69000 x18: ffffffffffffffff 
[  272.170915] x17: 0000000000000000 x16: 0000000000000000 
[  272.171187] x15: ffff0000117dd708 x14: ffff0000949abb27 
[  272.171461] x13: ffff0000149abb35 x12: 0000000000000000 
[  272.171734] x11: ffff000011807000 x10: 0000000005f5e0ff 
[  272.172425] x9 : 00000000ffffffd0 x8 : 000000000002835b 
[  272.172716] x7 : 0000000000000870 x6 : ffff0000119f5bf1 
[  272.172989] x5 : ffff0000117df7a0 x4 : 0000000000000000 
[  272.173283] x3 : 0000000000000000 x2 : 3ebac9b03882d300 
[  272.173561] x1 : 0000000000000004 x0 : 00000000000000f0 
[  272.173853] Call trace:
[  272.174044]  hardlockup_test_loop+0x7c/0xe8 [lockup_test]
[  272.174322]  lockup_test+0x50/0x88 [lockup_test]
[  272.174584]  kthread+0x100/0x130
[  272.174789]  ret_from_fork+0x10/0x18
[  272.175053] Sending NMI from CPU 5 to CPUs 0-4,6-7:
[  272.176800] NMI backtrace for cpu 6
[  272.176850] CPU: 6 PID: 0 Comm: swapper/6 Tainted: G           OEL    5.1.0-rc7+ #10
[  272.176870] Hardware name: linux,dummy-virt (DT)
[  272.176889] pstate: 60000005 (nZCv daif -PAN -UAO)
[  272.176912] pc : cpu_do_idle+0x6c/0x78
[  272.176933] lr : arch_cpu_idle+0x30/0x1b0
[  272.176950] sp : ffff000011cebee0
[  272.176969] pmr_save: 00000070
[  272.176989] x29: ffff000011cebee0 x28: 0000000000000000 
[  272.177119] x27: 0000000000000000 x26: 0000000000000000 
[  272.177192] x25: 0000000000000000 x24: ffff000011483338 
[  272.177244] x23: ffff0000117dd000 x22: ffff0000117df000 
[  272.177288] x21: 0000000000000040 x20: ffff000011476000 
[  272.177336] x19: ffff0000117df7a0 x18: 0000000000000000 
[  272.177385] x17: 0000000000054164 x16: 0000000000000000 
[  272.177425] x15: 0000000000000000 x14: 0000000000000000 
[  272.177469] x13: 0000000000000000 x12: 0000000000000000 
[  272.177521] x11: 0000000000000800 x10: 0000000000000b00 
[  272.177573] x9 : ffff000011cebe70 x8 : ffff8003edecd7a0 
[  272.177634] x7 : 0000000000000010 x6 : 000000040a4f5e90 
[  272.177684] x5 : 00ffffffffffffff x4 : 00008003eeb3b000 
[  272.177732] x3 : ffff000011cebf10 x2 : 00000000000000f0 
[  272.177779] x1 : 0000000000000000 x0 : 0000000000000070 
[  272.177826] Call trace:
[  272.177847]  cpu_do_idle+0x6c/0x78
[  272.177865]  arch_cpu_idle+0x30/0x1b0
[  272.177885]  default_idle_call+0x20/0x3c
[  272.177901]  do_idle+0x1e4/0x2b0
[  272.177917]  cpu_startup_entry+0x2c/0x30
[  272.177936]  secondary_start_kernel+0x1fc/0x230
[  272.177978] NMI backtrace for cpu 0
[  272.178012] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G           OEL    5.1.0-rc7+ #10
[  272.178058] Hardware name: linux,dummy-virt (DT)
[  272.178102] pstate: 60000005 (nZCv daif -PAN -UAO)
[  272.178285] pc : cpu_do_idle+0x6c/0x78
[  272.178327] lr : arch_cpu_idle+0x30/0x1b0
[  272.178392] sp : ffff0000117d3e70
[  272.178429] pmr_save: 00000070
[  272.178496] x29: ffff0000117d3e70 x28: 0000000041240018 
[  272.178603] x27: 0000000000000000 x26: 0000000000000000 
[  272.178731] x25: 0000000000000000 x24: ffff000011483338 
[  272.178834] x23: ffff0000117dd000 x22: ffff0000117df000 
[  272.178953] x21: 0000000000000001 x20: ffff000011476000 
[  272.179061] x19: ffff0000117df7a0 x18: 0000000000000014 
[  272.179177] x17: 0000000000053c08 x16: 0000000000000000 
[  272.179270] x15: 0000000028c8de8d x14: 00000000000c8000 
[  272.179377] x13: 0000000000000000 x12: 0000000000000000 
[  272.179472] x11: 0000000000000000 x10: 0000000000000b00 
[  272.179577] x9 : ffff0000117d3e00 x8 : ffff0000117ea820 
[  272.179650] x7 : 0000000000000010 x6 : 0000000417cf7c30 
[  272.179697] x5 : 00ffffffffffffff x4 : 00008003eeaa5000 
[  272.179825] x3 : ffff0000117d3ea0 x2 : 00000000000000f0 
[  272.179888] x1 : 0000000000000000 x0 : 0000000000000070 
[  272.179990] Call trace:
[  272.180054]  cpu_do_idle+0x6c/0x78
[  272.180078]  arch_cpu_idle+0x30/0x1b0
[  272.180123]  default_idle_call+0x20/0x3c
[  272.180164]  do_idle+0x1e4/0x2b0
[  272.180213]  cpu_startup_entry+0x28/0x30
[  272.180255]  rest_init+0xbc/0xc8
[  272.180305]  arch_call_rest_init+0x14/0x1c
[  272.180340]  start_kernel+0x508/0x534
[  272.180419] NMI backtrace for cpu 2
[  272.180486] CPU: 2 PID: 0 Comm: swapper/2 Tainted: G           OEL    5.1.0-rc7+ #10
[  272.180587] Hardware name: linux,dummy-virt (DT)
[  272.180635] pstate: 60000005 (nZCv daif -PAN -UAO)
[  272.180666] pc : cpu_do_idle+0x6c/0x78
[  272.180723] lr : arch_cpu_idle+0x30/0x1b0
[  272.180756] sp : ffff000011ccbee0
[  272.180824] pmr_save: 00000070
[  272.180848] x29: ffff000011ccbee0 x28: 0000000000000000 
[  272.180956] x27: 0000000000000000 x26: 0000000000000000 
[  272.181116] x25: 0000000000000000 x24: ffff000011483338 
[  272.181221] x23: ffff0000117dd000 x22: ffff0000117df000 
[  272.181358] x21: 0000000000000004 x20: ffff000011476000 
[  272.181623] x19: ffff0000117df7a0 x18: 0000000000000035 
[  272.181697] x17: 00000000000533e8 x16: 0000000000000000 
[  272.181997] x15: 0000000000000019 x14: ffff000011801128 
[  272.182402] x13: 0000000000000000 x12: 0000000000000000 
[  272.183012] x11: 0000000000000800 x10: 0000000000000b00 
[  272.183932] x9 : ffff000011ccbe70 x8 : ffff8003ede829e0 
[  272.184055] x7 : 0000000000000010 x6 : 000000040a30da10 
[  272.184218] x5 : 00ffffffffffffff x4 : 00008003eead7000 
[  272.184329] x3 : ffff000011ccbf10 x2 : 00000000000000f0 
[  272.184671] x1 : 0000000000000000 x0 : 0000000000000070 
[  272.185191] Call trace:
[  272.185226]  cpu_do_idle+0x6c/0x78
[  272.185432]  arch_cpu_idle+0x30/0x1b0
[  272.185670]  default_idle_call+0x20/0x3c
[  272.185752]  do_idle+0x1e4/0x2b0
[  272.185781]  cpu_startup_entry+0x2c/0x30
[  272.185832]  secondary_start_kernel+0x1fc/0x230
[  272.185889] NMI backtrace for cpu 4
[  272.185958] CPU: 4 PID: 0 Comm: swapper/4 Tainted: G           OEL    5.1.0-rc7+ #10
[  272.186004] Hardware name: linux,dummy-virt (DT)
[  272.186080] pstate: 60000005 (nZCv daif -PAN -UAO)
[  272.186169] pc : cpu_do_idle+0x6c/0x78
[  272.186232] lr : arch_cpu_idle+0x30/0x1b0
[  272.186461] sp : ffff000011cdbee0
[  272.186489] pmr_save: 00000070
[  272.186521] x29: ffff000011cdbee0 x28: 0000000000000000 
[  272.186606] x27: 0000000000000000 x26: 0000000000000000 
[  272.186675] x25: 0000000000000000 x24: ffff000011483338 
[  272.186804] x23: ffff0000117dd000 x22: ffff0000117df000 
[  272.186898] x21: 0000000000000010 x20: ffff000011476000 
[  272.186968] x19: ffff0000117df7a0 x18: 0000000000000000 
[  272.187070] x17: 0000000000054204 x16: 0000000000000000 
[  272.187171] x15: 0000000000000000 x14: 0000000000000000 
[  272.187265] x13: 0000000000000000 x12: 0000000000000000 
[  272.187338] x11: 0000000000000800 x10: 0000000000000b00 
[  272.187432] x9 : ffff000011cdbe70 x8 : ffff8003ede87620 
[  272.187542] x7 : 0000000000000010 x6 : 0000000412985750 
[  272.187629] x5 : 00ffffffffffffff x4 : 00008003eeb09000 
[  272.187729] x3 : ffff000011cdbf10 x2 : 00000000000000f0 
[  272.187824] x1 : 0000000000000000 x0 : 0000000000000070 
[  272.187904] Call trace:
[  272.187938]  cpu_do_idle+0x6c/0x78
[  272.187952]  arch_cpu_idle+0x30/0x1b0
[  272.188020]  default_idle_call+0x20/0x3c
[  272.188046]  do_idle+0x1e4/0x2b0
[  272.188139]  cpu_startup_entry+0x2c/0x30
[  272.188225]  secondary_start_kernel+0x1fc/0x230
[  272.188381] NMI backtrace for cpu 1
[  272.188459] CPU: 1 PID: 253 Comm: lockup_test1 Tainted: G           OEL    5.1.0-rc7+ #10
[  272.188538] Hardware name: linux,dummy-virt (DT)
[  272.188573] pstate: 80000005 (Nzcv daif -PAN -UAO)
[  272.188627] pc : hardlockup_test_loop+0xa0/0xe8 [lockup_test]
[  272.188709] lr : hardlockup_test_loop+0x6c/0xe8 [lockup_test]
[  272.188746] sp : ffff000014973e00
[  272.188823] pmr_save: 00000070
[  272.188842] x29: ffff000014973e00 x28: 0000000000000000 
[  272.189010] x27: ffff000014983a98 x26: ffff8003ed835038 
[  272.189079] x25: ffff000008d671b8 x24: 0000000000000000 
[  272.189226] x23: ffff000011081f58 x22: 000000003b9ac9ff 
[  272.189321] x21: 0000000000000001 x20: ffff000008d68110 
[  272.189410] x19: ffff000008d69000 x18: ffffffffffffffff 
[  272.189549] x17: 0000000000000000 x16: 0000000000000000 
[  272.189640] x15: ffff0000117dd708 x14: ffff000094973b27 
[  272.189673] x13: ffff000014973b35 x12: 0000000000000000 
[  272.189726] x11: ffff000011807000 x10: 0000000005f5e0ff 
[  272.189829] x9 : 00000000ffffffd0 x8 : 0000000000063aab 
[  272.189916] x7 : 000000000000086c x6 : ffff0000119f5bf1 
[  272.190011] x5 : ffff0000117df7a0 x4 : 0000000000000000 
[  272.190117] x3 : 0000000000000000 x2 : 3ebac9b03882d300 
[  272.190234] x1 : 0000000004208040 x0 : 00000000397e3f58 
[  272.190388] Call trace:
[  272.190439]  hardlockup_test_loop+0xa0/0xe8 [lockup_test]
[  272.190477]  lockup_test+0x50/0x88 [lockup_test]
[  272.190510]  kthread+0x100/0x130
[  272.190577]  ret_from_fork+0x10/0x18
[  272.190730] NMI backtrace for cpu 3
[  272.190767] CPU: 3 PID: 254 Comm: lockup_test3 Tainted: G           OEL    5.1.0-rc7+ #10
[  272.190800] Hardware name: linux,dummy-virt (DT)
[  272.190825] pstate: 80000005 (Nzcv daif -PAN -UAO)
[  272.190860] pc : hardlockup_test_loop+0xa0/0xe8 [lockup_test]
[  272.190898] lr : hardlockup_test_loop+0x6c/0xe8 [lockup_test]
[  272.190932] sp : ffff00001499be00
[  272.190993] pmr_save: 00000070
[  272.191054] x29: ffff00001499be00 x28: 0000000000000000 
[  272.191171] x27: ffff000014983a98 x26: ffff8003eca41eb8 
[  272.191249] x25: ffff000008d671b8 x24: 0000000000000000 
[  272.191391] x23: ffff000011081f58 x22: 000000003b9ac9ff 
[  272.191501] x21: 0000000000000003 x20: ffff000008d68110 
[  272.191593] x19: ffff000008d69000 x18: ffffffffffffffff 
[  272.191718] x17: 0000000000000000 x16: 0000000000000000 
[  272.191895] x15: ffff0000117dd708 x14: ffff00009499bb27 
[  272.192062] x13: ffff00001499bb35 x12: 0000000000000000 
[  272.192282] x11: ffff000011807000 x10: 0000000005f5e0ff 
[  272.192451] x9 : 00000000ffffffd0 x8 : 00000000000dceb8 
[  272.192555] x7 : 000000000000086e x6 : ffff0000119f5bf1 
[  272.192715] x5 : ffff0000117df7a0 x4 : 0000000000000000 
[  272.192887] x3 : 0000000000000000 x2 : 3ebac9b03882d300 
[  272.192962] x1 : 0000000004208040 x0 : 0000000039e93260 
[  272.193041] Call trace:
[  272.193077]  hardlockup_test_loop+0xa0/0xe8 [lockup_test]
[  272.193117]  lockup_test+0x50/0x88 [lockup_test]
[  272.193152]  kthread+0x100/0x130
[  272.193225]  ret_from_fork+0x10/0x18
[  272.193421] NMI backtrace for cpu 7
[  272.193475] CPU: 7 PID: 256 Comm: lockup_test7 Tainted: G           OEL    5.1.0-rc7+ #10
[  272.193495] Hardware name: linux,dummy-virt (DT)
[  272.193562] pstate: 80000005 (Nzcv daif -PAN -UAO)
[  272.193619] pc : hardlockup_test_loop+0xa0/0xe8 [lockup_test]
[  272.193634] lr : hardlockup_test_loop+0x6c/0xe8 [lockup_test]
[  272.193647] sp : ffff0000149bbe00
[  272.193661] pmr_save: 00000070
[  272.193710] x29: ffff0000149bbe00 x28: 0000000000000000 
[  272.193848] x27: ffff000014983a98 x26: ffff8003ecb5fbb8 
[  272.193921] x25: ffff000008d671b8 x24: 0000000000000000 
[  272.194056] x23: ffff000011081f58 x22: 000000003b9ac9ff 
[  272.194162] x21: 0000000000000007 x20: ffff000008d68110 
[  272.194263] x19: ffff000008d69000 x18: ffffffffffffffff 
[  272.194343] x17: 0000000000000000 x16: 0000000000000000 
[  272.194463] x15: ffff0000117dd708 x14: ffff0000949bbb27 
[  272.194566] x13: ffff0000149bbb35 x12: ffff00001148898f 
[  272.194667] x11: ffff000011807000 x10: 0000000005f5e0ff 
[  272.194809] x9 : 00000000ffffffd0 x8 : 0000000000066bb1 
[  272.194962] x7 : 000000000000086d x6 : ffff0000119f5bf1 
[  272.195121] x5 : ffff0000117df7a0 x4 : 0000000000000000 
[  272.195249] x3 : 0000000000000000 x2 : 3ebac9b03882d300 
[  272.195344] x1 : 0000000004208040 x0 : 000000003b728080 
[  272.195428] Call trace:
[  272.195463]  hardlockup_test_loop+0xa0/0xe8 [lockup_test]
[  272.195540]  lockup_test+0x50/0x88 [lockup_test]
[  272.195600]  kthread+0x100/0x130
[  272.195638]  ret_from_fork+0x10/0x18

Wei Li (3):
  arm64: Add pseudo NMI support of GICv3 SGIs
  arm64: Add support for on-demand backtrace of other CPUs
  arm64: Avoid entering NMI context improperly

 arch/arm64/include/asm/arch_gicv3.h    |  8 ++++
 arch/arm64/include/asm/hardirq.h       |  2 +-
 arch/arm64/include/asm/irq.h           |  6 +++
 arch/arm64/include/asm/smp.h           |  2 +
 arch/arm64/kernel/smp.c                | 36 ++++++++++++++++-
 drivers/irqchip/irq-gic-v3.c           | 54 ++++++++++++++++++--------
 include/linux/irqchip/arm-gic-common.h |  1 +
 include/linux/irqchip/arm-gic-v3.h     |  1 +
 8 files changed, 92 insertions(+), 18 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
