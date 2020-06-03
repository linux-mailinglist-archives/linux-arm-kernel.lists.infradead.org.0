Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 577001ED39F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 17:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fOMQ1OBrN2P6dCkNuhJAjQe586Gu3kmvUKTAr2JvivA=; b=nFo8fkxIBXVtHN
	/pLHUwFd/Gd36U8gPVxZl48d7O2sfXTc9LQMT3FoFbF+NXN3bXx2TY3bK+/cpI/j6RKLE05Wi3geu
	GBDUmDLx4DQVbPg+aDQIckMt8++JazxJZJIyLIRrmHEqAaF14HRzRwScS16pEgqsJan4TunlJdL71
	5aPri+zH4Zw0uTx/9wzIKMT8TGlRvMd6vhUFH3/J0j8osZNIxT21EOrt01WqAWhjQmqrmlDO2mDbz
	k9FlTTOy5yTu1QZJA8G+Zi0UzN5xY2WidlzY7mu9fpruty+0bop7IKmtwR1//qkVIlJ9RP7sdBlAS
	qCOeLW8u59PQBkurJtOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgVY9-0005w8-U7; Wed, 03 Jun 2020 15:43:29 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgVY3-0005vi-9b
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 15:43:24 +0000
Received: by mail-il1-x144.google.com with SMTP id l6so2971220ilo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 08:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XQbYzBqHd6jJYDLCXZzMSLx/VOPPQ+/JM52BSm06Khw=;
 b=kR24IwKs6C5MsSrcmrJi23tYiZsApz6W4JuZntvUW+Z72bCRQGi9OXJxq6GkXQcqMo
 K0yBHD6VrsKzeJwm/OHRwDKK3y0tc0PYhWdM4gL5OuRa35rrEsUiHaV+k9M8wSl8cI77
 QVsvWaCn4VdB6NVbpTHn0MYDTqbRtm4gR6ZRajVWU3WCKVEa6Zgt1h1oA32dxZuJfZHX
 FuGzbmTG1EwRT0kIXgBSEODZ8E4GzyBZEnzNqgKkk1FlCA5fJTCr8uCOhzFzKXGYOvnM
 kzRRIRnBTF90sJtf/Se9TJCGRqLw9AjbNLOtLW0Oz/Q6AFVgvG9+4ii0GuiPp9hQpB2e
 jELw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XQbYzBqHd6jJYDLCXZzMSLx/VOPPQ+/JM52BSm06Khw=;
 b=OBcJq6ryybf3EGVP/fAEFA1tBIHJidWPIxxm8abnEljOwZjvRyaaq6Eo2xnVF9Z6Gz
 PO5f/4lgRKp4KY8jPkmYAaOEezaAiqO++wNSX/yvX+nDxgHaNuYZ31csp7du6WCZsXCe
 dhI8eHKi0Atcl+UXnm120C0QQUSqik5SzC3vuphkoP9jx4btZAXHuRCwm92dZf9LGTej
 dtX2Bvyit5bl7bwzfZ7x+beg4MvGcT3XDEup4eHlnF5fpnHOMimGrRo354+WfUQj4zz6
 j1CO1MPOlaqU8YIW+OnnUXAVegNpl6tSTzGAQ9NWJOwnfFU3snrpH8z/H8MJ6xZibqrq
 Hbqw==
X-Gm-Message-State: AOAM531CxA+/6uJ96yllnu6W/NUDa65NcG9t48ViZGCfVZuqSoSasBpf
 mEJ9A6iT6SKQLeZQ8NleuFYk1GOZPZfoYXqxZh7UwQ==
X-Google-Smtp-Source: ABdhPJya98ydpzdbIHuypWDOMkgFr4jwmMtfJqaVMFUo2vtfck5eQQwpncsi30RLEiAI8s52Ru2C9dGxWf9+urZCItQ=
X-Received: by 2002:a92:d3d0:: with SMTP id c16mr116133ilh.181.1591199002077; 
 Wed, 03 Jun 2020 08:43:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200603151033.11512-1-will@kernel.org>
 <20200603151033.11512-2-will@kernel.org>
In-Reply-To: <20200603151033.11512-2-will@kernel.org>
From: Keno Fischer <keno@juliacomputing.com>
Date: Wed, 3 Jun 2020 11:42:46 -0400
Message-ID: <CABV8kRwrnixNc074-jQhZzeucGHx9_e5FnQmBS=VuL=tFGjY-Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: Override SPSR.SS when single-stepping is
 enabled
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_084323_537516_A17501B6 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Luis Machado <luis.machado@linaro.org>,
 kernel-team@android.com, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 3, 2020 at 11:10 AM Will Deacon <will@kernel.org> wrote:
>
> Luis reports that, when reverse debugging with GDB, single-step does not
> function as expected on arm64:
>
>   | I've noticed, under very specific conditions, that a PTRACE_SINGLESTEP
>   | request by GDB won't execute the underlying instruction. As a consequence,
>   | the PC doesn't move, but we return a SIGTRAP just like we would for a
>   | regular successful PTRACE_SINGLESTEP request.
>
> The underlying problem is that when the CPU register state is restored
> as part of a reverse step, the SPSR.SS bit is cleared and so the hardware
> single-step state can transition to the "active-pending" state, causing
> an unexpected step exception to be taken immediately if a step operation
> is attempted.

We saw this issue also and worked around it in user-space [1]. That said,
I think I'm ok with this change in the kernel, since I can't think of
a particularly useful usecase for this feature.

However, at the same time as changing this, we should probably make sure
to enable the syscall exit pseudo-singlestep trap (similar issue as the other
patch I had sent for the signal pseudo-singlestep trap), since otherwise
ptracers might get confused about the lack of singlestep trap during a
singlestep -> seccomp -> singlestep path (which would give one trap
less with this patch than before).

Keno

[1] https://github.com/mozilla/rr/blob/36aa5328a2240dc3d794c14926e0754f66ee28e0/src/Task.cc#L1352-L1362

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
