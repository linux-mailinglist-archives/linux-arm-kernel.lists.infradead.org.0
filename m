Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BC33B498
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DHyvJNavTQSI6tUrtRm73jd65rAbUT6tigc2fO86OUQ=; b=pA+x5JQn+bp3yVSlO0HX+ZivM
	rdeIkZz12DhpdQQPD/WcbEx9ZjXSqXFfdjjKOnMj/IdsrPj9P4M2TLKenVrB77FECn9dAGL/8Uk/G
	bJSZNPKsJwixzdtNrKokL6NZFMIg90zU+19ao143KgGXObGwMVsyTvnd/jilr8a3VE4rtf4dkYBr1
	PFPexk3e0K/R5Ck5q3sg2WN+q7IH59HmLusDgV9H8Jqx73tnRVzDu6d+jJnscC8C1xCjMqP/KNx2h
	mbYcorQxJJT5B7env6t2hg1gGhzVgBxIKOWZURPfIcEwVv/FPdm4PFM9PE5SYCTH8VVHLA7It6MWW
	KMUgrNYqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJI3-00084A-30; Mon, 10 Jun 2019 12:20:43 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJGz-0006EH-1U
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 12:19:39 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5ACJYvj051757;
 Mon, 10 Jun 2019 07:19:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560169175;
 bh=HRczlLLLa8fNcM5JaVoEwlEJRwamvX4hQ+KRQb/Fon8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=clRIYTQvxertq25F+Zqgjl+8PyIO0ND2jEZjKoYcU8Mn6OD+umX8Ti7bX9wO5Ak0v
 +CnBk0v4nZRQ/MK6dzy/h/1yt93KX71Yexc5heunvy/+PfcAYzL0JIzRlReMtF4Agy
 SXtCOX7X159pZzGAo+9swxcupT2mDJBLvaZUKSBQ=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5ACJYUs089592
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 10 Jun 2019 07:19:34 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 10
 Jun 2019 07:19:29 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 10 Jun 2019 07:19:29 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5ACJQGV122170;
 Mon, 10 Jun 2019 07:19:27 -0500
Subject: Re: [PATCH] firmware: ti_sci: Add support for processor control
To: <santosh.shilimkar@oracle.com>, Suman Anna <s-anna@ti.com>, Nishanth Menon
 <nm@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>
References: <20190605223334.30428-1-s-anna@ti.com>
 <4302c224-9e50-6320-2585-60bfe0aa2a32@oracle.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <2174bc51-9e28-e519-b936-9e101e2a2a4e@ti.com>
Date: Mon, 10 Jun 2019 15:19:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <4302c224-9e50-6320-2585-60bfe0aa2a32@oracle.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_051937_221559_0C3DD58E 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/06/2019 00:35, santosh.shilimkar@oracle.com wrote:
> On 6/5/19 3:33 PM, Suman Anna wrote:
>> Texas Instrument's System Control Interface (TI-SCI) Message Protocol
>> is used in Texas Instrument's System on Chip (SoC) such as those
>> in K3 family AM654 SoC to communicate between various compute
>> processors with a central system controller entity.
>>
>> The system controller provides various services including the control
>> of other compute processors within the SoC. Extend the TI-SCI protocol
>> support to add various TI-SCI commands to invoke services associated
>> with power and reset control, and boot vector management of the
>> various compute processors from the Linux kernel.
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> ---
>> Hi Santosh, Nishanth, Tero,
>>
>> Appreciate it if this patch can be picked up for the 5.3 merge window.
>> This is a dependency patch for my various remoteproc drivers on TI K3
>> SoCs. Patch is on top of v5.2-rc1.
>>
> I will pick this up for 5.3.

Santosh,

There is a pile of drivers/firmware changes for ti-sci, which have cross 
dependencies, and will cause merge conflicts also as they touch same file.

Do you mind if I setup a pull-request for these all and send it to you? 
They are going to be on top of the keystone clock pull-request I just 
sent today though, otherwise it won't compile (the 32bit clock support 
has dependency towards the clock driver.)

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
