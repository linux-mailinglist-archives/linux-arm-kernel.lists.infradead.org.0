Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B7522130
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 03:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=342K1U9DJ9PGgseqiWU/pxYD1QJon+yRTEmkign0dBk=; b=jb+i6Ynky9FDdjJnRpQzR/C+p
	1aBpULFgIg/r4s2A5p6d9gbXpOHYvYq5VQV8mXx0gTssBuYSK5oaGk1EARm6FYlOsZBCYC/HkpNsI
	kmb9uCakLGv+JTNZRdBrrzKXiqDAUQyfmBBF4kKN4NvQa6j/3KHJziNEXOm0+vWu7tub8ZyRvc7WJ
	5JSXW6A8W/SEsz395HFWsh4f4DxdpRr1cBvg1GOwUnCNmPFMkXmNdHnNSu6W21/vqV4XiLK8AkFL9
	yDjGAkIDbb4nKQ0j54QZWc0amLn1Hrpt2y30jqx/0bQHbPwQ/tJ/ttUY00VFL61b1IcVnaMAAptlV
	OhRdTzvPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRocb-0005Rl-UM; Sat, 18 May 2019 01:58:49 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRocU-0005RM-7g
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 01:58:44 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cdf66d00000>; Fri, 17 May 2019 18:58:41 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 17 May 2019 18:58:39 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 17 May 2019 18:58:39 -0700
Received: from [10.25.74.217] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sat, 18 May
 2019 01:58:32 +0000
Subject: Re: [PATCH V6 02/15] PCI/PME: Export pcie_pme_disable_msi() &
 pcie_pme_no_msi() APIs
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20190513050626.14991-1-vidyas@nvidia.com>
 <20190513050626.14991-3-vidyas@nvidia.com>
 <20190513072539.GA27708@infradead.org>
 <3a8cea93-2aeb-e5e2-4d56-f0c6449073c3@nvidia.com>
 <20190516133426.GC101793@google.com>
 <bd08ccaa-c6ee-f966-91e4-bcd5d99d5cf2@nvidia.com>
 <20190517132453.GA30700@google.com>
 <ba611a45-9589-8dce-58e1-d99dd463265d@nvidia.com>
 <20190517185545.GB49425@google.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <bf220eba-f9d7-81f3-6b75-db463c74fbfa@nvidia.com>
Date: Sat, 18 May 2019 07:28:29 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190517185545.GB49425@google.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1558144721; bh=imsCMc9pMzH0x1z4chiZIBu4CmzKLhdBfR9mkxX2haY=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=F6Be5xwQ3sFV2qa8WB9r7Ltw4gVLIxaSajqybSA7oEB10RFkn954eRlW5Ll/kmoIq
 KSHQxtwJz+qxy1ycXWhHXsKxnaRCTCHLYd8R9zYmt+OI6pba+IiJL2aBqV4W0/Ri7I
 PAmNgZDNZnxNQg6lfWJUUsJiuRQvnv5Tha0JVNm4GRPQqA5WQ9PEl+YSU1F8iORF+K
 IlHPLLL3c/k/BZvlMR753FbXavW+Edp4hcK4eOWh5kksCUVE1jiRj70WNMC/vVZJcv
 PFJO5gMnnqPSCZDuinj05v1CiSwbo1RMiEkIVjX3iiJl8VDuTYWLgPq/go9zS5ueZP
 K6+QYFNA2Ehsg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_185842_296835_DDA61A73 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, jonathanh@nvidia.com,
 Christoph Hellwig <hch@infradead.org>, kthota@nvidia.com,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 linux-tegra@vger.kernel.org, kishon@ti.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/18/2019 12:25 AM, Bjorn Helgaas wrote:
