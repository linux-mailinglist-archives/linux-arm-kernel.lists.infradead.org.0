Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA561361AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 18:54:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J+A0wMIqwBMsk1bwJJnY8k6UNpvHnSz1sWXTv5WOUBA=; b=EA04aZfpdDnW4RnqeD+ZcrUt0
	lSoFEVF+Iy5cLx1hr8kVnavV07QBF33HJ7txwd1R/Q9alL4aYPipJ2RYz1CNCCRH6j9pE7h9U7OMb
	NEcoQFMNGOcyn3tPRvEnxK5WG5zZikMNOSogiKy4X1qyjz6M28YPCpRaY6VyB6QuGMQOR41nbxbsC
	RvZ35t0gCjfaWvBYWfu8SbSqw8iiHhhSnqaWZtUuSn0B5XoML0f/XPMXG7U6mJAln2oDqgNXo6irR
	uKPexyHu8nTyacMskkCp16i4UaHyeYxqN7bES5CfSUEWSI/XAZdG2sfiNXfR2wRZa4Qasjl8Udm0j
	Uw0sVVGKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZAl-00086d-8g; Wed, 05 Jun 2019 16:53:59 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZAe-00086B-1F
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 16:53:53 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x55GroXs003820;
 Wed, 5 Jun 2019 11:53:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559753630;
 bh=3ywvsXNfGJt7CIx0EEqFa5Qdir0nMPD7svff9CumC0A=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=n3hSgvi79aD6CA/MTnMeIoaG801V5WzTqlWojb3tzWkQTQpSlHlV9yVut1+RZyCUQ
 kxuYd3wODwgJdPmrY7Kz8Jd/+AsS41yrj1LLoSJTE2miFjrtIFhRFHmL/RFcHfJ21L
 eiOa2keTUgAwEELSRWgAHqtXR8Hq7h3LoBfrop9Y=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x55Gro4n040609
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 5 Jun 2019 11:53:50 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 11:53:49 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 11:53:49 -0500
Received: from [10.250.67.116] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x55GrnE4050665;
 Wed, 5 Jun 2019 11:53:49 -0500
Subject: Re: [PATCH 0/4] Add MCU SRAM nodes for TI K3 SoCs
To: Suman Anna <s-anna@ti.com>, Tero Kristo <t-kristo@ti.com>, Nishanth Menon
 <nm@ti.com>
References: <20190605163434.23173-1-s-anna@ti.com>
From: "Andrew F. Davis" <afd@ti.com>
Message-ID: <acf9cf30-bcd6-76a0-5498-c334c7c43213@ti.com>
Date: Wed, 5 Jun 2019 12:53:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190605163434.23173-1-s-anna@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_095352_151559_D7B496E8 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/5/19 12:34 PM, Suman Anna wrote:
> Hi Tero,
> 
> The following series adds the DT nodes for the MCU SRAM present within
> the MCU domain for both AM65x and J721E SoCs. The first 2 patches enable
> the MCU SRAM node to be probed properly on AM65x SoCs, and the third
> patch the equivalent for J721E SoCs. The third patch depends on the
> base J721E support patch series from Nishanth [1].
> 
> The last patch is not related to MCU SRAM, but adds the ranges for the
> R5F cluster that is also present in the MCU domain in preparation for
> the R5F nodes.
> 

Why not have this last patch as part of the series adding the R5F nodes?

Andrew

> regards
> Suman
> 
> [1] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=121189
> 
> Suman Anna (4):
>    arm64: dts: ti: k3-am65: Add MCU SRAM ranges in interconnect nodes
>    arm64: dts: ti: k3-am65-mcu: Add the MCU RAM node
>    arm64: dts: ti: k3-j721e: Add the MCU SRAM node
>    arm64: dts: ti: k3-am65: Add R5F ranges in interconnect nodes
> 
>   arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi         | 8 ++++++++
>   arch/arm64/boot/dts/ti/k3-am65.dtsi             | 6 ++++++
>   arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 8 ++++++++
>   3 files changed, 22 insertions(+)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
