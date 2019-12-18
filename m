Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A761F124E4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:48:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQjgIIsXjlVARimYZG5/4VFqby7/J4SRVmXbgtOj78M=; b=H0SX/2jNx71E4Y
	UdrC7jC+dnApombzhsAfa7XyN0Ibz1x6M8TxAWFKjKS+YfJ2711mQs1hRnLe6OEkVuA4DqrDfSnl2
	6zzf1SqT0s+ASgYIONCXSbzUwE8hRt1jPDCz/9lfLdQ7wEVLkQq7r260IGRTeJNkswjb2SeBjXpLq
	nFIGPyfqhHQ/18NhDoeWvuWvlWy2l3qaLN9LhVVwsRVCZe4pMFecrYtHM7aB0vHT/6o1fG6FuMcPN
	ZhFtKMsU5S/5kt8Fg5A2EkH8Ym2l9SppRmpbrqx20UxwAej33csuO+FZYO5YukBHqiWqTFHLX9YV+
	2R9ekaugBm5BLWvTJPfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcVE-0000a8-OV; Wed, 18 Dec 2019 16:48:48 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcV4-0000ZW-E8
 for linux-arm-kernel@bombadil.infradead.org; Wed, 18 Dec 2019 16:48:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3iCukN3naD4fNqdh9fYCT0LHF+dYyNnqG3y3xi+jSBI=; b=DyaVjJTj31dg1ytvb+wPptUEfe
 S9PzUXcwLVPCo4Hp/U3e+XKdTWS+MGfVxGWcn70Rdc5GlEY0b60UBA64PRlzi/pQvEIIyKbITqisA
 Hnwl7kdHKP9ukMW1nlvUQsYbP5+Ib0/Sba63lDZmqnH12Y+9ZE7LtxdLH2kGw3GtzJass3mQDN+Cc
 Q615THF1YEwe7XJtBzFJs6S/8KaVZcV0xQ6V1Hp8FslMeTYkKAb1mJNc1TPkDEr24qYSQjKeNBmk+
 +I5C+nR4ACdZzmVxMpT9mCHNnw70Wu0LOyNlypg9jQq7ulW1Z67s/5B3RVcwlasw013ySEG2wTvJR
 KtHZz2xg==;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcVU-0006H3-B9
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:49:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576687692;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3iCukN3naD4fNqdh9fYCT0LHF+dYyNnqG3y3xi+jSBI=;
 b=bH3lsbnAfLkpGb6AWcu5leIX141BnB5al8lanYylvoZdX4In/Kt1O4WTiC36J7o5MCgBs9
 W/lHx8d/3ESkjA4dv5GMxMSmY6orSSFfxrqBXGAQDzGQEKJxgEMchR8Wa4MK8ZFMEaSqLT
 v22gVpkAnS9KTMh8tMPkiREiPK9YBvw=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-177-lfBh9FLxMDS1EGHexYHjFA-1; Wed, 18 Dec 2019 11:48:09 -0500
Received: by mail-wm1-f70.google.com with SMTP id y125so1979418wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 08:48:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3iCukN3naD4fNqdh9fYCT0LHF+dYyNnqG3y3xi+jSBI=;
 b=SnZDHDiKHFkyY0CUdBNo9QDoZoFJT4WK0XmiGLIkkkyzXSvlsOOLyLRCe2c97w3+TK
 fSaYjhIdFzeWJn/nyKK7MMAVrhPfty9xdA5jdEjLY+d1mkrnWfl80H2DYhCEdSf0Wo8z
 MhW3/+l35pCT5Yz7JXVWba20nyo67QGUf6lBSe5XLs5Psg4Vkh7vDLwZCa4XMRkEDpmS
 UftYaF5/gWXgkNrXd3D/BCJIsCUbCKLZDwsWYUzlUHIIC29LqsHeVXJk2o5aBTwiMT/3
 PFGmEoasDwkSdWWxLtGVkJQXbMagYuKUd5lEXcXyDntKoF/KMYannXt2oMaB0a8QYBe8
 o0tA==
X-Gm-Message-State: APjAAAXcUFbORuSRkSGO+0PWUhw4Hq3RZoMN23iytJRHJPtpC/d31eCy
 Q4gJ/OL64gepcKJ9nUTWJdmTmp4aKR3m9bkKWfTbuvg7sUAPY8Gz0hwbwYIQdLUQqY0/FCRtLGK
 EzmgkOgmYXTXV8qm8HvBfyeTXkUgAq+XqXiU=
