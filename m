Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD552148516
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 13:21:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/ZJmauAxI0LUSzpL/ibpzG/QSgxk8wbxKEjjR/0+eo=; b=ZrHcK4goS+N+Xs
	E6BYns+QedcI/kECkNWwJKenJ1IcEIRMQ05eVFJpI//8JJHmU/SyK8hgq9PyTYNoEjTT1Fmpqk50R
	837udfBlGGl5pRxkHJrK007lVv38avORXPNcVlu6I+im2TmfQl3DKUidocNtD8t/ayH6iHxYBHqPl
	4kL0b+ftd22jUmEUapJwd7XTQ3IuKRoH5H9qYw5aCy7j/SBo/Y8927C2HmvHVNX139F2YPSOE9OGT
	6K3Wcx1BawSeXKC8EFrzl+eEzIgNIsATIbA5LA+xQw0vUOVZKDuxdGfmLjPE6olU994V3DeUaXG0u
	+JjYLwBUG6Tg1abN+NZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuxxd-0003ml-2i; Fri, 24 Jan 2020 12:21:17 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuxxP-0003ln-CO
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 12:21:04 +0000
Received: by mail-wr1-x443.google.com with SMTP id c14so1726421wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 04:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Q5/QGs5gkh2XO+BQ2zRh4RVM54DuioXv50QpwNO/LOs=;
 b=cMFyr4Xh6yV515G1Qq+7238gv8y/HlkKi/4rDB6GTsgTNRmR41qvT7PZ2twHVSP9qh
 D0smuhi515A4wWVRtwHtSu2wHrxMvbX7auVyndUubiJrmU7agt48NX0/V74cmH9LQs1C
 RkanOyFY4U4cvEHWtLbatOG1cyxqEyAqm0Um96aKuPDMfonfVjFkDYJrdkk3sTnWdC1y
 QiK17UFDkrb+5NS4E1JnK5cXikgYvzO0gKkH0idqWjeUnf1qDy1Dskr30XUYsiC9mrrX
 /dAs9Kj8wLaDI7RvsWsLChvwOE9D0HUIvys2vSFyUMFzGYYetTx+/MKDP6UiVbqDJ04K
 bbhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Q5/QGs5gkh2XO+BQ2zRh4RVM54DuioXv50QpwNO/LOs=;
 b=aKMldoggrxupk3iVm/5bduh7zdm7hRxFda3iGz/Q00DXPGMuHrzq8BVI0/nGgw89nm
 mll0SdkBdht2xIWrnhyN2r6QESc3eYgrvOTtSVJL+uaMi1jPrAiCa2PiT7LxgZ4uiq2Y
 0iPMpN7eXo+HxhvtMWWbD2kVGZ+lZ4CUT7k2GQxe6SONhGKFaiGlq7SAD+D4rHliLNUq
 iLevs17BOk474St3DZsnscjH256jcUi5wXealg2AYVWRWNkxhLJ8GCrG1QCBpqOiNvAV
 hwtWPYduDKss6nUiY+h+CzmoEwz5GP98xj0Z1brpnfOq5OE03Pi+AWdbsFdM25CKK+UB
 riGA==
X-Gm-Message-State: APjAAAXP0y2uFSqX/P+UAJKBzzL6IN8Mz5pabUr5nrN921mU+I+gvDkd
 X3gReVHpqKNQ3UVsKOdCsBnBnd4dWIr5Ig==
X-Google-Smtp-Source: APXvYqwc1Foj2c7KnaKvacpILFbKY0n7Gl1OeFMdCaXfhHe+gYzfLhnQoBCMml+AofYQ5iRp2XnYpw==
X-Received: by 2002:a5d:68c5:: with SMTP id p5mr3938040wrw.193.1579868457525; 
 Fri, 24 Jan 2020 04:20:57 -0800 (PST)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id u7sm6587819wmj.3.2020.01.24.04.20.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2020 04:20:56 -0800 (PST)
Date: Fri, 24 Jan 2020 12:20:53 +0000
From: Quentin Perret <qperret@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 0/1] arm/arm64: add support for folded p4d page tables
Message-ID: <20200124122053.GA150292@google.com>
References: <20200113111323.10463-1-rppt@kernel.org>
 <20200122185017.GA17321@willie-the-truck>
 <cb6357040bd5d9fa061a8d3bd96fb571@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb6357040bd5d9fa061a8d3bd96fb571@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_042103_426294_098CB892 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -13.9 (-------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-13.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kernel-team@android.com, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org, Mike Rapoport <rppt@linux.ibm.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On Wednesday 22 Jan 2020 at 18:56:38 (+0000), Marc Zyngier wrote:
> But maybe this is the reason we've all been waiting for, for which we
> sacrifice 32bit KVM host on the altar of progress, and finally move along.
> 
> Will and I are the only known users, and that'd be a good incentive to
> experience some if this 64bit goodness... ;-)

Jumping in this discussion a bit randomly, but I just wanted to share
some thoughts that hopefully are relevant to this discussion and can be
of interest to the community.

Context: we have a use-case where guests would need some degree of memory
protection from the host for confidentiality reasons. We're currently
looking at extending KVM to support this feature by enabling the stage
2 translation for the host (in the NVHE case) so we can prevent it from
accessing private guest memory, in addition to many other changes
required to make this work properly. We're currently at the prototyping
stage, but hopefully we'll be able to share patches soon.

I'm bringing this up now because this particular use-case doesn't seem
relevant in the arm32 world -- all our potential users are on arm64.
However, because of the current structure of the arm/arm64 KVM host
code, making significant arm64-specific changes turns out to be really
hard.

We're currently left with three options:

  1. move code from virt/kvm/arm and duplicate it in the arch/arm and
     arch/arm64 folders so the arm64 version can diverge. I can imagine
     this duplication isn't exactly an appealing solution from a
     maintainer's perspective ...

  2. do changes in the virt/kvm/arm folder directly, but these must be
     met with matching changes in the respective arch/ folders. The
     code added to arch/arm, however, would be practically dead code,
     largely un-used and un-tested as there will be no real arm32 users
     of this feature.

  3. have lots of kvm_arm_* callbacks stubbed for arm32, but this tends
     to be really hard to apply to this use-case as some of the changes
     are really quite intrusive.

Obviously, details matter for all of this, and lots of discussions will
be needed once the patches are on the list.

But the point I'm trying to make here is the following: regardless of
the option we end up choosing (most likely a mix of all three), the sole
fact that we have to deal with this is clearly slowing down development
of the feature.

This would a be perfectly reasonable and acceptable overhead if this had
to be done to keep 32bit KVM host support for a real user community, but
since it doesn't seem to exist (?), fighting with the above options
feels like a lot of wasted efforts. (Note: I am not implying that Will
and you are not real persons, but well, you see what I mean ;-)).

So, this is the end of my daily rant. But hopefully this other example
of a real-world feature that's being held back by the 32bit KVM host
code will be useful background when/if we go ahead and finally decide
stop supporting it.

Thanks,
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
