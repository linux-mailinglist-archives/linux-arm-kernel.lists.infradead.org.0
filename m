Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D14B167DC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 13:55:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PxUrwlMClIJpblvvcBDa7kSYMSdFgOYxn5gEpxTlWKQ=; b=G0GqamrMdEXPCjXJfzDevXQds
	hJBuz08yFzC1+vYp3yNbaebVECaVLeG5kNgqxrokaqrQI+JTfEBKzW7TkKsjE0P19XMJxePIMh1Z6
	8nPMO4RXCCuGvjw0QDa2RI8IeBxbbyJPODDRhczNg4BGIRZUVa0A2TB2tpjxIDJ8cjhNH+YYAz4tt
	K4YnXXor2VQ8ZizvV70643Ata5j9JicqCfWI7sJAzU0s8bmc9j+VCHX879qHcZlEvJNC8xUBB0BZY
	LeonxnHUbkUiv6K966l/7KeShG128CQLeUARYentNt/nM/MjnC/4VwdArbmLNuvwalrJ31gqyQW4D
	ZwkGwo2tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j57q3-0003nY-6J; Fri, 21 Feb 2020 12:55:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j57pu-0003n2-VH
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 12:55:20 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 094EC206EF;
 Fri, 21 Feb 2020 12:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582289718;
 bh=bCHIKq7xRJ3aaXYyj+S6libfKhwz5P3LINS5aKJYKJ4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=vF1yCqUpEJpjFfoNbS8nSY6aPEFoswx0L3DHVJ27X/8r8+/FA/5rZWg0jfsL8E4+e
 av1xfnVFCOnWnpwNqxoazJ7u55ILnpdlu3SokNkLRAqUhkiF0LoOnoIgVQAwCRAK+y
 W2AOnGpzrYBlxViDcoq5QZIgM51kRZId5sP/5nQo=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j57ps-0072NR-Ah; Fri, 21 Feb 2020 12:55:16 +0000
MIME-Version: 1.0
Date: Fri, 21 Feb 2020 12:55:16 +0000
From: Marc Zyngier <maz@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 0/3] KVM: arm64: Ask the compiler to __always_inline
 functions used by KVM at HYP
In-Reply-To: <20200220165839.256881-1-james.morse@arm.com>
References: <20200220165839.256881-1-james.morse@arm.com>
Message-ID: <cb56f509ea0a4a9e1809af76f319daa2@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, catalin.marinas@arm.com, will@kernel.org,
 ard.biesheuvel@linaro.org, samitolvanen@google.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_045519_031470_1A604CF4 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Sami Tolvanen <samitolvanen@google.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 2020-02-20 16:58, James Morse wrote:
> Hello!
> 
> It turns out KVM relies on the inline hint being honoured by the 
> compiler
> in quite a few more places than expected. Something about the Shadow 
> Call
> Stack support[0] causes the compiler to avoid inline-ing and to place
> these functions outside the __hyp_text. This ruins KVM's day.
> 
> Add the simon-says __always_inline annotation to all the static
> inlines that KVM calls from HYP code.
> 
> This series based on v5.6-rc2.

Many thanks for going through all this.

I'm happy to take it if Catalin or Will ack the arm64 patches.
It case we decide to go the other way around:

Acked-by: Marc Zyngier <maz@kernel.org>

One thing I'd like to look into though is a compile-time check that
nothing in the hyp_text section has a reference to a non-hyp_text
symbol.

We already have checks around non-init symbols pointing to init symbols,
and I was wondering if we could reuse this for fun and profit...

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
