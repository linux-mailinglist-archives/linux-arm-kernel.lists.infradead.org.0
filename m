Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4371616258C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 12:31:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVd8yFn7AEcoohYV8gWUHJbEqluhdpHZDVC/Ahoa70c=; b=tJo7/LCk6AFY5F
	hiQ2362k+OX9+WD/RBUnLjjQGovZSe9ikFiq6xYSBmvOlBknEu9D5aT6LAmHUFDocKfIFSfSCedCD
	sGCOl5ymmtu7E9EueNbuK3TzscV8ydpHkm2wnzzteY7U7o3CuGI6x3I5aJxM6Es+rMmStF2LWwVE6
	13RKL+6hXcqn5ATsmN1OaaFUn/2tWks8cNSfNSPq24RNNPq6m8kI2xvfiIAxVx/DXY9+7DGPycoEb
	zHK50KHfUmRMYFQPukxl7RntzJhjDP57IHLzonB9iA5ARf2CRpSV/8EMPm6tBZvXDUvlV/uuvrOBH
	ekNXo2WN6VzO1ieL/LLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4169-0005o8-QG; Tue, 18 Feb 2020 11:31:29 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j415n-0005fN-9f
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 11:31:08 +0000
Received: by mail-wr1-f66.google.com with SMTP id c9so23501727wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 03:31:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZnoR/TIx7fKj96R5zmBvT3nyCVKnUxPHKYaYVRB0FaU=;
 b=gyBTO3stKNV1Z7A8j/ME+Pp1LQFVCuoeU38CJMH1esnUDUUtuyHLQWsheSvNp+yNgs
 LwrfPxcbB7T20I45uL1PeWQGgP9tkU+fxWbnUDgXSL1bPIVqx0DVLYOxhA4jdqN8Redx
 gk7QCKX5snt1Pasn4Xmppu8h7ifjfTpp/Z8faNyE75Zstx23F1HdEXt8dTx2rVJuipne
 9B5ONtRuc/hIyRJq7Twslm3IMzVrGc4HlGi9YXJ+fkC6MH84u/2mYpncrqGzKr4C7IdR
 cEtai3VxvwCbCGQAmjHYVXglM/S/AWjEqyTE3vidoHOIQ4gVNImt1ba3yFU5yrhKOGI2
 fQrg==
X-Gm-Message-State: APjAAAVvimYAPH625IjMqW+EiRw/iO/1t9otWf6n5LVSbKxd4FI3aBFd
 CANNfRpg3mH7mFnhBB8IJrs=
X-Google-Smtp-Source: APXvYqx87NFgrpW3Y1vBrUUCZftoRQVXXG7WEdLVovV2FtSe62x/EMmLQIe+n9wpkKP19tQQdaXYkA==
X-Received: by 2002:adf:f401:: with SMTP id g1mr27996186wro.129.1582025464604; 
 Tue, 18 Feb 2020 03:31:04 -0800 (PST)
Received: from localhost (prg-ext-pat.suse.com. [213.151.95.130])
 by smtp.gmail.com with ESMTPSA id b18sm5697555wru.50.2020.02.18.03.31.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 03:31:03 -0800 (PST)
Date: Tue, 18 Feb 2020 12:31:03 +0100
From: Michal Hocko <mhocko@kernel.org>
To: Andrea Arcangeli <aarcange@redhat.com>
Subject: Re: [PATCH 1/2] mm: use_mm: fix for arches checking mm_users to
 optimize TLB flushes
Message-ID: <20200218113103.GB4151@dhcp22.suse.cz>
References: <20200203201745.29986-1-aarcange@redhat.com>
 <20200203201745.29986-2-aarcange@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203201745.29986-2-aarcange@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_033107_331316_44654E70 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mstsxfx[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Rafael Aquini <aquini@redhat.com>, Jon Masters <jcm@jonmasters.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Mark Salter <msalter@redhat.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 03-02-20 15:17:44, Andrea Arcangeli wrote:
> alpha, ia64, mips, powerpc, sh, sparc are relying on a check on
> mm->mm_users to know if they can skip some remote TLB flushes for
> single threaded processes.
> 
> Most callers of use_mm() tend to invoke mmget_not_zero() or
> get_task_mm() before use_mm() to ensure the mm will remain alive in
> between use_mm() and unuse_mm().
> 
> Some callers however don't increase mm_users and they instead rely on
> serialization in __mmput() to ensure the mm will remain alive in
> between use_mm() and unuse_mm(). Not increasing mm_users during
> use_mm() is however unsafe for aforementioned arch TLB flushes
> optimizations. So either mmget()/mmput() should be added to the
> problematic callers of use_mm()/unuse_mm() or we can embed them in
> use_mm()/unuse_mm() which is more robust.

I would prefer we do not do that because then the real owner of the mm
cannot really tear down the address space and the life time of it is
bound to a kernel thread doing the use_mm. This is undesirable I would
really prefer if the existing few users would use mmget only when they
really need to access mm.

> Signed-off-by: Andrea Arcangeli <aarcange@redhat.com>
> ---
>  mm/mmu_context.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/mm/mmu_context.c b/mm/mmu_context.c
> index 3e612ae748e9..ced0e1218c0f 100644
> --- a/mm/mmu_context.c
> +++ b/mm/mmu_context.c
> @@ -30,6 +30,7 @@ void use_mm(struct mm_struct *mm)
>  		mmgrab(mm);
>  		tsk->active_mm = mm;
>  	}
> +	mmget(mm);
>  	tsk->mm = mm;
>  	switch_mm(active_mm, mm, tsk);
>  	task_unlock(tsk);
> @@ -57,6 +58,7 @@ void unuse_mm(struct mm_struct *mm)
>  	task_lock(tsk);
>  	sync_mm_rss(mm);
>  	tsk->mm = NULL;
> +	mmput(mm);
>  	/* active_mm is still 'mm' */
>  	enter_lazy_tlb(mm, tsk);
>  	task_unlock(tsk);
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
