Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCF2DC498
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vAv2x2B+cIphXHVyeYmt+RansfyEWccMo9/EsM4eAvU=; b=PXgx3P52cYsDnBHYmf77ZGuYA
	Z3zxeLG/M9aKHU1i50+GOrO3Ts1+0TPLpcavIF6Kp2nznRy0z+VRgmVGdM8cPx50G22lzX73VI/nJ
	02wmIKdi+J9Uo9eGQv2CumyUrHSCmC2CxoXHPohIREsnmPPLa06r0ENlHJB7gYkqVXd3U1SzupOOm
	m7TJI3YNJiktgS9VqQ+rPRjN/aMCpPT2CPRPan5M0ge/iM1q8tZFmMK9NmxF0xvotqsDBFn/EMZYN
	C8uzkYmEZynoPX16+Mo2FSMsVErm/ilx7YfQfTIrVe9ntDeXNW9WznBBtt85oYQIWjUbfSv+93lrG
	aNMRunu5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRGV-0000W5-Mt; Fri, 18 Oct 2019 12:21:55 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRGL-0000VC-0Q
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:21:46 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9ICLfuG086145;
 Fri, 18 Oct 2019 07:21:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571401302;
 bh=iMCXi1bXhcu5PpTfDwyLXE84r6Q/7AsOhkancNxD5Gg=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=XVdq3vnWT4AGBIDr0qlgJ35EJv53Za9UPViN4sRNJXYTD3iIqTFNINS+DFkSwr1sV
 rxbyAXtp6OKlWt8c+koi1E027N1RjFflSLjc1eOFbaDXjQ/HwxXMiY0lM+Fm9J/GZq
 rlkv7FIv9JpuDxCH/oXQIFyDfAFUSZDjFDetq4LE=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9ICLfuU055675
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 18 Oct 2019 07:21:41 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 18
 Oct 2019 07:21:41 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 18 Oct 2019 07:21:41 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9ICLdO8006490;
 Fri, 18 Oct 2019 07:21:40 -0500
Subject: Re: [PATCH v2 0/4] Add Mailbox nodes for TI K3 AM65x & J721E SoCs
To: Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>
References: <20190725001020.23781-1-s-anna@ti.com>
 <e27abe06-2df0-fdae-6fe5-080a40ee3bdd@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <8b692766-08a4-6bad-768e-56acba5eb9de@ti.com>
Date: Fri, 18 Oct 2019 15:21:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <e27abe06-2df0-fdae-6fe5-080a40ee3bdd@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_052145_131675_0DAC2BF5 
X-CRM114-Status: GOOD (  19.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/10/2019 23:19, Suman Anna wrote:
> Hi Tero,
> 
> On 7/24/19 7:10 PM, Suman Anna wrote:
>> Hi Tero, Nishanth,
>>
>> The following series is a revised version of the series [1] that adds
>> the Mailbox DT nodes and the sub-mailboxes used to communicate between
>> the main MPU processor running Linux and the various R5F and DSP remote
>> processors present on the TI K3 AM65x and J721E SoC families. Patches
>> are based on v5.3-rc1 + the HwSpinlock DT node series [2], and are
>> intended for the 5.4 merge window. Functionality is verified using a
>> out-of-tree unit-test module and some additional loopback test nodes
>> available here [3] for reference.
>>
>> Changes in v2:
>>   - All clusters are enabled by default in base dtsi files
>>   - The sub-mailboxes are moved to the actual board dts files
>>   - Unused clusters disabled in the board dts files
> 
> Looks like you missed picking this series up for 5.4. Can you please
> pick this up for 5.5? Let me know if you want me to repost the series,
> the last patch has a conflict when applying on top of 5.4-rc1 due to
> some additional nodes in the board dts file.

Yep, I missed this.

Queuing up towards 5.5 now, thanks.

-Tero

> 
> regards
> Suman
> 
>>
>> regards
>> Suman
>>
>> [1] https://patchwork.kernel.org/cover/11053401/
>> [2] https://patchwork.kernel.org/cover/11053311/
>> [3] https://github.com/sumananna/mailbox/commits/mbox/test/5.3-rc1-k3-v2
>>
>> Suman Anna (4):
>>    arm64: dts: ti: k3-am65-main: Add mailbox cluster nodes
>>    arm64: dts: ti: k3-am65-base-board: Add IPC sub-mailbox nodes for R5Fs
>>    arm64: dts: ti: k3-j721e-main: Add mailbox cluster nodes
>>    arm64: dts: ti: k3-j721e-common-proc-board: Add IPC sub-mailbox nodes
>>
>>   arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 108 ++++++++++++++++++
>>   .../arm64/boot/dts/ti/k3-am654-base-board.dts |  58 ++++++++++
>>   .../dts/ti/k3-j721e-common-proc-board.dts     |  93 +++++++++++++++
>>   arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 108 ++++++++++++++++++
>>   4 files changed, 367 insertions(+)
>>
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