X-Received: by 2002:a1c:bbc3:: with SMTP id l186mr4359419wmf.101.1576687688288; 
 Wed, 18 Dec 2019 08:48:08 -0800 (PST)
X-Google-Smtp-Source: APXvYqx38t0P19/s6RsgvAUv2tWoExNQh9N/QMlt/7vD4SmB6ulBRwM6tY/Yad0hhQ0X8xSOGooRiA==
X-Received: by 2002:a1c:bbc3:: with SMTP id l186mr4359398wmf.101.1576687688016; 
 Wed, 18 Dec 2019 08:48:08 -0800 (PST)
Received: from ?IPv6:2001:b07:6468:f312:ac09:bce1:1c26:264c?
 ([2001:b07:6468:f312:ac09:bce1:1c26:264c])
 by smtp.gmail.com with ESMTPSA id c2sm3173159wrp.46.2019.12.18.08.48.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Dec 2019 08:48:07 -0800 (PST)
Subject: Re: [GIT PULL] KVM/arm updates for 5.5-rc2
To: Marc Zyngier <maz@kernel.org>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?=
 <rkrcmar@redhat.com>
References: <20191212172824.11523-1-maz@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <f8f96563-0cc0-1d00-0eb7-2845dba27d84@redhat.com>
Date: Wed, 18 Dec 2019 17:48:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191212172824.11523-1-maz@kernel.org>
Content-Language: en-US
X-MC-Unique: lfBh9FLxMDS1EGHexYHjFA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_164904_487331_47216AB8 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Miaohe Lin <linmiaohe@huawei.com>,
 Jia He <justin.he@arm.com>, kvm@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Steven Price <steven.price@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/12/19 18:28, Marc Zyngier wrote:
> Paolo, Radim,
> 
> This is the first set of fixes for 5.5-rc2. This time around,
> a couple of MM fixes, a ONE_REG fix for an issue detected by
> GCC-10, and a handful of cleanups.
> 
> Please pull,
> 
> 	M.
> 
> The following changes since commit cd7056ae34af0e9424da97bbc7d2b38246ba8a2c:
> 
>   Merge remote-tracking branch 'kvmarm/misc-5.5' into kvmarm/next (2019-11-08 11:27:29 +0000)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-5.5-1
> 
> for you to fetch changes up to 6d674e28f642e3ff676fbae2d8d1b872814d32b6:
> 
>   KVM: arm/arm64: Properly handle faulting of device mappings (2019-12-12 16:22:40 +0000)

Pulled, thanks.

Paolo

> 
> ----------------------------------------------------------------
> KVM/arm fixes for .5.5, take #1
> 
> - Fix uninitialised sysreg accessor
> - Fix handling of demand-paged device mappings
> - Stop spamming the console on IMPDEF sysregs
> - Relax mappings of writable memslots
> - Assorted cleanups
> 
> ----------------------------------------------------------------
> Jia He (1):
>       KVM: arm/arm64: Remove excessive permission check in kvm_arch_prepare_memory_region
> 
> Marc Zyngier (1):
>       KVM: arm/arm64: Properly handle faulting of device mappings
> 
> Mark Rutland (2):
>       KVM: arm64: Sanely ratelimit sysreg messages
>       KVM: arm64: Don't log IMP DEF sysreg traps
> 
> Miaohe Lin (3):
>       KVM: arm/arm64: Get rid of unused arg in cpu_init_hyp_mode()
>       KVM: arm/arm64: vgic: Fix potential double free dist->spis in __kvm_vgic_destroy()
>       KVM: arm/arm64: vgic: Use wrapper function to lock/unlock all vcpus in kvm_vgic_create()
> 
> Will Deacon (1):
>       KVM: arm64: Ensure 'params' is initialised when looking up sys register
> 
>  arch/arm64/kvm/sys_regs.c     | 25 ++++++++++++++++++-------
>  arch/arm64/kvm/sys_regs.h     | 17 +++++++++++++++--
>  virt/kvm/arm/arm.c            |  4 ++--
>  virt/kvm/arm/mmu.c            | 30 +++++++++++++++++-------------
>  virt/kvm/arm/vgic/vgic-init.c | 20 +++++---------------
>  5 files changed, 57 insertions(+), 39 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
