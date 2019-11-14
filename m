Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2960FFCCEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 19:16:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dg8jvNEPWA8qyfa5Jp15E/p55n545JE9oYWTC1kpMao=; b=ZXuqIpgn1OCyAN
	lk4L6LV/lDydfK7xBn8HIe/6RmMrjYCqOu8MkrCLdFUYF3REY0LJ/1cOyyOmjGTJTpI5Zsia+vjzG
	Ja0ppApPvIVdPmihKtrDE34+FrXOutfpHpF+iwAMCAAu1gqZkhKLYvkeGV8LSRunKjvu1ojNC/+PF
	rl2+U7KLgQCfngQbB3KKC2Fv6zxII9+WlJERZk5nCw5jJrQVtI6iklRHWKWERpM/x4E97jMditq7r
	KGIm3lwj39kJBsVORN8E1NPD4cGjNq43xtmURmgIdnSdCLsgAL3b2Nx0mb45OtGmR+yKKm8/qPskI
	g0o0kExmKZTxykfLDf2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVJfL-0004he-K2; Thu, 14 Nov 2019 18:16:23 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVJfB-0004gc-BD
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 18:16:14 +0000
Received: by mail-vs1-xe42.google.com with SMTP id y23so4535862vso.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 10:16:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VxmH23UIh9bgluRuYOUap2wtF++JOc1rV8xUaBpEJ7o=;
 b=mO2PVhZ16pDlTlYuVILvi8A75KjsItYV3DeXppoIPq3BwPbsDM/LW+NfkBp7Qk+ax3
 jC42FJ/4QTOWM+agweJCKLTAarRvevGAP+kn1yj3AgK8qbl5zqpNse1lpQSxZLOa8vPK
 LmriK1aIr1Yu4IPoPkCJfA6tn+GqX343TCODAOuTdCTrnSO5apUdtHjQYSL2WZvs6vQ0
 plS2lZ7eC8FbopssHnbg/0ysYBXqdJG1vvakPm9eNgI2fW1zczisBV420GWmv9uq5wri
 8r7K1q+hYCqXDdjNMtVpHMBlhhpI9eX081Y6q9NDpmWpdzMr2SNw3sclCmvXtXzmkRAQ
 T3kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VxmH23UIh9bgluRuYOUap2wtF++JOc1rV8xUaBpEJ7o=;
 b=CcKFKXrhPJ7qxGye6HVvRAKGGoda7/Xrm+GPgMp1L8zn6zfBwcbjBWLkWNsqQeabLC
 iPSV4XWHpv4xEFQ2jVWQ6O+HPuKuHt2Dl1LGCHwVMaUa3VA9MAEf6W8CbFPszNOWly32
 jnOvqN1z9Db53oXdrhR7P7X1l5p+/EvC/QrKUsYW8gO8p/F54A4dXQgIKvp5xC+CpDtG
 On8pdXPoJHEqyL/vB1D70myRvQanLVWjAPOIy7Q7l6thZ0fMxvQ7mQweMHLYUVs4bL61
 Sz7F6ebSPV6p7iyJB1sYazEZlQJsVHH2Z/UB7FWRgXl9LWZ/G66g/2Iqa+Np8op5mP2A
 d9/Q==
X-Gm-Message-State: APjAAAX+iIqXy8ZTgFkCbYeh6MG1gZn0wWTbpgZvsFoi3jdZIcsfhtEV
 sHFHSKPwRXoNyG12lHVLsHMbrPok88Bq1Ulxu2ngiw==
X-Google-Smtp-Source: APXvYqxRXH/rJzDlko//25OMTKBgGjGCR6O8nuS4Pzy2+D1/twDFtUQrSr+vpmJGm+Wy2gjuADPo9QY7+Ec7wJ2kGjw=
X-Received: by 2002:a05:6102:2041:: with SMTP id
 q1mr6523378vsr.15.1573755370771; 
 Thu, 14 Nov 2019 10:16:10 -0800 (PST)
MIME-Version: 1.0
References: <20191031195705.36916-1-samitolvanen@google.com>
 <20191114165730.GC5158@willie-the-truck>
In-Reply-To: <20191114165730.GC5158@willie-the-truck>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Thu, 14 Nov 2019 10:15:59 -0800
Message-ID: <CABCJKueJ-J5MPj4-qL230iM3Bu8Qc_4wsViRgt2nJD81_EVJLw@mail.gmail.com>
Subject: Re: [RESEND PATCH v2] arm64: lse: fix LSE atomics with LLVM's
 integrated assembler
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_101613_409795_4E10FE50 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 8:57 AM Will Deacon <will@kernel.org> wrote:
>
> On Thu, Oct 31, 2019 at 12:57:05PM -0700, Sami Tolvanen wrote:
> > Unlike gcc, clang considers each inline assembly block to be independent
> > and therefore, when using the integrated assembler for inline assembly,
> > any preambles that enable features must be repeated in each block.
> >
> > This change defines __LSE_PREAMBLE and adds it to each inline assembly
> > block that has LSE instructions, which allows them to be compiled also
> > with clang's assembler.
>
> Any chance LLVM can be fixed to avoid this bodge in the kernel?

Unfortunately, LLVM developers consider this to be a feature, not a
bug, so it's unlikely that we can change how the integrated assembler
works:

  https://bugs.llvm.org/show_bug.cgi?id=19749

Note that this patch is similar to be604c616ca7 ("arm64: sysreg: Make
mrs_s and msr_s macros work with Clang and LTO"), which worked around
the same issue in the sysreg code.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
