Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6415186987
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 11:54:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIIeuMwhDLJfhWxr2EKQhFYso1Ml/KYVrdZRRziBMds=; b=iKynJ0yY+KYd1j
	ld6TRYYdi7cv7kn5IZR3CHlPwXFiue3raG+JsSa6A5g/dhOBMZUFrFjzxiq9xDY5yAjF4W5a8sI67
	Vgipl8WfSRRA+0/AO2kTeNFMG642onGruTMYTrt2bfQgAqHN7dUxl7+Oj051hbwYvFi5FGf/iKjBr
	znic+1nk4JvhUeNWl3e54b7sdsJGVpDEx5JMejFhohP8tTQO78Zr2pLAeP8DBntMEyali2vlvVAPE
	kLcMiJEDK0Wt3ZqXHTcJPHfwO1nDEtz9SlaobKxwvQLxQcYzw28oMKomOTu0sPpw1UxoS2udAR2SZ
	GrovOocXNjy6AJ9Ta0EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDnOR-0002Dk-Il; Mon, 16 Mar 2020 10:54:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDnOJ-0002Cz-C8
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 10:54:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5497431B;
 Mon, 16 Mar 2020 03:54:38 -0700 (PDT)
Received: from [10.37.9.38] (unknown [10.37.9.38])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 240FD3F52E;
 Mon, 16 Mar 2020 03:54:32 -0700 (PDT)
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp> <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
 <20200316103437.GD3005@mbp>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <77a2e91a-58f4-3ba3-9eef-42d6a8faf859@arm.com>
Date: Mon, 16 Mar 2020 10:55:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200316103437.GD3005@mbp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_035439_458926_87955E7D 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 linux-mips@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, Andrei Vagin <avagin@openvz.org>,
 Stephen Boyd <sboyd@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 3/16/20 10:34 AM, Catalin Marinas wrote:
[...]


>>
>> I tried to fine grain the headers as much as I could in order to avoid
>> unneeded/unwanted inclusions:
>>  * TASK_SIZE_32 is used to verify ABI consistency on vdso32 (please refer to
>>    arch/arm64/kernel/vdso32/vgettimeofday.c).
> 
> I see. But the test is probably useless. With 4K pages, TASK_SIZE_32 is
> 1UL << 32, so you can't have a u32 greater than this. So I'd argue that
> the ABI compatibility here doesn't matter.
> 
> With 16K or 64K pages, TASK_SIZE_32 is slightly smaller but arm32 never
> supported it.
> 
> What's the side-effect of dropping this check altogether?
> 

The main side-effect is that arm32 and arm64 compat have a different behavior,
that it is what we want to avoid.

The vdsotest [1] I am using, verifies all the side conditions with respect to
the ABI, which we are now compatible with. Removing those checks would break
this condition.

[1] https://github.com/nlynch-mentor/vdsotest

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
