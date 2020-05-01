Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D85BB1C18CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 16:58:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cgsu3qiy5wePMBZmmTGkyLWmkLL0uSyNqL3FBsFSpiw=; b=HksZL59CCchgjJ6ImOdrCZRPd
	Gp49WIm7SQ9kUzrPJ+tADV0fzgxr3RT4szZtG8ofJwKMLxjZ+2cH3ZsYWwP0Ga9M2wf2J1uVrVUuy
	HRchKeWxIP0UHQPgmmMhFwduZ7/lB0qgrwKqyEBuHCQ+wlLomTWo/Hcycm2Detizw0xGdv/2YG8kr
	AxTTC5+fetcXuHvL+lNiLeqVnsPKPC4APsJkvCPsrW+tWeMtllGo3pOizHSXIRBC4cl55Ir1IWGUO
	zzJ5faJmOdJxQgaDRfHarZxJydmL8k+cVxorPHx9hFc9JWcvCtjvWfKwMU87u3jLJqYXljflblCey
	G64gau+4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUX78-0007A1-W4; Fri, 01 May 2020 14:58:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUX72-000797-3S
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 14:58:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E5EB30E;
 Fri,  1 May 2020 07:57:59 -0700 (PDT)
Received: from [10.57.39.240] (unknown [10.57.39.240])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B62C83F68F;
 Fri,  1 May 2020 07:57:57 -0700 (PDT)
Subject: Re: [PATCH RFC 2/2] ACPI/IORT: work around num_ids ambiguity
To: Ard Biesheuvel <ardb@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200501095843.25401-1-ardb@kernel.org>
 <20200501095843.25401-3-ardb@kernel.org>
 <e3c7bdab-a2b0-d7c9-5c7b-eee680509338@arm.com>
 <CAMj1kXH0mcK3N94=uOuiL2_iy=eWhsnoXhvfiXv_kQ_j=F2a_Q@mail.gmail.com>
 <18e01ac7-974e-8308-c18c-67aa3fd7ad4e@arm.com>
 <CAMj1kXHsXEmaLuVBo7cgdzHju22WKksu7s3B3-hBE4mYhnuJ=Q@mail.gmail.com>
 <20200501134956.GA7240@e121166-lin.cambridge.arm.com>
 <CAMj1kXGL-P_jNprTZSpLyEMMmHCcPq5-LcZeaRj5NtCeUKaJUA@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <7800f454-d630-e718-b187-d36f21a14ee9@arm.com>
Date: Fri, 1 May 2020 15:57:55 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAMj1kXGL-P_jNprTZSpLyEMMmHCcPq5-LcZeaRj5NtCeUKaJUA@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_075800_234404_3D43412A 
X-CRM114-Status: GOOD (  27.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Hanjun Guo <guohanjun@huawei.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-01 3:35 pm, Ard Biesheuvel wrote:
> On Fri, 1 May 2020 at 15:50, Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
>>
>> On Fri, May 01, 2020 at 03:10:59PM +0200, Ard Biesheuvel wrote:
>>
>> [...]
>>
>>>>>> If we silently fix things up, then people will continue to write broken
>>>>>> tables without even realising, new OSes will have to implement the same
>>>>>> mechanism because vendors will have little interest in changing things
>>>>>> that have worked "correctly" with Linux for years, and we've effectively
>>>>>> achieved a de-facto redefinition of the spec. Making our end of the
>>>>>> interface robust is obviously desirable, but there still needs to be
>>>>>> *some* incentive for the folks on the other end to get it right.
>>>>>>
>>>>>
>>>>> Agreed. But at least we'll be able to detect it and flag it in the
>>>>> general case, rather than having a special case for D05/06 only
>>>>> (although I suppose splitting the output ranges like those platforms
>>>>> do is rather unusual)
>>>>
>>>> Yup, in principle the fixed quirk list gives a nice reassuring sense of
>>>> "we'll work around these early platforms and everyone from now on will
>>>> get it right", but whether reality plays out that way is another matter
>>>> entirely...
>>>
>>> The reason I am looking into this is that I think the fix should go to
>>> stable, given that the current situation makes it impossible to write
>>> firmware that works with older and newer kernels.
>>
>> Yes. If we do remove the quirk the sooner we do it the better to
>> reduce the stable patches.
>>
>>> Lorenzo said he wouldn't mind taking the current version with ACPI OEM
>>> ID matching back to -stable, but it's another quirk list to manage,
>>> which I would prefer to avoid.
>>>
>>> But I don't care deeply either way, to be honest, as long as we can
>>> get something backported so compliant firmware is not being penalized
>>> anymore.
>>
>> Question: if we remove the iort_workaround_oem_info stuff but we *do*
>> keep the existing apply_id_count_workaround flag and we set it by going
>> through all the mappings at boot time and detect if any of these
>> off-by-one conditions apply - would the resulting code be any simpler ?
>>
>> The global flag would apply (as it does now) to _all_ mappings but it is
>> very likely that if the off-by-one firmware bug is present it applies to
>> the IORT table as a whole rather than a single mapping entry.
>>
> 
> This particular issue is based on a misinterpretation, so I agree that
> it makes sense to have a global flag, as long as we only set it if the
> mappings are fully consistent in every other respect, or we'll run the
> risk of hitting issues like the one Robin describes, where things
> happen to work, but will fail once we apply the heuristic. Such an
> issue could exist on one end of the table, while we could spot the
> off-by-one issue somewhere else.
> 
> Which brings us back to a point I made earlier: do we really want to
> validate the table and ensure that it is fully internally consistent?
> Or do we want to be robust in the face of a single known issue that we
> helped create?
> 
> So in my opinion, just fixing it up when we run into it is fine. I can
> add the extra sanity check to reduce the potential fallout for other
> broken systems, but beyond that, I think we shouldn't do too much.

Agreed - AFAICS the extra robustness I'm asking for should only amount 
to a handful more lines on top of the proposed patch (maybe a couple of 
positive return values for "by the way this came from the start/end of a 
mapping range" instead of -EAGAIN). I think a separate scanning pass is 
likely to add up to more complexity and similar-but-not-quite-reusable 
code than simply detecting and handling potential off-by-one edges in-line.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
