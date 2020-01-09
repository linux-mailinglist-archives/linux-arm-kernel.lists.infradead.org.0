Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 273DA135E1B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:22:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZQBA4uBtn++pF2ffV99Br28bkKdkCh5YXTY+YnrfXI=; b=ehnmoBeypzPE9u
	qQwcqc1yamtyuM03mKhAkXkALmvdnQDCsqhdlnd2Um09G2pFMnk5IliiDdLEbzrX+xVe6cvWXGGR0
	oHk3R6BhijRIouY/XA898OHDk4yDZXuUGb4afC/QjSf3o+uOHE2RYDF7013H9Hag2GvQI8RsWYnaW
	W40rFEQxcfEAxZkAf4ew+AjlYH6+u6FNqJqY7dKb1iriWkMGfSdio/zGwrUmuTvT4ZkAj3o6y5OfW
	pzpPS9255Qo68FGKfa9vFQH40aRgRgIAh+GkxZkQzlYJOw4xZTC6lyC3Gsdi+DK841pO1SO4YtO8+
	Kt0Dw8HIGB0aVSTpq2rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaZK-0008Qv-Ho; Thu, 09 Jan 2020 16:21:58 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaNz-0004KW-B6
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:10:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586214;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5VgBxd3qS0wKjC/wLgflSpgJ/VaLgo/t0uo8AAjhMac=;
 b=PuvD/yRiniAoQunmeXmLJiT8bL3RWlbsDZoImXP/6ct0l2HcAy5tCiC0QA2a/SrzXIO5Jl
 X4S2jbt8DfmBfDem23QZtjFQ0XUSnWGfjQuW5/qDUkSzbgLOLIy9+t/uypO0/L6QfneBGq
 qVDgGcRRMymg+FvjwLV61uXSid+vhA4=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-147-8fHlPllcPMWKviw31RYjIA-1; Thu, 09 Jan 2020 11:10:12 -0500
Received: by mail-wr1-f72.google.com with SMTP id r2so3051669wrp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:10:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pYrT6TRHMGtnrr0wIPLjvHg1Nvng0fUgO8VFzG9RuSY=;
 b=o+fagK495gM9Biyd3Jq8O682SRvxvp0tbaRyjAzulEppYTzp43pnSlZhr/AaA2Nb/y
 QUxYbVxxZ19aZ2k15IiseXCi+Ivtyr9zXFRrxP+dNKXljkcczCNJfW7D3hOj3cHxiiRN
 8jDYtEPUiQNGGg0XRM588sBOIi0IyIA4pVIGxf2WbGrqWD439VC766Zn6jSmscrbF9fr
 Vw7CqR71cg8MC/f8mbNVz2D1WH5gt89r3aO5d+jJO2InISVIDyAFOwPMxqbPuhQxpISg
 LTaV44Ywgj9OYJpjeFz8wJ5kgPHb6FTuBrnjQILT2olM80pF42ZGLF1uHXQ6Qsfq5vLx
 AJuQ==
X-Gm-Message-State: APjAAAUJZ6FmigAaCdovq/YCbBLPPzUy6FmHEhr9eyldEfyPQscPLjNo
 PNy2WUD5BAOcdWT0BDelACWkFqGvpuC5wv0IQ+QGEJrzzpNGcheyv4s86JhD/R/49BOcjHgQB4B
 jJ7ie+gXnGs2vpyRPEFDza4yD34v5xU7udhE=
X-Received: by 2002:a05:600c:2207:: with SMTP id
 z7mr5599512wml.138.1578586211421; 
 Thu, 09 Jan 2020 08:10:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqyjp1dWXem4kmadDnAuoaApxhJOhhpVFrfaTf6yB8TLsgHEvhENEDjZczqJHI6GszCgiysJfg==
X-Received: by 2002:a05:600c:2207:: with SMTP id
 z7mr5599496wml.138.1578586211254; 
 Thu, 09 Jan 2020 08:10:11 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id y17sm2820948wma.36.2020.01.09.08.10.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:10:10 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 56/57] arm64: entry: Avoid empty alternatives entries
Date: Thu,  9 Jan 2020 16:02:59 +0000
Message-Id: <20200109160300.26150-57-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: 8fHlPllcPMWKviw31RYjIA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_081015_505238_ED7FC4BC 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

kernel_ventry will create alternative entries to potentially replace
0 instructions with 0 instructions for EL1 vectors. While this does not
cause an issue, it pointlessly takes up some bytes in the alternatives
section.

Do not generate such entries.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 arch/arm64/kernel/entry.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 7c6a0a41676f..605bb7cbe499 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -60,16 +60,16 @@
 	.macro kernel_ventry, el, label, regsize = 64
 	.align 7
 #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
-alternative_if ARM64_UNMAP_KERNEL_AT_EL0
 	.if	\el == 0
+alternative_if ARM64_UNMAP_KERNEL_AT_EL0
 	.if	\regsize == 64
 	mrs	x30, tpidrro_el0
 	msr	tpidrro_el0, xzr
 	.else
 	mov	x30, xzr
 	.endif
-	.endif
 alternative_else_nop_endif
+	.endif
 #endif
 
 	sub	sp, sp, #S_FRAME_SIZE
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
