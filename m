Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE181DBC0F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dflX2smDnG1JrJQhbzuA+cV8YGpju4VCFhG0vsUZDYQ=; b=lkNtJT2uNZK14L
	wQq0uzymKebA3qFVsZuVIKU2sccRmCNGzPHz5a1v0iNJmZ+7DxiJy/js+p2BaUdRrlGx/0KNmMOxM
	7HC3guq5e9jyA0vQLN3pJnDBg3+n4wxnTkdE3p1x1bzZlgmBIxO6BpkjHbGZHyHkohHDv+/WTRACF
	qCdrTSYgwj0cPepb8P57sVYssYVODQYld6hCCSVoWKPHkZLf8FoU/lP/ZdlXK0NVlXQq5G1oGAuUM
	/KPj6pjWvQJNNcGcrWh18qonFMlpedUuRdff4DrsnrC6itU8U7eL9p4wm24mLJ/z4medhKx5ySH0h
	8K8irZpdx12hfGFM6Oxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSwG-0000BQ-TZ; Wed, 20 May 2020 17:55:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSvW-0008Kf-8P
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 17:54:47 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD330207D3;
 Wed, 20 May 2020 17:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589997286;
 bh=LwxTBNwVwq8v+Z3EBK8Zb+aYAe0AVV8dq4zcV/fvDC8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OFq5+gFik+r6kGeqmyDWMKqEgZalTs7c4tPsNNhQaX/MPA8BMIV672M3qkbbA9ZDQ
 27uhRAS9YPmjakvM6KuqrfY2I4LD9GHc/miBeCKwQtsFFp7gOUwchYkOUzmuSE6foo
 tpr7SsjsgdfdXkm0DB9u1TBpd5zg/WWX5pPxmrwI=
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V3] arm64/cpufeature: Validate hypervisor capabilities
 during CPU hotplug
Date: Wed, 20 May 2020 18:54:37 +0100
Message-Id: <158998676494.231372.15074477766045633803.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1589248647-22925-1-git-send-email-anshuman.khandual@arm.com>
References: <1589248647-22925-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_105446_318575_1D8278AB 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: catalin.marinas@arm.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 kvmarm@lists.cs.columbia.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 May 2020 07:27:27 +0530, Anshuman Khandual wrote:
> This validates hypervisor capabilities like VMID width, IPA range for any
> hot plug CPU against system finalized values. KVM's view of the IPA space
> is used while allowing a given CPU to come up. While here, it factors out
> get_vmid_bits() for general use.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: kvmarm@lists.cs.columbia.edu
> Cc: linux-kernel@vger.kernel.org

Applied to arm64 (for-next/cpufeature), thanks!

[1/1] arm64/cpufeature: Validate hypervisor capabilities during CPU hotplug
      https://git.kernel.org/arm64/c/c73433fc630c

But please note that I made some changes to verify_hyp_capabilities() so
that it's (a) static and (b) uses IS_ENABLED to avoid the dummy function
definition. I also extended the IS_ENABLED_check so that it doesn't
conflict with the KVM kconfig changes from Fuad. Please shout if you think
I'm still missing something.

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
