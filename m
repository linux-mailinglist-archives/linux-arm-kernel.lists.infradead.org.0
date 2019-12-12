Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 598B311D47A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 18:48:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDQVaGTPJxGCTHf72D4kTs530pXU99DIkEynReOoiTc=; b=rV0wwq/mBJozgd
	oRJaXkzMo532KFxfkMa1Ps+aKpDkN/4AkENbQlpbYbMK6rSo+PFyXx/UKbvtQFhV8NJALbss53Hi+
	SvZkb7gNTMA1GzRUKrleNMX9cGJt9qgK2hAl7XsRIf99FsWiv5zQUA7QSyxlwruserK2NWxqv6ZoG
	IfK6ZTLZGMpJPjniXbWaqComKotbkWiuf9OLpn2lEzTuxRM9e/0neU+EyXaMDjVRso3urHVhg/CZF
	3tEywz+tLlccGvaq6gGAs7V2LRwRfWwSUQPGT6DtD/FBlWAgKDx6ZAy4+FeyNwAVSSKhJMrUR+WIE
	rRQNknn9hp3pl1MB+iYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifSZP-0005V2-LX; Thu, 12 Dec 2019 17:48:11 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifSZF-0005UT-3X
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 17:48:02 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBCHleIv078281;
 Thu, 12 Dec 2019 11:47:40 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576172860;
 bh=1cGl+i3I9t7EkFOkXGCKkICANYjYsjGzWXzuwVNw04s=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=gCnDAqwztmDg5Dz+bodJNBcZ/6ag9RWePCYiQHMnvqjcIa4bwFvYjmlOKKSrTOzrk
 ASJrHgIJGM1gamQ1rU4mBLkLRxE1whB/nDtWG4SEp+HiUGdV7iTBfB7OedDbZbAD4j
 yCtDl8r/YeduIZHylRX+SGcPXAFQVZOofNYoBVqY=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBCHldoe050245;
 Thu, 12 Dec 2019 11:47:39 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 11:47:39 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 11:47:39 -0600
Received: from [10.250.79.55] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBCHlcpG001721;
 Thu, 12 Dec 2019 11:47:38 -0600
Subject: Re: arm_smccc_smc as generic smc interface?
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20191209180752.GJ35479@atomide.com>
 <CAHUa44EJAjL+MGqgKd6YvQAg0z4hRYXb9MeTqsTYhAe-RBZt+g@mail.gmail.com>
 <20191210153840.GL35479@atomide.com>
 <20191212142305.GD46910@lakrids.cambridge.arm.com>
 <622404c8-8ca7-11bb-64fe-14d280827cd2@ti.com>
 <20191212155811.GG46910@lakrids.cambridge.arm.com>
 <20191212171257.GB16364@willie-the-truck>
From: "Andrew F. Davis" <afd@ti.com>
Message-ID: <b8a942db-71b3-d581-fddc-40278de3ef87@ti.com>
Date: Thu, 12 Dec 2019 12:47:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191212171257.GB16364@willie-the-truck>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_094801_227729_0DD91D72 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sumit Garg <sumit.garg@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Volodymyr Babchuk <vlad.babchuk@gmail.com>, Olof Johansson <olof@lixom.net>,
 Russell King <rmk+kernel@armlinux.org.uk>, Marc Zyngier <maz@kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Colin Ian King <colin.king@canonical.com>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/12/19 12:12 PM, Will Deacon wrote:
> On Thu, Dec 12, 2019 at 03:58:12PM +0000, Mark Rutland wrote:
>> On Thu, Dec 12, 2019 at 10:23:47AM -0500, Andrew F. Davis wrote:
>>> On 12/12/19 9:23 AM, Mark Rutland wrote:
>>>> On Tue, Dec 10, 2019 at 07:38:40AM -0800, Tony Lindgren wrote:
>>>>> * Jens Wiklander <jens.wiklander@linaro.org> [191210 08:10]:
>>>>>> On Mon, Dec 9, 2019 at 7:07 PM Tony Lindgren <tony@atomide.com> wrote:
>>>>>> In <arm-smccc.h> there's already been made room for some Qualcomm
>>>>>> quirks, perhaps it's possible to use or extend it to cover the TI
>>>>>> cases you have in mind.
>>>>>
>>>>> Yeah that's my thinking too as long as there are no issues using
>>>>> arm_smccc_smc() for non-optee cases.
>>>>
>>>> I don't think that we wan't to turn the SMCCC code itself into a generic
>>>> SMC interface, and this boils down to how divergent the TI calling
>>>> convention is from SMCCC. What are the differences?
>>>
>>> There are three levels of differences based on the the type of legacy
>>> SMC call we make, first type omap_smc1():
>>>
>>>  * r2-r12 are clobbered vs SMCCC only saving r4-r7
>>>  * r12 used as command ID vs SMCCC using r0
>>>
>>> omap_smc2(), in addition to the above incompatibilities:
>>>
>>>  * r6 must contain #0xff
>>>  * r12 used as command ID again
>>>
>>> omap_smc3(), in addition to the above incompatibilities:
>>>
>>>  * Uses SMC #1 vs #0
>>>
>>> My personal opinion would be to leave arm_smccc_smc() alone and only
>>> allow SMCCC complaint callers to use it (even QCOM's quark should not
>>> have gone in if the plan was not to allow the same exceptions for
>>> others). 
>>
>> I agree. Given the above examples, I'd rather have this separated out.
>> While I'd have preferred to not have the QCOM quirk, that's simply
>> something we have to live with now.
> 
> It's not ABI is it, so we could split that out as well? That said, my
> recollection of the qcom quirk is that they were mostly following the
> SMCCC spec, but just with an extra register to save/restore, which is
> a lot less invasive than the stuff above.
> 


Two problems with the QCOM quirk.

First is that it was done in just about the worst way: QCOM code that
uses it has to use a new function arm_smccc_smc_quirk(), but then this
calls into the generic arm_smccc_smc() which itself was modified to
handle the QCOM specific quark. That means not only does a different
function need to be called by QCOM code anyway but then also everyone
else not using it has to still do all the quirk check handling, even
when using the generic call!

Second it opens the flood gates for other looking for similar quirk
handling, and if we don't get it we cry foul that QCOM got preferential
treatment.

It's not ABI, so I'd say take out the quirk handling from the base
arm_smccc_smc() and have arm_smccc_smc_quirk() take it's own QCOM
specific path.

Andrew


> Will
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
