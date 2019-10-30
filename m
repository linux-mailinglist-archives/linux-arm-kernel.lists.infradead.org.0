Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 050ACE9C11
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 14:10:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GYICFmxmC/6MkVj25oU1QETdk4fS0pWuloB0JnVqG08=; b=A59g4aEQaA108P/ck6ojiKqtI
	BS0V7MF+QN4l7SYIrIp9mfy8hOywGZJOH24eyulS6yeUY5M7bR72mqaFs72pZZ/tlcdYJcVjXkRE0
	CO/BfVdEYtRm7H83Z64+Nv2aAnfYXupm6KdVg93keAs+zxxV3Jb5oEGaB9N9YlY7tU6vCcrY8b71T
	j/gWqYYgKbVpgdagUtMQmmrhVcV1Vt4RSSLfFApWVcwi90PhXZtS/Ov7GRKGDHcy0UZgQWugQTNdr
	vlrXFN8cm0sOIZechtAcym6vudkeaL6PL48AQqDVZgYTqKJoVnLadnGs0Iv+nN4clRoS6UhLvdblH
	ix4dKl1vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPnjo-0000Gu-Vw; Wed, 30 Oct 2019 13:10:12 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPnjV-0000GX-QG
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 13:09:55 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9UD9hoY093115;
 Wed, 30 Oct 2019 08:09:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572440983;
 bh=M5l3IXLPZ7PbLcGaD/x5qSLUDpxoQyE8oFPSKxV0M6M=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=V5lkrTTSDHh0l+SiR9NbcKYF4Ssaol8yXGCPibS7s4RTE0cDwNKtEG18APtxtqZGq
 2uM4ETLP0V3C6c/DuT/EpHRVSbWe59T17HFe9pfSAQnuWKN5ROk9txWhrS4tvS2V6S
 opxO1af7+PkGymOiMkSUpF9JVwCn8ESbgvAJHfPM=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9UD9hQN087336
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 30 Oct 2019 08:09:43 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 30
 Oct 2019 08:09:30 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 30 Oct 2019 08:09:43 -0500
Received: from [10.250.98.116] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9UD9eLx111494;
 Wed, 30 Oct 2019 08:09:40 -0500
Subject: Re: [PATCH v3 02/14] soc: ti: k3: add navss ringacc driver
To: Lokesh Vutla <lokeshvutla@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>, 
 <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
References: <20191001061704.2399-1-peter.ujfalusi@ti.com>
 <20191001061704.2399-3-peter.ujfalusi@ti.com>
 <b5f47303-b6d2-190b-d38c-d3557a93b111@ti.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <5e65db22-1436-5f2d-6355-9ba3aa5a9d88@ti.com>
Date: Wed, 30 Oct 2019 15:10:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b5f47303-b6d2-190b-d38c-d3557a93b111@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_060953_998548_BE6642D8 
X-CRM114-Status: GOOD (  15.92  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, tony@atomide.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 29/10/2019 10:52, Lokesh Vutla wrote:
> Hi Grygorii,
> 
> [...snip..]
> 
>> +
>> +static int k3_ringacc_ring_access_io(struct k3_ring *ring, void *elem,
>> +				     enum k3_ringacc_access_mode access_mode)
>> +{
>> +	void __iomem *ptr;
>> +
>> +	switch (access_mode) {
>> +	case K3_RINGACC_ACCESS_MODE_PUSH_HEAD:
>> +	case K3_RINGACC_ACCESS_MODE_POP_HEAD:
>> +		ptr = (void __iomem *)&ring->fifos->head_data;
>> +		break;
>> +	case K3_RINGACC_ACCESS_MODE_PUSH_TAIL:
>> +	case K3_RINGACC_ACCESS_MODE_POP_TAIL:
>> +		ptr = (void __iomem *)&ring->fifos->tail_data;
>> +		break;
>> +	default:
>> +		return -EINVAL;
>> +	}
>> +
>> +	ptr += k3_ringacc_ring_get_fifo_pos(ring);
>> +
>> +	switch (access_mode) {
>> +	case K3_RINGACC_ACCESS_MODE_POP_HEAD:
>> +	case K3_RINGACC_ACCESS_MODE_POP_TAIL:
>> +		dev_dbg(ring->parent->dev,
>> +			"memcpy_fromio(x): --> ptr(%p), mode:%d\n", ptr,
>> +			access_mode);
>> +		memcpy_fromio(elem, ptr, (4 << ring->elm_size));
> 
> Does this work for any elem_size < 64 or any element size not aligned with 64?

Max value of elem_size is 6 as per TRM.

> 
> IIUC, in message mode, ring element should be inserted in a single burst write
> and there is no doorbell facility. If the above conditions are not met, we are
> supposed to use proxy.
> 
> In this driver, I don't see any restrictions on the ring element size for
> message mode and directly written to io. Am I missing something?
> 

You are right and corresponding check can be added at k3_ringacc_ring_cfg() for the case
K3_RINGACC_RING_MODE_MESSAGE and no proxy

[..]

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
