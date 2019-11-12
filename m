Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C42FFF9404
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 16:21:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W8er3T/qkYUrayOr6VU720q5uVtnqc05n6ySiYkUlIg=; b=k9PEKAfwDmQ4VU
	adJoNCOS3WYT6E8ec3dmvKrhsSLXscDnvoiEIF7+WpvFvWK5/IFATawuZn5Vo5CZwqo11pQLOG6Wx
	Ot2deV4HHfSwhnl7g8jCk6UGo0Hu+LKG+eZ5piZHqIJ1oObguJKgUxzS5BxD/bpY4FqTkoGdzu7jl
	6HZt1WYM1SqG3OuUWl/11sWu4LjfiHcW9Os6dm69mClaFuKHUvITPvNxFAGKeoY7FNJiT7Bj52nPj
	tH5LSubC39dn++1VnGRwE7IdP94iFSXOO0S5J2zN7nVR0EHu08HPjMFOpbD4GggwGTqqErnbpk+l9
	uPSZF/+n2Fq1wS8wj1Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXyd-0005Bz-8v; Tue, 12 Nov 2019 15:21:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXyV-0005BK-IP; Tue, 12 Nov 2019 15:21:01 +0000
X-UUID: 52c0ba2c7e15426eacd45d86468fb3a5-20191112
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=00tgKT8PrLUAKPdNow52sT3g7JzrzlOSLvjva9U8+i4=; 
 b=aNg9ioEjCTD/UuYmx8I4EXhlGq50s4f+4LuI+vC5bWHhtG48cfYoCBtno9Ajr0h99ttHRs+Quo6opAPXAJzhd5W/64euQwWYXsntYJvEa7I32kjrnZKFUoS8NXK1PzF3Bb2k9UdKHI1T+o/YMZpffUdob4Zihe7ll5WTNcQwzjU=;
X-UUID: 52c0ba2c7e15426eacd45d86468fb3a5-20191112
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <mark-pk.tsai@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1419718016; Tue, 12 Nov 2019 07:20:55 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 07:20:54 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 23:20:52 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 12 Nov 2019 23:20:51 +0800
From: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
To: <lvqiang.huang@unisoc.com>
Subject: Re: [PATCH] ARM: fix race in for_each_frame
Date: Tue, 12 Nov 2019 23:20:51 +0800
Message-ID: <C1108AB0-9156-426F-A933-486B4F5C91CF@unisoc.com> (raw)
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191112132937.19335-1-mark-pk.tsai@mediatek.com>
References: <C1108AB0-9156-426F-A933-486B4F5C91CF@unisoc.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9C74EC90DFF44018F894B585C421D81AFE7E4C3710BA51A8D0AC3CF6940C760F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_072059_616076_60630FBF 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: kstewart@linuxfoundation.org, mike-sl.lin@mediatek.com,
 alix.wu@mediatek.com, tglx@linutronix.de, eddy.lin@mediatek.com,
 gregkh@linuxfoundation.org, yj.chiang@mediatek.com, phil.chang@mediatek.com,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 matthias.bgg@gmail.com, mark-pk.tsai@mediatek.com, info@metux.net,
 enlai.chu@unisoc.com, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> . 2019.11.12..21:31.Mark-PK Tsai <mark-pk.tsai@mediatek.com> ...
> 
> The sv_pc, which is saved in the stack, may be an invalid address
> if the target thread is running on another processor in the meantime.
> It will cause kernel crash at `ldr r2, [sv_pc, #-4]`.
> 
> Check if sv_pc is valid before use it like unwind_frame in
> arch/arm/kernel/unwind.c.
> 
> Signed-off-by: Mike-SL Lin <mike-sl.lin@mediatek.com>
> Signed-off-by: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
> ---
> arch/arm/lib/backtrace.S | 5 +++++
> 1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm/lib/backtrace.S b/arch/arm/lib/backtrace.S
> index 582925238d65..84f06381bbfb 100644
> --- a/arch/arm/lib/backtrace.S
> +++ b/arch/arm/lib/backtrace.S
> @@ -64,6 +64,11 @@ for_each_frame:    tst    frame, mask        @ Check for address exceptions
>        sub    sv_pc, sv_pc, offset    @ Correct PC for prefetching
>        bic    sv_pc, sv_pc, mask    @ mask PC/LR for the mode
> 
> +        mov    r0, sv_pc
> +        bl    kernel_text_address    @ check if sv_pc is valid
> +        cmp    r0, #0            @ if sv_pc is not kernel text
> +        beq    1006f            @ address, abort backtrace
> +

The sv_pc can be a kernel module text. 

The module text area is ok for kernel_text_address().

> 1003:        ldr    r2, [sv_pc, #-4]    @ if stmfd sp!, {args} exists,
>        ldr    r3, .Ldsi+4        @ adjust saved 'pc' back one
>        teq    r3, r2, lsr #11        @ instruction
> -- 
> 2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
