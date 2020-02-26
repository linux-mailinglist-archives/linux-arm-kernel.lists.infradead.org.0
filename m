Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C80611709B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 21:30:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xTlsDsyrth/WVnNOpxQ97KIdmR7NG50tmtF1gmfP3PI=; b=AjR9zC2JVQ+Ok7
	Lm1M8cEBwjkIAIV6u2mog0MktGn7zs7fr8PAlhAfVXBHPUKFEyCI0VxYZececqT4ZCotdqunE+i2A
	G4kUyOtE9VkRTMtWg6zAwlWz4i+sxpVOcv5CxPX/Lcj0ToOAEtAbQcHctWET+G4yPSe0ppzvXOiF8
	RF4GXDoG3MUdBFv7c0Z0v/lPlGdo1Zcun4Vjomr45PzulWllfJDmbe4kXGpQsNeFjqmZ9ETQFDcuA
	1Oc2oHlUQh2LVuwbZwDuzo/MjoygqmHSTzL4kIM8sy61BdNwmEGxmdkBC59BT9okKoLyIhtb5dKzF
	JGP8saB2qsA4mNnDGoJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j73KF-0003nD-Nv; Wed, 26 Feb 2020 20:30:35 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j73K3-0003mS-NM
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 20:30:25 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01QKUJ1d116128;
 Wed, 26 Feb 2020 14:30:19 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582749019;
 bh=budjYnucAtskuwAvLEzRqHdYM4o3vzGP190UOcF1zcA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=TfVdbbvdknmFRBEwFiiy2UdLaoIfhwxT1jVwjs94XuLM10G0JOn49B4DIz0xvheUr
 4Yi4bq5UM2hTUJzuHk2q2ziXRueXnYQg1txIfzHTZic4WT9YrRVkzRE6LnEd1TMdsa
 jB9yK+foO/IKfq8rOZewQbiyo2n8t0pOqTvwFJxk=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01QKUHMh029326
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 26 Feb 2020 14:30:17 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 26
 Feb 2020 14:30:17 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 26 Feb 2020 14:30:17 -0600
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01QKUH8R111414;
 Wed, 26 Feb 2020 14:30:17 -0600
Subject: Re: [PATCH 0/3] Drop PRUSS and OMAP4 IPU/DSP hwmod data
To: Tony Lindgren <tony@atomide.com>
References: <20200224232152.25562-1-s-anna@ti.com>
 <20200226182603.GT37466@atomide.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <0f47de68-6b89-4219-5ff9-a9c39b6bc759@ti.com>
Date: Wed, 26 Feb 2020 14:30:17 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200226182603.GT37466@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_123023_863464_C28F7C7E 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tero Kristo <t-kristo@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/26/20 12:26 PM, Tony Lindgren wrote:
> * Suman Anna <s-anna@ti.com> [200224 15:22]:
>> Hi Tony,
>>
>> The following patches drop the hwmod data for PRUSS on AM33xx and AM437x
>> SoCs, and for the IPU and DSP processors on OMAP4 SoC. Patches are based
>> on 5.6-rc1. Please consider these for the 5.7 merge window.
>>
>> I will be submitting another series tomorrow to add the ti-sysc support
>> for PRUSS. Nevertheless, the PRUSS hwmods will not be used going forward
>> and can be dropped independently.
>>
>> The IPU and DSP hwmods were never added for OMAP5 and DRA7xx/AM57xx SoCs,
>> and the MMU data was already dropped for 5.6-rc1, as it has all been
>> converted to ti-sysc and omap-prm. The DT nodes for these will follow
>> for the next merge window once the current OMAP remoteproc DT support
>> is accepted [1].
> 
> Well we still need the hwmod data until dts data is in place to reset
> and idle these modules. So I'll wait with this set until we have the
> dts changes in place.

Not really, you cannot just idle these processors devices by themselves
without the cores running. The hwmod code actually keeps these in the
default reset asserted state itself, so no harm done in dropping the
data. The remoteproc bindings are acked, so for next merge window, we
can post the dts nodes once those get merged.

regards
Suman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
