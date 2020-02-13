Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74CF15BD46
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 12:02:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Relzt7s7OXLW0zWW/5WDKRefKbHLSGacgfyQarTKD8I=; b=XrDLy3SklVQUq3
	ZQh6Go82HIshWuxuUeQ0VipSJyS4nPeweAxODcoKDQt7gn3nLyZ4D7PyBkM/dXijptm0eSxrFEWWb
	5cAUUVFY1608S4nkpU5swd+TGVNEI1LHW+DpmWd8YJa+0eHU+h/zBFAjj2AG1Je3gkiRVAQOBADyO
	lAWbR1P0KQOXe41us8Mz8elSvp/Q3qDD5Ieapxzr2r6ZkOTKMkRE51lWBoa8JzKq4TFEFOgmF7/5P
	eUeAaRwBJhr/SPnRTHrucDOTCvknUZtPnsHYXGVqU/NqZqfyzEz1aHgVvFlKc93eoPJW89DedwIKX
	KRZ9n1YOJkt057O9fp3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2CGK-0007Qy-M6; Thu, 13 Feb 2020 11:02:28 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2CGC-0007QC-Ej
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 11:02:21 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01DB2EFf111932;
 Thu, 13 Feb 2020 05:02:14 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581591734;
 bh=28ZV+G9aiHL8+0UPcgwBKCixdQrHOAJ3kWPdgROidOE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=hWw+rIQmsQW7yzhJKnbXQSX2a5PodRgs4kzltZJABZ9Ene1GCbCFpIO/cFW02aCgT
 Gcqqm0xfUJvajrap++QLGZH9CjCaNT8uEwzDIjSZlFMHuh1w7hvNnMitXiVcv/O6Xl
 ofM1IbfVq4FR0vuTe5KJv+L2EPbIYQl1IWStMj2w=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01DB2DjF000944
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 13 Feb 2020 05:02:13 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 13
 Feb 2020 05:02:13 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 13 Feb 2020 05:02:13 -0600
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01DB29Mp077470;
 Thu, 13 Feb 2020 05:02:10 -0600
Subject: Re: [PATCH 3/4] arm64: dts: ti: am654: Add thermal zones
To: Keerthy <j-keerthy@ti.com>, <rui.zhang@intel.com>, <robh+dt@kernel.org>,
 <daniel.lezcano@linaro.org>
References: <20200213102440.20539-1-j-keerthy@ti.com>
 <20200213102440.20539-4-j-keerthy@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <0d0a5c81-3b85-afbd-7fd6-8c2a6432ec86@ti.com>
Date: Thu, 13 Feb 2020 16:31:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20200213102440.20539-4-j-keerthy@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_030220_533401_49777564 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 13/02/20 3:54 PM, Keerthy wrote:
> The am654 SoC has three thermal zones namely MPU0, MPU1 and MCU
> zones
> 
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
>  .../boot/dts/ti/am654-industrial-thermal.dtsi | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/ti/am654-industrial-thermal.dtsi
> 
> diff --git a/arch/arm64/boot/dts/ti/am654-industrial-thermal.dtsi b/arch/arm64/boot/dts/ti/am654-industrial-thermal.dtsi
> new file mode 100644
> index 000000000000..cdc3d40c3f60
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/am654-industrial-thermal.dtsi

Can you rename file to k3-am654-industrial-thermal.dtsi. This will be consistent
with other k3-am654 dt files.

Thanks and regards,
Lokesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
