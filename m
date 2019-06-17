Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8765E48664
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 17:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Eg+YbdAExq+ChnJ8/stooPJKrOoSPsfR26jN5IchwpQ=; b=UGw6wE7KTCbr2PEAeqIbDiJ/t
	12k9HIkLquZuvmAu6VWz6sADHtZJ9kKwl967Nn/DDPFZFVqy4LSy5j/M2M9UrfvTzq3VDDsXk21ov
	4GSs23ohdOEcihU7YG4nR5rFz3cR1l0wqHHG/uIrKmPQFjN0kHDPdjI0H1r7tlaqstGCQSGj5KxID
	BgTPFbOOcek8whSE2XIA+cvjbC358oFHEsHWf52zumuMtZqLDrkawquHDlXjnEr6zYMhmdpG3Un4R
	4dX4G+A7MbG09rIGPj4tJTQgULLfSU1Z6OweeYevSfzMG+iguUlPcO0Pfxmz2q+IIF9rCQ5F+jqFS
	Fypl4uHew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hct9K-0005sg-Qq; Mon, 17 Jun 2019 15:02:22 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hct80-0005Jv-3I
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 15:01:01 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5HF0uN3122514;
 Mon, 17 Jun 2019 10:00:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560783656;
 bh=aubl2oHp92o7mM/SXfatWCDIGIQjf/qgeP0RChTXmVE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=MX94Lin5sGkgV5GaUoyy6DYg8+HpW0GksFneqyolWatjDgsbS8ZThp/KiMpJFMpI8
 ldekZ2osUclPfFoQ/rb8la/1egvEYE/yYhT9B6G2AcG7scUi3tmMgKLE/Rm04lNICs
 2eZMXRVGW6EV7UgctlcSpF2xa6RKdHMSmJylBJZs=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5HF0uLc062532
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 Jun 2019 10:00:56 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 17
 Jun 2019 10:00:55 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 17 Jun 2019 10:00:55 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5HF0qSa022800;
 Mon, 17 Jun 2019 10:00:53 -0500
Subject: Re: [PATCH 0/6] AM654: Add PCIe and SERDES DT nodes
To: Kishon Vijay Abraham I <kishon@ti.com>, Nishanth Menon <nm@ti.com>
References: <20190529091812.20764-1-kishon@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <9e03c24e-4ca7-5ba5-a8d4-a95b2b6579f1@ti.com>
Date: Mon, 17 Jun 2019 18:00:52 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190529091812.20764-1-kishon@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_080100_227441_BFE3FBB6 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/05/2019 12:18, Kishon Vijay Abraham I wrote:
> Patch series adds PCIe and SERDES DT nodes to k3-am65.dtsi and keeps
> them disabled in k3-am654-base-board.dts since there are no PCIe
> slots in the base board.
> 
> PCIe slots are actually present in add on boards. Once overlay support
> is merged, I'll add overlay DTS files to enable PCIe.
> 
> All the driver patches and binding documentation patches for PCIe and
> SERDES are already merged.

Queued up towards 5.3, thanks.

-Tero

> 
> Kishon Vijay Abraham I (6):
>    arm64: dts: k3-am6: Add "socionext,synquacer-pre-its" property to
>      gic_its
>    arm64: dts: k3-am6: Add mux-controller DT node required for muxing
>      SERDES
>    arm64: dts: k3-am6: Add SERDES DT node
>    arm64: dts: k3-am6: Add PCIe Root Complex DT node
>    arm64: dts: k3-am6: Add PCIe Endpoint DT node
>    arm64: dts: ti: am654-base-board: Disable SERDES and PCIe
> 
>   arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 128 ++++++++++++++++++
>   arch/arm64/boot/dts/ti/k3-am65.dtsi           |   1 +
>   .../arm64/boot/dts/ti/k3-am654-base-board.dts |  24 ++++
>   3 files changed, 153 insertions(+)
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
