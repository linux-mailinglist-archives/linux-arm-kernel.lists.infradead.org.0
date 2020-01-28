Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 130AC14AE02
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 03:15:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:MIME-Version:Message-Id:Date:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y7sRiXNQQM3Bcob3VGDql8yXG0CYBUagmcIXhUNLx3E=; b=pCXKjfEaslKcX+
	HwcMQHmD6P1EqkpoTpnOGrxJ6G0ErLHZXT4rZneV2Ym4zpSh3C4A5uPxlTsJM/+MkcHqplSWfDprK
	UhUuLNSEryzbeJ/GjGLA7GeRAQhGLdc+ERNvEKo9MOb6xruGwIKXh7vIWMVmGMb3zdzZDg+h3aGQQ
	QrG2ijo423AJTFAD2NUQGOmN6EhnLPVaqAx0lADVITMACrBIPhVFDsQ/Qkbmp1c3svL5qa+2MxgVs
	L7OzBqUXL/EieIkatlMLIhdvLCgNDYBxYb9RLCn9OWgJCqDGACASlr+BX6VZz22svAaCjhrI6HppW
	vfT3jJjIYiGRs7fiBBvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwGP5-0008CQ-IK; Tue, 28 Jan 2020 02:14:59 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwGOv-0008BP-Qd
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 02:14:51 +0000
Received: by mail-pf1-x436.google.com with SMTP id 185so2048797pfv.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 18:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to; bh=DrrSxaqg+xMHJET+xxCFd4AzKeXkcnr9cON2fZed2UM=;
 b=RF9nMOM9cUcTpHOes6fCDFot2ORVBBSCK8xX151vp4yLYwGKEqjk1LuTUbuy/rYMUo
 OB7cLFZX3tiVGf3mh7j55tR2V/wRiwGIYn0Pp4DcnTb7qRrxNvUo99NGQVrNzDg5pkK/
 sSYcAjedIPNO4Uerbz8D6UaaqPtAyKJk0C0pm8A3nO3nfWqjC6PdUCrzye4Xbkpikeg8
 UOjEUmWm5kuJ9uwJphYlQDPai4Dm0JE5K5m3CgLTreFAFGEF7ZvE2dYE1D33MvPeCtik
 jcrDB1UucvsBipSDT9pfMlydmZVMDbaV1fws6wYK9YgRq8dTq5Il0or6opZDw4YxWxwf
 oYYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=DrrSxaqg+xMHJET+xxCFd4AzKeXkcnr9cON2fZed2UM=;
 b=Nsw761Gwu8nfLeEHKhKmi2ifEjDSvK+da/eR8nei0Xe6wi+bswd6tUr2JFhbvI2v25
 wSD8LnjOCBfkOwNJq+5sWRRkrspFXXAVCunrNJj2LMK81V3Iit5VJqvYfdJ8nG36esG9
 fepVomRCntnrs2DaAOT1Vm1uNgZ9jrMv9WXqSpVDoL9qOI/gEHfUcrvRLpWI4LwUbnMO
 +kTrg8xXNZDhoDR5Edhg8oER0albJT/43GF12Qabs+6dMcGpWTX9nZEswye6sNjb2N4n
 EK/OcG/AV2bTD/EtRfm3uJtlBOxiU24ujkK2CWdTTp62T7kw1dCheX4AmI9XtgIUvxgs
 cpYA==
X-Gm-Message-State: APjAAAV3Au0lYMRbhIPHp+NS7J9FnLtx0RotWVNPvHaj9+86yxWzwbx2
 ouUS81O9Op+CifA747kxJ6EpPg==
X-Google-Smtp-Source: APXvYqzQaE82BkrwN8enKVWh7LhvYVblBpdtkI68w4zgo2qGK/PKGkjLJeYUCgcwMaQr9ym7GELY6A==
X-Received: by 2002:a63:ff5c:: with SMTP id s28mr22418848pgk.196.1580177685323; 
 Mon, 27 Jan 2020 18:14:45 -0800 (PST)
Received: from localhost ([216.9.110.8])
 by smtp.gmail.com with ESMTPSA id b15sm17010169pft.58.2020.01.27.18.14.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 18:14:44 -0800 (PST)
Subject: arm64: bpf: Elide some moves to a0 after calls
Date: Mon, 27 Jan 2020 18:11:41 -0800
Message-Id: <20200128021145.36774-1-palmerdabbelt@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
MIME-Version: 1.0
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: Bjorn Topel <bjorn.topel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_181449_864083_5EFF228E 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:436 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: songliubraving@fb.com, andriin@fb.com, daniel@iogearbox.net,
 kernel-team@android.com, zlim.lnx@gmail.com, shuah@kernel.org,
 Palmer Dabbelt <palmerdabbelt@google.com>, ast@kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org,
 catalin.marinas@arm.com, yhs@fb.com, bpf@vger.kernel.org, will@kernel.org,
 kafai@fb.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's four patches here, but only one of them actually does anything.  The
first patch fixes a BPF selftests build failure on my machine and has already
been sent to the list separately.  The next three are just staged such that
there are some patches that avoid changing any functionality pulled out from
the whole point of those refactorings, with two cleanups and then the idea.

Maybe this is an odd thing to say in a cover letter, but I'm not actually sure
this patch set is a good idea.  The issue of extra moves after calls came up as
I was reviewing some unrelated performance optimizations to the RISC-V BPF JIT.
I figured I'd take a whack at performing the optimization in the context of the
arm64 port just to get a breath of fresh air, and I'm not convinced I like the
results.

That said, I think I would accept something like this for the RISC-V port
because we're already doing a multi-pass optimization for shrinking function
addresses so it's not as much extra complexity over there.  If we do that we
should probably start puling some of this code into the shared BPF compiler,
but we're also opening the doors to more complicated BPF JIT optimizations.
Given that the BPF JIT appears to have been designed explicitly to be
simple/fast as opposed to perform complex optimization, I'm not sure this is a
sane way to move forward.

I figured I'd send the patch set out as more of a question than anything else.
Specifically:

* How should I go about measuring the performance of these sort of
  optimizations?  I'd like to balance the time it takes to run the JIT with the
  time spent executing the program, but I don't have any feel for what real BPF
  programs look like or have any benchmark suite to run.  Is there something
  out there this should be benchmarked against?  (I'd also like to know that to
  run those benchmarks on the RISC-V port.)
* Is this the sort of thing that makes sense in a BPF JIT?  I guess I've just
  realized I turned "review this patch" into a way bigger rabbit hole than I
  really want to go down...

I worked on top of 5.4 for these, but trivially different versions of the
patches applied on Linus' master a few days ago when I tried.  LMK if those
aren't sane places to start from over here, I'm new to both arm64 and BPF so I
might be a bit lost.

[PATCH 1/4] selftests/bpf: Elide a check for LLVM versions that can't
[PATCH 2/4] arm64: bpf: Convert bpf2a64 to a function
[PATCH 3/4] arm64: bpf: Split the read and write halves of dst
[PATCH 4/4] arm64: bpf: Elide some moves to a0 after calls


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
