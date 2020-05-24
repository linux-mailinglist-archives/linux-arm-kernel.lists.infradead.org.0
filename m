Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CBF1E0400
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 01:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZhEW/A3BI93MYAZGRE66cEfn2eKX7AsQVPD9ssy5qA=; b=b7o4eDIpstzfv0
	XjHc8FmaRxKBuOkcR+VH85ZhEEk5q0BZqNIgvJYA5WV8T/rvV+zcxSRusnyLUF0ktSUoYledp7wMo
	oCDuLmE5KTeXM75J3uKvU9lWd5+J651ZZqg9zbN9Xm5ZdDzWRPi1yAh+eRw/hsr8m70BHe3WreOnY
	T5oORGo3Hb/MTWGijyDfxSmFTMDMlcFisU94YswxSBclc7ftq6dwzUo7DWMxnetj7xQLa/XnjuF4i
	uHC+S1hh905XtaS9BDOmyjnVuXulOFtXKKe9QopamYJYCeHUYqOzIdHKXCDCNiUUHxg9HFoTTIecW
	uKXiZ75KKjMOKLSCXt8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd0Qe-0000WE-Bi; Sun, 24 May 2020 23:53:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd0QW-0000VP-7H
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 23:53:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D1F6E30E;
 Sun, 24 May 2020 16:53:04 -0700 (PDT)
Received: from [10.163.76.115] (unknown [10.163.76.115])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C41C63F52E;
 Sun, 24 May 2020 16:53:02 -0700 (PDT)
Subject: Re: [PATCH] arm64/cpufeature: Move BUG_ON() inside get_arm64_ftr_reg()
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <1589937774-20479-1-git-send-email-anshuman.khandual@arm.com>
 <20200520122012.GA25815@willie-the-truck> <20200520154711.GD18302@gaia>
 <20200520173953.GA27629@willie-the-truck>
 <cdea1cc5-41be-c125-d4d1-f63ff1989ec6@arm.com>
 <20200521162212.GK6608@willie-the-truck> <20200521165916.GF11507@gaia>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <aa6436d4-c724-4933-1341-6ca417ce40ed@arm.com>
Date: Mon, 25 May 2020 05:22:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200521165916.GF11507@gaia>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_165308_348898_DDF21CAC 
X-CRM114-Status: GOOD (  20.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, Mark Brown <broonie@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/21/2020 10:29 PM, Catalin Marinas wrote:
> On Thu, May 21, 2020 at 05:22:15PM +0100, Will Deacon wrote:
>> On Thu, May 21, 2020 at 08:45:38AM +0530, Anshuman Khandual wrote:
>>> On 05/20/2020 11:09 PM, Will Deacon wrote:
>>>> On Wed, May 20, 2020 at 04:47:11PM +0100, Catalin Marinas wrote:
>>>>> On Wed, May 20, 2020 at 01:20:13PM +0100, Will Deacon wrote:
>>>>>> On Wed, May 20, 2020 at 06:52:54AM +0530, Anshuman Khandual wrote:
>>>>>>> There is no way to proceed when requested register could not be searched in
>>>>>>> arm64_ftr_reg[]. Requesting for a non present register would be an error as
>>>>>>> well. Hence lets just BUG_ON() when the search fails in get_arm64_ftr_reg()
>>>>>>> rather than checking for return value and doing the same in some individual
>>>>>>> callers.
>>>>>>>
>>>>>>> But there are some callers that dont BUG_ON() upon search failure. It adds
>>>>>>> an argument 'failsafe' that provides required switch between callers based
>>>>>>> on whether they could proceed or not.
>>>>>>>
>>>>>>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>>>>>>> Cc: Will Deacon <will@kernel.org>
>>>>>>> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
>>>>>>> Cc: Mark Brown <broonie@kernel.org>
>>>>>>> Cc: linux-arm-kernel@lists.infradead.org
>>>>>>> Cc: linux-kernel@vger.kernel.org
>>>>>>>
>>>>>>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>>>>>>> ---
>>>>>>> Applies on next-20200518 that has recent cpufeature changes from Will.
>>>>>>>
>>>>>>>  arch/arm64/kernel/cpufeature.c | 26 +++++++++++++-------------
>>>>>>>  1 file changed, 13 insertions(+), 13 deletions(-)
>>>>>>>
>>>>>>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
>>>>>>> index bc5048f152c1..62767cc540c3 100644
>>>>>>> --- a/arch/arm64/kernel/cpufeature.c
>>>>>>> +++ b/arch/arm64/kernel/cpufeature.c
>>>>>>> @@ -557,7 +557,7 @@ static int search_cmp_ftr_reg(const void *id, const void *regp)
>>>>>>>   *         - NULL on failure. It is upto the caller to decide
>>>>>>>   *	     the impact of a failure.
>>>>>>>   */
>>>>>>> -static struct arm64_ftr_reg *get_arm64_ftr_reg(u32 sys_id)
>>>>>>> +static struct arm64_ftr_reg *get_arm64_ftr_reg(u32 sys_id, bool failsafe)
>>>>>>
>>>>>> Generally, I'm not a big fan of boolean arguments because they are really
>>>>>> opaque at the callsite. It also seems bogus to me that we don't trust the
>>>>>> caller to pass a valid sys_id, but we trust it to get "failsafe" right,
>>>>>> which seems to mean "I promise to check the result isn't NULL before
>>>>>> dereferencing it."
>>>>>>
>>>>>> So I don't see how this patch improves anything. I'd actually be more
>>>>>> inclined to stick a WARN() in get_arm64_ftr_reg() when it returns NULL and
>>>>>> have the callers handle NULL by returning early, getting rid of all the
>>>>>> BUG_ONs in here. Sure, the system might end up in a funny state, but we
>>>>>> WARN()d about it and tried to keep going (and Linus has some strong opinions
>>>>>> on this too).
>>>>>
>>>>> Such WARN can be triggered by the user via emulate_sys_reg(), so we
>>>>> can't really have it in get_arm64_ftr_reg() without a 'failsafe' option.
>>>>
>>>> Ah yes, that would be bad. In which case, I don't think the existing code
>>>> should change.
>>>
>>> The existing code has BUG_ON() in three different callers doing exactly the
>>> same thing that can easily be taken care in get_arm64_ftr_reg() itself. As
>>> mentioned before an enum variable (as preferred - over a bool) can still
>>> preserve the existing behavior for emulate_sys_reg().
>>>
>>> IMHO these are very good reasons for us to change the code which will make
>>> it cleaner while also removing three redundant BUG_ON() instances. Hence I
>>> will request you to please reconsider this proposal.
>>
>> Hmm, then how about trying my proposal with the WARN_ON(), but having a
>> get_arm64_ftr_reg_nowarn() variant for the user emulation case?
> 
> That works for me, get_arm64_ftr_reg() would be a wrapper over the
> _nowarn function with the added WARN_ON.

Sure, will do.

> 
> read_sanitised_ftr_reg() would need to return something though. Would
> all 0s be ok? I think it works as long as we don't have negative CPUID
> fields.

Just trying to understand. If get_arm64_ftr_reg() returns NULL, then
read_sanitised_ftr_reg() should also return 0 for that non existent
register (already been warned in get_arm64_ftr_reg).

@@ -961,8 +972,8 @@ u64 read_sanitised_ftr_reg(u32 id)
 {
        struct arm64_ftr_reg *regp = get_arm64_ftr_reg(id);

-       /* We shouldn't get a request for an unsupported register */
-       BUG_ON(!regp);
+       if (!regp)
+               return 0;
        return regp->sys_val;
 }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
