Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8979E1A1596
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 21:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=49XkfsKF4SWB4eJldLcTsVheb+sxEl1+qDMpzfuL2yk=; b=pa6YyruJj62uxY
	pavbzM8zjZ8DPwtcfyEzRVqJe+PNJC6At0pijBUcT5vP+K+aC20OOTCAb5YFske+FafxwqUfN6PkR
	E+vdZBltizAHPPEgLdxFPYFEdEKGe1kZcTunX+rbpeVUkqakpJeOTY8ZGYCBdngWq8RK0QCoQ5Yjv
	6Zu3pv2aOwbgY8AQfZtKrh7ACLbe+TUpRZdXhCcHyeDJZ0amfMiG0mE1cv4Z00+FxX1A1EUNZkO7W
	HeeC8JlSqXF2Cx0YLaCFXnSMEEloajzNaEQdPEz6LfFvr7E4bdu3zu2vb61zcw12j6YITzbgWpXxr
	9M3hVR939+YIsZkMO77Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLtb4-00056R-4r; Tue, 07 Apr 2020 19:09:18 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLtax-00055W-6F
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 19:09:12 +0000
Received: by mail-pl1-x643.google.com with SMTP id z6so99859plk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 12:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LDxb1cWgmjR2rFQEK0+5JpvDE312cPS2zScBr2bujHE=;
 b=OQ1rrBhzVf0fJC3M4ocRBLsWOLwIev84mAm14MNsK1lJKOeqK2JSQPVIN0X4dgWaMe
 PbXUXIhIddautej6PdwCqFJK0e2lTP+L+YB+8ciP3SM72Phf996FeN091bdS6O1f/PBr
 YLZyGadFtUIbyZEbN3BYBn1Jn5n9lT0+Xupjn3WiTbMtGsoYHmNRQf2wJz8SQbTRXH0O
 +r4uXZ2BdTJVFaujA+96JNAFQMG9KGFwXswQnycKHlmBhF/ywFOhBAZpKjy7AYCgIBkN
 TlBcucvVruI8VPia6fG8s30mOQUpw0cIqGf7B9zZhSBO7K3SVw2ItS+k+aejklwUxcx9
 oykw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LDxb1cWgmjR2rFQEK0+5JpvDE312cPS2zScBr2bujHE=;
 b=od9H79f8FoAp4UHG9dEgS3V2CjV3sKsnRlFWyzCjD3QHsEOw9W07QL/VWdqt4eHzSH
 7HLS66c5v9TsbpJqqNz2A+M35rL5pU8E9LU8HxCXmHQ0EB6gd2O6hC391UDOnc8TQ7zF
 YwvbMg4xBhG1kRJhWFXar5f27zUuxrr9+9W0nWHdLJ7aoed/NwvHbL5t41psmAHqT9UJ
 zy+2Zoj0SWVP3avNNIGEs1WeLunT56vsz7GUJhtvCw8YGMgV/tYLsS5hBUbS6G8WAh1z
 gvOVSmaRbb8mlz8L7oVw5QtGcks1s+b+VB//sSpro0OKvk8+UhSWZHJV4vWzhl6Bvwxt
 Mj9Q==
X-Gm-Message-State: AGi0PubfEduFezrWeR3Y32Kk3MkK7vasdVUJR8HZ67Ue2VNuZyptmcMB
 K+kJ15AZCJaF+jMC4XjhmSw=
X-Google-Smtp-Source: APiQypIAweHpsgOBRcq92pnGKdIS++5/gxov6spI1gTUH2o53lpimCMwTYCCEJfCGkDl1fke9lad7w==
X-Received: by 2002:a17:902:8a8f:: with SMTP id
 p15mr3787069plo.45.1586286549841; 
 Tue, 07 Apr 2020 12:09:09 -0700 (PDT)
Received: from jiancai.svl.corp.google.com
 ([2620:15c:2ce:0:b7ed:16a3:9dc0:21bb])
 by smtp.googlemail.com with ESMTPSA id q12sm13833090pgi.86.2020.04.07.12.09.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 12:09:09 -0700 (PDT)
From: Jian Cai <caij2003@gmail.com>
To: 
Subject: [PATCH] ARM: replace the sole use of a symbol with its definition
Date: Tue,  7 Apr 2020 12:05:57 -0700
Message-Id: <20200407190558.196865-1-caij2003@gmail.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_120911_255596_18A853B9 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [caij2003[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [caij2003[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, ndesaulniers@google.com,
 Russell King <linux@armlinux.org.uk>, stefan@agner.ch,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 manojgupta@google.com, Thomas Gleixner <tglx@linutronix.de>,
 Enrico Weigelt <info@metux.net>, caij2003@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ALT_UP_B macro sets symbol up_b_offset via .equ to an expression
involving another symbol. The macro gets expanded twice when
arch/arm/kernel/sleep.S is assembled, creating a scenario where
up_b_offset is set to another expression involving symbols while its
current value is based on symbols. LLVM integrated assembler does not
allow such cases, and based on the documentation of binutils, "Values
that are based on expressions involving other symbols are allowed, but
some targets may restrict this to only being done once per assembly", so
it may be better to avoid such cases as it is not clearly stated which
targets should support or disallow them. The fix in this case is simple,
as up_b_offset has only one use, so we can replace the use with the
definition and get rid of up_b_offset.

Signed-off-by: Jian Cai <caij2003@gmail.com>
---
 arch/arm/include/asm/assembler.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
index 99929122dad7..adee13126c62 100644
--- a/arch/arm/include/asm/assembler.h
+++ b/arch/arm/include/asm/assembler.h
@@ -269,10 +269,9 @@
 	.endif							;\
 	.popsection
 #define ALT_UP_B(label)					\
-	.equ	up_b_offset, label - 9998b			;\
 	.pushsection ".alt.smp.init", "a"			;\
 	.long	9998b						;\
-	W(b)	. + up_b_offset					;\
+	W(b)	. + (label - 9998b)					;\
 	.popsection
 #else
 #define ALT_SMP(instr...)
-- 
2.26.0.292.g33ef6b2f38-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
