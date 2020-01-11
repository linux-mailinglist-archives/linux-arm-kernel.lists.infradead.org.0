Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 282BA137B70
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 05:57:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3d7EIy7EYY1xNkFA2ZA8HBTdCoK8zPATHKwt2o/TEnw=; b=iuUOpZLVAiyKTl
	0rMMOraG3UikgoSEbYMVHeMcxoC30UABFUw0pj2F4Iu3+K1MrqF37QxYHltBnisgbirYaIncN+n1w
	qUfgShSufjVPa4i3o1ejkyTP9Yp0Hx5N9T+2TqPw7Xjl9Sv9r5KXTfbW/dd+hBQQ9uPEn9BUXqGj9
	kSDOWLSF+ZZxe9M3FAKLrHcuXC1NtUcHrNpM7i0a7YPZSUZDJEMaEoN1Tqaood/UwKpjQXw/mSjBy
	V80DGrMPpd61SqPXgGXtiteEG83TzWrvmOrr/Iu/iljJ/MFqWWZpqi0JOzu0xjx9kHk3XafSCy086
	9QuRYRPDO4jZdxvQ497A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq8pS-0008IY-8f; Sat, 11 Jan 2020 04:56:54 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq8pJ-0008I6-4G
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 04:56:46 +0000
Received: by mail-pl1-x649.google.com with SMTP id k9so2249362pll.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 20:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=RjLzBv4qlo+z7GYjo6uSKDnHrbZe99ibYMQ8E0CYwHw=;
 b=K0QbsSu9JkSBJauq5SjLqo6PxvRTkqJsdB2vro3IKA1ZG8/ckNrvFMDL0SFIQB58t7
 5LDzHFXI7cdYhOTuNUneLFBT83kHI5SmNQ2M9LjhLBuZBpvhRuKFUya/sSZ4OGyqVzo4
 O3eJr0WcfVpg0aDjqZDBEJgLpPAEdVA72EmoflXIRUCp+ryA6TbEDWt9XCO847V5v01P
 Jpzbdu/r+e7UAo4Id9d+rEHxJsJFS5Q4Zlzo/3P8VxNlUWQ5JVgXzswIWioMcVm0ep06
 oexphr6+T1IfwVGVCHIA5cUeqr+EH9BGhFdiIrNcnxWzZ9bAEi6HkhDfCul0USbieNL0
 5Vig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=RjLzBv4qlo+z7GYjo6uSKDnHrbZe99ibYMQ8E0CYwHw=;
 b=sr6E0j2pb9WhNkw1REZMnLoTySzheCY19a/6P+ZkzgWMkqrZhdmhpNufK1UVyGF2oB
 kuNjBCVDIke2+0pIs39IhYmLTBuQfNy606jjlVvrCYXdQmMWKC6/sDqpYqzBZZXCajxZ
 MnTLk8dR/CUVaDtPLcO06NwDEU8etxK2Xn8uEYa6lh8mI0FJ1CydmMp2TlORLtECIO65
 KYTpGIvd9Hyja7TBX7UCjzkCpbKY2FsCux+A6MGz/CJiOTbVXJGg7dSeXWFNtzigqc85
 H+qCKx9QHNk1ydfH1HdZxdTNLC0v83x2/q8PchHBv/9QvjkWjLAtQ8yqPnx9IuH8C18A
 gBOQ==
X-Gm-Message-State: APjAAAXPlXQxX48jVJnD63XC3hWQXeUp9DkJF4JORXqYNEhwxvRsiFCO
 PN3RFMKKpUBByaJkb8/v0FE/5CNXl7OglYU=
X-Google-Smtp-Source: APXvYqzKmsGlqJpeihD7vxzuMcgio6xYtq4QElmTQfynt8iK9bmE01b6bbQij88VWMmN1+xvy6ZrRXWGp8DXKA8=
X-Received: by 2002:a63:8041:: with SMTP id j62mr8822576pgd.41.1578718603417; 
 Fri, 10 Jan 2020 20:56:43 -0800 (PST)
