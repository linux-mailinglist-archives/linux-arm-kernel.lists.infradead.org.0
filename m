Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA7E1C9C13
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 22:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AWsA5EizYmDMJ76no44T2RL06jJ08chMWnHf4Ml0KeA=; b=HvIznab9eqhQfFrhRzrsx4fJO
	v3mhy79/n45DhPNYerJlqMcLclq5YCkiciqKq8KoSaNZXOLXGmUSWHotEkRHL36bKoE00/DtKb+yK
	Xaftu3XvRJ3XNWN+mPg7QffV0LNxfE55c4tfAv2TyLmdMCfghfq1/Ugu33+gOTCfDhsj8YWi0535O
	sFAeQHdSOQ8+g1iToQyTm3Ji6Hu4DDlK/k9SYgtC3Adh0M/TrsbDU/FUpEwHF6DLlfodDNjaKjH5x
	t0ew7WyEcnvt2ofM6+zca0yr1bAP81y2NvWtls6fWG1a+ZjegW0IMZAFpImy9swactB/n+310NwBC
	6k4dP2Pcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWmzx-0001Rf-J0; Thu, 07 May 2020 20:20:01 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWmzq-0001R9-3d
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 20:19:55 +0000
Received: from sslproxy05.your-server.de ([78.46.172.2])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jWmzZ-0000uo-43; Thu, 07 May 2020 22:19:37 +0200
Received: from [178.195.186.98] (helo=pc-9.home)
 by sslproxy05.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jWmzY-000Pq5-CQ; Thu, 07 May 2020 22:19:36 +0200
Subject: Re: [RFC PATCH bpf-next 2/3] bpf, arm64: Optimize AND,OR,XOR,JSET
 BPF_K using arm64 logical immediates
To: Luke Nelson <lukenels@cs.washington.edu>, bpf@vger.kernel.org
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
 <20200507010504.26352-3-luke.r.nels@gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <2b05950b-5f7a-e5e7-81fe-27703c3ef77f@iogearbox.net>
Date: Thu, 7 May 2020 22:19:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200507010504.26352-3-luke.r.nels@gmail.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25805/Thu May  7 14:14:46 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_131954_145159_AAECE330 
X-CRM114-Status: GOOD (  14.21  )
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
 Catalin Marinas <catalin.marinas@arm.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>, Xi Wang <xi.wang@gmail.com>,
 Luke Nelson <luke.r.nels@gmail.com>, Alexios Zavras <alexios.zavras@intel.com>,
 KP Singh <kpsingh@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Enrico Weigelt <info@metux.net>,
 Martin KaFai Lau <kafai@fb.com>,
 Christoffer Dall <christoffer.dall@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/7/20 3:05 AM, Luke Nelson wrote:
> The current code for BPF_{AND,OR,XOR,JSET} BPF_K loads the immediate to
> a temporary register before use.
> 
> This patch changes the code to avoid using a temporary register
> when the BPF immediate is encodable using an arm64 logical immediate
> instruction. If the encoding fails (due to the immediate not being
> encodable), it falls back to using a temporary register.
> 
> Example of generated code for BPF_ALU32_IMM(BPF_AND, R0, 0x80000001):
> 
> without optimization:
> 
>    24: mov  w10, #0x8000ffff
>    28: movk w10, #0x1
>    2c: and  w7, w7, w10
> 
> with optimization:
> 
>    24: and  w7, w7, #0x80000001
> 
> Since the encoding process is quite complex, the JIT reuses existing
> functionality in arch/arm64/kernel/insn.c for encoding logical immediates
> rather than duplicate it in the JIT.
> 
> Co-developed-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>

Great find, thanks! Given Will wanted to queue them:

Acked-by: Daniel Borkmann <daniel@iogearbox.net>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
