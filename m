Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3A619D51A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 12:34:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZ66BVxaOxr3lnz39JGR7nZdI1Hzax+xGYWAiWrKZN8=; b=o+kq9ilTbhmH7w
	Fnjxo5ZqTpw6tTFXmWBQeLOZKsu5sbdPkO5s4f+hI7EYgAY2x+oFAQdQDjXNMk0YJd6fUdsBKB/Qk
	2hLMleqVE53aU8jeHOhxcaLO1a+UDD1vVKfvTFJnXfCnuXIQoyOq14G8Ia+krDPhjeQblOOC4NqcN
	EcuH1Hh/qhY5JsXxAeCD9ikTtZVG7Ej1LKFb90M4/iUv+GqEcCnm9RsbEZDbaXPChh1Gd0nKFcEcN
	XW3kQlAE5ZcGbS+T7SuA+pCQZU96ULxgdCCDs+OoGORiCcnHbw2dLECFCZqDAYmD4/m+RbMZuHAKl
	sS++d8UBGyU9DSUTXYuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJev-000468-UN; Fri, 03 Apr 2020 10:34:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKJeq-00044B-7x
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 10:34:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD81D30E;
 Fri,  3 Apr 2020 03:34:37 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D6CD23F71E;
 Fri,  3 Apr 2020 03:34:36 -0700 (PDT)
Subject: Re: [PATCH 0/2] KVM: arm64: PSCI fixes
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
References: <20200401165816.530281-1-maz@kernel.org>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <23107386-bbad-6ee1-c1cc-03dd70868905@arm.com>
Date: Fri, 3 Apr 2020 11:35:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200401165816.530281-1-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_033440_328733_3E92049B 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: James Morse <james.morse@arm.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 4/1/20 5:58 PM, Marc Zyngier wrote:
> Christoffer recently pointed out that we don't narrow the arguments to
> SMC32 PSCI functions called by a 64bit guest. This could result in a
> guest failing to boot its secondary CPUs if it had junk in the upper
> 32bits. Yes, this is silly, but the guest is allowed to do that. Duh.
>
> Whist I was looking at this, it became apparent that we allow a 32bit
> guest to call 64bit functions, which the spec explicitly forbids. Oh
> well, another patch.
>
> This has been lightly tested, but I feel that we could do with a new
> set of PSCI corner cases in KVM-unit-tests (hint, nudge... ;-).

Good idea. I was already planning to add new PSCI and timer tests, I'm waiting for
Paolo to merge the pull request from Drew, which contains some fixes for the
current tests.

>
> Marc Zyngier (2):
>   KVM: arm64: PSCI: Narrow input registers when using 32bit functions
>   KVM: arm64: PSCI: Forbid 64bit functions for 32bit guests
>
>  virt/kvm/arm/psci.c | 40 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
>
I started reviewing the patches and I have a question. I'm probably missing
something, but why make the changes to the PSCI code instead of making them in the
kvm_hvc_call_handler function? From my understanding of the code, making the
changes there would benefit all firmware interface that use SMCCC as the
communication protocol, not just PSCI.

Thanks,
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
