Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80598115525
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 17:24:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xw9mQ/ZM4Ah9350dkz9V6k5AaptbPmitBY9XZu/0Ct8=; b=swxdpIr3y9f6cO
	i+tK14GpHnKpkw0dWXZc2PQCBzO9x2jTHo0iE5q0cVyhNvIdqPBSQxTad8VZmNnHx8kCD7Wx4ym5I
	mBd8TSY//3T9o1HGijZ/5IKHyxcgZ9SXayD2pG1UatXLp3VkS+/YIzufmfQDSVoJz52Wi3G6XYj+e
	FyVgkE6Xf5YPc8SBqPqcDwC602HFW7uil7DfzbAeh1u3bSF8/XqArTxd1LcAKw6N0eDHUODPXKM9w
	+MSJbUrkk6BIrclrRctyAPBzQh64jdudZjDuyoXEsCM7YqQ3Mz44ltLUNV458PHDZwp7Lzd2boXUs
	Oxh2EpiGWQ7gyZ4t00Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGPT-0003PY-0v; Fri, 06 Dec 2019 16:24:51 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGPG-0003Nc-W6
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 16:24:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9D64CB190;
 Fri,  6 Dec 2019 16:24:35 +0000 (UTC)
From: Thomas Renninger <trenn@suse.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/3] sysfs: add sysfs based cpuinfo
Date: Fri,  6 Dec 2019 17:24:18 +0100
Message-Id: <20191206162421.15050-1-trenn@suse.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_082439_318009_37BAF394 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, gregkh@linuxfoundation.org, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, fschnitzlein@suse.de,
 Thomas Renninger <trenn@suse.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I picked up Felix Schnizlein's work from 2017.

It was already reviewed by Greg-KH at this time and even
pushed into linux-next tree, when it came out that the mails
never reached lkml, even the list was added to CC.

ARM people then correctly complained that this needs more review
by ARCH people. It got reverted, Felix had no time anymore and this
nice patcheset was hanging around nowhere...


Changes (by trenn) since v4:
- Do not separate bug and flag list via comma, but by space
- Adjust renamed cpu_data(c).x86_mask to cpu_data(c).x86_stepping
  due to commit b399151cb48db30ad1e0
- Introduce
  config CPUINFO_SYSFS
  and use config HAVE_CPUINFO_SYSFS as a pre-set helper only
- Set CPUINFO_SYSFS
  def_bool y

=============================================

Tested on x86_64 and aarch64 (see below).

Tested on x86_64 (virtual machine):

------------------------------------------------------------

/sys/devices/system/cpu/cpu1/info/:[0]# ls
bogomips  bugs  cpu_family  flags  model  model_name  stepping  vendor_id

for file in *;do echo $file; cat $file;echo;done
bogomips
5187.72

bugs
cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs 
itlb_multihit

cpu_family
6

flags
fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 
clflush mmx fxsr sse sse2 ss syscall nx pdpe1gb rdtscp lm constant_tsc 
rep_good nopl xtopology cpuid tsc_known_freq pni pclmulqdq ssse3 fma cx16 pcid 
sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand 
hypervisor lahf_lm abm cpuid_fault invpcid_single pti ssbd ibrs ibpb fsgsbase 
tsc_adjust bmi1 avx2 smep bmi2 erms invpcid xsaveopt arat umip

model
60

model_name
Intel Core Processor (Haswell, no TSX, IBRS)

stepping
1

vendor_id
GenuineIntel

=============================================

Tested on aarch64:

/sys/devices/system/cpu/cpu1/info/:[0]# ls
architecture  bogomips  flags  implementer  part  revision  variant

------------------------------------------------------------

for file in *;do echo $file; cat $file;echo;done
architecture
8

bogomips
40.00

flags
fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid asimdrdm

implementer
0x51

part
0xc00

revision
1

variant
0x0


Felix Schnizlein (3):
  cpuinfo: add sysfs based arch independent cpuinfo framework
  x86 cpuinfo: implement sysfs nodes for x86
  arm64 cpuinfo: implement sysfs nodes for arm64

 Documentation/ABI/testing/sysfs-devices-system-cpu | 52 ++++++++++++
 arch/Kconfig                                       | 11 +++
 arch/arm64/Kconfig                                 |  1 +
 arch/arm64/kernel/cpuinfo.c                        | 55 ++++++++++++
 arch/x86/Kconfig                                   |  1 +
 arch/x86/kernel/Makefile                           |  2 +
 arch/x86/kernel/cpuinfo.c                          | 99 ++++++++++++++++++++++
 drivers/base/Makefile                              |  1 +
 drivers/base/cpuinfo.c                             | 48 +++++++++++
 include/linux/cpuhotplug.h                         |  1 +
 include/linux/cpuinfo.h                            | 43 ++++++++++
 11 files changed, 314 insertions(+)
 create mode 100644 arch/x86/kernel/cpuinfo.c
 create mode 100644 drivers/base/cpuinfo.c
 create mode 100644 include/linux/cpuinfo.h

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
