Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C92A1CB6E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 20:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3nXP9Zl1Y6QrU7m6UNVFEJsFpYX9nM1jcBPYpaUyOc0=; b=K6v
	Go9d9XdgYNPKVQ4dS8DH4VKkzKjVgJpDtrUBUSLOz2fi3ux7vBeMME4c99N5Lq+v92z9f6QHHdPWK
	lRT4hqvIVCqVXuTFvvNsohHLWyPe+R3IzkouEBERncfVLHTP3jNjtmF1q1NVEYOZamVxt64081zqy
	otRbqXtufV79BqvNFSA2BnPaF+mMb7i44cyPXol46K1REbvRHetT9M++Pwkwqx8zc3I5qjr4JoS8w
	18vXA8Cw7/dji4SeN97JGj90IA687w00ySfM/Lz+miFkvKzcRVlcvrndWCMgpq+cVNQ+Inya7p+Mg
	TiaBG+dYUYWiQHVUWRfhkI75o0LHqYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX7Xd-0007gi-4x; Fri, 08 May 2020 18:16:09 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX7XU-0007fm-3P
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 18:16:01 +0000
Received: by mail-pl1-x642.google.com with SMTP id t7so1097746plr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 11:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id;
 bh=SpXTpjywTMwNg9TSFFzsjIj59xv1CBVoV4EOvzTnkkE=;
 b=OUaIAWfx/D+534tHqEjPc5LhTV0i1FVt0Kt5hR3t1Yp7olGvCqp/H+sefJAIfUfMTo
 lsTfQ0r47jEml60qGikpE/Q4n5MWvrp5ySbMDcj83f4zkSJNh3q1ELFkn5xeYt41li+N
 Pg4VgAJ9/SlQaHUatqfDxchdOtITEwVOUOSPI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=SpXTpjywTMwNg9TSFFzsjIj59xv1CBVoV4EOvzTnkkE=;
 b=WXJZCKrko150QuKaRRWkud3sd88i+qzabIIYjqJ0qsX/DqW6BwNikKDOhMMN88SeJv
 bVNS/p7N2LaScjG98NjTKGZF/9yP+0b2kx9ujrzkKm8BCdiyNWPdg7ujOL09YEpmHVez
 BoAfFyDRw8ymaiAuOiRQFmx6tujqw0+bP06C/Gn6BFohxyPl3faU/cu4jWsPCydeib4M
 WKd1p83fechUosYLchprcbd5MG7mf2Jpc9/u1X6DDZWmfS4tYuF7nH/3NobySOVc4RPl
 J5ScnMx6brmhZlo49pouQ5XlT7TClKJjLyDpZXN1sRBbGzfLsN8DPuFWHhNRedKn+0F2
 nVRg==
X-Gm-Message-State: AGi0PuaH2ZoNeWa4dHklPLaRUpmBwmnjxGe5XxYdg5ekqbxjXKoPhH9R
 L0EdaOcXk417srzcVt8IeGxNsw==
X-Google-Smtp-Source: APiQypJi63IfRpNFJ9QMnCB3d7uQo9kOMqYx5rt13VDzmIabXyqW/KZU/7OgFnhyxpXQwSQA+CUfQg==
X-Received: by 2002:a17:902:9a43:: with SMTP id
 x3mr3623548plv.332.1588961758604; 
 Fri, 08 May 2020 11:15:58 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id e11sm2349463pfl.85.2020.05.08.11.15.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2020 11:15:57 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf-next v2 0/3] arm64 BPF JIT Optimizations
Date: Fri,  8 May 2020 11:15:43 -0700
Message-Id: <20200508181547.24783-1-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_111600_164020_C407C1BC 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Marc Zyngier <maz@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, clang-built-linux@googlegroups.com,
 Zi Shen Lim <zlim.lnx@gmail.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, Xi Wang <xi.wang@gmail.com>,
 Luke Nelson <luke.r.nels@gmail.com>, Alexios Zavras <alexios.zavras@intel.com>,
 KP Singh <kpsingh@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>,
 Christoffer Dall <christoffer.dall@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series introduces several optimizations to the arm64 BPF JIT.
The optimizations make use of arm64 immediate instructions to avoid
loading BPF immediates to temporary registers, when possible.

In the process, we discovered two bugs in the logical immediate encoding
function in arch/arm64/kernel/insn.c using Serval. The series also fixes
the two bugs before introducing the optimizations.

Tested on aarch64 QEMU virt machine using test_bpf and test_verifier.

v2:
 - Cleaned up patch to insn.c.
   (Marc Zyngier, Will Deacon) 

Luke Nelson (3):
  arm64: insn: Fix two bugs in encoding 32-bit logical immediates
  bpf, arm64: Optimize AND,OR,XOR,JSET BPF_K using arm64 logical
    immediates
  bpf, arm64: Optimize ADD,SUB,JMP BPF_K using arm64 add/sub immediates

 arch/arm64/kernel/insn.c      | 14 +++----
 arch/arm64/net/bpf_jit.h      | 22 +++++++++++
 arch/arm64/net/bpf_jit_comp.c | 73 ++++++++++++++++++++++++++++-------
 3 files changed, 88 insertions(+), 21 deletions(-)

Cc: Xi Wang <xi.wang@gmail.com>

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
