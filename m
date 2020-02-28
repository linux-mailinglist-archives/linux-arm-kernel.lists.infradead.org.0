Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C03173598
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 11:47:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eqoe5jmITuMlGRxDoRnCz2olm4o15IO3QcL17V6m99s=; b=kJ+GwCZqhKnbeE
	lu/cbXCSEbB9eYdCejNUhXxAXn38Pm4Dc2e/DgCxs+h/0armnvvQsyI3Dn0zYxPZb9F+GbHKo8M/c
	nHJdajdp8mgBYosnMvQm2FzZEWVEILuusGK4FbCvfbgaav/tZI5KfXHrApT5O5t1XeECflwwg+9Vx
	TinVnPXwtOm8euxLLAUIVewh4MIFf+xFHzziqvnDxuX+QhGZqhVL2dBPCLe+uPfUhV3P1miMeMCBD
	cB6unR9WIBKmeV9zxH1zE/AC+lxmELC6ClL1LAkON53LHGeXOGH42mb6M3xwyF25IO+VORjuiUQkd
	Ya4XMEr7a6GXSd4JRsRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7dB2-0004H3-NW; Fri, 28 Feb 2020 10:47:28 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7dAq-0004GJ-Su
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 10:47:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582886833;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=by6qnbWXHvbfMve5jRvxpdLV2eFgarPImZ7pzkAFACI=;
 b=YOMAvLrDSrjw3L8wjcZ2p1c4d0doRwXwPHSv1jkOBrsmNJT5H/kPgTXN/ET9YEoebhH/wB
 ah9+gp0RvASR0j7Q2lLvNTnd8PvooITcUcvAfB9YNjltHcrPbqLc17qtpEHgTT8+be0ezw
 rafdu2rTU9YqGz/W8MktXA5glbunU7g=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-347-YGls8ZWWNUSgpejAkfFXkQ-1; Fri, 28 Feb 2020 05:47:10 -0500
X-MC-Unique: YGls8ZWWNUSgpejAkfFXkQ-1
Received: by mail-wr1-f70.google.com with SMTP id o6so1162585wrp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 02:47:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=by6qnbWXHvbfMve5jRvxpdLV2eFgarPImZ7pzkAFACI=;
 b=unSctL7Kq3xTt7ZpZnY4AukwOGJKHPF1tpGjrbYonhMbHOji1ox0qTLt9yuMg6dDud
 gkrNEqZC8ZIUrHSnZxgSpqzrwJpcPS2Xjo7ap4CmjQi4brwBVQOYBmgXTF8j3eWYMBwi
 hM1LwrriIJDgBVr4XxoceuCs4XAtCYCZX8WXhAy42JqmzAK73O/oYh7UtL9z9OA3FBki
 k8nYKoYCvq0BMX4yeoBHH84HmhLiiXQvPyFCwKl0rb+eMpoy4MBKKDFxRSiA17WukfQQ
 pcKCyqkPbG6N6FwWIzAfdqpb/smeOirYO/ojpPkoVlxfPn0kohGLuCdLo6ZstlW4Kagb
 qkHA==
X-Gm-Message-State: APjAAAW1JVUR1XjW48CYi6mUHQi4ATnTZChzZx8Ze7jqkQ1tEUUpaCwI
 A4+rHc5riSSmEx2Ce8ftoUTKjXGpJ3a9xg4erra+2mTMbfo9N4jSroKQbkz7OexkUKMEtFwYVIX
 pS6VMGVCV1XAE8GhK5aEx38tWyg30yHyNspM=
X-Received: by 2002:a7b:c7d2:: with SMTP id z18mr4308799wmk.160.1582886829211; 
 Fri, 28 Feb 2020 02:47:09 -0800 (PST)
