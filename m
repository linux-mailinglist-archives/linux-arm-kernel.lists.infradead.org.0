Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8907311AC8F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 14:56:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKTdnoeGwRiUUvaf3NqCwg1yCPef8d5A8wEzp+2/kxg=; b=JXkjXJKJDCzQ67
	zEVVo87HoCWRRQDbAy7nkKWtWAWNAG5OLl5TPi13qUWbBJSGCePasboCLPyzLijYNd8gQlsnfvBRB
	YURkTRZanG3ktWm77BipzbnVHUr+7xIzG1ffYRjS9u+Xk3aSiHu4x5G00LPGcVePAamLGOQdoVzIV
	RCSgJ4tKhAF1lkdqQGwJficY0a+PacZTbHwFF6SM+VrZbsufpsFNqx5YAI7s78SK09goddjywFQ0B
	ZApFE4SfnVrAsHteuGRkC7m4SjEHs2OGw5nd3vz1oicUVBqn2JDGo+33snYAaFk71Nzd4UYmlhndh
	6KVp4tYWnNcgXDQh8BiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2Ti-00053I-Gk; Wed, 11 Dec 2019 13:56:34 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2Ta-00052S-HR
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 13:56:27 +0000
Received: from [2001:1620:665:0:5795:5b0a:e5d5:5944] (helo=localhost)
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1if2TP-0007p8-I9; Wed, 11 Dec 2019 14:56:15 +0100
Date: Wed, 11 Dec 2019 14:56:15 +0100
From: Daniel Borkmann <daniel@iogearbox.net>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH] ARM: net: bpf: improve prologue code sequence
Message-ID: <20191211135615.GA25011@linux.fritz.box>
References: <E1ieH2g-0004ih-Rb@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1ieH2g-0004ih-Rb@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.101.4/25660/Wed Dec 11 10:47:07 2019)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_055626_577244_1AD820B3 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Song Liu <songliubraving@fb.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>,
 Shubham Bansal <illusionist.neo@gmail.com>, Yonghong Song <yhs@fb.com>,
 bpf@vger.kernel.org, Andrii Nakryiko <andriin@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 11:17:30AM +0000, Russell King wrote:
> Improve the prologue code sequence to be able to take advantage of
> 64-bit stores, changing the code from:
> 
>   push    {r4, r5, r6, r7, r8, r9, fp, lr}
>   mov     fp, sp
>   sub     ip, sp, #80     ; 0x50
>   sub     sp, sp, #600    ; 0x258
>   str     ip, [fp, #-100] ; 0xffffff9c
>   mov     r6, #0
>   str     r6, [fp, #-96]  ; 0xffffffa0
>   mov     r4, #0
>   mov     r3, r4
>   mov     r2, r0
>   str     r4, [fp, #-104] ; 0xffffff98
>   str     r4, [fp, #-108] ; 0xffffff94
> 
> to the tighter:
> 
>   push    {r4, r5, r6, r7, r8, r9, fp, lr}
>   mov     fp, sp
>   mov     r3, #0
>   sub     r2, sp, #80     ; 0x50
>   sub     sp, sp, #600    ; 0x258
>   strd    r2, [fp, #-100] ; 0xffffff9c
>   mov     r2, #0
>   strd    r2, [fp, #-108] ; 0xffffff94
>   mov     r2, r0
> 
> resulting in a saving of three instructions.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
