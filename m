Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A76D1664EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:33:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6r3b/kAZNFEt3RzxGFbfMwve25Kt53CR319k2gvUTw=; b=J//csaj4awBvO1
	qoYsshzxtV+3vyfQBjybPrCIA517Jf51t6Ophb7+bnLKbrVp0p8lzfldqgudJO0Wj+V+qJoRn6AVQ
	SqZ87nHQnJavJ8LSNmAjV46fmACY4OqaUpqj0I1JwFB1/STmkmCq8FzqX1HHd/dzGd0rAlE8vXqyk
	9xJ/pXWUZhdjz0R2zcHDO28i836yAiZBks8FE7Xv0CPA5NFLz/y8/ja+aEYR1Fsg306XQp3hRRfFc
	Pq+88+BNp+YV+8T78XDhj+FMrL6NNyTpVC+DS6tw1VlhHOH32Y0WOh1ZU3VsqaSYOglsaxqEOtIzs
	GJ8gyza9aIm5Jz6QsTcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4phf-0003Y8-DY; Thu, 20 Feb 2020 17:33:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4phU-0003Xc-BU
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:33:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2613531B;
 Thu, 20 Feb 2020 09:33:23 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0B3073F68F;
 Thu, 20 Feb 2020 09:33:21 -0800 (PST)
Subject: Re: [PATCH 0/3] KVM: arm64: Ask the compiler to __always_inline
 functions used by KVM at HYP
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <20200220165839.256881-1-james.morse@arm.com>
 <CAKv+Gu-tPOWyxjsKrL-auC=ZxeNJPgAPyQ2rBd9S8sgMbb=r_w@mail.gmail.com>
From: James Morse <james.morse@arm.com>
Message-ID: <1ecedad2-1b3e-0d37-42e8-7022ac5a8370@arm.com>
Date: Thu, 20 Feb 2020 17:33:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu-tPOWyxjsKrL-auC=ZxeNJPgAPyQ2rBd9S8sgMbb=r_w@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_093324_436031_6171ADB2 
X-CRM114-Status: GOOD (  11.03  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 kvmarm <kvmarm@lists.cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

On 20/02/2020 17:04, Ard Biesheuvel wrote:
> On Thu, 20 Feb 2020 at 17:58, James Morse <james.morse@arm.com> wrote:
>> It turns out KVM relies on the inline hint being honoured by the compiler
>> in quite a few more places than expected. Something about the Shadow Call
>> Stack support[0] causes the compiler to avoid inline-ing and to place
>> these functions outside the __hyp_text. This ruins KVM's day.
>>
>> Add the simon-says __always_inline annotation to all the static
>> inlines that KVM calls from HYP code.

> This isn't quite as yuck as I expected, fortunately, but it does beg
> the question whether we shouldn't simply map the entire kernel at EL2
> instead?

If the kernel is big enough to need internal veneers (the 128M range?), these would
certainly go horribly wrong because its running somewhere other than the relocation-time
address. We would need a way of telling the linker to keep the bits of KVM close together...


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
