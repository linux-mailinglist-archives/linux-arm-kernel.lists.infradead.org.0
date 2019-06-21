Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8434DF7C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 06:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M1ObBArBf9/b3D9qrs/FXVT87oTwXkUKs82v2Y8TSBU=; b=DqxunVYCDJ+gqf
	nSFNg9ryhzfcxvXK5o34ZqJpZ4QJ1X03jxFG9qV5hwaYzYcIRJecqSFgIVXAc4cQWM4ICvz0M7Jvw
	czk3lz6tu/mTjWB6ACI+cNxotTbdsZFiqB26ztpFErfu8Zs46ZN3BAw4SJDMf+vuksN0Sv1LKRHjm
	LqCCuxTD0OGeVhgwvLmNvnXH0+tkTITlIoE/ucylvBQCFdd/p+l7fiNwNvZqdb0nyRoYCXigH2e5y
	Dqt8LmldXufQN7x0Wi/bap18o3ENdaUxk5lR+kt3d/JS1tj+tLS2v+lFp+5LEAzqVc1sX4sS56391
	O5At0GeUx1FJ+H0NBzjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heAmG-0005DE-5X; Fri, 21 Jun 2019 04:03:52 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heAm4-0005CA-SO
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 04:03:43 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 9F6FC806A8;
 Fri, 21 Jun 2019 16:03:28 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1561089808;
 bh=DAK5yPtszayhwjnlTmBc3QE84ABr3J9qrB+j9wai8/U=;
 h=From:To:Subject:Date;
 b=CVXLgrRQjsbJfXD/0VBKrS9Y2Ml7wN6I8sMiz3AN1/RrzxW/+MH8Lz8MV2q/05/Tz
 LD5JHSXjt5+aQZKf9yXzapBpXw4ocA1SHfBQMJGEj7BZykMgHdVhPKp4NR7piiloBU
 10kQnDowcLz2X1mPjhO4COv/KfsbZgstTzIu/tq2aUkDKr33PJbqEFEu66uchqgyXN
 oQLt/RON+sdaJf+op30kgTcTyvnsICCV5QHVhNlaT7Yd4aND1d955RtiTfrNqiy9tf
 c/7jt6P3bVgeyA2uBGSHSJdD4Z/oy7zV6DYN5hGF9s1dUHtlrk4xkuRp3YFTlWbhPq
 /BNsJI2dwoTUQ==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d0c57100000>; Fri, 21 Jun 2019 16:03:28 +1200
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Fri, 21 Jun 2019 16:03:28 +1200
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Fri, 21 Jun 2019 16:03:28 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Jason Cooper
 <jason@lakedaemon.net>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, "Bjorn
 Helgaas" <bhelgaas@google.com>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Kirkwood PCI Express and bridges
Thread-Topic: Kirkwood PCI Express and bridges
Thread-Index: AQHVJ+ZHqWcIqP7kgUutSbOlaor9TQ==
Date: Fri, 21 Jun 2019 04:03:27 +0000
Message-ID: <403548ec3a7543b08ca32e47a1465e70@svr-chch-ex1.atlnz.lc>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:3a2c:4aff:fe70:2b02]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_210341_304125_F02D570D 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

I'm in the process of updating the kernel version used on our products 
from 4.4 -> 5.1.

We have one product that uses a Kirkwood CPU, IDT PCI bridge and Marvell 
Switch ASIC. The Switch ASIC presents as multiple PCI devices.

The hardware setup looks like this
                                        __________
[ Kirkwood ] --- [ IDT 5T5 ] ---+---  |          |
                                 +---  |  Switch  |
                                 +---  |          |
                                 +---  |__________|

On the 4.4 based kernel things are fine

[root@awplus flash]# lspci -t
-[0000:00]---01.0-[01-06]----00.0-[02-06]--+-02.0-[03]----00.0
                                            +-03.0-[04]----00.0
                                            +-04.0-[05]----00.0
                                            \-05.0-[06]----00.0

But on the 5.1 based kernel things get a little weird

[root@awplus flash]# lspci -t
-[0000:00]---01.0-[01-06]--+-00.0-[02-06]--
                            +-01.0
                            +-02.0-[02-06]--
                            +-03.0-[02-06]--
                            +-04.0-[02-06]--
                            +-05.0-[02-06]--
                            +-06.0-[02-06]--
                            +-07.0-[02-06]--
                            +-08.0-[02-06]--
                            +-09.0-[02-06]--
                            +-0a.0-[02-06]--
                            +-0b.0-[02-06]--
                            +-0c.0-[02-06]--
                            +-0d.0-[02-06]--
                            +-0e.0-[02-06]--
                            +-0f.0-[02-06]--
                            +-10.0-[02-06]--
                            +-11.0-[02-06]--
                            +-12.0-[02-06]--
                            +-13.0-[02-06]--
                            +-14.0-[02-06]--
                            +-15.0-[02-06]--
                            +-16.0-[02-06]--
                            +-17.0-[02-06]--
                            +-18.0-[02-06]--
                            +-19.0-[02-06]--
                            +-1a.0-[02-06]--
                            +-1b.0-[02-06]--
                            +-1c.0-[02-06]--
                            +-1d.0-[02-06]--
                            +-1e.0-[02-06]--
                            \-1f.0-[02-06]--+-02.0-[03]----00.0
                                            +-03.0-[04]----00.0
                                            +-04.0-[05]----00.0
                                            \-05.0-[06]----00.0


