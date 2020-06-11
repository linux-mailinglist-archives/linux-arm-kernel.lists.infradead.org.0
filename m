Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A98781F6D2D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 20:05:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7JfJbrPwcc7peCU/FxxLLEZ1V4p/y5VmOhebePz4hAg=; b=ViZkJ98uNPy+wV
	VBly4CCGoxfZORATcRNm6WI8nsy078FD4uzbxyfAmaaK6dii7ohLlGQz4Xhpe9m8Qd/pfUZV4/EOD
	T/hcvwcmY89d0jYkodHOFCAXC2PSCsSc29tG6Vg3bc28+UCslgRPLqg7af+ZzWe/PYM4CC05HNdVn
	aCIC6+IP8wXLjow6F1RjvYISqx13GDOpTy47I+rHuNkeC7knHHUC7VD5UR8Gt967lruJHRA0gNg2A
	g90ZTnFQb3yLzcYIuebZBPXe44SXmO4tVR6NKsowFEa662FGSjKN9kfNF4O9xeaORbuvfJxM3X+Kv
	Ea48lQyig227FOndWjfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjRZm-0006KB-1c; Thu, 11 Jun 2020 18:05:18 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjRZW-00059B-3v
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 18:05:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591898698;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7cOqWTuYUa9FE9GP6fpBOyXkY5kMzNQixiqzTqJRGBI=;
 b=YKhhSUPbq2hspl3+kgP5gTl3o3R81hHnIY+GJV+LIsKBb+JeSLjp88bMS1ZIwFTL17nFy+
 plQKqOJeMe/BSnIZk4UUwSgAG37BzuZT0hiaID8O5hukgxr5bcKMM1Zzm3PvQNtK/Nhcol
 tBoL86BfTeSdea95EB6jr9APwsUpvr4=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-448-1Qz2ZUDePIWDmCmfbBHYFA-1; Thu, 11 Jun 2020 14:04:56 -0400
X-MC-Unique: 1Qz2ZUDePIWDmCmfbBHYFA-1
Received: by mail-wr1-f72.google.com with SMTP id z10so2867124wrs.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 11:04:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7cOqWTuYUa9FE9GP6fpBOyXkY5kMzNQixiqzTqJRGBI=;
 b=dGdVB9wtyvpcB0V8TgvX9mNpngMlb//9gvcx74chrUleyph7bnAP2mTb3F6nsUlEUt
 jynZh3ZoCCFOY3PEPC2sHWur38LdxKvg1Vxv163xfA5+vwzQOm/Izl4IGQptMpWfBWNC
 qb5PEudWULqjZ7WuGQPas4kwfAsOBxTDUNdWJNfLcw+isZzltMi3DI9CLiSMhGZhghtx
 EgOnBFt/9vu9Cb6h27iCLoSDXB+1sFQlt2JvCoS5JNhnuqNySKXmpcF4bFT2vO4m9baw
 dbMlGQ7KiVpTZqc45XNmZjSA8AjNkTLLSvQ4Eenu9ilnZNluATcOPqzjS9o1T5STiY7/
 xcZA==
X-Gm-Message-State: AOAM533SWiI4LqhRrqCNQsQ8sQsRSbDAVnlxwE1Ka9ejCfrj2tMD6UWr
 SxWxCjW14yGN0CY/57LIRar4zCWWsz6Clo+6gV0ErwEWd1yhXaarF64yMy3UbL312VFGOs/Lbnp
 rvFNLhmpnNGIB5cpAx1/PyP3gsWjmhtweybc=
X-Received: by 2002:a1c:ed0e:: with SMTP id l14mr9180028wmh.8.1591898695048;
 Thu, 11 Jun 2020 11:04:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzR4smWGm/DBrvqHqnYi+0pYh8w7qlAz7vSbFH29HX9jSbIpMW1S4TmGZ3yFk17wCx3012mHw==
X-Received: by 2002:a1c:ed0e:: with SMTP id l14mr9180010wmh.8.1591898694794;
 Thu, 11 Jun 2020 11:04:54 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:29ed:810e:962c:aa0d?
 ([2001:b07:6468:f312:29ed:810e:962c:aa0d])
 by smtp.gmail.com with ESMTPSA id v7sm6110537wro.76.2020.06.11.11.04.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Jun 2020 11:04:54 -0700 (PDT)
