Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D52E1FE28
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 05:30:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lJM3kKg9b12QM9IVYqvNkSBGS6NjXXZ2bDDdw32A6ws=; b=AsiDaABJ7sqyP1
	sWFqA+D0nriepOtqrJQ8vevOlIHdmhCWpfeTfp8G4RnSBPqlaVUhIELg5KpTHcb/UAWgoLeibxbsQ
	6oOkxYJwLnMtDZFcBDK/kSG6qxHJBFl+iu3A1P5dIWSjSVSialhp8JWi2u6NyhMRc6bsAb0qlsxx5
	p49aE7y35EdpRnsEdgFsNRozKrZOLpnprR94D+9YKPXBAQdH1zKIk7OemX2TCiZypIg6T2D5uKbau
	yg4QjUq2SSOVjkczZ0gyoj+ZYwU8qokq/2xCnO9Z94OzNKHlIpk80+Udh1FwKToqPLrJfUTsUwVb8
	nVdNv2h7eNkjIBPBPxHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR75f-0001aI-G6; Thu, 16 May 2019 03:29:55 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR75Y-0001Zv-4Y
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 03:29:49 +0000
Received: by mail-vk1-xa43.google.com with SMTP id o187so629034vkg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 20:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:sender:from:date:message-id
 :subject:to:cc;
 bh=M0gjbwnx5fbOdE5IIPZtX+7pe8myER98gW6UQG7Z08c=;
 b=c0mvPTnmFRt8pwPLF59cLXLZ2XsjQWvhy26/cmn+n47w70i1pkD2Z1LdAw5uQW4hnD
 O32W1syUa3+d+8x/AjY2WW4dcB/wH43F2k469z6Jgtoi8gLwYQVmjlEfzLRIzuaxdrfm
 Q3AvmM484lkGUgG1klaxIgX92xWuAbThMms+FgK0N/TjSdwaw7ump6UD8dQSryrCzXUV
 RQw6xR22+aIj5Ds0r7AuFEKIkulmP3Emquz9+2DDcHbK0f/9gc6FvizbDKwMSvVkylEI
 xYwthPzCrsyFSAn1L/uc9SzPBGvIUGit12aweAj4uT3T7gimwbcAqsGR7Ol54mrDTKOE
 j4mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:sender:from
 :date:message-id:subject:to:cc;
 bh=M0gjbwnx5fbOdE5IIPZtX+7pe8myER98gW6UQG7Z08c=;
 b=hBb94Eg7LDdk5NUwn3tq/i3MDF8Zd+X/zkhvqtVF8IjHoaT5l6/ny2/Yluzk814B8J
 Xz4a4UbDDWUvcIuwe77bwS1Sd3TXZbJPSQJkFcm7wJ6AE4TWY4t9p1Qb6ZASP8yHKs75
 P2eCh91gRnHRTrfPS/UMx1cZHQ9eJxbFS3QmBwSLFz5DjWyv5altOmIbVkupUUgIuZpD
 giGLmgL3m1clMaxXuz9V2zo/suTh6bMp1L0lX8sgAu+holbFcKfc18jJtuD/Pd6yqzDl
 GXdea7PmHdv9y/uDsuXWwZbMUFTSjdYkzW2r3hhidOo1QAhbcJAO84une0v9Q0XsKJnN
 a4Bg==
X-Gm-Message-State: APjAAAWAjyI5TRGL8Uc8WX/yMPqKyZqrHdHWngz2jfuzzS9djiVjXXwY
 WfaBHXa72AXu98BIryQD2w1s27TyFYFHUZgSTd4=
X-Google-Smtp-Source: APXvYqzHTzQ0uQT+CuCikxFbQOFKPOyYn+ZBp4N412+zqsajy8Adyu//9Ux3FB29Y67zwggvGC8nines+9sQmh9xfc8=
X-Received: by 2002:a1f:d6c3:: with SMTP id n186mr21499586vkg.46.1557977386507; 
 Wed, 15 May 2019 20:29:46 -0700 (PDT)
MIME-Version: 1.0
References: <1557927822-21111-1-git-send-email-arunks@codeaurora.org>
 <20190515134902.GI24357@fuggles.cambridge.arm.com>
In-Reply-To: <20190515134902.GI24357@fuggles.cambridge.arm.com>
X-Google-Sender-Delegation: getarunks@gmail.com
From: Arun KS <arunks.linux@gmail.com>
Date: Thu, 16 May 2019 08:59:35 +0530
X-Google-Sender-Auth: Jhj8jzl7NQ5YCn7WCpPYESwNezk
Message-ID: <CAKZGPAMWDbfckAxp5BJVvr+K1k7h2aoVBp_TaW0tuyDfiopnsw@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: Fix size of __early_cpu_boot_status
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_202948_206211_9746ACBE 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arunks.linux[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Steve Capper <steve.capper@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Jun Yao <yaojun8558363@gmail.com>,
 Arun KS <arunks@codeaurora.org>, James Morse <james.morse@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 7:20 PM Will Deacon <will.deacon@arm.com> wrote:
>
> On Wed, May 15, 2019 at 07:13:19PM +0530, Arun KS wrote:
> > __early_cpu_boot_status is of type int. Fix up the calls to
> > update_early_cpu_boot_status, to use a w register.
> >
> > Signed-off-by: Arun KS <arunks@codeaurora.org>
> > Acked-by: Mark Rutland <mark.rutland@arm.com>
> > ---
> >  arch/arm64/include/asm/smp.h | 2 +-
> >  arch/arm64/kernel/head.S     | 6 +++---
> >  2 files changed, 4 insertions(+), 4 deletions(-)
>
> Your original patch is now in mainline:
>
> https://git.kernel.org/linus/61cf61d81e32
>
> Is this still needed?
Thanks for pointing that out. We can ignore this patch.

Regards,
Arun
>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
