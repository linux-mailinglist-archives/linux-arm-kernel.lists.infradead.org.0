Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AD41C53E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NUtOhnSvfDPAXqTqO5N4xKhFvQXNmt3ggASzYgk6bLg=; b=PEql2NCJulXXqR07UIcT8BcGW
	2k9GAGha1/stjk0EIFpMqsNM2ArbID5xuU+sqooCWiBhgvMvP0ye4SzUZXfE44gADIFhcbNUtJNm2
	c7GVZ44rIeoQXA9tmX/mNpFZAXmkrwzOIkWJBn9fmHjTEck6oyMWLrB8n79b64nMKeAZSXfsDbRMA
	akk6ekJxhqB1ZN1ZSbbTv/4QVUrkxRDDds3PF0K5rpdigaED6u2dp9OhPazAFUbi9q+YBgxfVKP5o
	6K45cuYbdcHP/KsrmkJzwByhU9t7eEALLz2rm1Z3olsHCCZP3ICRYQQpQFzucTYv7s67JKsB1BksL
	Uw1/QtmmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVvOU-0000X2-30; Tue, 05 May 2020 11:05:46 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVvO8-0000Kv-E8
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:05:26 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 045B5Ffc037803;
 Tue, 5 May 2020 06:05:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588676715;
 bh=umV3B0I90WivROOQuE1mue7ZnlXEBWCYNsNS60PidxE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=v2PIMyT/xLLLP77mLPoVDXUtJLvKbrHUxN72YgrIJCb8VvZoHp1l8WTXEz0FQQ14o
 MHYEFMKOH6e3H/joIN/Vnddo7zlh1vIm1cGIOFU1C/cVCl73qbhfdmmwJUzUKtgRrf
 K8AuRIPQulJ9XLRky3VX1rI5rt5PQVHU6eSzAenA=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 045B5FjQ073523;
 Tue, 5 May 2020 06:05:15 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 5 May
 2020 06:05:15 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 5 May 2020 06:05:14 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 045B5BKn127153;
 Tue, 5 May 2020 06:05:12 -0500
Subject: Re: [PATCH net-next 3/7] net: ethernet: ti: am65-cpsw-nuss: enable
 packet timestamping support
To: Anders Roxell <anders.roxell@linaro.org>
References: <20200501205011.14899-1-grygorii.strashko@ti.com>
 <20200501205011.14899-4-grygorii.strashko@ti.com>
 <CADYN=9L+RtruRYKah0Bomh7UaPGQ==N9trd0ZoVQ3GTc-VY8Dg@mail.gmail.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <1bf51157-9fee-1948-f9ff-116799d12731@ti.com>
Date: Tue, 5 May 2020 14:05:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CADYN=9L+RtruRYKah0Bomh7UaPGQ==N9trd0ZoVQ3GTc-VY8Dg@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_040524_551215_B592B707 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Lokesh Vutla <lokeshvutla@ti.com>, Networking <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Tero Kristo <t-kristo@ti.com>,
 Murali Karicheri <m-karicheri2@ti.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

hi Anders,

On 05/05/2020 13:17, Anders Roxell wrote:
> On Fri, 1 May 2020 at 22:50, Grygorii Strashko <grygorii.strashko@ti.com> wrote:
>>
>> The MCU CPSW Common Platform Time Sync (CPTS) provides possibility to
>> timestamp TX PTP packets and all RX packets.
>>
>> This enables corresponding support in TI AM65x/J721E MCU CPSW driver.
>>
>> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
>> ---
>>   drivers/net/ethernet/ti/Kconfig             |   1 +
>>   drivers/net/ethernet/ti/am65-cpsw-ethtool.c |  24 ++-
>>   drivers/net/ethernet/ti/am65-cpsw-nuss.c    | 172 ++++++++++++++++++++
>>   drivers/net/ethernet/ti/am65-cpsw-nuss.h    |   6 +-
>>   4 files changed, 201 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
>> index 1f4e5b6dc686..2c7bd1ccaaec 100644
>> --- a/drivers/net/ethernet/ti/Kconfig
>> +++ b/drivers/net/ethernet/ti/Kconfig
>> @@ -100,6 +100,7 @@ config TI_K3_AM65_CPSW_NUSS
>>          depends on ARCH_K3 && OF && TI_K3_UDMA_GLUE_LAYER
>>          select TI_DAVINCI_MDIO
>>          imply PHY_TI_GMII_SEL
>> +       imply TI_AM65_CPTS
> 
> Should this be TI_K3_AM65_CPTS ?
> 
> I did an arm64 allmodconfig build on todays next tag: next-20200505
> and got this undefined symbol:
> 
> aarch64-linux-gnu-ld: drivers/net/ethernet/ti/am65-cpsw-nuss.o: in
> function `am65_cpsw_init_cpts':
> /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1685:
> undefined reference to `am65_cpts_create'
> aarch64-linux-gnu-ld:
> /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1685:(.text+0x2e20):
> relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol
> `am65_cpts_create'
> aarch64-linux-gnu-ld: drivers/net/ethernet/ti/am65-cpsw-nuss.o: in
> function `am65_cpsw_nuss_tx_compl_packets':
> /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:923:
> undefined reference to `am65_cpts_tx_timestamp'
> aarch64-linux-gnu-ld:
> /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:923:(.text+0x4cf0):
> relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol
> `am65_cpts_tx_timestamp'
> aarch64-linux-gnu-ld: drivers/net/ethernet/ti/am65-cpsw-nuss.o: in
> function `am65_cpsw_nuss_ndo_slave_xmit':
> /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1018:
> undefined reference to `am65_cpts_prep_tx_timestamp'
> aarch64-linux-gnu-ld:
> /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1018:(.text+0x58fc):
> relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol
> `am65_cpts_prep_tx_timestamp'
> aarch64-linux-gnu-ld: drivers/net/ethernet/ti/am65-cpsw-nuss.o: in
> function `am65_cpsw_nuss_hwtstamp_set':
> /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1265:
> undefined reference to `am65_cpts_rx_enable'
> aarch64-linux-gnu-ld:
> /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1265:(.text+0x7564):
> relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol
> `am65_cpts_rx_enable'
> aarch64-linux-gnu-ld: drivers/net/ethernet/ti/am65-cpsw-ethtool.o: in
> function `am65_cpsw_get_ethtool_ts_info':
> /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-ethtool.c:713:
> undefined reference to `am65_cpts_phc_index'
> aarch64-linux-gnu-ld:
> /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-ethtool.c:713:(.text+0xbe8):
> relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol
> `am65_cpts_phc_index'
> make[1]: *** [/srv/src/kernel/next/Makefile:1114: vmlinux] Error 1
> make[1]: Target 'Image' not remade because of errors.
> make: *** [Makefile:180: sub-make] Error 2
> make: Target 'Image' not remade because of errors.

Sry, I can't reproduce it net-next. trying next...
What's your config?

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