> On Fri, May 17, 2019 at 11:23:36PM +0530, Vidya Sagar wrote:
>> On 5/17/2019 6:54 PM, Bjorn Helgaas wrote:
>>> Do you have "lspci -vvxxx" output for the root ports handy?
>>>
>>> If there's some clue in the standard config space that would tell us
>>> that MSI works for some events but not others, we could make the PCI
>>> core pay attention it.  That would be the best solution because it
>>> wouldn't require Tegra-specific code.
>>
>> Here is the output of 'lspci vvxxx' for one of Tegra194's root ports.
> 
> Thanks!
> 
> This port advertises both MSI and MSI-X, and neither one is enabled.
> This particular port doesn't have a slot, so hotplug isn't applicable
> to it.
> 
> But if I understand correctly, if MSI or MSI-X were enabled and the
> port had a slot, the port would generate MSI/MSI-X hotplug interrupts.
> But PME and AER events would still cause INTx interrupts (even with
> MSI or MSI-X enabled).
> 
> Do I have that right?  I just want to make sure that the reason for
> PME being INTx is a permanent hardware choice and that it's not
> related to MSI and MSI-X currently being disabled.
Yes. Thats right. Its hardware choice that our hardware engineers made to
use INTx for PME instead of MSI irrespective of MSI/MSI-X enabled/disabled
in the root port.

