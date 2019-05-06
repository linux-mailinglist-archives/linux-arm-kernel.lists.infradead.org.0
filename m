Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB6814551
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 09:35:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZFo1xd5jwoXy/Hn2HH8RAhFfeMYR4Ut65TP3KewxqQ=; b=orP5UmoLW/Om4n
	EvkSrrFetQzhhdA7LxkUA5vtRKgcZ74L15fumQqJrssHkGIUpoSEvNDc3y2v42bhXyDKPFhDQIsZo
	7CItSEzhCN3We9F47+7thLGFD5QKkGchCrE6kFEOWtxUsVAeGHRkjTb1WabL/f58kszsIxZFlPBgd
	kHStZc1BViXjP9QBKt5PwErblO7IiLXiFI3jXgwuxpCN/J4m1v9Y8Glt9iSenxbxzTr69yBUeGxBR
	0W8ipFhiUwWioDXYhwVkc8Um31hSabXhw4X8f+eaWDFvoB1E/vP1UstCw53CA73WVOAvDF/bAgfTt
	KPAeNZuNtwAouJYykP1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNY9V-0001lT-Tl; Mon, 06 May 2019 07:35:09 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNY9L-0001h9-HN
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 07:35:01 +0000
Received: by mail-lj1-x241.google.com with SMTP id y8so9947938ljd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 00:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ok4FiX0qqzxFXNlfPJQBxeAS7MtYAthIHs0pXM/1gsw=;
 b=HfCKA2GcWuIWfyCu6q7Vb4VuU5C85rltY95cYwAzVOuNpcOxt9Vpj8t6IWJzXJpM16
 uc9PlW5f9Go3h/CJ9UsWwq1rdbfbTV7+cveeHt9cUsGuK9G3I7pEgW3Zv9bOFVDQOZbH
 MpdHFdCp7U0R6aqGNC2FBUx6AIBp++6riZnVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ok4FiX0qqzxFXNlfPJQBxeAS7MtYAthIHs0pXM/1gsw=;
 b=uGRjezP/5t9NvBnS0fe/V4CQl35kUHs6sz7CS4d1tM5U1AvtaLWXkgVphwtlntWXza
 Q+qyfyy1qYN0ZZw2+srGA6vaLp8sVhV05/UyJivwbMXrRLpuog9HRNFiV+qyhNrw97LC
 hoU6t7SlHMF71YnWi7m1rNrKemDBWNdi5E56u6mTWi+f1QRYMnbOdRQFMbkxonk2+xbG
 P6Gjdk4soMKLxbZBMoMPAswRWjV9r7aDuxkikjBt+50h6TTzrfYG8tlijDOGPbXAbsz/
 bEb+vim+wgZuICFwWpyJrggYZN/J7G994bHVyEVApEPFoZo6dOJNwybrvqDxlrSkhldf
 BHbQ==
X-Gm-Message-State: APjAAAWS+FMHFkTBZX7kR5XhYCfrxQAF0/QPMGD7MOn5NjZXiOjwxtYY
 2Tg7fXxiN92bJ/RX6epvMUHwhw==
X-Google-Smtp-Source: APXvYqyIXcDanMudqDV0cbvEgmg2JswEqVaUi3W8CZa23fGsbc0VYTSqSxQKNyi+uTC2tZHBHGapWQ==
X-Received: by 2002:a2e:9f07:: with SMTP id u7mr3713010ljk.115.1557128097278; 
 Mon, 06 May 2019 00:34:57 -0700 (PDT)
Received: from [172.16.11.26] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id y25sm2083764ljh.31.2019.05.06.00.34.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 00:34:56 -0700 (PDT)
Subject: Re: [PATCH 00/10] implement DYNAMIC_DEBUG_RELATIVE_POINTERS
To: Ingo Molnar <mingo@kernel.org>
References: <20190409212517.7321-1-linux@rasmusvillemoes.dk>
 <1afb0702-3cc5-ba4f-2bdd-604d9da2b846@rasmusvillemoes.dk>
 <20190506070544.GA66463@gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <25dfde77-fdad-0b99-75ec-4ba480058970@rasmusvillemoes.dk>
Date: Mon, 6 May 2019 09:34:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506070544.GA66463@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_003459_580747_120397FF 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Jason Baron <jbaron@akamai.com>, Ingo Molnar <mingo@redhat.com>,
 Andy Lutomirski <luto@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/05/2019 09.05, Ingo Molnar wrote:
> 
> 
> It's sad to see such nice data footprint savings go the way of the dodo 
> just because GCC 4.8 is buggy.
> 
> The current compatibility cut-off is GCC 4.6:
> 
>   GNU C                  4.6              gcc --version
> 
> Do we know where the GCC bug was fixed, was it in GCC 4.9?

Not sure. The report was from a build on CentOS with gcc 4.8.5, so I
tried installing the gcc-4.8 package on my Ubuntu machine and could
reproduce. Then I tried installed gcc-4.9, and after disabling
CONFIG_RETPOLINE (both CentOS and Ubuntu carry backported retpoline
support in their 4.8, but apparently not 4.9), I could see that the
problem was gone. But whether it's gone because it no longer elides an
asm volatile() on a code path it otherwise emits code for, or because it
simply doesn't emit the unused static inline() at all I don't know.

I thought 0day also tested a range of supported compiler versions, so I
was rather surprised at getting this report at all. But I suppose the
arch/config matrix is already pretty huge. Anyway, the bug certainly
doesn't exist in any of the gcc versions 0day does test.

I _am_ bending the C rules a bit with the "extern some_var; asm
volatile(".section some_section\nsome_var: blabla");". I should probably
ask on the gcc list whether this way of defining a local symbol in
inline assembly and referring to it from C is supposed to work, or it
just happens to work by chance.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
