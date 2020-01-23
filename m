Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8A0146821
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 13:36:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7uwiB9tQ1xXb6YzfO/3vTvmDC8B/fCjR6w/MEkqv3mE=; b=ix4zSfNIg5xQ+S
	yALCk+neRb0bp5GhgIOxk/7Wr5EuZo3kKQYd7qWhK73mD9YdFc6SR8wRDhakD8Sh11Qa89w1GILGB
	RskTGfnnM8KMDDnBF4Iuu+xTuH56XIQp+Vth68uK5ANsMDedsitJ/jGmzrZ+GKss5iXzsMHu1y7/P
	0rIjFIJvA5Qg3Jyqse17II0Ef6Qt+Eio4H9A1jO1Yd144yXEu0Mr70go5gLoVHq47ZLREvUpxHQbm
	RaA30CQtc1C2uwo88Sy5vdFVngCfEFA7UGkTKSSCR/SQgDbySnodL0GePLR8SUC5UwmuHs3poazlJ
	akXqwk/xEh02mdzyF+iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iubip-0006yL-Ga; Thu, 23 Jan 2020 12:36:31 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iubif-0006xw-4d
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 12:36:22 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00NCaGxm109845;
 Thu, 23 Jan 2020 06:36:16 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579782976;
 bh=IkR/GADZB2jJ/si7sIhU8tzPE9tlQ6+SnBIdU/caiXQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=g268vZIOeiS+P7SMSmdYyI/s0tMl8DMdhp8Ax99oM/P1TRIKGF+lIv8buw21OUcsh
 Lhj786PA3Wt6WvGQfXUElMTeK4gKFVsuMb0S02OIOp6aoAxAgbLEzlRRSSo4pqSxVV
 xvbsLi+jbUt5f0CbvF53L9IUslP4vmF13nOK5rcA=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00NCaFLd039644
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 23 Jan 2020 06:36:16 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 23
 Jan 2020 06:36:15 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 23 Jan 2020 06:36:15 -0600
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00NCaCxp130706;
 Thu, 23 Jan 2020 06:36:13 -0600
Subject: Re: [PATCH v3 0/9] arm64: dts: ti: UDMAP and McASP support
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <t-kristo@ti.com>, <nm@ti.com>
References: <20200123114528.26552-1-peter.ujfalusi@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <7a34dbfa-426d-061e-cbf6-3da1d8bada65@ti.com>
Date: Thu, 23 Jan 2020 18:05:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20200123114528.26552-1-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_043621_264681_7D031BA4 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 23/01/20 5:15 PM, Peter Ujfalusi wrote:
> Hi,
> 
> Changes since v2:
> - Correct unit addresses for the McASP nodes
> - Remove unit address and label for MAIN and MCU NAVSS
> 
> Changes since v1:
> - rebased on ti-k3-next
> - Corrected j721e mcu_udma node: s/udmap/dma-controller
> - Moved the two McASP node patch at the end of the series
> 
> The ringacc and UDMA documentation and drivers are in next-20200122.
> 
> While adding the DMA support I have noticed few issues which is also fixed by
> this series.


Entire series looks good to me.

Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

Thanks and regards,
Lokesh

> 
> Tero: I have included the McASP nodes as well to have examples for other
> peripherals on how he binding should be used.
> The patches for the McASP driver is not in next, but they are only internal
> driver changes (and Kconfig), not adding new DT dependencies.
> Since the McASP is disabled in SoC dtsi due to board level configuration needs
> it is not going to erroneously probe drivers.
> 
> It is up to you if you pick them or not, but I believe they serve a safe and
> nice example how the dma binding should be used for UDMA.
> 
> Regards,
> Peter
> ---
> Peter Ujfalusi (9):
>   arm64: dts: ti: k3-am65-main: Correct main NAVSS representation
>   arm64: dts: ti: k3-am65-main: Move secure proxy under cbass_main_navss
>   arm64: dts: ti: k3-am65: DMA support
>   arm64: dts: ti: k3-j721e: Correct the address for MAIN NAVSS
>   arm64: dts: ti: k3-j721e-main: Correct main NAVSS representation
>   arm64: dts: ti: k3-j721e-main: Move secure proxy and smmu under
>     main_navss
>   arm64: dts: ti: k3-j721e: DMA support
>   arm64: dts: ti: k3-am654-main: Add McASP nodes
>   arm64: dts: ti: k3-j721e-main: Add McASP nodes
> 
>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 122 ++++++-
>  arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi       |  46 +++
>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 313 ++++++++++++++++--
>  .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  45 +++
>  arch/arm64/boot/dts/ti/k3-j721e.dtsi          |   2 +-
>  5 files changed, 491 insertions(+), 37 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