> 
>> 0005:00:00.0 PCI bridge: NVIDIA Corporation Device 1ad0 (rev a1) (prog-if 00 [Normal decode])
>> 	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR+ FastB2B- DisINTx-
>> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
>> 	Latency: 0
>> 	Interrupt: pin A routed to IRQ 50
>> 	Bus: primary=00, secondary=01, subordinate=ff, sec-latency=0
>> 	I/O behind bridge: None
>> 	Memory behind bridge: 40000000-400fffff [size=1M]
>> 	Prefetchable memory behind bridge: None
>> 	Secondary status: 66MHz- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- <SERR- <PERR-
>> 	BridgeCtl: Parity- SERR+ NoISA- VGA- VGA16- MAbort- >Reset- FastB2B-
>> 		PriDiscTmr- SecDiscTmr- DiscTmrStat- DiscTmrSERREn-
>> 	Capabilities: [40] Power Management version 3
>> 		Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
>> 		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
>> 	Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
>> 		Address: 0000000000000000  Data: 0000
>> 		Masking: 00000000  Pending: 00000000
>> 	Capabilities: [70] Express (v2) Root Port (Slot-), MSI 00
>> 		DevCap:	MaxPayload 256 bytes, PhantFunc 0
>> 			ExtTag- RBE+
>> 		DevCtl:	CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
>> 			RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop+
>> 			MaxPayload 128 bytes, MaxReadReq 512 bytes
>> 		DevSta:	CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+ TransPend-
>> 		LnkCap:	Port #0, Speed 16GT/s, Width x8, ASPM L0s L1, Exit Latency L0s <1us, L1 <64us
>> 			ClockPM- Surprise+ LLActRep+ BwNot+ ASPMOptComp+
>> 		LnkCtl:	ASPM Disabled; RCB 64 bytes Disabled- CommClk+
>> 			ExtSynch- ClockPM- AutWidDis- BWInt+ AutBWInt-
>> 		LnkSta:	Speed 5GT/s (downgraded), Width x1 (downgraded)
>> 			TrErr- Train- SlotClk+ DLActive+ BWMgmt+ ABWMgmt+
>> 		RootCtl: ErrCorrectable- ErrNon-Fatal- ErrFatal- PMEIntEna+ CRSVisible+
>> 		RootCap: CRSVisible+
>> 		RootSta: PME ReqID 0000, PMEStatus- PMEPending-
>> 		DevCap2: Completion Timeout: Range ABCD, TimeoutDis+, LTR+, OBFF Not Supported ARIFwd-
>> 			 AtomicOpsCap: Routing- 32bit- 64bit- 128bitCAS-
>> 		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-, LTR+, OBFF Disabled ARIFwd-
>> 			 AtomicOpsCtl: ReqEn- EgressBlck-
>> 		LnkCtl2: Target Link Speed: 16GT/s, EnterCompliance- SpeedDis-
>> 			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
>> 			 Compliance De-emphasis: -6dB
>> 		LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-, EqualizationPhase1-
>> 			 EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
>> 	Capabilities: [b0] MSI-X: Enable- Count=8 Masked-
>> 		Vector table: BAR=2 offset=00000000
>> 		PBA: BAR=2 offset=00010000
>> 	Capabilities: [100 v2] Advanced Error Reporting
>> 		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
>> 		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
>> 		UESvrt:	DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-
>> 		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-
>> 		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
>> 		AERCap:	First Error Pointer: 00, ECRCGenCap+ ECRCGenEn- ECRCChkCap+ ECRCChkEn-
>> 			MultHdrRecCap+ MultHdrRecEn- TLPPfxPres- HdrLogCap-
>> 		HeaderLog: 00000000 00000000 00000000 00000000
>> 		RootCmd: CERptEn+ NFERptEn+ FERptEn+
>> 		RootSta: CERcvd- MultCERcvd- UERcvd- MultUERcvd-
>> 			 FirstFatal- NonFatalMsg- FatalMsg- IntMsg 0
>> 		ErrorSrc: ERR_COR: 0000 ERR_FATAL/NONFATAL: 0000
>> 	Capabilities: [148 v1] Secondary PCI Express <?>
>> 	Capabilities: [168 v1] Physical Layer 16.0 GT/s <?>
>> 	Capabilities: [190 v1] Lane Margining at the Receiver <?>
>> 	Capabilities: [1c0 v1] L1 PM Substates
>> 		L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+ ASPM_L1.1+ L1_PM_Substates+
>> 			  PortCommonModeRestoreTime=60us PortTPowerOnTime=40us
>> 		L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
>> 			   T_CommonMode=10us LTR1.2_Threshold=0ns
>> 		L1SubCtl2: T_PwrOn=10us
>> 	Capabilities: [1d0 v1] Vendor Specific Information: ID=0002 Rev=4 Len=100 <?>
>> 	Capabilities: [2d0 v1] Vendor Specific Information: ID=0001 Rev=1 Len=038 <?>
>> 	Capabilities: [308 v1] Data Link Feature <?>
>> 	Capabilities: [314 v1] Precision Time Measurement
>> 		PTMCap: Requester:+ Responder:+ Root:+
>> 		PTMClockGranularity: 16ns
>> 		PTMControl: Enabled:- RootSelected:-
>> 		PTMEffectiveGranularity: Unknown
>> 	Capabilities: [320 v1] Vendor Specific Information: ID=0004 Rev=1 Len=054 <?>
>> 	Kernel driver in use: pcieport
>> 00: de 10 d0 1a 07 01 10 00 a1 00 04 06 00 00 01 00
>> 10: 00 00 00 00 00 00 00 00 00 01 ff 00 f0 00 00 00
>> 20: 00 40 00 40 f1 ff 01 00 00 00 00 00 00 00 00 00
>> 30: 00 00 00 00 40 00 00 00 00 00 00 00 32 01 02 00
>> 40: 01 50 c3 c9 08 00 00 00 00 00 00 00 00 00 00 00
>> 50: 05 70 80 01 00 00 00 00 00 00 00 00 00 00 00 00
>> 60: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>> 70: 10 b0 42 00 01 80 00 00 1f 28 10 00 84 4c 7b 00
>> 80: 40 04 12 f0 00 00 00 00 c0 03 40 00 18 00 01 00
>> 90: 00 00 00 00 1f 0c 01 00 00 04 00 00 1e 00 80 01
>> a0: 04 00 00 02 00 00 00 00 00 00 00 00 00 00 00 00
>> b0: 11 00 07 00 02 00 00 00 02 00 01 00 00 00 00 00
>> c0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>> d0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>> e0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>> f0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
