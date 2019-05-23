Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E8D27D82
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 15:03:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EAq5dvUe8PieiWDQ2P4g4CXpA/TW8bK6gHCeOUdGTOQ=; b=u9KCl26XxAW3bK
	GaZw+W6lbf5olsWJ62qt0d2ddq0Th9SB1MZ1AcaoplkIGlWv469yXU5pnmKbz3rxG8PIMIqvTym5C
	aliMblVeTrQDgS36ab26IrPos3YJc+wRFYLnnYvsNOWbQOQJgD9hNgKpC8E53UmrBWlJTdr2qtdBB
	KSqF5at6zL825bYwx4UXlvErwdU+YLC/Zw7OAF6ykOK43ibANhhaTvWQJRc5PD7Fdw6fy8HgihKeg
	sbLCtqMXin07ASHkBzK3yFXkqNHX0vJawmRrd1nkIiH3xlbCerFHx18PidvDFSYrc3AdS3I1vSh6R
	FSkUkhNNKKukx1EelpvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTnNF-0007aV-Cw; Thu, 23 May 2019 13:03:09 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTnN7-0007Zq-O7
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 13:03:03 +0000
Received: from [78.46.172.3] (helo=sslproxy06.your-server.de)
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1hTnMy-0007hK-PU; Thu, 23 May 2019 15:02:52 +0200
Received: from [178.197.249.12] (helo=linux.home)
 by sslproxy06.your-server.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <daniel@iogearbox.net>)
 id 1hTnMy-000Pss-ID; Thu, 23 May 2019 15:02:52 +0200
Subject: Re: [PATCH/RFC] arm64: fix build warning from
 __AARCH64_INSN_FUNCS(ldadd, ...)
To: Will Deacon <will.deacon@arm.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
References: <1558599120-29394-1-git-send-email-yoshihiro.shimoda.uh@renesas.com>
 <20190523103602.GJ26646@fuggles.cambridge.arm.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <4b35cc15-9e35-eb67-3cfc-3a8eff8c462e@iogearbox.net>
Date: Thu, 23 May 2019 15:02:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190523103602.GJ26646@fuggles.cambridge.arm.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.100.3/25458/Thu May 23 09:58:32 2019)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_060301_784030_83AF567E 
X-CRM114-Status: GOOD (  17.63  )
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
 jean-philippe.brucker@arm.com, linux-arm-kernel@lists.infradead.org,
 kuninori.morimoto.gx@renesas.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/23/2019 12:36 PM, Will Deacon wrote:
> [+Daniel and Jean-Philippe]
> 
> On Thu, May 23, 2019 at 05:12:00PM +0900, Yoshihiro Shimoda wrote:
>> The following build warning happens on gcc 8.1.0.
>>
>>  linux/arch/arm64/include/asm/insn.h: In function 'aarch64_insn_is_ldadd':
>>  linux/arch/arm64/include/asm/insn.h:280:257: warning: bitwise comparison always evaluates to false [-Wtautological-compare]
>>  __AARCH64_INSN_FUNCS(ldadd, 0x3F20FC00, 0xB8200000)
>>
>> Since the second argument is mask value and compare with the third
>> argument value, the bit 31 is always masked and then this macro is
>> always false. So, this patch fixes the issue.
>>
>> Reported-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>> Fixes: 34b8ab091f9ef57a ("bpf, arm64: use more scalable stadd over ldxr / stxr loop in xadd")
>> Tested-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
>> ---
>>  I'm not sure the second argument "0xBF20FC00" is OK or not (we can set
>>  to 0xFF20FC00 instead). So, I marked RFC on this patch.
>>
>>  arch/arm64/include/asm/insn.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
>> index ec894de..c9e3cdc 100644
>> --- a/arch/arm64/include/asm/insn.h
>> +++ b/arch/arm64/include/asm/insn.h
>> @@ -277,7 +277,7 @@ __AARCH64_INSN_FUNCS(adrp,	0x9F000000, 0x90000000)
>>  __AARCH64_INSN_FUNCS(prfm,	0x3FC00000, 0x39800000)
>>  __AARCH64_INSN_FUNCS(prfm_lit,	0xFF000000, 0xD8000000)
>>  __AARCH64_INSN_FUNCS(str_reg,	0x3FE0EC00, 0x38206800)
>> -__AARCH64_INSN_FUNCS(ldadd,	0x3F20FC00, 0xB8200000)
>> +__AARCH64_INSN_FUNCS(ldadd,	0xBF20FC00, 0xB8200000)
> 
> Looking at the ISA encoding, I think that top digit should indeed be 'B',
> but I haven't checked the rest of the instruction.
> 
> However, I'm fairly sure we tested this so now I'm a bit worried that I'm
> missing something :/

Hmm, good catch, the mask aka aarch64_insn_is_ldadd() is not used anywhere
in the tree, just the aarch64_insn_get_ldadd_value(). Latter was runtime
tested via BPF JIT as well as through disassembler that it emits ldadd. I
initially had a different mask value than Jean-Philippe, but that was probably
due to confusion on my side. In any case, value should be correct though.

Thanks,
Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