Subject: Re: [GIT PULL] KVM/arm64 fixes for 5.8, take #1
To: Marc Zyngier <maz@kernel.org>
References: <20200611090956.1537104-1-maz@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <be82c5cb-be6d-74f7-9b77-dbd1648a8933@redhat.com>
Date: Thu, 11 Jun 2020 20:04:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200611090956.1537104-1-maz@kernel.org>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_110502_252725_B1615AF9 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Scull <ascull@google.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/06/20 11:09, Marc Zyngier wrote:
> Hi Paolo,
> 
> Here's a bunch of fixes that cropped up during the merge window,
> mostly falling into two categories: 32bit system register accesses,
> and 64bit pointer authentication handling.
> 
> Please pull,
> 
> 	M.
> 
> The following changes since commit 8f7f4fe756bd5cfef73cf8234445081385bdbf7d:
> 
>   KVM: arm64: Drop obsolete comment about sys_reg ordering (2020-05-28 13:16:57 +0100)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-fixes-5.8-1
> 
> for you to fetch changes up to 15c99816ed9396c548eed2e84f30c14caccad1f4:
> 
>   Merge branch 'kvm-arm64/ptrauth-fixes' into kvmarm-master/next (2020-06-10 19:10:40 +0100)
> 
> ----------------------------------------------------------------
> KVM/arm64 fixes for Linux 5.8, take #1
> 
> * 32bit VM fixes:
>   - Fix embarassing mapping issue between AArch32 CSSELR and AArch64
>     ACTLR
>   - Add ACTLR2 support for AArch32
>   - Get rid of the useless ACTLR_EL1 save/restore
>   - Fix CP14/15 accesses for AArch32 guests on BE hosts
>   - Ensure that we don't loose any state when injecting a 32bit
>     exception when running on a VHE host
> 
> * 64bit VM fixes:
>   - Fix PtrAuth host saving happening in preemptible contexts
>   - Optimize PtrAuth lazy enable
>   - Drop vcpu to cpu context pointer
>   - Fix sparse warnings for HYP per-CPU accesses
> 
> ----------------------------------------------------------------
> James Morse (3):
>       KVM: arm64: Stop writing aarch32's CSSELR into ACTLR
>       KVM: arm64: Add emulation for 32bit guests accessing ACTLR2
>       KVM: arm64: Stop save/restoring ACTLR_EL1
> 
> Marc Zyngier (9):
>       KVM: arm64: Flush the instruction cache if not unmapping the VM on reboot
>       KVM: arm64: Save the host's PtrAuth keys in non-preemptible context
>       KVM: arm64: Handle PtrAuth traps early
>       KVM: arm64: Stop sparse from moaning at __hyp_this_cpu_ptr
>       KVM: arm64: Remove host_cpu_context member from vcpu structure
>       KVM: arm64: Make vcpu_cp1x() work on Big Endian hosts
>       KVM: arm64: Synchronize sysreg state on injecting an AArch32 exception
>       KVM: arm64: Move hyp_symbol_addr() to kvm_asm.h
>       Merge branch 'kvm-arm64/ptrauth-fixes' into kvmarm-master/next
> 
>  arch/arm64/include/asm/kvm_asm.h     | 33 ++++++++++++++++--
>  arch/arm64/include/asm/kvm_emulate.h |  6 ----
>  arch/arm64/include/asm/kvm_host.h    |  9 +++--
>  arch/arm64/include/asm/kvm_mmu.h     | 20 -----------
>  arch/arm64/kvm/aarch32.c             | 28 ++++++++++++++++
>  arch/arm64/kvm/arm.c                 | 20 ++++++-----
>  arch/arm64/kvm/handle_exit.c         | 32 ++----------------
>  arch/arm64/kvm/hyp/debug-sr.c        |  4 +--
>  arch/arm64/kvm/hyp/switch.c          | 65 ++++++++++++++++++++++++++++++++++--
>  arch/arm64/kvm/hyp/sysreg-sr.c       |  8 ++---
>  arch/arm64/kvm/pmu.c                 |  8 ++---
>  arch/arm64/kvm/sys_regs.c            | 25 +++++++-------
>  arch/arm64/kvm/sys_regs_generic_v8.c | 10 ++++++
>  13 files changed, 171 insertions(+), 97 deletions(-)
> 

Pulled, thanks.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
