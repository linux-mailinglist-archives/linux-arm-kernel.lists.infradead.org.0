Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A581C9C39
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 22:22:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=il5CXMJGKB/axsr1XyIm3uf4qItnEu6i1mvFksaqBLo=; b=bD5Wh2BQNC9eUlenMCH+gY5ju
	IgoSQCK+PVv4xDzMzLBHJeheEnopHdFNWzW6GTsumDVm9WDXcqkav9xLPFWlG+Pe5u3ADP1zlfShn
	wBaP7MjpVRRSGIOBFINu7GGaNLwK9pLG5IVqifBbzINVM1FlCFW1+D2G4K26fGPxojj8KmoQ9QUpk
	zdXwCWqTCel0a6+iiYB4JXChdMnj6lx8vof1Wcz0hreWrnVAIHetDmQxKHdPigVxCeK9Hh5+lmfhk
	1J1T/Y5T6wU2XclkpGtMYPmm/ORomUQmhE8eIFQ//J9D8prSmy5pwxCGaCFG/IK/Rovz0Y+gV9IM1
	K+/toabMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWn2W-0004Hy-Ip; Thu, 07 May 2020 20:22:40 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWn2Q-0004HT-1B
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 20:22:35 +0000
Received: from sslproxy05.your-server.de ([78.46.172.2])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jWn26-0001Dl-GF; Thu, 07 May 2020 22:22:14 +0200
Received: from [178.195.186.98] (helo=pc-9.home)
 by sslproxy05.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jWn21-0002Yj-BR; Thu, 07 May 2020 22:22:09 +0200
Subject: Re: [RFC PATCH bpf-next 3/3] bpf, arm64: Optimize ADD,SUB,JMP BPF_K
 using arm64 add/sub immediates
To: Luke Nelson <lukenels@cs.washington.edu>, bpf@vger.kernel.org
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
 <20200507010504.26352-4-luke.r.nels@gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <f93a921e-58d2-b7c4-0d3f-b76091c6b208@iogearbox.net>
Date: Thu, 7 May 2020 22:22:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200507010504.26352-4-luke.r.nels@gmail.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25805/Thu May  7 14:14:46 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_132234_073343_F479AAE7 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.133.104.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Zi Shen Lim <zlim.lnx@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, clang-built-linux@googlegroups.com,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, Xi Wang <xi.wang@gmail.com>,
 Luke Nelson <luke.r.nels@gmail.com>, Torsten Duwe <duwe@suse.de>,
 KP Singh <kpsingh@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Enrico Weigelt <info@metux.net>,
 Martin KaFai Lau <kafai@fb.com>,
 Christoffer Dall <christoffer.dall@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/7/20 3:05 AM, Luke Nelson wrote:
> The current code for BPF_{ADD,SUB} BPF_K loads the BPF immediate to a
> temporary register before performing the addition/subtraction. Similarly,
> BPF_JMP BPF_K cases load the immediate to a temporary register before
> comparison.
> 
> This patch introduces optimizations that use arm64 immediate add, sub,
> cmn, or cmp instructions when the BPF immediate fits. If the immediate
> does not fit, it falls back to using a temporary register.
> 
> Example of generated code for BPF_ALU64_IMM(BPF_ADD, R0, 2):
> 
> without optimization:
> 
>    24: mov x10, #0x2
>    28: add x7, x7, x10
> 
> with optimization:
> 
>    24: add x7, x7, #0x2
> 
> The code could use A64_{ADD,SUB}_I directly and check if it returns
> AARCH64_BREAK_FAULT, similar to how logical immediates are handled.
> However, aarch64_insn_gen_add_sub_imm from insn.c prints error messages
> when the immediate does not fit, and it's simpler to check if the
> immediate fits ahead of time.
> 
> Co-developed-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>

Same here:

Acked-by: Daniel Borkmann <daniel@iogearbox.net>

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
