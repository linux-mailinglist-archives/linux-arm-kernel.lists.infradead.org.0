Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C59C2A2BEB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 02:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G/8GOM66dHg/iPtYft4B+ZMAHAZIy60g4h7bPj7pBbA=; b=B4y2gUr0jPp1/m5TjQvYu/ffKQ
	UP9hc2e+4QaKR1NuHxdajaTAGd5KGE7YEfC8YXl6IBw4lyt+kFrnUA0ltmjxKdYq2ftLqF1Asf7fz
	Pdquyyq4/u7khKIkqGyAt5s9b9w2m5WQ73Yu+atLStrfqaqPlIIrE6KpjzRhg1uEmcOGQzmqm8NzR
	f/3nj0aLKsLxnKhKliS2+ppxJmbcNIgIsq5cen7njwviGb5SERAgJt/ffXUZ963+rLgYm73yoLPeh
	yGY3iNHVJul4IG3PIbnJQsF0YDoi/MaPajP5/lGG/JJFwG1qhEUVifck/ze39zNO7ACk30oJLCscI
	RO9k+4dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3VAk-0003kC-UY; Fri, 30 Aug 2019 00:53:51 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3V7v-0001Vw-Ol
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 00:50:57 +0000
Received: by mail-lj1-x241.google.com with SMTP id l1so4768005lji.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 17:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mY025N9ZTLshq6bUASscJHYyFWN73WCKPGSueHP30TA=;
 b=Okdsp5ZxNf0c0ZS1PgudZ1/Uzcx1vh+JyUHLIBaB4gA9eHqIu0am2+/xAGRamBrEmK
 qCvznYgVkMcSDDWdiuCGk34vVj8/mP+ro1bCTjA8Ka3xrOrkCNjL5U6xgrBRNELJmuje
 tp5PnYpAOK9+P7pd2AMtrpQ2VFUiwZgdf+VjTUiXBMwwiLm0B+wHxS9J4hkKQKTR1PMo
 g5JzQdW9lrRdG4QItLYA3aqHsMKgs2n4aIc4BsxCiDVNYjJ1gBnQXG5diF7z2I2DKLba
 2UWvt484BgUsrYmmG+TmQ/bM0gM9QCmze3gdMrsQwFGwno6fmli/VeP2qEfoN4+I/6o0
 LHHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mY025N9ZTLshq6bUASscJHYyFWN73WCKPGSueHP30TA=;
 b=jLtpIdQau4T01oLeSc/QZj+M2PlBMtiigLoa8IAnC25xnwd1yyZtcyzecTF/CEb4VI
 7mUSCRyUdnD+a1I/IhD6x0J5ypykRujH8opZ2hYSev86Rrza9/Zz29EHqxhujCNE21IK
 oMd+mZPzHJEbO1DkeGYPAQZ507gNfTKn5e+jNxEfNY1TJ4W315r+Ujg8j6+aZbF2X6Wl
 pYw12Jjwg2OrdDJgrzj2j7NpfJp+WaVmkGRGMUt7kAmDuSGsxf1e9lF7Vm3EQgVLKTOV
 xZkQzmQmJ1tASeybPCZMZv3YXQ/iVJRLzXEnaeEfILiuXv+7uMf5i/vKoPcbZUE7V7SF
 DTYA==
X-Gm-Message-State: APjAAAVx62dwdYA93D8hq+gErX9vFlF/EXWifpBzX4RXCgDlf8GK43re
 0h5+NYQ4DhzbJvMQ1ISgRcbleQ==
X-Google-Smtp-Source: APXvYqwqImk+P6XTagmx3q1aVV2TwK0n5J/VZAS+IZlC8HW1HTeVnR0gZP11ETCdNHIKYsMWLXe3bA==
X-Received: by 2002:a2e:2bda:: with SMTP id r87mr1097319ljr.3.1567126254430;
 Thu, 29 Aug 2019 17:50:54 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net.
 [178.94.200.168])
 by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 17:50:53 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk, ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
 davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
 john.fastabend@gmail.com
Subject: [PATCH RFC bpf-next 10/10] arm: include: asm: unified: mask .syntax
 unified for clang
Date: Fri, 30 Aug 2019 03:50:37 +0300
Message-Id: <20190830005037.24004-11-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_175055_817396_321FB7ED 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The samples/bpf reuses linux headers, with clang -emit-llvm,
so this w/a is only for samples/bpf (samples/bpf/Makefile CLANG-bpf).

It allows to build samples/bpf for arm on target board.
In another way clang -emit-llvm generates errors like:

<inline asm>:1:1: error: unknown directive
.syntax unified

I have verified it on clang 5, 6 ,7, 8, 9, 10
as on native platform as for cross-compiling. This decision is
arguable, but it doesn't have impact on samples/bpf so it's easier
just ignore it for clang, at least for now...

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 arch/arm/include/asm/unified.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/unified.h b/arch/arm/include/asm/unified.h
index 1e2c3eb04353..3cf8757b9a14 100644
--- a/arch/arm/include/asm/unified.h
+++ b/arch/arm/include/asm/unified.h
@@ -11,7 +11,11 @@
 #if defined(__ASSEMBLY__)
 	.syntax unified
 #else
-__asm__(".syntax unified");
+
+#ifndef __clang__
+	__asm__(".syntax unified");
+#endif
+
 #endif
 
 #ifdef CONFIG_CPU_V7M
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