I'll start bisecting to see where things started going wrong. I just 
wondered if this rings any bells for anyone.

The startup output also seems to be quite unhappy

Detected board: alliedtelesis,SBx81GC40
Booting into Linux kernel ...
** 143 printk messages dropped **
pci 0000:01:19.0: PME# supported from D0 D3hot D3cold
pci 0000:01:1a.0: [111d:803c] type 01 class 0x060400
pci 0000:01:1a.0: PME# supported from D0 D3hot D3cold
pci 0000:01:1b.0: [111d:803c] type 01 class 0x060400
pci 0000:01:1b.0: PME# supported from D0 D3hot D3cold
pci 0000:01:1c.0: [111d:803c] type 01 class 0x060400
pci 0000:01:1c.0: PME# supported from D0 D3hot D3cold
pci 0000:01:1d.0: [111d:803c] type 01 class 0x060400
pci 0000:01:1d.0: PME# supported from D0 D3hot D3cold
pci 0000:01:1e.0: [111d:803c] type 01 class 0x060400
pci 0000:01:1e.0: PME# supported from D0 D3hot D3cold
pci 0000:01:1f.0: [111d:803c] type 01 class 0x060400
pci 0000:01:1f.0: PME# supported from D0 D3hot D3cold
PCI: bus1: Fast back to back transfers disabled
pci 0000:01:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:02.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:03.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:04.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:05.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:06.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:07.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:08.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:09.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:0a.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:0b.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:0c.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:0d.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:0e.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:0f.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:10.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:11.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:12.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:13.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:14.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:15.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:16.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:17.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:18.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:19.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:1a.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:1b.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:1c.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:1d.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:1e.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:1f.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:02:02.0: [111d:803c] type 01 class 0x060400
pci 0000:02:02.0: enabling Extended Tags
pci 0000:02:02.0: PME# supported from D0 D3hot D3cold
pci 0000:02:03.0: [111d:803c] type 01 class 0x060400
pci 0000:02:03.0: enabling Extended Tags
pci 0000:02:03.0: PME# supported from D0 D3hot D3cold
pci 0000:02:04.0: [111d:803c] type 01 class 0x060400
pci 0000:02:04.0: enabling Extended Tags
pci 0000:02:04.0: PME# supported from D0 D3hot D3cold
pci 0000:02:05.0: [111d:803c] type 01 class 0x060400
pci 0000:02:05.0: enabling Extended Tags
pci 0000:02:05.0: PME# supported from D0 D3hot D3cold
PCI: bus2: Fast back to back transfers disabled
pci 0000:02:02.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:02:03.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:02:04.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:02:05.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:03:00.0: [11ab:e023] type 00 class 0x058000
pci 0000:03:00.0: reg 0x10: [mem 0xd0000000-0xd00fffff 64bit pref]
pci 0000:03:00.0: reg 0x18: [mem 0x00000000-0x03ffffff 64bit]
PCI: bus3: Fast back to back transfers disabled
pci_bus 0000:03: busn_res: [bus 03-ff] end is updated to 03
pci 0000:04:00.0: [11ab:e023] type 00 class 0x058000
pci 0000:04:00.0: reg 0x10: [mem 0xd0000000-0xd00fffff 64bit pref]
pci 0000:04:00.0: reg 0x18: [mem 0x00000000-0x03ffffff 64bit]
PCI: bus4: Fast back to back transfers disabled
pci_bus 0000:04: busn_res: [bus 04-ff] end is updated to 04
pci 0000:05:00.0: [11ab:e023] type 00 class 0x058000
pci 0000:05:00.0: reg 0x10: [mem 0xd0000000-0xd00fffff 64bit pref]
pci 0000:05:00.0: reg 0x18: [mem 0x00000000-0x03ffffff 64bit]
PCI: bus5: Fast back to back transfers disabled
pci_bus 0000:05: busn_res: [bus 05-ff] end is updated to 05
pci 0000:06:00.0: [11ab:e023] type 00 class 0x058000
pci 0000:06:00.0: reg 0x10: [mem 0xd0000000-0xd00fffff 64bit pref]
pci 0000:06:00.0: reg 0x18: [mem 0x00000000-0x03ffffff 64bit]
PCI: bus6: Fast back to back transfers disabled
pci_bus 0000:06: busn_res: [bus 06-ff] end is updated to 06
pci_bus 0000:02: busn_res: [bus 02-ff] end is updated to 06
pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 06
pci 0000:00:01.0: BAR 8: no space for [mem size 0x1c000000]
pci 0000:00:01.0: BAR 8: failed to assign [mem size 0x1c000000]
pci 0000:00:01.0: BAR 6: assigned [mem 0xe0000000-0xe00007ff pref]
pci 0000:01:01.0: BAR 2: no space for [mem size 0x08000000]
pci 0000:01:01.0: BAR 2: failed to assign [mem size 0x08000000]
pci 0000:01:00.0: BAR 8: no space for [mem size 0x10000000]
pci 0000:01:00.0: BAR 8: failed to assign [mem size 0x10000000]
pci 0000:01:00.0: BAR 9: no space for [mem size 0x00400000 64bit pref]
pci 0000:01:00.0: BAR 9: failed to assign [mem size 0x00400000 64bit pref]
pci 0000:01:01.0: BAR 0: no space for [mem size 0x00100000 64bit pref]
pci 0000:01:01.0: BAR 0: failed to assign [mem size 0x00100000 64bit pref]
pci 0000:02:02.0: BAR 8: no space for [mem size 0x04000000]
pci 0000:02:02.0: BAR 8: failed to assign [mem size 0x04000000]
pci 0000:02:03.0: BAR 8: no space for [mem size 0x04000000]
pci 0000:02:03.0: BAR 8: failed to assign [mem size 0x04000000]
pci 0000:02:04.0: BAR 8: no space for [mem size 0x04000000]
pci 0000:02:04.0: BAR 8: failed to assign [mem size 0x04000000]
pci 0000:02:05.0: BAR 8: no space for [mem size 0x04000000]
pci 0000:02:05.0: BAR 8: failed to assign [mem size 0x04000000]
pci 0000:02:02.0: BAR 9: no space for [mem size 0x00100000 64bit pref]
pci 0000:02:02.0: BAR 9: failed to assign [mem size 0x00100000 64bit pref]
pci 0000:02:03.0: BAR 9: no space for [mem size 0x00100000 64bit pref]
pci 0000:02:03.0: BAR 9: failed to assign [mem size 0x00100000 64bit pref]
pci 0000:02:04.0: BAR 9: no space for [mem size 0x00100000 64bit pref]
pci 0000:02:04.0: BAR 9: failed to assign [mem size 0x00100000 64bit pref]
pci 0000:02:05.0: BAR 9: no space for [mem size 0x00100000 64bit pref]
pci 0000:02:05.0: BAR 9: failed to assign [mem size 0x00100000 64bit pref]
pci 0000:03:00.0: BAR 2: no space for [mem size 0x04000000 64bit]
pci 0000:03:00.0: BAR 2: failed to assign [mem size 0x04000000 64bit]
pci 0000:03:00.0: BAR 0: no space for [mem size 0x00100000 64bit pref]
pci 0000:03:00.0: BAR 0: failed to assign [mem size 0x00100000 64bit pref]
pci 0000:02:02.0: PCI bridge to [bus 03]
pci 0000:04:00.0: BAR 2: no space for [mem size 0x04000000 64bit]
pci 0000:04:00.0: BAR 2: failed to assign [mem size 0x04000000 64bit]
pci 0000:04:00.0: BAR 0: no space for [mem size 0x00100000 64bit pref]
pci 0000:04:00.0: BAR 0: failed to assign [mem size 0x00100000 64bit pref]
pci 0000:02:03.0: PCI bridge to [bus 04]
pci 0000:05:00.0: BAR 2: no space for [mem size 0x04000000 64bit]
pci 0000:05:00.0: BAR 2: failed to assign [mem size 0x04000000 64bit]
pci 0000:05:00.0: BAR 0: no space for [mem size 0x00100000 64bit pref]
pci 0000:05:00.0: BAR 0: failed to assign [mem size 0x00100000 64bit pref]
pci 0000:02:04.0: PCI bridge to [bus 05]
pci 0000:06:00.0: BAR 2: no space for [mem size 0x04000000 64bit]
pci 0000:06:00.0: BAR 2: failed to assign [mem size 0x04000000 64bit]
pci 0000:06:00.0: BAR 0: no space for [mem size 0x00100000 64bit pref]
pci 0000:06:00.0: BAR 0: failed to assign [mem size 0x00100000 64bit pref]
pci 0000:02:05.0: PCI bridge to [bus 06]
pci 0000:01:00.0: PCI bridge to [bus 02-06]
pci 0000:00:01.0: PCI bridge to [bus 01-06]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
