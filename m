Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4F716FB87
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 11:01:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVCYnY+QnFrdHeSaIOMdz05mJyOuSLXfaVO7eQv8fLI=; b=ovuyXkV22GAqJx
	ynrdRfCJ+NQgqmougOQmsC9Bw2jPDaVqzPidbmadUUPfvkcCpu1sCFDE5UF60AdRsjCtg78efILLp
	g1nYqnRnPjrcgC2Ps6ufmhvWrW6GB/DCOza9+78Z2eoSQrXwmdE5RVzzZvVahEJxjH32Cpaaw8ZbP
	YVYqRIOhCt+RGPtvxA/GX+Ac11xvCBGxNQGMmK803hFVdWmTf6nFZCbMgohEGcqJG0wvmILtp/X/r
	MrLV2cWsnVwrJODF5+iZ2hMGLPzUf44y8WySkVlxVjmjYmLHZemJ3ASbBZyExHSfbMqfxA15HhmWi
	He3MwvOExEz1pvhA4NIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tV1-00053C-Il; Wed, 26 Feb 2020 10:01:03 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tUl-0004zC-Tx
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 10:00:51 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 7BC445C2BCF;
 Wed, 26 Feb 2020 11:00:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1582711242;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ePmS7XO1+c6T51otcQraIoZVvQV4pOzpfHZOivGH1Ow=;
 b=RoeEF8Ve+22KNPqaEf9qu9/4e6wKLg0KLscyhkoSR4oRsFxTu40avKIErXJqAPDAw2rela
 XM+se4G3O6pIJJUC9f9N9bScqxRfA8+z4rrj633JD4ah3BjgHnrMdeE1QP1J02BFXuwfTd
 cNuJxD5nmnTujmFM8Q/pMsvIm35G9FI=
MIME-Version: 1.0
Date: Wed, 26 Feb 2020 11:00:42 +0100
From: Stefan Agner <stefan@agner.ch>
To: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>, Igor Opaniuk
 <igor.opaniuk@gmail.com>
Subject: Re: [PATCH v1 5/5] arm: dts: vf: toradex: re-license GPL-2.0+ to
 GPL-2.0
In-Reply-To: <CAGgjyvHE+B-VCSfmR9MeO2-u6=dVCUCmCorEa1J+NG5vwQoRfA@mail.gmail.com>
References: <1582565548-20627-1-git-send-email-igor.opaniuk@gmail.com>
 <1582565548-20627-5-git-send-email-igor.opaniuk@gmail.com>
 <CAGgjyvHE+B-VCSfmR9MeO2-u6=dVCUCmCorEa1J+NG5vwQoRfA@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <8a33d75f0bdf10b0b15514ac790a248d@agner.ch>
X-Sender: stefan@agner.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_020048_418312_40A61CC8 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-26 10:29, Oleksandr Suvorov wrote:
> On Mon, Feb 24, 2020 at 7:33 PM Igor Opaniuk <igor.opaniuk@gmail.com> wrote:
>>
>> From: Igor Opaniuk <igor.opaniuk@toradex.com>
>>
>> Specify explicitly that GPL-2.0 license can be used and not
>> GPL-2.0+ (which also includes next less permissive versions of GPL)
>> in Toradex Vybrid-based SoM device trees.
>>
>> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
> 
> Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
> 
> And please ignore my note about copyright for the previous change of this file.
> 

The Linux on Vybrids Cortex-M4 was an entirely private endeavour of me,
so there is no Toradex Copyright here.

I agree on the License change.

Acked-by: Stefan Agner <stefan@agner.ch>

--
Stefan

>> ---
>>
>>  arch/arm/boot/dts/vf610m4-colibri.dts | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/boot/dts/vf610m4-colibri.dts b/arch/arm/boot/dts/vf610m4-colibri.dts
>> index 2c2db47..75c6d82 100644
>> --- a/arch/arm/boot/dts/vf610m4-colibri.dts
>> +++ b/arch/arm/boot/dts/vf610m4-colibri.dts
>> @@ -1,7 +1,8 @@
>> -// SPDX-License-Identifier: GPL-2.0+ OR MIT
>> +// SPDX-License-Identifier: GPL-2.0 OR MIT
>>  /*
>>   * Device tree for Colibri VF61 Cortex-M4 support
>>   *
>> + * Copyright (C) 2020 Toradex AG
>>   * Copyright (C) 2015 Stefan Agner
>>   */
>>
>> --
>> 2.7.4
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