Date: Fri, 10 Jan 2020 20:56:39 -0800
In-Reply-To: <20191209150748.2471814-1-thierry.reding@gmail.com>
Message-Id: <20200111045639.210486-1-saravanak@google.com>
Mime-Version: 1.0
References: <20191209150748.2471814-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
Subject: Re: [RFC 0/2] iommu: arm-smmu: Add support for early direct mappings
From: Saravana Kannan <saravanak@google.com>
To: thierry.reding@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_205645_196000_569CC190 
X-CRM114-Status: GOOD (  23.75  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kernel-team@android.com, Saravana Kannan <saravanak@google.com>,
 Patrick Daly <pdaly@codeaurora.org>, robin.murphy@arm.com, joro@8bytes.org,
 Rob Clark <robdclark@gmail.com>, iommu@lists.linux-foundation.org,
 linux-tegra@vger.kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, Pratik Patel <pratikp@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thierry,

I happened upon this thread while looking into another thread [1].

> From: Thierry Reding <treding@nvidia.com>
> 
> On some platforms, the firmware will setup hardware to read from a given
> region of memory. One such example is a display controller that is
> scanning out a splash screen from physical memory.
> 
> During Linux' boot process, the ARM SMMU will configure all contexts to
> fault by default. This means that memory accesses that happen by an SMMU
> master before its driver has had a chance to properly set up the IOMMU
> will cause a fault. This is especially annoying for something like the
> display controller scanning out a splash screen because the faults will
> result in the display controller getting bogus data (all-ones on Tegra)
> and since it repeatedly scans that framebuffer, it will keep triggering
> such faults and spam the boot log with them.

While I'm not an expert on IOMMUs, I have a decent high level
understanding of the problem you are trying to solve.

> In order to work around such problems, scan the device tree for IOMMU
> masters and set up a special identity domain that will map 1:1 all of
> the reserved regions associated with them. This happens before the SMMU
> is enabled, so that the mappings are already set up before translations
> begin.

I'm not sure if this RFC will solve the splash screen issue across SoCs
([1] seems to have a different issue and might not have memory-regions).

> One thing that was pointed out earlier, and which I don't have a good
> idea on how to solve it, is that the early identity domain is not
> discarded. The assumption is that the standard direct mappings code of
> the IOMMU framework will replace the early identity domain once devices
> are properly attached to domains, but we don't have a good point in time
> when it would be safe to remove the early identity domain.

You are in luck! I added sync_state() driver callbacks [2] exactly for
cases like this. Heck, I even listed IOMMUs as an example use case. :)
sync_state() works even with modules if one enables of_devlink [3] kernel
parameter (which already supports iommus DT bindings). I'd be happy to
answer any question you have on sync_state() and of_devlink.

> One option that I can think of would be to create an early identity
> domain for each master and inherit it when that master is attached to
> the domain later on, but that seems rather complicated from an book-
> keeping point of view and tricky because we need to be careful not to
> map regions twice, etc.
> 
> Any good ideas on how to solve this? It'd also be interesting to see if
> there's a more generic way of doing this. I know that something like
> this isn't necessary on earlier Tegra SoCs with the custom Tegra SMMU
> because translations are only enabled when the devices are attached to a
> domain.

Good foresight. As [1] shows, identity mapping doesn't solve it in a
generic way.

How about actually reading the current settings/mappings and just
inheriting that instead of always doing a 1:1 identity mapping? And then
those "inherited" mappings can be dropped when you get a sync_state().
What's wrong with that option?

Cheers,
Saravana

[1] https://lore.kernel.org/linux-arm-msm/20200108091641.GA15147@willie-the-truck/
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/driver-api/driver-model/driver.rst#n172
[3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/admin-guide/kernel-parameters.txt#n3239

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
