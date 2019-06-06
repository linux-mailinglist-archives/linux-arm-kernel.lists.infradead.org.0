Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E068E373F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 14:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hvNfuI8kQDhLT/X0F+OfE6rbI0TAjYIjUUvBZS3ss/w=; b=kkVQ90cD/sTiPGXFTq8pFZVnU
	FBz9kL2d7J4BKoAtYTOntJh6Ya0VDMaVEGPQ13EYC9WdGjCn9FpepDMu0Z1aZCj1wPA40R5ngeN4S
	t0/zNW0+cH/uZ5lbUZDtEAEkl4Qm3oc6/KRAGeGWUbVhW4ejCNU6oMLIYwGKRfpgRLCiu4ktg2vAT
	jLAI9yN0IVjggevaAMD8dYDoLvkfFZpS7WQfEJnLqmflIoZdGIkE1gRby7jSQmchVjN0dkxKz9Xzm
	Qlio9OQPff8GXr8Eb6FTg6LRDmNa8GXPM+bOE++NsFTN1RChBZoZiWErBSZhEQHUDYQY4gWn7m6t+
	2VYoJA2gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYrL5-00077f-Bz; Thu, 06 Jun 2019 12:17:51 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYrKx-00077K-W8
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 12:17:45 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x56CHgRV114343;
 Thu, 6 Jun 2019 07:17:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559823462;
 bh=H7Du1MyZ+7sjHGicCkJ8eU3MECXzTdUKJREaqOwZpQ0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=i7Fbz9mguwm+vXE5I2Da4CU/vPxoxWO1ps783Av3rTw+gkAIa/lt74QKShJujeEkM
 vVowYnTj4NfUF4wCG/8rvHZOfH3qndd/cbrO17HEcxCeMhpJoyqu71mO74TTVFmIM7
 AS1pKcDoIMRN0h5PYwAh1gau9RfwLIu6o+8mmLRs=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x56CHgRf082775
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 6 Jun 2019 07:17:42 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 6 Jun
 2019 07:17:41 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 6 Jun 2019 07:17:41 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x56CHcb7080322;
 Thu, 6 Jun 2019 07:17:40 -0500
Subject: Re: [PATCH 0/3] arm64: dts: ti: k3-am654: Add interrupt controller
 nodes
To: Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>, Rob Herring
 <robh+dt@kernel.org>
References: <20190502094119.16350-1-lokeshvutla@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <4283c4e7-b3ef-a4b6-86c0-5a961dbf42c7@ti.com>
Date: Thu, 6 Jun 2019 15:17:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502094119.16350-1-lokeshvutla@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_051744_075163_F2C179F4 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/05/2019 12:41, Lokesh Vutla wrote:
> This series adds dt nodes for interrupt controllers available in
> AM654 SoC.
> 
> Lokesh Vutla (3):
>    arm64: dts: ti: k3-am654: Update compatible for dmsc
>    arm64: dts: ti: k3-am654: Add interrupt controllers in main domain
>    arm64: dts: ti: k3-am654: Add interrupt controllers in wakeup domain
> 
>   arch/arm64/boot/dts/ti/k3-am65-main.dtsi   | 41 ++++++++++++++++++++++
>   arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi | 13 ++++++-
>   2 files changed, 53 insertions(+), 1 deletion(-)
> 

Queued up towards 5.3, thanks.

Also, pushed to am654-next for people that may want to post patches that 
depend on this series.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
