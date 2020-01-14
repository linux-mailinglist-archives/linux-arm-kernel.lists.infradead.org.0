Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DC013A294
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 09:11:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDm3NZSJ+IwZWJrV68p28Ceok3vasphP/v/fdisSyzw=; b=la4WWTIPbVz8fl
	ZraDUeSyTNlc41rPtXNKg/5LxJUCSIo6jZi/HFUlEQ/olGeGAFcTPJAzuo3UAs0ud9RwCFheNcSkb
	Lsjk1kVF7vsCbSUvqj7tjzF80hecw7lcLRoBM2SJECQ4cdpmWsAkDfY7waCc9a3VoW/YROUZ9EdG8
	JYWO/c856IOFGN4kavFNgWHlrScy3RREE7mEG6SbgnUpjYPeb4jVvPCBLWPpOJyVpR1Ud5v6Heggr
	6j899Rr93o4RvUyrLXung2lu7PRGPr2tQN6dn+vdp+CGTVV7iPuv3XVk6qtA35G7miyScADxo5dW1
	U+4FmPGr3Crg7usAxv1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irHIW-0004vq-R0; Tue, 14 Jan 2020 08:11:36 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irHIP-0004vL-CF
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 08:11:31 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00E8BNXc111226;
 Tue, 14 Jan 2020 02:11:23 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578989483;
 bh=OXgw5jVtI/P8lq90Ajh5uW2OyAX5bZNN5cmbnuabCec=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=lSkH2eFWkfeoKXLvH8m9BL6PJIVxyND0b2PDvvSWCvc6AmTrP8EkrYHWbizr4Uh3U
 JVv+2AFLRMJj8+obgV7Uk4gxbH8g0OgqDiPFhM+NtqxxAb1yVtKGwkHaerfaZL+1FN
 LrUTSzHksvbzuGgY75fOE1sG8yzira/dqDplrJy8=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00E8BNHU078292
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 14 Jan 2020 02:11:23 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 14
 Jan 2020 02:11:23 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 14 Jan 2020 02:11:23 -0600
Received: from [172.24.145.246] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00E8BHg1063367;
 Tue, 14 Jan 2020 02:11:18 -0600
Subject: Re: [PATCH v8 02/18] soc: ti: k3: add navss ringacc driver
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <santosh.shilimkar@oracle.com>,
 <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
References: <20191223110458.30766-1-peter.ujfalusi@ti.com>
 <20191223110458.30766-3-peter.ujfalusi@ti.com>
 <6d70686b-a94e-18d1-7b33-ff9df7176089@ti.com>
 <900c2f21-22bf-47f9-5c3c-0a3d95a5d645@oracle.com>
 <ea6a87ae-b978-a786-27eb-db99483a82d9@ti.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <f0230e88-bd9b-cd6d-433d-06d507cafcbd@ti.com>
Date: Tue, 14 Jan 2020 13:41:17 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ea6a87ae-b978-a786-27eb-db99483a82d9@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_001129_498008_78D362C8 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, vigneshr@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/01/20 12:28 PM, Peter Ujfalusi wrote:
> Hi Santosh,
> 
> On 13/01/2020 23.28, santosh.shilimkar@oracle.com wrote:
>>
>>
>> On 12/23/19 3:38 AM, Peter Ujfalusi wrote:
>>> Hi Santosh,
>>>
>>> On 23/12/2019 13.04, Peter Ujfalusi wrote:
>>>> From: Grygorii Strashko <grygorii.strashko@ti.com>
>>>>
>>>> The Ring Accelerator (RINGACC or RA) provides hardware acceleration to
>>>> enable straightforward passing of work between a producer and a
>>>> consumer.
>>>> There is one RINGACC module per NAVSS on TI AM65x SoCs.
>>>>
>>>> The RINGACC converts constant-address read and write accesses to
>>>> equivalent
>>>> read or write accesses to a circular data structure in memory. The
>>>> RINGACC
>>>> eliminates the need for each DMA controller which needs to access ring
>>>> elements from having to know the current state of the ring (base
>>>> address,
>>>> current offset). The DMA controller performs a read or write access to a
>>>> specific address range (which maps to the source interface on the
>>>> RINGACC)
>>>> and the RINGACC replaces the address for the transaction with a new
>>>> address
>>>> which corresponds to the head or tail element of the ring (head for
>>>> reads,
>>>> tail for writes). Since the RINGACC maintains the state, multiple DMA
>>>> controllers or channels are allowed to coherently share the same
>>>> rings as
>>>> applicable. The RINGACC is able to place data which is destined towards
>>>> software into cached memory directly.
>>>>
>>>> Supported ring modes:
>>>> - Ring Mode
>>>> - Messaging Mode
>>>> - Credentials Mode
>>>> - Queue Manager Mode
>>>>
>>>> TI-SCI integration:
>>>>
>>>> Texas Instrument's System Control Interface (TI-SCI) Message Protocol
>>>> now
>>>> has control over Ringacc module resources management (RM) and Rings
>>>> configuration.
>>>>
>>>> The corresponding support of TI-SCI Ringacc module RM protocol
>>>> introduced as option through DT parameters:
>>>> - ti,sci: phandle on TI-SCI firmware controller DT node
>>>> - ti,sci-dev-id: TI-SCI device identifier as per TI-SCI firmware spec
>>>>
>>>> if both parameters present - Ringacc driver will configure/free/reset
>>>> Rings
>>>> using TI-SCI Message Ringacc RM Protocol.
>>>>
>>>> The Ringacc driver manages Rings allocation by itself now and requests
>>>> TI-SCI firmware to allocate and configure specific Rings only. It's done
>>>> this way because, Linux driver implements two stage Rings allocation and
>>>> configuration (allocate ring and configure ring) while TI-SCI Message
>>>> Protocol supports only one combined operation (allocate+configure).
>>>>
>>>> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
>>>> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
>>>> Reviewed-by: Tero Kristo <t-kristo@ti.com>
>>>> Tested-by: Keerthy <j-keerthy@ti.com>
>>>
>>> Can you please giver your Acked-by for the ringacc patches if they are
>>> still OK from your point of view as you had offered to take them before
>>> I got comments from Lokesh.
>>>
>> Sure. But you really need to split the series so that dma engine and
>> soc driver patches can be applied independently.
> 
> The ringacc is a build and runtime dependency for the DMA. I have hoped
> that all of them can go via DMAengine (hence asking for your ACK on the
> drivers/soc/ti/ patches) for 5.6.
> 
>> Can you please do that?
> 
> This late in the merge window that would really mean that I will miss
> another release for the KS3 DMA...
> I can live with that if you can pick the ringacc for 5.6 and if Vinod
> takes the DMAengine core changes as well.
> 
> That would leave only the DMA drivers for 5.7 and we can also queue up
> changes for 5.7 which depends on the DMAengine API (ASoC changes, UART,
> sa2ul, etc).
> 
> If they go independently and nothing makes it to 5.6 then 5.8 is the
> realistic target for the DMA support for the KS3 family of devices...

Thats too many kernel versions to get this important piece in.

Santosh, if you do not have anything else queued up that clashes with
this, can the whole series be picked up by Vinod with your ack on the
drivers/soc/ti/ pieces?

Vinod could also perhaps setup an immutable branch based on v5.5-rc1
with just the drivers/soc/ti parts applied so you can merge that branch
in case you end up having to send up anything that conflicts.

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
