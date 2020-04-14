Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 432701A8B50
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 21:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N/YtwdZ3hVpjoepKZOLPbFKrYmGHQjNo+mOxw/Fv9Wk=; b=MB8T5eHKJfA4zqT+cJnSkB/ce
	IWR0O3sJMsasg4el2yAFkduza6P8de3tKU9OYedhZM/kJve27jfSIRf7lxa75AwAEv/WVbu90A2nL
	muV2iFjcbDXyVrtFZquw4PYoVJnxL0KqvSEYBNV/Cn4rhOOunVkyzqb1cE5jLIMzzk6DwxWmHiwlA
	neoSF5e/xG7rxJqDPhvrK1E7x6P3dumxtGe6Vz2n7+ThymCTjGrq50vFOe7FLvJpeMULn4aPAcfc0
	Co2qG7l5L1d54UxhdUsLwdo+QjYQL1weeRSFBlcr/JrCQoPA50Zawx9dAxp/OlJqIOHdWl6+zrV9D
	OY066Y3GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jORTZ-0008Ec-5R; Tue, 14 Apr 2020 19:44:05 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jORTQ-0008Da-3S
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 19:43:58 +0000
Received: from sslproxy01.your-server.de ([78.46.139.224])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jORSs-0002KH-Mm; Tue, 14 Apr 2020 21:43:22 +0200
Received: from [178.195.186.98] (helo=pc-9.home)
 by sslproxy01.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jORSs-00044G-5p; Tue, 14 Apr 2020 21:43:22 +0200
Subject: Re: [PATCH bpf] arm, bpf: Fix offset overflow for BPF_MEM BPF_DW
To: Luke Nelson <lukenels@cs.washington.edu>, bpf@vger.kernel.org
References: <20200409221752.28448-1-luke.r.nels@gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <0eb3fe81-973b-1a96-df00-a68c74b84eba@iogearbox.net>
Date: Tue, 14 Apr 2020 21:43:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200409221752.28448-1-luke.r.nels@gmail.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25782/Tue Apr 14 13:57:42 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_124356_141444_DFA5863F 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.133.104.62 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Song Liu <songliubraving@fb.com>, linux-kernel@vger.kernel.org,
 Luke Nelson <luke.r.nels@gmail.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@chromium.org>,
 Shubham Bansal <illusionist.neo@gmail.com>, Andrii Nakryiko <andriin@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/10/20 12:17 AM, Luke Nelson wrote:
> This patch fixes an incorrect check in how immediate memory offsets are
> computed for BPF_DW on arm.
> 
> For BPF_LDX/ST/STX + BPF_DW, the 32-bit arm JIT breaks down an 8-byte
> access into two separate 4-byte accesses using off+0 and off+4. If off
> fits in imm12, the JIT emits a ldr/str instruction with the immediate
> and avoids the use of a temporary register. While the current check off
> <= 0xfff ensures that the first immediate off+0 doesn't overflow imm12,
> it's not sufficient for the second immediate off+4, which may cause the
> second access of BPF_DW to read/write the wrong address.
> 
> This patch fixes the problem by changing the check to
> off <= 0xfff - 4 for BPF_DW, ensuring off+4 will never overflow.
> 
> A side effect of simplifying the check is that it now allows using
> negative immediate offsets in ldr/str. This means that small negative
> offsets can also avoid the use of a temporary register.
> 
> This patch introduces no new failures in test_verifier or test_bpf.c.
> 
> Fixes: c5eae692571d6 ("ARM: net: bpf: improve 64-bit store implementation")
> Fixes: ec19e02b343db ("ARM: net: bpf: fix LDX instructions")
> Co-developed-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
