Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199A771DF9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 19:50:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Leo2SR4/PNPzsJ5gixo3jS8rck5MugpWu5lecR3IXE=; b=NcX1pzBkCoUbeH
	7t+e5ig2hgOgXVSkOXBq3y4bkBhgc7gl71NxWb8bZKyOkXrtg5rWVLZeCdawpnXdtsoyBf65cQr4W
	GVqhntN6NYtSCYFMMp3w5KnLzuNYzMvzalYKfeMIsxMAZLI2ZpYy3B9jD7rpGIQrtxfxcdj7lcSBH
	a5M8pxxwS610lFA0ZDNz6rkcjREZRq9CUJCIjdpfdpATrYUcgQ3DfXJMSZMrjvKJATwXHmllBBKru
	QuMS/IkPXM5ax3Np1NVCQ6OiGfJE7D+RcwRUMaJjNvmsUHA0jOHbtrQJmDvnLp2Mt1jN6WgYaQgPt
	oOckqxStvGWsUoo2f42w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpyw8-0001kQ-4e; Tue, 23 Jul 2019 17:50:52 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpyvt-0001k4-VE
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:50:39 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NHoaqn108092;
 Tue, 23 Jul 2019 12:50:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563904236;
 bh=YcjWMj4f3GG+deZwJgRO0N4A7AB8a2dBfZTCQen6AdU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=VizZhwEz6LWWpBiUiwX7fxQ6/4iZxc1w0B3QMkTGdeWtxjyhVnwCZH2Irmwiu+8Xj
 0n/N7wxAdwL2dWlFB3y9iPlQHYhmGqU5CNR0rWnkEXi1DxI2GL7LMk5Q9eW71JbHcn
 qtFT7mAP8TqspAhvVGbnEOfyvIuOmt94pTHoN33U=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NHoapT085528
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Jul 2019 12:50:36 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 12:50:36 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 12:50:36 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NHoa90074653;
 Tue, 23 Jul 2019 12:50:36 -0500
Subject: Re: [PATCH 1/4] arm64: dts: ti: k3-am65-main: Add mailbox cluster
 nodes
To: Nishanth Menon <nm@ti.com>
References: <20190722202024.14867-1-s-anna@ti.com>
 <20190722202024.14867-2-s-anna@ti.com>
 <20190723113540.xvhsrlbf66lr5aaq@kahuna>
From: Suman Anna <s-anna@ti.com>
Message-ID: <664f4a6f-697d-3463-bfd9-1423ad95bf62@ti.com>
Date: Tue, 23 Jul 2019 12:50:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190723113540.xvhsrlbf66lr5aaq@kahuna>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105038_152214_448508FA 
X-CRM114-Status: GOOD (  16.68  )
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

On 7/23/19 6:35 AM, Nishanth Menon wrote:
> On 15:20-20190722, Suman Anna wrote:
>> The AM65x Main NavSS block contains a Mailbox IP instance with
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
>> Only the needed interrupts that are targeted towards the A53
>> GIC will need to be be added later on when some sub-mailbox
>> child nodes are added.
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> ---
>>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 108 +++++++++++++++++++++++
>>  1 file changed, 108 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
>> index 8413e80f9d3a..0b3ea2a871ee 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
>> @@ -419,6 +419,114 @@
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
> We don't use status="disabled" as default so far.
> 

For the OMAP mailboxes, we do not want to enable just the cluster. A
cluster without any enabled sub-mailboxes or interrupts will fail the probe.

There are 12 clusters but we won't be enabling all clusters for the MPU
core running Linux. There are some clusters that are dedicated to
RTOS-to-RTOS IPC which we don't want to even probe on Linux. This patch
adds all the clusters, and the next patch enables only the clusters used
by Linux that have the proper sub-mailboxes and interrupts. Please see
the NOTE above for the reason why not all the 4 interrupts from each
cluster are added here.

regards
Suman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
