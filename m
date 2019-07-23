Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E7971E13
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 19:54:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8GDaW+jR2KZURrcLjnk5Ev66yiVZmLWq/SGO5/JPBs=; b=YJO1ReO4cfSFtO
	l2d31ErBK4P01U8MZQf/B/GD3LesK1Ey7iN08x//JCdIF3YRRSBZG+m733KBEj3W+icTVT2M77lr9
	Q3XdCrZXzA0exPDquuqGm/vD6d02J5y6OyWVYF+01RPEimJ1QgC+7wz2bl2kmrUXFlXSSEV4KEctJ
	wWNq4uLp6uMA98QgY1SE58anuOhI8X+f/0EePsMg2txR+SUDw9ZlF1DFZuAzjisaho8q2IaRrf5Oy
	4Cs51wXT9da7rBDnEXgdzXIACipCIyzAP1TsjtDpQqWxzRfACDdJtfkTmlUSL7xFvZAOo4CYrx/8D
	Wgf377V68Cu7Kott8Oew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpz03-0002KD-3X; Tue, 23 Jul 2019 17:54:55 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpyzo-0002Jg-E3
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:54:41 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NHsdvo108665;
 Tue, 23 Jul 2019 12:54:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563904479;
 bh=OtJIo3gfkL3kiUvyBT0DEHLVC1TAR69f+a6fIVDKt1s=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=eZeL6WxGiPfLU4Zecj1pAsSghMYeACol6faal6qHqg+cIn4WZkFyJXi41nFeH1WVN
 zhH9eDRe76s/ZYXnrje1J1nWctvttJrZTYbgG7N5NtO+yVE4xyJvSEyq0QBt/D/tdE
 WM6COEY8fWYneeic7aSTtoBJgsWmSjLIIgUqyE2A=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NHsdPC112545
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Jul 2019 12:54:39 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 12:54:39 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 12:54:39 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NHsdfq079418;
 Tue, 23 Jul 2019 12:54:39 -0500
Subject: Re: [PATCH 3/4] arm64: dts: ti: k3-j721e-main: Add mailbox cluster
 nodes
To: Nishanth Menon <nm@ti.com>
References: <20190722202024.14867-1-s-anna@ti.com>
 <20190722202024.14867-4-s-anna@ti.com>
 <20190723113729.gkgq3kf2mman5m4q@kahuna>
From: Suman Anna <s-anna@ti.com>
Message-ID: <c552cb25-d5a4-020d-ebf9-5a04f02b79b4@ti.com>
Date: Tue, 23 Jul 2019 12:54:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190723113729.gkgq3kf2mman5m4q@kahuna>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105440_554001_48F6CB81 
X-CRM114-Status: GOOD (  14.97  )
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

On 7/23/19 6:37 AM, Nishanth Menon wrote:
> On 15:20-20190722, Suman Anna wrote:
>> The J721E Main NavSS block contains a Mailbox IP instance with
>> multiple clusters. Each cluster is equivalent to an Mailbox IP
>> instance on OMAP platforms.
>>
>> Add all the Mailbox clusters as their own nodes under the MAIN
>> NavSS cbass_main_navss interconnect node instead of creating an
>> almost empty parent node for the new K3 mailbox IP and the clusters
>> as its child nodes. All these nodes are marked as disabled, and
>> they need to be enabled along with the appropriate child nodes
>> on a need basis.
>>
>> NOTE:
>> The NavSS only has a limited number of interrupts, so all the
>> interrupts generated by a Mailbox IP are not added by default.
>> Only the needed interrupts that are targeted towards the A72
>> GIC will need to be be added later on when some sub-mailbox
>> child nodes are added.
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> ---
>>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 108 ++++++++++++++++++++++
>>  1 file changed, 108 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> index a2e031f7d88e..319d423b3440 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> @@ -95,6 +95,114 @@
>>  			reg = <0x00 0x30e00000 0x00 0x1000>;
>>  			#hwlock-cells = <1>;
>>  		};
>> +
>> +		mailbox0_cluster0: mailbox@31f80000 {
>> +			compatible = "ti,am654-mailbox";
>> +			reg = <0x00 0x31f80000 0x00 0x200>;
>> +			#mbox-cells = <1>;
>> +			ti,mbox-num-users = <4>;
>> +			ti,mbox-num-fifos = <16>;
>> +			status = "disabled";
> 
> Please drop disabled.

Same comment as on the AM65x patch (patch 1).

regards
Suman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
