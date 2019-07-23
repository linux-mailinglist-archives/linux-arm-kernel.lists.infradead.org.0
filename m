Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9773972209
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 00:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVL4XOBbHfT4mKAdK/aBI0kQ746KauadiulUC4h8/dM=; b=ulSxpnGaVr1ab/
	Hodfy8HyNy93MkuYtPsfZUYoQhkRbc2ogH/5xa0U1omR/QATRpblBlRYPgr7xQX2qtL9QelLaMYlJ
	Z0HBT5fqPMNImNJsJ1NWT4zOB9d+Fd6IPKRgciP2S0x/Aedvbe0dH2xNtyUJRzYr1F/ODtzpXJpOI
	JEHN3JUE3q7kYIjz0+x+kmuJLW0us1hhMceQsT+UErrSr/u9HaVOPZlb/blTP8dZkbwVgPU6BA89+
	k/EKB4FvKzAcQ+dPddUORmxFdca72KvVa1UxoaBVU5whWA5M7QOmX7jtcL6VPYLi4CsKTyOHPqnf7
	dJerh5EyvNqA27BHcwIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq30k-0002RZ-6W; Tue, 23 Jul 2019 22:11:54 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq30N-0002Qo-4N
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 22:11:32 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NMBUen114723;
 Tue, 23 Jul 2019 17:11:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563919890;
 bh=cN+mjxcD2eKO1TaVJR39L5jxSZwgC8L+qbLTnTD3Ia4=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=Sqi3Vhc2ptKLRdhmj4p/mOoN5uujnvv2NtUEm9OHC8Z6Mwq/AD5yglOVrLbnP7te5
 B7hKoo+PVDU1CGYEVMTRjfhvtvgIz11uJwnaGg6vOMPaJoLTHE0HZZPzolkiycQZsa
 rHc2xyGsudMLwEDq1sMo2HbJIuATg4J49hQ4b9Ug=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NMBUkK076682
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Jul 2019 17:11:30 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 17:11:30 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 17:11:30 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NMBUwK018344;
 Tue, 23 Jul 2019 17:11:30 -0500
Date: Tue, 23 Jul 2019 17:11:06 -0500
From: Nishanth Menon <nm@ti.com>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 2/4] arm64: dts: ti: k3-am65-main: Add IPC sub-mailbox
 nodes for R5Fs
Message-ID: <20190723221106.2rshffqma7c6l4gq@kahuna>
References: <20190722202024.14867-1-s-anna@ti.com>
 <20190722202024.14867-3-s-anna@ti.com>
 <20190723113706.ctrxtpezuknohbj3@kahuna>
 <5e8e402e-d577-f1dd-b011-8ddc4407f30b@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e8e402e-d577-f1dd-b011-8ddc4407f30b@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_151131_255555_E6820E9A 
X-CRM114-Status: GOOD (  20.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tero Kristo <t-kristo@ti.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12:54-20190723, Suman Anna wrote:
> Hi Nishanth,
> 
> On 7/23/19 6:37 AM, Nishanth Menon wrote:
> > On 15:20-20190722, Suman Anna wrote:
> >> Add the sub-mailbox nodes that are used to communicate between
> >> MPU and the two R5F remote processors present in the MCU domain.
> >> The parent mailbox cluster nodes are enabled and the interrupts
> >> associated with the Mailbox Cluster User interrupt used by the
> >> sub-mailbox nodes are also added. The GIC_SPI interrupt to be
> >> used is dynamically allocated and managed by the System Firmware
> >> through the ti-sci-intr irqchip driver.
> >>
> >> The sub-mailbox nodes utilize the System Mailbox clusters 1 and 2.
> >> These sub-mailbox nodes are added to match the hard-coded mailbox
> >> configuration used within the TI RTOS IPC software packages. The
> >> Cortex R5F processor sub-system is assumed to be running in Split
> >> mode, so a sub-mailbox node is used by each of the R5F cores. Only
> >> the sub-mailbox node from cluster 0 is used in case of Lockstep
> >> mode.
> >>
> >> Signed-off-by: Suman Anna <s-anna@ti.com>
> >> ---
> >>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 16 ++++++++++++++--
> >>  1 file changed, 14 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> >> index 0b3ea2a871ee..317563c995b1 100644
> >> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> >> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> >> @@ -426,7 +426,13 @@
> >>  			#mbox-cells = <1>;
> >>  			ti,mbox-num-users = <4>;
> >>  			ti,mbox-num-fifos = <16>;
> >> -			status = "disabled";
> >> +			interrupt-parent = <&intr_main_navss>;
> >> +			interrupts = <164 0>;
> >> +
> >> +			mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
> >> +				ti,mbox-tx = <1 0 0>;
> >> +				ti,mbox-rx = <0 0 0>;
> >> +			};
> > 
> > Should'nt this rather be a board specific node? This is completely
> > dependent on the pre-defined communication scheme with R5F firmware?
> 
> These are the default assignments we are using and inherited by all
> derivative boards leveraging the TI RTOS-side firmwares/stacks.
> Otherwise, these sub-mailboxes have to be added to every board dts file.
> One can always overwrite the values or disable the nodes if they chose a
> different configuration.


This looks strongly  like a case that is to be described in board.dts
files.

-- 
Regards,
Nishanth Menon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
