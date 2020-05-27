Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2684D1E4D95
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 20:58:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OmsQSVzLluNnafbhbutjRbRIoUbay632NNL1a+qGwCE=; b=D7+LW7WbmdtZrJ
	TmnB5t2fGLZPluGOu8UV58Zh/Abo6KvyeCQIUxh5weClZYnawEdSd24OVvmRqHudelawUXGsfe7BS
	mO2mgUBN5ggfBzYWR+KDQXEVyKWa+re8Z8mF3n/yMcMapQ+nCbXzXr2GCXZABu7oSfy1bOd3DDMag
	OiVdJw6TBKFJWsgSNkifB9gX6FTCt5eIC/Vbi0eooKjryNAJ3560tdDVqovaFlyePWxSn+hBZrd81
	qic4skhhpCo0+mj9F+uTMMbXjKQHuFxqggTIhAVJxgVorSgDZJL1jnlDfGVVt4dc7QBC+aB5rw6xY
	ngbGxq+Umrw10vRjr+Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je1Fe-0007vN-UE; Wed, 27 May 2020 18:58:06 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je1FU-0007sq-7k
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 18:57:57 +0000
Received: by mail-vk1-xa43.google.com with SMTP id q10so1076014vka.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 11:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fpy63c23dOxhykDpgNkYc0e/jj9ydzntDTyR3TzEzwU=;
 b=oOKshksVyBGLuBuCUd+quyrBbn2DnFXm50ek2FV+nnWC10Vc2Z+I/gtnZ3IypCD4Fx
 gXxBIP/wzAOJJn3wMPNcaKdJWfUFEnNJ5iy4/634yFP9C3y53gykgiFGJMLnkrv4pa82
 VbuMfy2wCmwUgkNUPBxU6zhgaM/LAqgX8x8OcC5SVPHdLp9OCdamyiEYDplt+F6T7rNt
 CZTpMTKKshLKGQva+1GCcfaQ41m4P/vZatfw8XQwBH6PLECjyYmMfm+6otaRyYZlkoJf
 +2He5a/1crn1NqJGKgI1w+i51L81dUzCLvEqmjYDk4ee1jckJiZXgZst1qGmRZZ/x/cZ
 mzTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fpy63c23dOxhykDpgNkYc0e/jj9ydzntDTyR3TzEzwU=;
 b=Swo9zlCf1IwnQIdAqJbni4/2KPdc5yFpln7oGx8usSWJRhepHJqFVlXtu18ssZTsbX
 O/+MKez2uCu3C4vZtCZ/qNpHENpdpxo8QwTuhTGcgo+k3mpNUNUZr819F6uG0MiXF06I
 V5I8u45QXLIfo3fKHG1tAFpKRr+2MdZQNSFSmsUM62VfekrKoSyPVa+95+QBbJgo/Aop
 30ELcwORrl0JdLum21d/CfinvngMWg49K59wm5D6dbTGs4NwvRX0c5jYJxssgzcYRPHq
 o+6C7d21HR7P6QgiQnKQLQ1zNfwx+HvREyWYkZXCAwiOgejGMSukMQ49j6B4R+uh2zhv
 lwyw==
X-Gm-Message-State: AOAM533Z8UVVZ8g2hfPQqCJPJkAW0nT2AI0nMYKtsYO8jzP/eEchI8AB
 gBu7DQeeySNpzqunm5UGIwnB60bQsZ5oXeAoYWywEamu
X-Google-Smtp-Source: ABdhPJy5pnTtE6wlYRg72H36Ak9B9JFNQGA1lIglUkxy0n+VMKw19LyxtiwzE6wUtHu+jW7Au2sEYmLPPI/5udXhrcU=
X-Received: by 2002:a1f:bf0e:: with SMTP id p14mr6001114vkf.15.1590605870320; 
 Wed, 27 May 2020 11:57:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-12-catalin.marinas@arm.com>
In-Reply-To: <20200515171612.1020-12-catalin.marinas@arm.com>
From: Peter Collingbourne <pcc@google.com>
Date: Wed, 27 May 2020 11:57:39 -0700
Message-ID: <CAMn1gO5ApcHOgQ_oLjiGDdCx9znz7N50w-BbzGPYpAzPQC3OQQ@mail.gmail.com>
Subject: Re: [PATCH v4 11/26] arm64: mte: Add PROT_MTE support to mmap() and
 mprotect()
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_115756_272941_5B4B9191 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Evgenii Stepanov <eugenis@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave P Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 10:16 AM Catalin Marinas
<catalin.marinas@arm.com> wrote:
>
> To enable tagging on a memory range, the user must explicitly opt in via
> a new PROT_MTE flag passed to mmap() or mprotect(). Since this is a new
> memory type in the AttrIndx field of a pte, simplify the or'ing of these
> bits over the protection_map[] attributes by making MT_NORMAL index 0.

Should the userspace stack always be mapped as if with PROT_MTE if the
hardware supports it? Such a change would be invisible to non-MTE
aware userspace since it would already need to opt in to tag checking
via prctl. This would let userspace avoid a complex stack
initialization sequence when running with stack tagging enabled on the
main thread.

Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
