Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66541559A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 23:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wyPmgsj3koyVpwh9xsykqnG71zIuoN50qALxq/P2n6o=; b=Mu9TCkAlF46G0O
	kizx19sR85LtQ90Ee3LLWdjbiN8qo09str8+YlTzSdXbaUjzMJxW4vd9CViSP6U9b7YF4Jdcq7mDs
	IrxHQ7EtNSBu+R8VJLH/IsWmaLyuk8/NeJiCvJa+zlR1CR9/7a4bnAAae3TooQhLSoY0NKtbDqfuz
	4zMpOfU2ZIZv73us+hGdQDVE34Rr+LK3rpcJ6km4UEbngVXTxYku3p7gKsI418fXMKoxS5bWojc4x
	i6HTBUVLBUZKthasZuUO6aqeVkp6vV8BaScN15j1gM/ZYIb3uWp3MtvIVwxNl9ZuEMinla1kET5uE
	T3X2hpHWCCu0KZbOLw8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfscx-0008DM-IU; Tue, 25 Jun 2019 21:05:19 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfsce-0007fN-PP
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 21:05:02 +0000
Received: by mail-pg1-x54a.google.com with SMTP id 3so114639pgc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 14:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=HoLOG72+3lkaAV6Y6OdGRg3DmNGZd9sNYaOXLu26Ri4=;
 b=iXxC3b2pI79w4JiYlTG7X6Y1lI3tTwIpbI+mFRBtcxsy+TDbY24OTyx8XqsdXKcFai
 dP0ls6p4D60qx4UuVrDtqsByvQmeveUXtNtf6fuD3cIXfIp2Qhd94RYDgy+YH6utmfKb
 gWoPN6IIsSpDWPiLZI3gNr8v8CfOpqv62mEi47Jpht1mouKA+GY25mDNvy3UsAijKIZd
 CwlwVxbUvyN6nwNAjFVuVMLQkUNP3EsoHuvtUovY8usGc5BJGmWHq2V+jM4yW3ZMNOxF
 0a7nhNwTbogb+WA/G460UjKNDg/pYXd+kV74ofbAqv0xzFgKMVWGNwzeCckNBu/jKXRL
 obPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=HoLOG72+3lkaAV6Y6OdGRg3DmNGZd9sNYaOXLu26Ri4=;
 b=QNqEXzrSAW1t1+eiI672gNlldv86A1dF7uXmkcmkWzajQWs9uazRdjFE+PemuJ35+F
 vAYPH+y17O/iUSzcKGSAQAsku6kg1bjZS2O0zOl3Xj0OfoZ93zO8JGQSR+MBoA7UhUOk
 5vT7seVByN7NhE6P8mpB7I1AM5fKTRzRSZ0fCWOe7q3zbcZmi4Ad8ifEc9+CtA9rDZ86
 eRjcrAItfbMF+6epPCfvMtd+3bYawzM5bSwoejtlk5IS9BAE1QvaRNA8b0I9sJMXMtiQ
 3oo/OgYM5DNtiEpA5crTjfOCcuZ0SJ2pSg+DZBIHYMSa/WKIqo4oll4V0gMIqFvhL4os
 f+sw==
X-Gm-Message-State: APjAAAXm/+crzCKVNw568NCewV4a2UVaHW69yRFtkPzvNEpZ3Q2qQsoP
 rTrEE91LIfHv53WfNk/V19Dijd9/Dgzar9SCgH0=
X-Google-Smtp-Source: APXvYqyvpOUTtppsbsaJH/XnhifiqOT1lCdoynQlcEy37F5rlc4dQDPnt3QeVlEuBFY2ZFM/Yg7ZCQkznTZyASQyLyw=
X-Received: by 2002:a63:f342:: with SMTP id t2mr38294443pgj.83.1561496696611; 
 Tue, 25 Jun 2019 14:04:56 -0700 (PDT)
Date: Tue, 25 Jun 2019 14:04:39 -0700
Message-Id: <20190625210441.199514-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH] ARM: Kconfig: default to AEABI w/ Clang
From: Nick Desaulniers <ndesaulniers@google.com>
To: linux@armlinux.org.uk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_140500_856805_658CAB16 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, clang-built-linux@googlegroups.com,
 Paul Burton <paul.burton@mips.com>, broonie@kernel.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clang produces references to __aeabi_uidivmod and __aeabi_idivmod for
arm-linux-gnueabi and arm-linux-gnueabihf targets incorrectly when AEABI
is not selected (such as when OABI_COMPAT is selected).

While this means that OABI userspaces wont be able to upgraded to
kernels built with Clang, it means that boards that don't enable AEABI
like s3c2410_defconfig will stop failing to link in KernelCI when built
with Clang.

Link: https://github.com/ClangBuiltLinux/linux/issues/482
Link: https://groups.google.com/forum/#!msg/clang-built-linux/yydsAAux5hk/GxjqJSW-AQAJ
Suggested-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/Kconfig | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8869742a85df..3539be870055 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1545,8 +1545,9 @@ config ARM_PATCH_IDIV
 	  code to do integer division.
 
 config AEABI
-	bool "Use the ARM EABI to compile the kernel" if !CPU_V7 && !CPU_V7M && !CPU_V6 && !CPU_V6K
-	default CPU_V7 || CPU_V7M || CPU_V6 || CPU_V6K
+	bool "Use the ARM EABI to compile the kernel" if !CPU_V7 && \
+		!CPU_V7M && !CPU_V6 && !CPU_V6K && !CC_IS_CLANG
+	default CPU_V7 || CPU_V7M || CPU_V6 || CPU_V6K || CC_IS_CLANG
 	help
 	  This option allows for the kernel to be compiled using the latest
 	  ARM ABI (aka EABI).  This is only useful if you are using a user
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
