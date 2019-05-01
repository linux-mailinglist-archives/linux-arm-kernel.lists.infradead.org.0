Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C9D10AB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 18:08:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFeVuP7s68zmqD0+2vqsrsnoaLikz5G2jq7ikxmwfQ0=; b=r/zfdOMBpkV6r0
	bvaBovwMQEO5UUP0yCWuYe1DSEOFV3IKPtofI9Yzcqz3qe5w3RYRO73hgBRLyPyQIEaLGEN1yaxRg
	HZCNvCYQaczMrnowOV7kUh9sgEWNjD80q0BsHTwfCmv/XIJihAlmGmC85G5Qgp06FlvLY184oygP7
	VwnmjdFY78D6Rrnd0D3W/uWtGyb4+0Yhd9xXQL1EFw2x9hq/MUJajtwALlRyK8BSRf2tZENtzJ35+
	422eAQjGDZy6955UNgIwqWL9pVCnJVaI5qeDoEkI5DyD4Ky5o+XViA4dpV6slze7zavs5HkVApueU
	Z1f5ZZ+Fu3F2DY4Uxw+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrmK-0001BL-G3; Wed, 01 May 2019 16:08:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLrlp-0000eD-EF
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 16:08:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id o25so7593531wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 09:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Ou57PHzo2Y1+0uPvHlvocKCTsB7vkzBzC6r7uxYYTLo=;
 b=ngXSeAar9SXHPxD6sYECL51xntN03s6I+EdiE6k+Ij1thfTOduJVyx42cjfNOrbqyu
 Vl6ZUNX1VV473QTv80uGDNvnmSECjgdMUxUsHW6q5Tqy47G3JmiMRoiogvHcQZk6NMmg
 xOXTlO5xfoOmgGQKSdGZqMoeVShxdjbe+2IVvwpTBEJI0fwjSWDAbwoLynjnRLT7/err
 fz4ERLt3f2MNOY7LUBKzA+eJ/GuvwwCHOmdSR7lsJ7A+uDP2WuX4ztHmsaMfkKbHKET9
 tJY1quL4KSOrFRrNBhrUspIXT+oofsiocJEPW8Ovd1yvyMDB5VUdKLTEaYr9sLPm9uFZ
 Qk9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Ou57PHzo2Y1+0uPvHlvocKCTsB7vkzBzC6r7uxYYTLo=;
 b=BprD5X9eFNe0VxUQl2z18eeSAjPxx3+mSretGpOz+uk4dZvNeqxR4d1m0/nJo/IKBc
 H5082g3WmAnGu3UYVtILn40TMzBdAGyogo0OXws3ftUOLBy0fzrsP1RJ2N7b71KLsc6A
 u+rrvVP+cPNjLSyvfGqlNVe0sRQLjy5IlD7GTL1Z4RjYPBwzMlE4wMgUcmTC2A7JN/0k
 Cg3bgnLBZL9moSaCcTUSfQ8C4kM1yycXVGv3O5WV3ZGoGew7oVku2nw3HbNu6QFmPHnn
 +m4SXe/XP711tAzihyJZ4hdb3aOlAjDiRfSHAJ1+eYe4taEV7+NpJVrCC7ix0T7eA1IK
 glcQ==
X-Gm-Message-State: APjAAAVpif0QXcmz0jxsUHut3xcJ6tySvOvoy56/39brkW3LXg6OfX2C
 pe/CCn5GmqZawsgTaUUcfyQ=
X-Google-Smtp-Source: APXvYqy9GthT4NsJjBaMwLTfPV+QVp+vb/X3sRhVx6Ay0iikPkBsg6rz3CYoDKFtJBdv5Had13RXKQ==
X-Received: by 2002:a1c:b189:: with SMTP id a131mr7118226wmf.107.1556726863476; 
 Wed, 01 May 2019 09:07:43 -0700 (PDT)
