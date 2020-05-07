Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E547C1C7FA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 03:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QYOopRR47CVrkozAWAK/F2We8pSaRF1u6WZn0/CAQX8=; b=iO5
	PU2/cz1CgDBafA7T8j6XLQr3iZNNrRsUYNkyv2BeYbUrNVYTj+cu/0O7trv4w2W8qQsOXf34jCEL7
	xV3rEQnye1nGs/VMtslvjmaGjrd/Fdy40jo4YtsSyNXaHUn28k7UZIalL82J0CmbCmsZLL1uh4PzT
	IhK9rE9QUQsv5QXVLR1cDMsBAJogYkseKZLwU0R+99n/qtHdT4qgnZ3k2SCFLSvhaSDJZoMJMjPog
	/thh/sWl2kFe+A9wZcJn95D2noHeXySAhoW2BOt9tWLG6lpQ3foJ8B9KYCZnaBir3BJnanA4ApEbm
	r2/pKwma/iC5adyyHVoMt8lqEU5IrYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUyX-00017P-LK; Thu, 07 May 2020 01:05:21 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUyO-00015s-RO
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 01:05:14 +0000
Received: by mail-pj1-x1042.google.com with SMTP id t9so1894320pjw.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 18:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id;
 bh=fDAxUkCWnLLNYKyqcom5jHpqbxcvX3Nwbyo0Ip8LuRk=;
 b=h3+IYrojdj8XrOT2yXppvSlG8FlwZRoZQROyHHbykmQH5tWOadvP0qK0EZc5qCfLI6
 IqjGPMkJRzQr+j+pWak8kvYgpGx4wUuuXT4NMxnU17wy8R779cxPMzCxmLH2fnU1Y8il
 x/zIrMjy3HjgIAu+PpqzTq5b3BIs9elVKsoUU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fDAxUkCWnLLNYKyqcom5jHpqbxcvX3Nwbyo0Ip8LuRk=;
 b=bPV3mBxNZ1hC+Mw1Tuu4sEhReP3zjRXyootYfwusKiTNJY3nlVGgtyIKRMgTCbS6jt
 +yNNPrXPSaCKT501w12GkmTO26kRE24MHJ+4au2LQaNDovBCvZUVrzr2g4Uo9oOdRne9
 tfZXIk2ZLVA6avYFOxwVb3C45gDl47/u7uzfiIVzAZk8XZYB5v9i6Fb2Z3fNjwa2NrGV
 o2TuY6mhq6DqVLkkroZufg7dMet2kh1I2MvL9WD8DXrdmjTG0ZP1Qt1k8jKxH3NyedjP
 ypLho3ObvPYMdOMy0/UkkhsGuNdohiq0Ppqsx7kGdSmFvJQfy+qe9UHlTU2nd/fUGATJ
 b/eQ==
X-Gm-Message-State: AGi0PuZJ0DZVFifowF98/1w+YZWif1Dlf3wUEJLM5+mHkfYDUNxjHWZb
 T3UBD7TP4zoxX03Pgeh9dQtY7yjLwIszaw==
X-Google-Smtp-Source: APiQypILpdn/n4nXzF+P/+vZkv7wDuleI/+evcTuS8G2sV3tj+B+qfsjlo61Cp/3MJ9nD2qqAg7YWA==
X-Received: by 2002:a17:90a:d153:: with SMTP id
 t19mr13166154pjw.42.1588813510513; 
 Wed, 06 May 2020 18:05:10 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id ev5sm6165250pjb.1.2020.05.06.18.05.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 18:05:09 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [RFC PATCH bpf-next 0/3] arm64 BPF JIT Optimizations
Date: Wed,  6 May 2020 18:05:00 -0700
Message-Id: <20200507010504.26352-1-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_180512_915992_77CD8672 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Marc Zyngier <maz@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, clang-built-linux@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, Zi Shen Lim <zlim.lnx@gmail.com>,
 Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>,
 Xi Wang <xi.wang@gmail.com>, Luke Nelson <luke.r.nels@gmail.com>,
 KP Singh <kpsingh@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>,
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

Luke Nelson (3):
  arm64: insn: Fix two bugs in encoding 32-bit logical immediates
  bpf, arm64: Optimize AND,OR,XOR,JSET BPF_K using arm64 logical
    immediates
  bpf, arm64: Optimize ADD,SUB,JMP BPF_K using arm64 add/sub immediates

 arch/arm64/kernel/insn.c      |  6 ++-
 arch/arm64/net/bpf_jit.h      | 22 +++++++++++
 arch/arm64/net/bpf_jit_comp.c | 73 ++++++++++++++++++++++++++++-------
 3 files changed, 85 insertions(+), 16 deletions(-)

Cc: Xi Wang <xi.wang@gmail.com>

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
