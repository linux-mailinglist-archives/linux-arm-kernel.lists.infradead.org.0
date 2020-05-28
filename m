Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 946421E5840
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:12:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gaFY+Kb/DXO9Ru4Z6HJEb3LxzVjtsKF25tUZfPvh6lc=; b=gYqlXsD+VvS2F9
	dj/Ci0IU6fPuJEhGAqIKdRC/75J1fAWEff7uug8tNMso9vPdrWc9AP/J+KlLKsD+HYHeB5m1C87i9
	mvql7mmrT4algdzwyD67ykGGe2k0LOb2dzc9cQeI8XAtXoeuQ7o14SMfgRiUJm7+4OWJiSo37Cs9H
	5hVg/Gqj/c4aVloVB8uv63m48abvsVZXuyEJ/mfF4z86TGNv0O8k1X/OsCaPSwfcwe5zwJ592CSNg
	B7FNcBSahGX6Kc8QkuWNB6s/mqYgPregEYeTO6D09cDzHRpTMtrtS9c6qndWs0srmoBNESvPjxD83
	VWHHDaTX2lJb+89zucLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeChv-0008Pp-0b; Thu, 28 May 2020 07:12:03 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeChk-0008PD-C5
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:11:54 +0000
Received: by mail-ej1-x642.google.com with SMTP id h21so30884610ejq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 00:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=16DIrmRA1E1JnL9soIzFZEu2gqgGZH7RX+KOOjHexd0=;
 b=Hk98kg66914RxtIc5J3bFwPiLx5SZgO2Jetwyp4qg3R43GKFn1BNXce3HpdBLRTjir
 2oYUFHOhUsf5Oe9YC4tUUohIG1SYyrZOr9GMlowRq0RcQ16KKpkdKalPLHuarT6WNXUw
 NfZALsBj3b1EP7xmtg9cNa9hO3Ucq7gI5uObgeA+WFJRE53QOLNIlLF6MFbDDtD//h30
 ixCyF03HF+6KXHFU4VgoKviVd3E0RQPkMssEFp+1SQwDyxa/J8j9gH7uAqqIrxIg5+fZ
 +aKZEem2DQT/Z9aJpIWb83OId/FloBL8f7m/KBiDnUFt8KAShZWDlvhpGzfDP0VfwYHq
 663g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=16DIrmRA1E1JnL9soIzFZEu2gqgGZH7RX+KOOjHexd0=;
 b=LFBdXEHsOZTA6VxOOPPWz29DXNqMhPG7xP/QHZ5OftGwtqz2LP8PIypuWwZTEPzjaZ
 9aeW54CqaWRxbKz9+/y2cZQC/izhHGIqhB1VLZFO6W+4wHeCSlf/PBWPhkWGznz2xYtB
 BDrscimk5GH24tS+sxFF4qbdw9MxlvCsRSVgKWZMBNvrGgz4foBxXzuUTb6ZpJZBHFLB
 0sbW3bkKfMaM/fGTTZj9cTsscENRoHwVcC0jS1Z43VCgL1oYWpQA9IB20Ber0XdfRg+v
 iCh1Nc3E9ZXyneM8n0qfFn1t3g1qPTrrrrVv4PXsPirPg7q1Uq+SCxPSDifJRRgHE8FH
 lkfw==
X-Gm-Message-State: AOAM532qCdKwWCYGmxtXvJewVfeStwpRBMBRwOwX96XIh8Qey/mfihMi
 HHukAmNwZDM4TdPB2pU5G/rxZ5RFLYSGEKVeU3M=
X-Google-Smtp-Source: ABdhPJzq9SmQSN0CtkdmJ2bqv3wLw2c+pM+QFBXLaM0M7eNHWJLkA9cXACQ1aCEEF/5xwXliqATOMilfHMSFjb9kpGs=
X-Received: by 2002:a17:906:51b:: with SMTP id
 j27mr1639266eja.246.1590649910884; 
 Thu, 28 May 2020 00:11:50 -0700 (PDT)
MIME-Version: 1.0
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
In-Reply-To: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date: Thu, 28 May 2020 09:11:40 +0200
Message-ID: <CAKgNAkhHzrNHjpRAKo_cU7+0-OGP9eyvmdA=AD3OgvVDq8vjcQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] prctl.2 man page updates for Linux 5.6
To: Dave Martin <Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_001152_414438_71B71D47 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: mtk.manpages@gmail.com
Cc: linux-arch <linux-arch@vger.kernel.org>,
 linux-man <linux-man@vger.kernel.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Waiman Long <longman@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Tim Chen <tim.c.chen@linux.intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave

On Wed, 27 May 2020 at 23:17, Dave Martin <Dave.Martin@arm.com> wrote:
>
> A bunch of updates to the prctl(2) man page to fill in missing
> prctls (mostly) up to Linux 5.6 (along with a few other tweaks and
> fixes).
>
> Patches from the v1 series [1] that have been applied or rejected
> already have been dropped.
>
> People not Cc'd on the whole series can find the whole series at
> https://lore.kernel.org/linux-man/ .
>
> Patches:
>
>  * Patch 1 is a new (but trivial) formatting fix, unrelated to the new
>    prctls.

Applied.

>  * Patches 2-3 relate to the speculation control prctls.  These are
>    unmodified from v1, but need review.

Applied, and pushed (since there were no review comments from last version).

>  * Patches 4-5 relate to the arm64 prctls from v1, with reviewer
>    feedback incorporated.  (See notes in the patches.)

I'll hold off on these patches, to see if review comments come in.

>  * Patch 6 is *draft* wording for the arm64 address tagging prctls.
>    The semantics of address tagging is particularly slippery, so
>    this needs discussion before merging.

Okay -- I'll hold off with that patch too.

Cheers,

Michael

> [1] https://lore.kernel.org/linux-man/29a02b16-dd61-6186-1340-fcc7d5225ad0@gmail.com/T/#t
>
>
> Dave Martin (6):
>   prctl.2: ffix use literal hyphens when referencing kernel docs
>   prctl.2: Add PR_SPEC_INDIRECT_BRANCH for SPECULATION_CTRL prctls
>   prctl.2: Add PR_SPEC_DISABLE_NOEXEC for SPECULATION_CTRL prctls
>   prctl.2: Add SVE prctls (arm64)
>   prctl.2: Add PR_PAC_RESET_KEYS (arm64)
>   prctl.2: Add tagged address ABI control prctls (arm64)
>
>  man2/prctl.2 | 444 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 435 insertions(+), 9 deletions(-)
>
> --
> 2.1.4
>


--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
