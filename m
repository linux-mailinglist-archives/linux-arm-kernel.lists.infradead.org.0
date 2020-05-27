Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1A21E4C81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 19:59:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOTj+fbcL7JOS1tacEyfYVB2rYKh45U4qnsUW5QMtDQ=; b=r+PWZGIPnTwGx/
	1K5QH/qwdVrxfmbwY/iyTgvkhitL90KqD9MLxLWf/Xu3fPfcQhVBQx+F/YrPVIEsNriGylMqtV0Lm
	9A5KdEVLbaNGf1KwHgNUqOI1HX+WkZ4PrOzPCSxWXDcLZC2tC6+jgb5HRUPoPoAIykOpEuEJw0JBc
	JB0ACOs/owxPQlmrp3bOCywMSSfexAEJxMjC7TRn9a/EGvVyBnI23qQgabU8ee+x89R4Fe3dWx5uE
	fan5rO3FlcTlkZrCz0aKG+/C/Iz//LC/r5za9uZlAQYFTyxeuO5SwRZENGw7dtzAiCcvaM/22bVbv
	gBsqbCoSsS7PypeOYMdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je0KW-0007TK-F8; Wed, 27 May 2020 17:59:04 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je0KL-0007SZ-Dm
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 17:58:54 +0000
Received: by mail-pl1-x642.google.com with SMTP id m7so10426503plt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 10:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j2dXb/W+FFUUQdJGDBXGOrcBx0qp8UzbDlrm8pA5EtY=;
 b=ICaX7NlLLWUb8V6MIhHgmU+GSEus1nQ+B+yewGf+yzKsawUFBmphgWTlaoQOLpQR9q
 /jpDP6KtiNX4NO/6KA9kMKBev6liRbJ1BGVRzSnCHdMX2rfu7/i55zNOtMzAn8bxArUX
 jViDgG2CxALY1Fk7jf/Ink91WecuSjAZTOCDq/zuNS/Ajq/hHLCW/OPFw37M5dCymmLt
 1uIIEeqmBpTDpYS0G9Mu1eu6NzrDAAFQYC3gG97e07ChVOaHb6vqNL5spkY7biIj3Wn9
 3lTgVfuyc0YNgMlqs8LVPxcWo9Py6mLoZk495QfZBqI8oA5pJKVoK2SD5/WJJcdl+63p
 /aNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j2dXb/W+FFUUQdJGDBXGOrcBx0qp8UzbDlrm8pA5EtY=;
 b=ezPb2Ap2pQWYs/TMVjf87itzuqspvuqI3IUVMef/PWCCsQXtFu9AAzoDB2JOoso0mp
 jrxZutEBsybhhLPcDZqeaZxOcATvQuSPPNHI+dKw96ve7CSSHQruL8HANJV6CMLhweWn
 2hCVHJUvZQXBaei23kWlFs5wPlVL6+vgbxul+CDXFsfPi8jmwc2XpFfVZfDL3A386zHN
 9F9QyuOG/UGyWNsmdDy7yTU8GNRVNSqWKYVUT5o96mwtZHEIH5G7BpFALVyLREJaLwnP
 6TM92j7JQAk2E1jJMeocyBA7eYT/Rw0z/60KBotId/qhyTwXjcW2ZoCMQyQyR+JCb+JR
 0UtQ==
X-Gm-Message-State: AOAM530Kd3uUSNXnjmwHC7ulWb+hduakpW4WhkqoOezUyiGfRz1TTJdN
 OwzYCvYY4qVVm0V53K/++YThLt2E15z5HLd4VjMnqA==
X-Google-Smtp-Source: ABdhPJylF3XJCAEDnd35ICRnynXaDjY473+4M+Syt0LKUEBzmZslJCsycy4dHuwtLGEcgLfbNNR3IHlLI1zsLnhDg4I=
X-Received: by 2002:a17:90b:4c47:: with SMTP id
 np7mr6511155pjb.101.1590602332138; 
 Wed, 27 May 2020 10:58:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200526173117.155339-1-ndesaulniers@google.com>
 <159052247565.23781.7800427985507723263.b4-ty@kernel.org>
 <20200527135322.GU5031@arm.com>
In-Reply-To: <20200527135322.GU5031@arm.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 27 May 2020 10:58:41 -0700
Message-ID: <CAKwvOdnSby=NaRG_xazeOOMXjzPu9FAuAPZW85FU0M8-+pA53Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
To: Dave Martin <Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_105853_483526_A3A93656 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 6:53 AM Dave Martin <Dave.Martin@arm.com> wrote:
>
> On Tue, May 26, 2020 at 09:45:05PM +0100, Will Deacon wrote:
> > On Tue, 26 May 2020 10:31:14 -0700, Nick Desaulniers wrote:
> > > Custom toolchains that modify the default target to -mthumb cannot
>
> It's probably too late to water this down, but it's unfortunate to have
> this comment in the upstream commit history.
>
> It's not constructive to call the native compiler configuration of
> major distros for many years a "custom" toolchain.  Unmodified GCC has

I don't think you know which toolchain or distro I'm referring to. ;)

> had a clean configure option for this for a very long time; it's not
> someone's dirty hack.  (The wisdom of armhf's choice of -mthumb might
> be debated, but it is well established.)
>
> Ignoring the triplet and passing random options to a compiler in the
> hopes that it will do the right thing for an irregular usecase has never
> been reliable.  Usecases don't get much more irregular than building
> vdso32.
>
> arch/arm has the proper options in its Makefiles.
>
> This patch is a kernel bugfix, plain and simple.

Borrowing from the Zen of Python: Explicit is better than Implicit.
Better not to rely on implicit defaults that may be changed at configure time.

> Does this need to go to stable?

Oh, probably.  Need to wait until it hits mainline now.  I don't think
the compat vdso series was backported to 5.4, but IIUC stable
maintains a branch for the latest release, which would have that
series.

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
