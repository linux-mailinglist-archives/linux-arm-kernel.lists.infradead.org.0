Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F054298EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:29:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWz+ibmCpCV9UYEjN0rEBN0QQRXf/V/1UlSpc2PWTAc=; b=sz8lRQ+cDUP36T
	E/EdiPBLxIgabNJ8fXL2GNEdJ5s3TDUc3iOQIdqrXSKSQHd8QMsvSuu4SwUjUAZHPAulYXEWcnme3
	JicVdrn5JSlnkujREe0FkGJp+gFtxGHLyXKB15jTnHPyBlGLQujLdrm+167FUEExnV0xDlMkSEOxV
	JMlqdZdyU/iUCNIQqgOAN5UUtR/7bKrV7AIOMv+8GhP3S2/U9dfbTuEgF3s8i41+z7DRM88PQ/ltq
	arBGRZ7ayvl0/nJW+WXW4KnMYPdrWXRBgoeNogfAbLbLZnjmFwjYElfOZu3K7Hn8npWYtdlaystPA
	2NGVOIIMIm+FJMjKR0uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUAGA-0001KG-Ir; Fri, 24 May 2019 13:29:22 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUAG3-0001Jn-DB
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:29:16 +0000
Received: from [88.198.220.132] (helo=sslproxy03.your-server.de)
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1hUAFu-0004PZ-EI; Fri, 24 May 2019 15:29:06 +0200
Received: from [178.197.249.12] (helo=linux.home)
 by sslproxy03.your-server.de with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <daniel@iogearbox.net>)
 id 1hUAFu-0000xb-4U; Fri, 24 May 2019 15:29:06 +0200
Subject: Re: [PATCH 1/2] arm64: insn: Fix ldadd instruction encoding
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 will.deacon@arm.com, catalin.marinas@arm.com
References: <20190524125220.25463-1-jean-philippe.brucker@arm.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <84079e60-d51c-bdf0-5531-73b9d5f0bedb@iogearbox.net>
Date: Fri, 24 May 2019 15:29:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20190524125220.25463-1-jean-philippe.brucker@arm.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.100.3/25459/Fri May 24 09:59:21 2019)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_062915_440998_98C963B9 
X-CRM114-Status: GOOD (  18.03  )
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
Cc: bpf@vger.kernel.org, yoshihiro.shimoda.uh@renesas.com,
 linux-arm-kernel@lists.infradead.org, kuninori.morimoto.gx@renesas.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/24/2019 02:52 PM, Jean-Philippe Brucker wrote:
> GCC 8.1.0 reports that the ldadd instruction encoding, recently added to
> insn.c, doesn't match the mask and couldn't possibly be identified:
> 
>  linux/arch/arm64/include/asm/insn.h: In function 'aarch64_insn_is_ldadd':
>  linux/arch/arm64/include/asm/insn.h:280:257: warning: bitwise comparison always evaluates to false [-Wtautological-compare]
> 
> Bits [31:30] normally encode the size of the instruction (1 to 8 bytes)
> and the current instruction value only encodes the 4- and 8-byte
> variants. At the moment only the BPF JIT needs this instruction, and
> doesn't require the 1- and 2-byte variants, but to be consistent with
> our other ldr and str instruction encodings, clear the size field in the
> insn value.
> 
> Fixes: 34b8ab091f9ef57a ("bpf, arm64: use more scalable stadd over ldxr / stxr loop in xadd")
> Reported-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>

Acked-by: Daniel Borkmann <daniel@iogearbox.net>

> ---
> Strictly speaking, to be consistent with the ldr/str instructions we
> would also check the Acquire/Release bit to filter out the acquire
> release variants. I'm not sure if that matters, I think taking them in
> is harmless.
> ---
>  arch/arm64/include/asm/insn.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
> index ec894de0ed4e..f71b84d9f294 100644
> --- a/arch/arm64/include/asm/insn.h
> +++ b/arch/arm64/include/asm/insn.h
> @@ -277,7 +277,7 @@ __AARCH64_INSN_FUNCS(adrp,	0x9F000000, 0x90000000)
>  __AARCH64_INSN_FUNCS(prfm,	0x3FC00000, 0x39800000)
>  __AARCH64_INSN_FUNCS(prfm_lit,	0xFF000000, 0xD8000000)
>  __AARCH64_INSN_FUNCS(str_reg,	0x3FE0EC00, 0x38206800)
> -__AARCH64_INSN_FUNCS(ldadd,	0x3F20FC00, 0xB8200000)
> +__AARCH64_INSN_FUNCS(ldadd,	0x3F20FC00, 0x38200000)

Right, so the 0xB8200000 encodes fixed '10' which denotes 4 byte
variant so if in aarch64_insn_gen_ldadd() we select 8 byte one,
we'll generate '11' which are the only two supported options right
now, but it would throw the tautological compare warn with the mask
which does not have pre-defined size encoded. Makes sense to remove
the encoding for ldadd itself. I think filtering out the acquire /
release variant bits might be good once there is an actual in-tree
user of aarch64_insn_is_ldadd() itself, or if the BPF JIT (or something
else) needs the aarch64_insn_get_ldadd_value() with that customization.

Thanks,
Daniel

>  __AARCH64_INSN_FUNCS(ldr_reg,	0x3FE0EC00, 0x38606800)
>  __AARCH64_INSN_FUNCS(ldr_lit,	0xBF000000, 0x18000000)
>  __AARCH64_INSN_FUNCS(ldrsw_lit,	0xFF000000, 0x98000000)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
