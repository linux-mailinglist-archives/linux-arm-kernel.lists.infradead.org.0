Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 944D7127162
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:24:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rYOggWzPA/N8ql0zspGVAfiuh//vctEH0hfZ2AhHMIk=; b=jxY+sZQA0X9f+IDKXK1HfNtND
	OT5oTxJgEmD7aoCZ3cVQYVq/JORUA46DWGkzeamZCjB7lJWjJSR/vohUQe4v/+NmarwzGoBexzXSV
	Mj0rfgEyBjVb/jQVHMNwxI8beHkBxeTB2WqqiKfeG85eCA5riQY+oq2Yr47vl+5gxXKOETLGz3Ubt
	z4PwnlroBxXEcA6yfZzYwZpKoY5+Z5NfRgpciayyeCCLxHdnmKrPxenZC9AIC8fzcpn1MS9rN6bKP
	lnJzQWn8el9ZD/wn3aORdlbwNmKU7MO7aNp4wYZkp+52NImbWxPC2rfcoytK3vqcX0ifV0iSbaFLv
	+5YKLbvLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5A1-00018J-E3; Thu, 19 Dec 2019 23:24:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii59p-00017U-1U; Thu, 19 Dec 2019 23:24:38 +0000
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20EC624676;
 Thu, 19 Dec 2019 23:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576797876;
 bh=K3CvbaB8eN/Eb3ZiDlzpb2f2O7TIhZPxnGG8BvCApZA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XAspA5fA3wS6cyzuttDwywfqalB85K4DEU1gYdSGJKg97fof11phNpx85w8Z6Rwc+
 mhpmUK7TrloulsZiMb/hnrx297BtyaM0DEwZVHp97YKu27zY2uQVJiHo/LLPws1Vay
 ll3fTOlmTdBw9u4lL/Lwt9f+viCPxQWQgBa9LnXU=
Date: Thu, 19 Dec 2019 18:24:35 -0500
From: Sasha Levin <sashal@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH AUTOSEL 5.4 316/350] int128: move __uint128_t compiler
 test to Kconfig
Message-ID: <20191219232435.GU17708@sasha-vm>
References: <20191210210735.9077-1-sashal@kernel.org>
 <20191210210735.9077-277-sashal@kernel.org>
 <CAKv+Gu-KLGFUEP55iGFp-irspwoG1uc0ZVPW15YDFX9MtXQW2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu-KLGFUEP55iGFp-irspwoG1uc0ZVPW15YDFX9MtXQW2Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_152437_103852_88ED3672 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, linux-riscv@lists.infradead.org,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 10:07:54AM +0000, Ard Biesheuvel wrote:
>On Tue, 10 Dec 2019 at 22:13, Sasha Levin <sashal@kernel.org> wrote:
>>
>> From: Ard Biesheuvel <ardb@kernel.org>
>>
>> [ Upstream commit c12d3362a74bf0cd9e1d488918d40607b62a3104 ]
>>
>> In order to use 128-bit integer arithmetic in C code, the architecture
>> needs to have declared support for it by setting ARCH_SUPPORTS_INT128,
>> and it requires a version of the toolchain that supports this at build
>> time. This is why all existing tests for ARCH_SUPPORTS_INT128 also test
>> whether __SIZEOF_INT128__ is defined, since this is only the case for
>> compilers that can support 128-bit integers.
>>
>> Let's fold this additional test into the Kconfig declaration of
>> ARCH_SUPPORTS_INT128 so that we can also use the symbol in Makefiles,
>> e.g., to decide whether a certain object needs to be included in the
>> first place.
>>
>> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
>> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>> Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>
>This does not fix a bug so no need to put it in -stable

Dropped, thanks!

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
