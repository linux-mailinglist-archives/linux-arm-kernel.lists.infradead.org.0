Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06ECC1A6FC4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 01:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HP00cMhM/VuOqjavtYkuMnXlpRIsFDVcXNIdiJGGDIQ=; b=Tm0gaflu5GQG0l
	6JSDzcCGKhWVXtKNXu9ZZdsqXs7ieGvDkqLtfsln44uWYTEB+97f1KlF2jOdKK1vS9y50afhoFSQ3
	IZXZ+eBqvIbjgJeXfpHs6XpKYhbhrORWB8+rcfHUAN0fCvnQUAZluDAXNS3CvqOYw+ole13YTq7zq
	stWf5tCIWE/OMLel1/1yMuUQIHFj2hpQj7bVsqsqB9eqqtjSqQlcrnWyO2drvLWk9e+Tnl2yLIlic
	T15GFa04tK5Lk3IARH3vQOy++78L7OdXVZGi1aTFnHGvqK1CR+CAEfNnC6Wur4aOl2RvupxKwPLZ1
	Ia0/lW/eXXaMkpBchsMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO8Dm-0000BV-50; Mon, 13 Apr 2020 23:10:30 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO8Df-0008SQ-VS
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 23:10:25 +0000
Received: by mail-pg1-x549.google.com with SMTP id x190so5213769pgx.19
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 16:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=vuPWpOEpABdmh/1VI4/up8dAs2XH63GBNImm7d32EIk=;
 b=uuJSa5giC8TYDkne2taIdNZXmrgXcjt5CgpmGdHhNkQ5j9v4VYPqCbuOp/KxDtbpN/
 4cEve/TUCY86wv/6A7knM+8e9X2X26bBtQI1pCE3hfpB0tNpS2C6uuPLmBbXCsDUsLCt
 yGMJ+F5vrbUcoQa3o341Dx9C5iCe89I30q1guImO4DyqZb4diH3XCeHvbcpviNeozcws
 gj+8/im9ix9ynfMpIso42JYQXromt7QpwqYKI74mEYsJhq5j9oGEAXhJZ135kR2imQDD
 3m4Qjg55XxOsQiFJaEkVMAaVkGz41KeMuqSEUp5ld97t/FXZdGOxaDPNmBYTGbIKMZAN
 aCVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=vuPWpOEpABdmh/1VI4/up8dAs2XH63GBNImm7d32EIk=;
 b=pvczWfDL6U2mPuChvWRffu4hpnOF5mQxJZYZxJLUo8qR5iKcbaTPjZC+nwYoLnROJ+
 oplnkG9HFjetX43iRq4kqImvRnEFQg1+urPXWSWBjmTJPZnRtzxI0fNfTfieS2z7vTfO
 F4R982RBy6r5XvrV+A2DMjXHA6CwozGRtq4EZF+5UPyPx5F0V6MwMho7UB2e9/9W6+Ss
 Zjc6y0+Pqc8+PcWvaGfdrZ0wGm2PMPL5eIx7Q0NKXjaYAIVVJY+R1vV7LutvGtiiF6nQ
 Vt1UMuszrzw/1UhE12h9OpcDU8UdqUuLBe/+YaVnR629jfSQQ14gsSxCfl7JLZOtKJPb
 PjPA==
X-Gm-Message-State: AGi0PuayCWlpMO4Am/JGhWnEEmfZAqVIs0LGUHSIm0lwL26lk719mpwr
 pTfyzELvkTDSeFdJ0cHGFnhqL37kpUfxJLzSCZ/uTRrM8mX4nx5jok1l1cogIqAstdnJVMDLR/I
 9OCtcm0geZ2cuDE5iYxohEf81AJsRotEzdz2P11koXiyo9oej2YgrzaN8WE9rDZBOT5ADfvbmIc
 iddxdZW0A=
X-Google-Smtp-Source: APiQypLAo/3dWG3aUJ9m8iimrYZneDDZJRDeReO1X+fvoW4FdoVomY39iYtNWeyL4ijSeh5b/qrZUHHF+4CD
X-Received: by 2002:a63:b256:: with SMTP id t22mr18355736pgo.92.1586819420186; 
 Mon, 13 Apr 2020 16:10:20 -0700 (PDT)
Date: Mon, 13 Apr 2020 16:10:16 -0700
Message-Id: <20200413231016.250737-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.0.110.g2183baf09c-goog
Subject: [PATCH] arm64: kvm: Delete duplicated label: in invalid_vector
From: Fangrui Song <maskray@google.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu, 
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_161024_035273_FD9CBA27 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Fangrui Song <maskray@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SYM_CODE_START defines \label , so it is redundant to define \label again.
A redefinition at the same place is accepted by GNU as
(https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=159fbb6088f17a341bcaaac960623cab881b4981)
but rejected by the clang integrated assembler.

Fixes: 617a2f392c92 ("arm64: kvm: Annotate assembly using modern annoations")
Link: https://github.com/ClangBuiltLinux/linux/issues/988
Signed-off-by: Fangrui Song <maskray@google.com>
---
 arch/arm64/kvm/hyp/hyp-entry.S | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index c2a13ab3c471..9c5cfb04170e 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -198,7 +198,6 @@ SYM_CODE_END(__hyp_panic)
 .macro invalid_vector	label, target = __hyp_panic
 	.align	2
 SYM_CODE_START(\label)
-\label:
 	b \target
 SYM_CODE_END(\label)
 .endm
-- 
2.26.0.110.g2183baf09c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