Received: from [10.67.50.73] ([192.19.223.250])
 by smtp.googlemail.com with ESMTPSA id t24sm19473986wra.58.2019.05.01.09.07.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 09:07:42 -0700 (PDT)
Subject: Re: [PATCH] arm64: Demote boot and shutdown messages to pr_debug
To: Mark Rutland <mark.rutland@arm.com>
References: <20190430223835.23513-1-f.fainelli@gmail.com>
 <20190501104733.GB11740@lakrids.cambridge.arm.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <7c31327c-0449-9ea1-baf8-5adcadd3b630@gmail.com>
Date: Wed, 1 May 2019 09:07:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501104733.GB11740@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_090746_011242_2FBAFECA 
X-CRM114-Status: GOOD (  26.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>, rmk+kernel@armlinux.org.uk,
 Sudeep Holla <sudeep.holla@arm.com>, Suzuki K Poulose <Suzuki.Poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org, Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/1/19 3:47 AM, Mark Rutland wrote:
> On Tue, Apr 30, 2019 at 03:38:31PM -0700, Florian Fainelli wrote:
>> Similar to commits c68b0274fb3cf ("ARM: reduce "Booted secondary
>> processor" message to debug level") and 035e787543de7 ("ARM: 8644/1: Reduce "CPU:
>> shutdown" message to debug level"), demote the secondary_start_kernel()
>> and __cpu_die() messages from info, respectively notice to debug. While
>> we are at it, also do this for cpu_psci_cpu_kill() which is redundant
>> with __cpu_die().
>>
>> This helps improve the amount of possible hotplug cycles by around +50%
>> on ARCH_BRCMSTB.
> 
> Could you elaborate on why that matters? 
> 
> e.g. is this just for testing, or does this matter in some shutdown or
> hibernate scenario?

It matters to both testing, e.g.: how many hotplug cycles you can go
through within a given time frame to help assess system stsability, and
during opportunistic suspend that e.g.: Android does.

> 
>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>> ---
>>  arch/arm64/kernel/psci.c | 2 +-
>>  arch/arm64/kernel/smp.c  | 4 ++--
>>  2 files changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
>> index 8cdaf25e99cd..a78581046c80 100644
>> --- a/arch/arm64/kernel/psci.c
>> +++ b/arch/arm64/kernel/psci.c
>> @@ -96,7 +96,7 @@ static int cpu_psci_cpu_kill(unsigned int cpu)
>>  	for (i = 0; i < 10; i++) {
>>  		err = psci_ops.affinity_info(cpu_logical_map(cpu), 0);
>>  		if (err == PSCI_0_2_AFFINITY_LEVEL_OFF) {
>> -			pr_info("CPU%d killed.\n", cpu);
>> +			pr_debug("CPU%d killed.\n", cpu);
>>  			return 0;
>>  		}
>>  
>> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
>> index 824de7038967..71fd2b5a3f0e 100644
>> --- a/arch/arm64/kernel/smp.c
>> +++ b/arch/arm64/kernel/smp.c
>> @@ -259,7 +259,7 @@ asmlinkage notrace void secondary_start_kernel(void)
>>  	 * the CPU migration code to notice that the CPU is online
>>  	 * before we continue.
>>  	 */
>> -	pr_info("CPU%u: Booted secondary processor 0x%010lx [0x%08x]\n",
>> +	pr_debug("CPU%u: Booted secondary processor 0x%010lx [0x%08x]\n",
>>  					 cpu, (unsigned long)mpidr,
>>  					 read_cpuid_id());
> 
> I generally agree that we don't need to be verbose, and demoting these
> to debug is fine, but it's a shame that these won't be accessible in
> defconfig.
> 
> I wonder if we should enable DYNAMIC_DEBUG so that we can turn these on
> from the kernel command line, or if we should have something like a
> verbose_hotplug option specifically for these messages.

Based on Robin's answer (CONFIG_DYNAMIC_DEBUG already enabled in the
default configuration), would you prefer this to become a dynamic debug
message instead?
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
