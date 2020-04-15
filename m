Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C4C1AB244
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 22:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4EbwTKHcRY+XSWwj82GFgK+BsVwinyUa/WLKmKXZ1qw=; b=P94yJxd0NlavuC
	5GFRXR4LEtqro0cU4IobpeBT2Oa+9gcKFSdzhJ21D3pdtB9K21EtxOg0FITE9Kx4hzvtFQkAUNirh
	N9bAlLtZAq0YY7dcBdAzbBVCw07IgddPfEolf2WZ01hl8Ixp6Eq/E43XFelf7hRyxuOlpZtZtV6Et
	jbR9wcAxdp5jkQcHbZ5nZuq0CnkxQr3JFRHtoGMr5pLRPOam+nopkjUeJvn21yKYiuwgNWSLLyS1+
	KpV2hjepO2uELrNauqXmJYOPWPvjmWBWz3adnK00v3r3gMtpLJg6rGEQiPWMwXo9113mouWVsZBAW
	svALJNd5vt5VhVXHtbDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOoJ0-0002I6-NL; Wed, 15 Apr 2020 20:06:42 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOoIs-0002Gm-S7
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 20:06:37 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id A3EE95C07A7;
 Wed, 15 Apr 2020 22:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1586981187;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=18e6r5y/jgXADhhgiX3R6vif1YdVTFwaHH058p3heBc=;
 b=kzCXjBTXYRcKiwbTlcwjtNog8tdHIMY90JOBql07rNRqIMwQCIZoGNCieVInoqLmPhYZwm
 4k8P+IzP+CWSyghxueLPF6FHo9o0Wq/NYnUnX48Qv68wgwdblpR+IsAkpJeT0Xz2uQE46I
 lghJiyJ2GG3Sm5jm1slWnNgNuLwtqOg=
MIME-Version: 1.0
Date: Wed, 15 Apr 2020 22:06:27 +0200
From: Stefan Agner <stefan@agner.ch>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] ARM: replace the sole use of a symbol with its definition
In-Reply-To: <CAKwvOdk3YG5TFD71E-9vPqssFZW1U3umCR+AWLLp8RZK2zHGsw@mail.gmail.com>
References: <20200407190558.196865-1-caij2003@gmail.com>
 <CAKwvOdk3YG5TFD71E-9vPqssFZW1U3umCR+AWLLp8RZK2zHGsw@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <a6964b6f784266838070f434110661f3@agner.ch>
X-Sender: stefan@agner.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_130635_351856_233BE6F1 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Russell King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Enrico Weigelt <info@metux.net>, Jian Cai <caij2003@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-13 20:29, Nick Desaulniers wrote:
> On Tue, Apr 7, 2020 at 12:09 PM Jian Cai <caij2003@gmail.com> wrote:
>>
>> ALT_UP_B macro sets symbol up_b_offset via .equ to an expression
>> involving another symbol. The macro gets expanded twice when
>> arch/arm/kernel/sleep.S is assembled, creating a scenario where
>> up_b_offset is set to another expression involving symbols while its
>> current value is based on symbols. LLVM integrated assembler does not
>> allow such cases, and based on the documentation of binutils, "Values
>> that are based on expressions involving other symbols are allowed, but
>> some targets may restrict this to only being done once per assembly", so
>> it may be better to avoid such cases as it is not clearly stated which
>> targets should support or disallow them. The fix in this case is simple,
>> as up_b_offset has only one use, so we can replace the use with the
>> definition and get rid of up_b_offset.
>>
>> Signed-off-by: Jian Cai <caij2003@gmail.com>

Thanks for tackling this!

> 
> Probably didn't need the extra parens, but it's fine (unless another
> reviewer would like a v2).  Maybe Stefan has some thoughts?

Since this is a processor macro I actually prefer to have parentheses
here. All use sites of ALT_UP_B pass just a label, but still, just to be
on the safe side.

I was wondering why equ has been used in first place. I don't see an
advantage other than having a symbol which can be checked. But given
that this code is stable and don't really need debugging at this point,
I am fine replacing this to make it work for clang.


> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> Please add Link tags if these correspond to issues in our link
> tracker, they help us track when and where patches land.
> Link: https://github.com/ClangBuiltLinux/linux/issues/920

Agreed, please add the link. You can add this when submitting.

With that:
Reviewed-by: Stefan Agner <stefan@agner.ch>

--
Stefan

> 
>> ---
>>  arch/arm/include/asm/assembler.h | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
>> index 99929122dad7..adee13126c62 100644
>> --- a/arch/arm/include/asm/assembler.h
>> +++ b/arch/arm/include/asm/assembler.h
>> @@ -269,10 +269,9 @@
>>         .endif                                                  ;\
>>         .popsection
>>  #define ALT_UP_B(label)                                        \
>> -       .equ    up_b_offset, label - 9998b                      ;\
>>         .pushsection ".alt.smp.init", "a"                       ;\
>>         .long   9998b                                           ;\
>> -       W(b)    . + up_b_offset                                 ;\
>> +       W(b)    . + (label - 9998b)                                     ;\
>>         .popsection
>>  #else
>>  #define ALT_SMP(instr...)
>> --
>> 2.26.0.292.g33ef6b2f38-goog
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
