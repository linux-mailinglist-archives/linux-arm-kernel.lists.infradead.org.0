Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B30AE1C3F55
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s8+Wc6o1MAzxvRgeVDIt4GJXyJdf8//iPUZ8Ys5A3wE=; b=KzuZER6kkpx0IF0OJ3wJL7x8D
	sUyMWWngDHHfmIXMj/pn0a2bGXFpF85A6PzKolGEP9yIDfYrrHsfRjtIbFYKTdoGn8AZ53OTESDRa
	TJ39sCP0ZMZVtRBRKHCtB2+HFAJc3O4GfHkxKZ/pgxWb4hf3cMtotPJwBeR8bRwfOZ7+bd2Jvchl9
	lOHNuhGTGRUpq4EEgkQyNzFMK8cQeFA5aTBzaNZj9Mk8sNiZuXFeX+oSpaJQYvtP/m+/GfHlBZi/r
	rPcgfzT67E2erGXn3i5VAOpGKt/QDz0MIHZRpWE4VEsw4ThR+xeS5EcOTCpE5j170n4XXkvOcGKXY
	LzpvxTcoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVdb6-00021Y-1Y; Mon, 04 May 2020 16:05:36 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVday-0001wQ-ER
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:05:30 +0000
Received: from sslproxy03.your-server.de ([88.198.220.132])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jVdaZ-0004zi-1W; Mon, 04 May 2020 18:05:03 +0200
Received: from [178.195.186.98] (helo=pc-9.home)
 by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jVdaY-000HF6-Hv; Mon, 04 May 2020 18:05:02 +0200
Subject: Re: [PATCH bpf 0/2] bpf, arm: Small JIT optimizations
To: Luke Nelson <lukenels@cs.washington.edu>, bpf@vger.kernel.org
References: <20200501020210.32294-1-luke.r.nels@gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <c59f4067-6334-2dc4-a37b-b1e953663897@iogearbox.net>
Date: Mon, 4 May 2020 18:05:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200501020210.32294-1-luke.r.nels@gmail.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25802/Mon May  4 14:12:31 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_090528_483549_07C3C062 
X-CRM114-Status: GOOD (  11.05  )
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
 Russell King <linux@armlinux.org.uk>, Yonghong Song <yhs@fb.com>,
 KP Singh <kpsingh@chromium.org>, Shubham Bansal <illusionist.neo@gmail.com>,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/1/20 4:02 AM, Luke Nelson wrote:
> As Daniel suggested to us, we ran our formal verification tool, Serval,
> over the arm JIT. The bugs we found have been patched and applied to the
> bpf tree [1, 2]. This patch series introduces two small optimizations
> that simplify the JIT and use fewer instructions.
> 
> [1] https://lore.kernel.org/bpf/20200408181229.10909-1-luke.r.nels@gmail.com/
> [2] https://lore.kernel.org/bpf/20200409221752.28448-1-luke.r.nels@gmail.com/
> 
> Luke Nelson (2):
>    bpf, arm: Optimize emit_a32_arsh_r64 using conditional instruction
>    bpf, arm: Optimize ALU ARSH K using asr immediate instruction
> 
>   arch/arm/net/bpf_jit_32.c | 14 +++++++++-----
>   arch/arm/net/bpf_jit_32.h |  2 ++
>   2 files changed, 11 insertions(+), 5 deletions(-)
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
