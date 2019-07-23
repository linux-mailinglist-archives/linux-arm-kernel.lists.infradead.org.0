Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A5571E0F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 19:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iK6SO+eeQl28N3EVJQKZoJcfOjsJlVJIBgWwlqCPmnc=; b=SNUTdWXnq/ghwv
	vS/BRetwnLW6TaTFPlBKaqgv6nfd030M7wnsrCGRiYbzhKKrQuHcELn1HfO9ANuXffcVFvCGcGlk+
	0rtAfzjZlDfQShVZbP9Rm62RbG/DhtiBcZxhAFsgQBVC+mK2JVsYue4WRvTyRJZP3SPyAAwtA1NJC
	R15rbiG/A8CRKBKrFIBkknt3Scq7I826wyGh2WALIuRBrod733t3qrgdpVEPqKLfpG191+l7JsOwz
	81tyhDYueJ5ZOeMUWOX0bWjRMjPlZPaEOtok/LzrqVKoiuO5YUEEPNqp0uaa5NSAkZTDUs4e8d/BV
	89onlSUmsE9M5wqsJZaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpyzQ-00025F-1D; Tue, 23 Jul 2019 17:54:16 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpyzC-00024t-Fz
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:54:03 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NHs1o1108569;
 Tue, 23 Jul 2019 12:54:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563904442;
 bh=x4epcqtJ1Drn8/wnfkdUh46HQkIHZpWkOiI13C+4ohs=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=jxfGkw/U8P8UMKIQD9f8Jjpn8W3rCb069cZ+qNXIWWVYYcI125gLDikMFo6kiQRpx
 hcGhmTjmoFU9WXuIKXhYy41qbhNNmAWyNizWMxh0O1deALFDN4rUu0lxeUodqec7o0
 yk1eFJQUClmtDVm9TQg91FNdbCf3XSsih6lrIRg8=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NHs1sC036066
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Jul 2019 12:54:01 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 12:54:01 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 12:54:01 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NHs118069250;
 Tue, 23 Jul 2019 12:54:01 -0500
Subject: Re: [PATCH 2/4] arm64: dts: ti: k3-am65-main: Add IPC sub-mailbox
 nodes for R5Fs
To: Nishanth Menon <nm@ti.com>
References: <20190722202024.14867-1-s-anna@ti.com>
 <20190722202024.14867-3-s-anna@ti.com>
 <20190723113706.ctrxtpezuknohbj3@kahuna>
From: Suman Anna <s-anna@ti.com>
Message-ID: <5e8e402e-d577-f1dd-b011-8ddc4407f30b@ti.com>
Date: Tue, 23 Jul 2019 12:54:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190723113706.ctrxtpezuknohbj3@kahuna>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105402_619977_50E1ECC6 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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

Hi Nishanth,

On 7/23/19 6:37 AM, Nishanth Menon wrote:
> On 15:20-20190722, Suman Anna wrote:
>> Add the sub-mailbox nodes that are used to communicate between
>> MPU and the two R5F remote processors present in the MCU domain.
>> The parent mailbox cluster nodes are enabled and the interrupts
>> associated with the Mailbox Cluster User interrupt used by the
>> sub-mailbox nodes are also added. The GIC_SPI interrupt to be
>> used is dynamically allocated and managed by the System Firmware
>> through the ti-sci-intr irqchip driver.
>>
>> The sub-mailbox nodes utilize the System Mailbox clusters 1 and 2.
>> These sub-mailbox nodes are added to match the hard-coded mailbox
>> configuration used within the TI RTOS IPC software packages. The
>> Cortex R5F processor sub-system is assumed to be running in Split
>> mode, so a sub-mailbox node is used by each of the R5F cores. Only
>> the sub-mailbox node from cluster 0 is used in case of Lockstep
>> mode.
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> ---
>>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 16 ++++++++++++++--
>>  1 file changed, 14 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
>> index 0b3ea2a871ee..317563c995b1 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
>> @@ -426,7 +426,13 @@
>>  			#mbox-cells = <1>;
>>  			ti,mbox-num-users = <4>;
>>  			ti,mbox-num-fifos = <16>;
>> -			status = "disabled";
>> +			interrupt-parent = <&intr_main_navss>;
>> +			interrupts = <164 0>;
>> +
>> +			mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
>> +				ti,mbox-tx = <1 0 0>;
>> +				ti,mbox-rx = <0 0 0>;
>> +			};
> 
> Should'nt this rather be a board specific node? This is completely
> dependent on the pre-defined communication scheme with R5F firmware?

These are the default assignments we are using and inherited by all
derivative boards leveraging the TI RTOS-side firmwares/stacks.
Otherwise, these sub-mailboxes have to be added to every board dts file.
One can always overwrite the values or disable the nodes if they chose a
different configuration.

regards
Suman

> 
>>  		};
>>  
>>  		mailbox0_cluster1: mailbox@31f81000 {
>> @@ -435,7 +441,13 @@
>>  			#mbox-cells = <1>;
>>  			ti,mbox-num-users = <4>;
>>  			ti,mbox-num-fifos = <16>;
>> -			status = "disabled";
>> +			interrupt-parent = <&intr_main_navss>;
>> +			interrupts = <165 0>;
>> +
>> +			mbox_mcu_r5fss0_core1: mbox-mcu-r5fss0-core1 {
>> +				ti,mbox-tx = <1 0 0>;
>> +				ti,mbox-rx = <0 0 0>;
>> +			};
>>  		};
>>  
>>  		mailbox0_cluster2: mailbox@31f82000 {
>> -- 
>> 2.22.0
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
