Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4917D1A3C31
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 00:01:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E75MnI7GN92gI1ZD6LxtmeNYUVHA7+eptpjZFF7fZbY=; b=TO7ZMEs+/dUYoM
	beuDGkYJ4FMNoQEaEpGb+Ke3wWUbHiDgVtx5E4gUCkYYUNhe21rgOzmsPSAkrYnMduLF1OEpZQZCG
	GOCBiIbCBPp+hlikmjdnk7/6ofrIENUSFcm/Tq7i4Esb+OCetfP3Xo5mcMnLwdSYAQ/3lK2WeKpoP
	bDUMn98kTgWi/XC4/bR3sMhfu6pOMIecdF4zlMF5es4asNJZ6X13S9YkbYxjR+Qst8pHBGYQAk0aN
	JjR9W8bDF/FxXk/S6IC4tg/ajhwoiT7LXtbChtcryxNNv/S1nsk0yhiDB5QM6+8Vht9/KAKb8ofPh
	IZTld1UakxmNYFsG3hzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMfEZ-0003kF-1t; Thu, 09 Apr 2020 22:01:15 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMfES-0003jw-N1
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 22:01:10 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 039M13xW030654;
 Thu, 9 Apr 2020 17:01:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1586469663;
 bh=1M+jwazQX4BDpMZKdqu/6bX8vsrM9v22p6tALsFhTxo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ovvSPpNcKyvxXg82NJUPUvrdqfAySOrq32XSWMJAs6XmnocP6RYdWcVLlNoWlAb+B
 LbN3BgvVPbcmHKIEJRshorcFvq0Qm9HOd42XvaRgshF/tG7biFlg1RhDGJcsYFc9kd
 DeYp9OM3QfLHkuOEHyMxmFzmG//8Pe6Zt/Xw6src=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 039M12UF067248
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 9 Apr 2020 17:01:02 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 9 Apr
 2020 17:01:02 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 9 Apr 2020 17:01:02 -0500
Received: from [10.250.86.212] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 039M12ax068082;
 Thu, 9 Apr 2020 17:01:02 -0500
Subject: Re: [PATCH 6/7] remoteproc/k3-r5: Initialize TCM memories for ECC
To: Mathieu Poirier <mathieu.poirier@linaro.org>
References: <20200324201819.23095-1-s-anna@ti.com>
 <20200324201819.23095-7-s-anna@ti.com> <20200409213633.GB32029@xps15>
From: Suman Anna <s-anna@ti.com>
Message-ID: <b7dfa5d6-53cc-362d-dd76-941639dfbf29@ti.com>
Date: Thu, 9 Apr 2020 17:01:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200409213633.GB32029@xps15>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_150108_895507_18A89941 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/9/20 4:36 PM, Mathieu Poirier wrote:
> On Tue, Mar 24, 2020 at 03:18:18PM -0500, Suman Anna wrote:
>> The R5F processors on K3 SoCs all have two TCMs (ATCM and BTCM) that
>> support 32-bit ECC. The TCMs are typically loaded with some boot-up
>> code to initialize the R5 MPUs to further execute code out of DDR.
>> The ECC for the TCMs is enabled by default on K3 SoCs due to internal
>> default tie-off values, but the TCM memories are not initialized on
>> device power up. Any read access without the corresponding TCM memory
>> location initialized will generate an ECC error, and any such access
>> from a A72 or A53 core will trigger a SError.
>>
>> So, zero initialize both the TCM memories before loading any firmware
>> onto a R5F in remoteproc mode. Any R5F booted from U-Boot/SPL would
>> require a similar initialization in the bootloader. Note that both
>> the TCMs are initialized unconditionally as the TCM enable config bits
>> only manage the access and visibility from R5. The Core1 TCMs are not
>> used and accessible in LockStep mode, so they are only initialized
>> in Split-mode.
> 
> Everything was going well with this changelog until the last sentence.
> Intuitively one is looking for the code that avoids the initialisation for
> "Core1" in the patch but it is not there, and rightly so.  In locksetup mode the
> second core is not registered with the remoteproc core and as such the
> associated TCMs won't be initialised.
> 
> Simply put, I would just remove the last sentence as all it does (at least for
> me) is add confusion.

Yep, that was more of a "NOTE: " type comment on overall behavior. I
will drop the sentence for v2.

regards
Suman

> 
> With that:
> 
> Acked-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> 
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> ---
>>  drivers/remoteproc/ti_k3_r5_remoteproc.c | 11 +++++++++++
>>  1 file changed, 11 insertions(+)
>>
>> diff --git a/drivers/remoteproc/ti_k3_r5_remoteproc.c b/drivers/remoteproc/ti_k3_r5_remoteproc.c
>> index 655f8f14c37d..8c9b7ae5d8b7 100644
>> --- a/drivers/remoteproc/ti_k3_r5_remoteproc.c
>> +++ b/drivers/remoteproc/ti_k3_r5_remoteproc.c
>> @@ -366,6 +366,17 @@ static int k3_r5_rproc_prepare(struct rproc *rproc)
>>  		dev_err(dev, "unable to enable cores for TCM loading, ret = %d\n",
>>  			ret);
>>  
>> +	/*
>> +	 * Zero out both TCMs unconditionally (access from v8 Arm core is not
>> +	 * affected by ATCM & BTCM enable configuration values) so that ECC
>> +	 * can be effective on all TCM addresses.
>> +	 */
>> +	dev_dbg(dev, "zeroing out ATCM memory\n");
>> +	memset(core->mem[0].cpu_addr, 0x00, core->mem[0].size);
>> +
>> +	dev_dbg(dev, "zeroing out BTCM memory\n");
>> +	memset(core->mem[1].cpu_addr, 0x00, core->mem[1].size);
>> +
>>  	return ret;
>>  }
>>  
>> -- 
>> 2.23.0
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
