Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A82C13A126
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 07:54:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KGfU4c0FoRBXi/bI6I20w4MwziHxBL9BlrE7IKrAMk=; b=ldWjWGuntJ3VcX
	DBMjA0GOZnh7dvv+dCIVGS8cx14htCC0wevSg9mQnbpffZfD1lDOzgh9JK3/xLGN0zjSw5KHSel3G
	73jdC3Lvggri041I60Sq/RDMaN7it9mVLUhAkS+F9vMSzhJ2Do0FlwXpmClqz0mFwKbnzklxKco4/
	wKMuzoheXmU+P12nPLoIcSHcFonuyM3tMrX/vf5LNWIDzd3G4DuaEnFyOFLfpYNknrF6RheuChQWe
	7ZWjObd4RJewPV46txWWLidypMcDAh2c4O0Zg3jLc5vv51tcJQxLdAaz5f+u4mTFqpKFn44gk27Xz
	4X+fjWtHiXJCyYvXa8OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irG67-0003qx-Uk; Tue, 14 Jan 2020 06:54:43 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irG60-0003qD-2H
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 06:54:37 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 22:54:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,431,1571727600"; d="scan'208";a="305065519"
Received: from pgsmsx113.gar.corp.intel.com ([10.108.55.202])
 by orsmga001.jf.intel.com with ESMTP; 13 Jan 2020 22:54:30 -0800
Received: from pgsmsx110.gar.corp.intel.com (10.221.44.111) by
 pgsmsx113.gar.corp.intel.com (10.108.55.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 14 Jan 2020 14:54:30 +0800
Received: from pgsmsx114.gar.corp.intel.com ([169.254.4.192]) by
 PGSMSX110.gar.corp.intel.com ([169.254.13.252]) with mapi id 14.03.0439.000;
 Tue, 14 Jan 2020 14:54:29 +0800
From: "Ong, Boon Leong" <boon.leong.ong@intel.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Subject: RE: [PATCH net 1/7] net: stmmac: fix error in updating rx tail
 pointer to last free entry
Thread-Topic: [PATCH net 1/7] net: stmmac: fix error in updating rx tail
 pointer to last free entry
Thread-Index: AQHVyfokBfT9czhzrkq4pJYkkv91Cqfn3pcAgAHSG5A=
Date: Tue, 14 Jan 2020 06:54:29 +0000
Message-ID: <AF233D1473C1364ABD51D28909A1B1B75C45CBAC@pgsmsx114.gar.corp.intel.com>
References: <1578967276-55956-1-git-send-email-boon.leong.ong@intel.com>
 <1578967276-55956-2-git-send-email-boon.leong.ong@intel.com>
 <BN8PR12MB32661345472470F495EFAC0DD3350@BN8PR12MB3266.namprd12.prod.outlook.com>
In-Reply-To: <BN8PR12MB32661345472470F495EFAC0DD3350@BN8PR12MB3266.namprd12.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_225436_169070_EDFD77A2 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, "Voon,
 Weifeng" <weifeng.voon@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, "Tan, Tee Min" <tee.min.tan@intel.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>From: Ong Boon Leong <boon.leong.ong@intel.com>
>Date: Jan/14/2020, 02:01:10 (UTC+00:00)
>
>> DMA_CH(#i)_RxDesc_Tail_Pointer points to an offset from the base and
>> indicates the location of the last valid descriptor.
>>
>> The change introduced by "net: stmmac: Update RX Tail Pointer to last
>> free entry" incorrectly updates the RxDesc_Tail_Pointer and causess
>> Rx operation to freeze in corner case. The issue is explained as
>> follow:-
>>
>> Say, cur_rx=1 and dirty_rx=0, then we have dirty=1 and entry=0 before
>> the while (dirty-- > 0) loop of stmmac_rx_refill() is entered. When
>> the while loop is 1st entered, Rx buffer[entry=0] is refilled and after
>> entry++, then, entry=1. Now, the while loop condition check "dirty-- > 0"
>> and the while loop bails out because dirty=0. Up to this point, the
>> driver code works correctly.
>>
>> However, the current implementation sets the Rx Tail Pointer to the
>> location pointed by dirty_rx, just updated to the value of entry(=1).
>> This is incorrect because the last Rx buffer that is refileld with empty
>> buffer is with entry=0. In another words, the current logics always sets
>> Rx Tail Pointer to the next Rx buffer to be refilled (too early).
>>
>> So, we fix this by tracking the index of the most recently refilled Rx
>> buffer by using "last_refill" and use "last_refill" to update the Rx Tail
>> Pointer instead of using "entry" which points to the next dirty_rx to be
>> refilled in future.
>
>I'm not sure about this ...
>
>RX Tail points to last valid descriptor but it doesn't point to the base
>address of that one, it points to the end address.
>
>Let's say we have a ring buffer with just 1 descriptor. With your new
>logic then: RX base == RX tail (== RX base), so the IP will not see any
>descriptor. But with old logic: RX base == (RX base + 1), which causes
>the IP to correctly see the descriptor.
>
>Can you provide more information on the Rx operation freeze you
>mentioned ? Can it be another issue ?

I recheck on my side, it seems like the fix needed for simics model at my
end and not needed for actual SoC. This is strange but I can check internal
team. I also read through the databook which says that for 40-bit or 48-bit
addressing mode, the tail pointer must be advanced to the location
immediately after the descriptors are set, for the DMA to know that
additional descriptors are available.

Now, relooking at the current logic which sets the rx tail pointer according
to the value of "dirty_rx" which can be "zero" as it takes value from entry
that is incremented through STMMAC_GET_ENTRY(entry, DMA_RX_SIZE).
This too can give a situation that the base and tail registers is pointing to
the same location.

According to SNPS databook, the DMA engine goes into SUSPEND state if the
Rx descriptors are not OWN=1. The operation can be resumed by ensuring that
the descriptors are owned by the DMA and then update the tail pointer.

What is your opinion here if we always update the Rx tail pointer to pointer
the boundary of the DMA size as follow without depending on dirty_rx.

rx_q->rx_tail_addr = rx_q->dma_rx_phy + (DMA_RX_SIZE *
		     sizeof(struct dma_desc))

Thanks
Boon Leong

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
