Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B1D173EA4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 18:36:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DC3fs0dQxrqcT7FZVPG39Id6Noj4i1kxuS1TNszprZ8=; b=g0G+EEosVhs4s76MF1MZ/EOIl
	voAnuwLRaR3vDqsauKCqKdYCHZVMuHuIU1WMjPb9GjRvUWQl6Vj8h7HLwiGUGsjEPDQuRk2pg0T18
	7FFlqCdUdnsCz4slZ1gTUhJ055ZBUDvzqmSBHjHmxFPhvE4wganzx0HK7kSpOpffZgYAdD1ILC5C8
	1Q9OE8NRFM8vMOKWmufKSEwoWLnKYnlxBBUG4NqJigk6HziTEV1dtUJ2FbDKnjZXA4nevgMim8eam
	ZQuB1Y8jzhW2jfdbNrIiJOfN1/vyvKBro3aPfm/TAaCKkqSceKZ9rhffOJ6nhhavByQYk1bWXpnx+
	H0lZzngZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7jYQ-0003rn-Ga; Fri, 28 Feb 2020 17:36:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7jYJ-0003rL-Fw
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 17:35:56 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4BD512051A;
 Fri, 28 Feb 2020 17:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582911354;
 bh=VKhozoDerPi8gC4TBNvSd+KP8dQLu3JJCi2pZhPZpoI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CtX6NHqGoWLf8H/hN0qy3HV3OSTq4MlkeiMi0d98W2EYtv5RCxma+mb+ePaWSiaAa
 KBtPs973mpzxuEvGpfzGD/uZ73FOneRL0Uq6GLb8DY93TOVvoFmyIkOqRxDYa1N2tY
 vYN7NKPJZMWyWfONKaIz0+SBMP6wv/1VXBL99rwc=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j7jYG-008obq-Hk; Fri, 28 Feb 2020 17:35:52 +0000
MIME-Version: 1.0
Date: Fri, 28 Feb 2020 17:35:52 +0000
From: Marc Zyngier <maz@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 13/18] arm64: kvm: Annotate assembly using modern
 annoations
In-Reply-To: <20200218195842.34156-14-broonie@kernel.org>
References: <20200218195842.34156-1-broonie@kernel.org>
 <20200218195842.34156-14-broonie@kernel.org>
Message-ID: <af4e6c640321dfa9e320ad1079aad603@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: broonie@kernel.org, herbert@gondor.apana.org.au,
 davem@davemloft.net, catalin.marinas@arm.com, will@kernel.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 linux-crypto@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_093555_553072_45BEE619 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, kvmarm@lists.cs.columbia.edu,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Will Deacon <will@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, linux-crypto@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-18 19:58, Mark Brown wrote:
> In an effort to clarify and simplify the annotation of assembly 
> functions
> in the kernel new macros have been introduced. These replace ENTRY and
> ENDPROC with separate annotations for standard C callable functions,
> data and code with different calling conventions.  Update the more
> straightforward annotations in the kvm code to the new macros.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/kvm/hyp-init.S      |  8 ++++----
>  arch/arm64/kvm/hyp.S           |  4 ++--
>  arch/arm64/kvm/hyp/fpsimd.S    |  8 ++++----
>  arch/arm64/kvm/hyp/hyp-entry.S | 15 ++++++++-------
>  4 files changed, 18 insertions(+), 17 deletions(-)

For the three KVM/arm patches:

Acked-by: Marc Zyngier <maz@kernel.org>

I'd expect this to go as a whole via the arm64 tree, but I can also
cherry-pick them if necessary.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
