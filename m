Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A797E485F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BWTa2hurPmeknjLFf/9ejRT3iAfzpm5Oh2Jkt3AbGYo=; b=JhImeTi772YDa1p7ggz7OseR7
	rQEWYN3bQSDYPLgYIHzvNhrIzpBWf5/qtIcp4Cx8ZSzqaPD/aY+E2UprpoWcMbTBLBAfAZr8Jrort
	GU/pWsjgStNeX6u8Vy1CUpWLxfEm5kDzRmM9vbhkyWbkJ1ZR8jextj+kkhO5yeF6qxOR45B0aqXU6
	Gf/iUiMcb2d7dwuBczWfYCQWqx67156xmVUA73vW+Fsnl5IbHFr0y30lta+gefkKzTQ9cRQWaA/WY
	WL0RJOzaxuX9rR6/z0P4lpGCNZolleRDhmh2CJT1e4L26OrG1Ik/RXwNcsoAszR5B4Fm0I3MDyptW
	VJQZ+pAZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcsxJ-0002t3-Ce; Mon, 17 Jun 2019 14:49:57 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcsx0-0002sT-Qq
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:49:40 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5HEncSo073160;
 Mon, 17 Jun 2019 09:49:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560782978;
 bh=PThIYnKzWiBgx4IKcZ45yCLr5ztnCcprEnbFD/SZiLo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=VwF6uu+P4VRhjt+xeIlp+cNVvszMg5d6JN2gxJfakcDPevDW8CQJveqiuMDV3J/1D
 ru5/ZFhmZh+N/NW1EDLLmNv6XQ432dsSiI5l7pNBPtVgmC1bOPalXtNK7rmLRPQigf
 EFEhaEXeQDD6zRDwEG33wDrmCtBCIJVL2N+f/ZLU=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5HEnc9N058086
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 Jun 2019 09:49:38 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 17
 Jun 2019 09:49:36 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 17 Jun 2019 09:49:36 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5HEnZ4J037757;
 Mon, 17 Jun 2019 09:49:35 -0500
Subject: Re: [PATCH 0/4] Add MCU SRAM nodes for TI K3 SoCs
To: Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>
References: <20190605163434.23173-1-s-anna@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <e0c07124-3191-13c7-432f-4099c842059b@ti.com>
Date: Mon, 17 Jun 2019 17:49:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190605163434.23173-1-s-anna@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_074938_969849_F790C9D2 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 05/06/2019 19:34, Suman Anna wrote:
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
> regards
> Suman
> 
> [1] https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=121189

Queuing patches 1,2 and 4 towards 5.3 thanks.

Patch #3 is waiting until I can sort out j7 dependencies, which should 
happen later this week.

-Tero

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

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
