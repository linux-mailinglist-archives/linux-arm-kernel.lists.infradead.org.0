Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9D2CFC9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 16:39:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYy19TvVtWYAyXzZQpIT6GsjHnzOMGgOnI48XsZrWbA=; b=MIxxcMWTchtA8Y
	DM+lztLE3hlIdZmepI2Pxd5DkHQyCiyLFxPfP5QhRQV34hDfIfO9R5VjH/wu6OOpMnRD/Rjkbo8AG
	EUMDel8aybiMP2AiXg3YoUal66Q2p5mZEJ7nKN01WkNn5STGNN4GuGTL75+XCtYjfgKnoGS/8lk5n
	DWTJunnYtI3G6/yGKofUTLGPgf+eeqq/NBYEW4jUEaTgDgyBERTUavcBdYleMIxCVpOE90X1gyB+F
	nvg8zHh34ucMZkHPVx//vLdyibMyIZuiWCjWIHFFB7ReJ0RQWqzjWopgBlFmCqFizEqKI5Pk40Utf
	ulKRgo8+OE1FckZIXPFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqeB-0007m5-C5; Tue, 08 Oct 2019 14:39:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqdw-0007Wp-CV
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 14:39:18 +0000
Received: by mail-wr1-x441.google.com with SMTP id z9so19669210wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 07:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/Z8FCJhJc8vaF3pv6iIl59Qxo3H1jiWyBrvdIdYTFZo=;
 b=mzCkw7HMOiKq+KU41QBClPo7Nmn+CBfWIiaQN8Pex7kqb3ymJRKtIwP6GdeVHvAggk
 ZUsWOPMBqArDOXOl7qCz5PQpClc9wU9z5KdwvK2F/8ichMRiD7vV5K5n1Mc1k8DwWviK
 mhZ5SY7yFEH8N/K4fB3o9ELM4PV8SotkMnlsNw2Hq9sPzbA43ILG7d/pMNRELudd6p9/
 vsmCSmM1XL6PIrHmEksx+CcOYWMmXvzeroWD5fTmyC80p96n07EfmDrsjH/ray7Gyj5L
 MrmF8tMCY9DgWzecKoLDJRJzetDaUaFYVp1SySmNowWzbGUaoa8XexNqWQ4g0Vur5RhQ
 NDjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/Z8FCJhJc8vaF3pv6iIl59Qxo3H1jiWyBrvdIdYTFZo=;
 b=ER/62PRS+H8Ec8mV22R2v5eczkkdzy8QONJxFZ4v2PDI5qUm46BsQO0JJw3XF80P5r
 Qj94XAjCLdTqXzreGZ/KUyOsQyuy+PJDPsEPNTe50GW5x7e2qSde1zzrWi5z+Io+gmP1
 s+7eQaR+V7oJeUmLXCYtcVUX8xcWTwrYHR1r4r48Zi+Pj3PYUlBVmO6Mwv0qRupUq9Pi
 T2wygSu+j2Q6voQ2He4aLa2uBJXvA83CJQO70Q8TxHwygBohOXjaN0dPGOGjub2KGZa7
 X745EpZHEU86Vcu1ddOg+9anlXdXBrZq2u9lWCRkO65trDelwresvk0MkGR5u/sdQXLt
 bdyA==
X-Gm-Message-State: APjAAAVIVtVyzc+1trnShNtMr7pXTxHWQ8RXVpX0GSHPAPdLM+2qxuuS
 bMw5rlb0IxeZXMVFpZ2PIgZqp3Jwf3C30gyjfSl7dg==
X-Google-Smtp-Source: APXvYqxGDaeQRy8RlmXm5+Hfyoixl8MwWZkSG4wSuF+yDcsB9jopivDI9V4aE5Iq+b3wnA8tPQTJZqZAcyU0fNo0u7s=
X-Received: by 2002:a5d:69c8:: with SMTP id s8mr20980659wrw.32.1570545553804; 
 Tue, 08 Oct 2019 07:39:13 -0700 (PDT)
MIME-Version: 1.0
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
 <20191004120430.11929-2-ard.biesheuvel@linaro.org>
 <20191008143537.GA14523@lakrids.cambridge.arm.com>
In-Reply-To: <20191008143537.GA14523@lakrids.cambridge.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 8 Oct 2019 16:39:02 +0200
Message-ID: <CAKv+Gu-rPLhsnEuZUPXrcfXaBjbK4Sfam+1k_-ioZ95-+vQKLw@mail.gmail.com>
Subject: Re: [RFC/RFT PATCH 01/16] arm64: cpufeature: Detect SSBS and
 advertise to userspace
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_073916_550469_90BB62D2 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Jeremy Linton <jeremy.linton@arm.com>, Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 8 Oct 2019 at 16:35, Mark Rutland <mark.rutland@arm.com> wrote:
>
> Hi Ard,
>
> I have a few general backport notes below, and one issue with this
> patch/series.
>
> On Fri, Oct 04, 2019 at 02:04:15PM +0200, Ard Biesheuvel wrote:
> > From: Will Deacon <will.deacon@arm.com>
> >
> > Armv8.5 introduces a new PSTATE bit known as Speculative Store Bypass
> > Safe (SSBS) which can be used as a mitigation against Spectre variant 4.
> >
> > Additionally, a CPU may provide instructions to manipulate PSTATE.SSBS
> > directly, so that userspace can toggle the SSBS control without trapping
> > to the kernel.
> >
> > This patch probes for the existence of SSBS and advertise the new instructions
> > to userspace if they exist.
> >
> > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > Signed-off-by: Will Deacon <will.deacon@arm.com>
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > (cherry picked from commit d71be2b6c0e19180b5f80a6d42039cc074a693a2)
>
> This should be the first line, formatted like:
>
> commit d71be2b6c0e19180b5f80a6d42039cc074a693a2 upstream.
>
> ... as documented in Documentation/process/stable-kernel-rules.rst.
> I see that's sometimes not followed, but I think we should stick to that
> unless there's a strong reason not to.
>

Indeed, but I have adopted the

[ Upstream commit xxx ]

style in the meantime in [0] (and [1])


> If you had to make any substantial changes, I'd recommend a note above
> your S-o-B, e.g
>
> [v4.9: Renamed foo() to bar() to match xxyyzz()]
>

Sure.

> ... and regardless I usually add a [vX.Y backport] trailing my S-o-B to
> make it clear from the log where that happened.
>
> For this patch specifically, I believe that you also need to backport
> commit:
>
>   f54dada8274643e3 ("arm64: fix SSBS sanitization")
>
> ... which fixes the SSBS bit being cleared across sigreturns.
>

Coming up in 05/16


> Otherwise, this patch looks good to me.
>


Thanks.


[0] https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/?h=ssbs-v4.19-stable
[1] https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/log/?h=ssbs-v4.14-stable

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
