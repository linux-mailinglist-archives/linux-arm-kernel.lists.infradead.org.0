Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 657251A2C27
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 01:17:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sPXml9pyy92onyoUG1R4zHRtYkz6YwJAwq0tThmARLQ=; b=Tbu3XL5wJoUEzLn1SsAPOCFOj
	EQo8FODOIkaxy7hGWvV2tLSGHocZYx4cThiILVKTj6EbmBxBKKmAoDJNSMX1X7G1VpmMqM1WunjEK
	qtBlqNMbnWtkJd134s8pRvdI4fOnyGMBxG+slecGE2vVsPJIoirwN+QbxV4O+aGFcNLWU/ZduzNpi
	9hOtMUuxU7bR3pSON0VTn7F+FSMAATTylueBZEtYzVkOhPxYQDUMwanFgRhX7SYefLKeBIC6zTOeW
	JxLm0PSyJkyH/A0UYGvWNOatwWDNL8KZ6Dnsle5cDWvmnAVVPHDfBtcEnhI7rRTbo7w//oG+6V2Qe
	BUx5aYwgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMJwt-0003gm-Sc; Wed, 08 Apr 2020 23:17:35 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMJwn-0003gG-FR
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 23:17:31 +0000
Received: from sslproxy01.your-server.de ([78.46.139.224])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jMJwM-0006LK-Qf; Thu, 09 Apr 2020 01:17:02 +0200
Received: from [178.195.186.98] (helo=pc-9.home)
 by sslproxy01.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jMJwM-000JK4-93; Thu, 09 Apr 2020 01:17:02 +0200
Subject: Re: [PATCH bpf] arm: bpf: Fix bugs with ALU64 {RSH, ARSH} BPF_K shift
 by 0
To: Luke Nelson <lukenels@cs.washington.edu>, bpf@vger.kernel.org
References: <20200408181229.10909-1-luke.r.nels@gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <65cdd042-c037-d7c8-e6e7-bcfb6e8b00cb@iogearbox.net>
Date: Thu, 9 Apr 2020 01:17:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200408181229.10909-1-luke.r.nels@gmail.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25776/Wed Apr  8 14:56:40 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_161729_514366_052A485F 
X-CRM114-Status: GOOD (  12.86  )
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
 Russell King <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, Yonghong Song <yhs@fb.com>,
 KP Singh <kpsingh@chromium.org>, Shubham Bansal <illusionist.neo@gmail.com>,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>,
 Xi Wang <xi.wang@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/8/20 8:12 PM, Luke Nelson wrote:
> The current arm BPF JIT does not correctly compile RSH or ARSH when the
> immediate shift amount is 0. This causes the "rsh64 by 0 imm" and "arsh64
> by 0 imm" BPF selftests to hang the kernel by reaching an instruction
> the verifier determines to be unreachable.
> 
> The root cause is in how immediate right shifts are encoded on arm.
> For LSR and ASR (logical and arithmetic right shift), a bit-pattern
> of 00000 in the immediate encodes a shift amount of 32. When the BPF
> immediate is 0, the generated code shifts by 32 instead of the expected
> behavior (a no-op).
> 
> This patch fixes the bugs by adding an additional check if the BPF
> immediate is 0. After the change, the above mentioned BPF selftests pass.
> 
> Fixes: 39c13c204bb11 ("arm: eBPF JIT compiler")
> Co-developed-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>

Yikes, thanks for fixing, applied. Looks like noone was running BPF kselftests
on arm32 for quite a while. :(

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
