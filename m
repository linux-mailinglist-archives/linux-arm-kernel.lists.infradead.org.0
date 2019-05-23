Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAAD27F93
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 16:27:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZYzTa/fRxpvU1GWHlp6Pka1rzzYaOVtUDdX2uscnXE=; b=Cjbv6gpFdSvjZK
	uuJpyOgkqBdprbl5Ln6mOQ7AYXiOHmFh8NQtz4yzcIp8B2ei9UyyUhps13W5pFTDq+iotWxjB3Q5M
	pNEG/htZvfxW3Ix+/k4Fy5qkN2sPxi8xelfFyJIS5JKqnnRgvqqf3AWhYYH8hr18e7JpDBbGvdWnA
	NH6QW5Rp0RfSZao7t+xhNO04gBdWqrXjtsPJvZOsd00/rCNj0Peu21fGB/vkuRrZ0RlemG0OM6SDK
	kkCnZoS7LG0uQItVrm/008OSLkmjv0yeDxawrnQ1pIA/zx4BQ3/ztXyTgrR3kP6JLO1w3yn7FjkGM
	/CUqVMTBdh2kdj3bh66A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hToh4-0002Ha-Pg; Thu, 23 May 2019 14:27:42 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTofp-000142-UX
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 14:26:49 +0000
Received: from [78.46.172.3] (helo=sslproxy06.your-server.de)
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1hTofk-0006tP-O7; Thu, 23 May 2019 16:26:20 +0200
Received: from [178.197.249.12] (helo=linux.home)
 by sslproxy06.your-server.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <daniel@iogearbox.net>)
 id 1hTofk-000CAr-Gd; Thu, 23 May 2019 16:26:20 +0200
Subject: Re: [PATCH/RFC] arm64: fix build warning from
 __AARCH64_INSN_FUNCS(ldadd, ...)
To: Will Deacon <will.deacon@arm.com>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
References: <1558599120-29394-1-git-send-email-yoshihiro.shimoda.uh@renesas.com>
 <20190523103602.GJ26646@fuggles.cambridge.arm.com>
 <4b35cc15-9e35-eb67-3cfc-3a8eff8c462e@iogearbox.net>
 <1daf0c3e-745b-386b-4a8d-bfb18f987239@arm.com>
 <20190523141639.GA31896@fuggles.cambridge.arm.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <e94cb569-3460-8df1-f675-d5a9aae8abdf@iogearbox.net>
Date: Thu, 23 May 2019 16:26:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190523141639.GA31896@fuggles.cambridge.arm.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.100.3/25458/Thu May 23 09:58:32 2019)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_072626_584937_88615BB9 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [213.133.104.62 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-renesas-soc@vger.kernel.org, catalin.marinas@arm.com,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 kuninori.morimoto.gx@renesas.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/23/2019 04:16 PM, Will Deacon wrote:
> On Thu, May 23, 2019 at 02:54:54PM +0100, Jean-Philippe Brucker wrote:
>> On 23/05/2019 14:02, Daniel Borkmann wrote:
>>> On 05/23/2019 12:36 PM, Will Deacon wrote:
>>>> [+Daniel and Jean-Philippe]
>>>> On Thu, May 23, 2019 at 05:12:00PM +0900, Yoshihiro Shimoda wrote:
>>>>> The following build warning happens on gcc 8.1.0.
>>>>>
>>>>>  linux/arch/arm64/include/asm/insn.h: In function 'aarch64_insn_is_ldadd':
>>>>>  linux/arch/arm64/include/asm/insn.h:280:257: warning: bitwise comparison always evaluates to false [-Wtautological-compare]
>>>>>  __AARCH64_INSN_FUNCS(ldadd, 0x3F20FC00, 0xB8200000)
>>>>>
>>>>> Since the second argument is mask value and compare with the third
>>>>> argument value, the bit 31 is always masked and then this macro is
>>>>> always false. So, this patch fixes the issue.
>>>>>
>>>>> Reported-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>>>>> Fixes: 34b8ab091f9ef57a ("bpf, arm64: use more scalable stadd over ldxr / stxr loop in xadd")
>>>>> Tested-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>>>>> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
>>>>> ---
>>>>>  I'm not sure the second argument "0xBF20FC00" is OK or not (we can set
>>>>>  to 0xFF20FC00 instead). So, I marked RFC on this patch.
>>>>>
>>>>>  arch/arm64/include/asm/insn.h | 2 +-
>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
>>>>> index ec894de..c9e3cdc 100644
>>>>> --- a/arch/arm64/include/asm/insn.h
>>>>> +++ b/arch/arm64/include/asm/insn.h
>>>>> @@ -277,7 +277,7 @@ __AARCH64_INSN_FUNCS(adrp,	0x9F000000, 0x90000000)
>>>>>  __AARCH64_INSN_FUNCS(prfm,	0x3FC00000, 0x39800000)
>>>>>  __AARCH64_INSN_FUNCS(prfm_lit,	0xFF000000, 0xD8000000)
>>>>>  __AARCH64_INSN_FUNCS(str_reg,	0x3FE0EC00, 0x38206800)
>>>>> -__AARCH64_INSN_FUNCS(ldadd,	0x3F20FC00, 0xB8200000)
>>>>> +__AARCH64_INSN_FUNCS(ldadd,	0xBF20FC00, 0xB8200000)
>>>>
>>>> Looking at the ISA encoding, I think that top digit should indeed be 'B',
>>>> but I haven't checked the rest of the instruction.
>>>>
>>>> However, I'm fairly sure we tested this so now I'm a bit worried that I'm
>>>> missing something :/
>>>
>>> Hmm, good catch, the mask aka aarch64_insn_is_ldadd() is not used anywhere
>>> in the tree, just the aarch64_insn_get_ldadd_value(). Latter was runtime
>>> tested via BPF JIT as well as through disassembler that it emits ldadd. I
>>> initially had a different mask value than Jean-Philippe, but that was probably
>>> due to confusion on my side. In any case, value should be correct though.
>>
>> I suggested that mask and forgot to change val, sorry about that. My
>> intent was to stay consistent with ldr_reg and str_reg, which mask out
>> the two size bits [31:30]. The proposed fix works but won't take into
>> account ldaddb and ldaddh, so maybe we could change val to 0x38200000
>> instead?
>>
>> diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
>> index ec894de0ed4e..f71b84d9f294 100644
>> --- a/arch/arm64/include/asm/insn.h
>> +++ b/arch/arm64/include/asm/insn.h
>> @@ -279,3 +279,3 @@ __AARCH64_INSN_FUNCS(prfm_lit,      0xFF000000,
>> 0xD8000000)
>>  __AARCH64_INSN_FUNCS(str_reg,  0x3FE0EC00, 0x38206800)
>> -__AARCH64_INSN_FUNCS(ldadd,    0x3F20FC00, 0xB8200000)
>> +__AARCH64_INSN_FUNCS(ldadd,    0x3F20FC00, 0x38200000)
> 
> Yes, this is better. I didn't realise we wanted to catch the sub-word
> instructions as well, but that's what we do for other memory access
> instructions so we should be consistent.
> 
> If you post this as a proper patch, I can queue it as a fix in the arm64
> tree.

If you're at it, it might also be good to add a comment to document such
conventions for the mask right above the __AARCH64_INSN_FUNCS() definition
or such. Would definitely be helpful for adding other insns there in future.

Thanks,
Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
