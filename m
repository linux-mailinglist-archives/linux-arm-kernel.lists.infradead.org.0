Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 012241CDA8D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 14:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O+PtkyQ5WANigAUD0sZZs8rh+GNSLMOuseV8RMGjY8M=; b=ZVk/w9cbOvIBF3
	HM88ton52FS5ix457t5udFDgGyhKl9bTYJCJrKbv/1QQA/qdkU+njPDw77o8/5KppRos2Hdsrh7so
	kD/+Uv62/Nu0pVgyaxsikIk+xSMW4HknuvoT3KF17kuQaGDMNDYNPqpqfQcbJmGGGEJ9lQRbjGgje
	t3eKj/BXxLLGawNJWBwqfS81TWHxkKFaKrrKtpq+I+fGKE5W2jRPRoxJaL2Sg5aR+HLZpXGlTJXA1
	tc30p/+ZHWAvk1KNp6yc1FLy9kGoHvs3lgNXC55du0TYpGGk7l41CGI/V1oXGhiZQ4XDcAif+SEZq
	98KUfgaRwaTl/JZNu9HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7y2-0000U3-Ll; Mon, 11 May 2020 12:55:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7xr-0000TH-Dj
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 12:55:25 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8853F20722;
 Mon, 11 May 2020 12:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589201722;
 bh=fI1SN20EX/4GtN+QbDDKwe0uGIQ2raxx/8QClojgIe8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=etOzo4t5b4u6f5ics6j3+lhzkrKUN/2V1AICzngaF8C0uUKuW8Mg5PQfavbLP/Ovc
 sB1hhGd6UUAkEK/1bnpkLITxHhaSbNAe+g5FLXAxJwbL26/zxpkAUIqj2BqmopS1Ia
 y9wb2cFrwTuWkWbxBEuqFfsqITcTFm8x4t6TYtAw=
From: Will Deacon <will@kernel.org>
To: Luke Nelson <lukenels@cs.washington.edu>,
	bpf@vger.kernel.org
Subject: Re: [PATCH bpf-next v2 0/3] arm64 BPF JIT Optimizations
Date: Mon, 11 May 2020 13:55:08 +0100
Message-Id: <158919609995.133008.6274359604607907270.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508181547.24783-1-luke.r.nels@gmail.com>
References: <20200508181547.24783-1-luke.r.nels@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_055523_493539_F8EA68BD 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 catalin.marinas@arm.com, Alexei Starovoitov <ast@kernel.org>,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 8 May 2020 11:15:43 -0700, Luke Nelson wrote:
> This patch series introduces several optimizations to the arm64 BPF JIT.
> The optimizations make use of arm64 immediate instructions to avoid
> loading BPF immediates to temporary registers, when possible.
> 
> In the process, we discovered two bugs in the logical immediate encoding
> function in arch/arm64/kernel/insn.c using Serval. The series also fixes
> the two bugs before introducing the optimizations.
> 
> [...]

Applied to arm64 (for-next/bpf), thanks!

[1/3] arm64: insn: Fix two bugs in encoding 32-bit logical immediates
      https://git.kernel.org/arm64/c/579d1b3faa37
[2/3] bpf, arm64: Optimize AND,OR,XOR,JSET BPF_K using arm64 logical immediates
      https://git.kernel.org/arm64/c/fd49591cb49b
[3/3] bpf, arm64: Optimize ADD,SUB,JMP BPF_K using arm64 add/sub immediates
      https://git.kernel.org/arm64/c/fd868f148189

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