X-Google-Smtp-Source: APXvYqz5y4mrS/flKBx5L1gDb3tgLLQMoczS1j4+xFLFc7QK89AHPXzLtC2JXXQ6xdqLZv0ycLtvwA==
X-Received: by 2002:a7b:c7d2:: with SMTP id z18mr4308771wmk.160.1582886828876; 
 Fri, 28 Feb 2020 02:47:08 -0800 (PST)
Received: from ?IPv6:2001:b07:6468:f312:d0d9:ea10:9775:f33f?
 ([2001:b07:6468:f312:d0d9:ea10:9775:f33f])
 by smtp.gmail.com with ESMTPSA id h10sm1694142wml.18.2020.02.28.02.47.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Feb 2020 02:47:08 -0800 (PST)
Subject: Re: [GIT PULL] KVM/arm fixes for 5.6
To: Marc Zyngier <maz@kernel.org>
References: <20200225235223.12839-1-maz@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <53886277-3081-f8a9-7750-5784a9af2e56@redhat.com>
Date: Fri, 28 Feb 2020 11:47:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200225235223.12839-1-maz@kernel.org>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_024717_011059_3F9734F0 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Jeremy Cline <jcline@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/02/20 00:52, Marc Zyngier wrote:
> Paolo,
> 
> This is a small update containing a number of fixes, the most important ones
> making sure we force the inlining of any helper that gets used by the EL2 code
> (James identified that some bad things happen with CLang and the Shadow Call
> Stack extention).
> 
> Please pull,
> 
> 	M.
> 
> The following changes since commit 4a267aa707953a9a73d1f5dc7f894dd9024a92be:
> 
>   KVM: arm64: Treat emulated TVAL TimerValue as a signed 32-bit integer (2020-01-28 13:09:31 +0000)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-5.6-1
> 
> for you to fetch changes up to e43f1331e2ef913b8c566920c9af75e0ccdd1d3f:
> 
>   arm64: Ask the compiler to __always_inline functions used by KVM at HYP (2020-02-22 11:01:47 +0000)
> 
> ----------------------------------------------------------------
> KVM/arm fixes for 5.6, take #1
> 
> - Fix compilation on 32bit
> - Move  VHE guest entry/exit into the VHE-specific entry code
> - Make sure all functions called by the non-VHE HYP code is tagged as __always_inline
> 
> ----------------------------------------------------------------
> James Morse (3):
>       KVM: arm64: Ask the compiler to __always_inline functions used at HYP
>       KVM: arm64: Define our own swab32() to avoid a uapi static inline
>       arm64: Ask the compiler to __always_inline functions used by KVM at HYP
> 
> Jeremy Cline (1):
>       KVM: arm/arm64: Fix up includes for trace.h
> 
> Mark Rutland (1):
>       kvm: arm/arm64: Fold VHE entry/exit work into kvm_vcpu_run_vhe()
> 
>  arch/arm/include/asm/kvm_host.h          |  3 --
>  arch/arm64/include/asm/arch_gicv3.h      |  2 +-
>  arch/arm64/include/asm/cache.h           |  2 +-
>  arch/arm64/include/asm/cacheflush.h      |  2 +-
>  arch/arm64/include/asm/cpufeature.h      | 10 +++----
>  arch/arm64/include/asm/io.h              |  4 +--
>  arch/arm64/include/asm/kvm_emulate.h     | 48 ++++++++++++++++----------------
>  arch/arm64/include/asm/kvm_host.h        | 32 ---------------------
>  arch/arm64/include/asm/kvm_hyp.h         |  7 +++++
>  arch/arm64/include/asm/kvm_mmu.h         |  3 +-
>  arch/arm64/include/asm/virt.h            |  2 +-
>  arch/arm64/kvm/hyp/switch.c              | 39 ++++++++++++++++++++++++--
>  arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c |  4 +--
>  virt/kvm/arm/arm.c                       |  2 --
>  virt/kvm/arm/trace.h                     |  1 +
>  15 files changed, 84 insertions(+), 77 deletions(-)
> 

Pulled, thanks.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
