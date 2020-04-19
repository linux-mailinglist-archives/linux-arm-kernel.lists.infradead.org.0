Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D127D1AFA78
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 15:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+vRwZA+ptauTB4JEp2M3ruH/KKt5lxPBHp8VN0YcUqo=; b=hoHWk6G+5t22UO
	IT0o54upXd+FMFrLJcIWb3cBviG+ay39MabqmvVnS88KZrJWTPRxuTcCaWmd86OAQvkj7PwA7XWLc
	oISsCpy4KmuO4S2qxr+IEp4AHQq6nx1PI4G03E836nADv1oWF89TX2jHDxP44OTBI0OAEF3heRL5Z
	3pK668zQp6Sm3j+TKZg7qTsiU8edOQB28KWKHcSLwGoCwKq1jB6T8w1G0Xd1gR4hreYN+TQ0U+Hvk
	uI8/DyKAl5ArHry9N6IFpUNyuoeRgW8lICN6eVEj+7Yl34Gr03l5wRLNbqVL/85IZwk1jUwSFMTbB
	AwjolHWzhJ7uWoBR1TPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9tV-0004AJ-BJ; Sun, 19 Apr 2020 13:21:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9tQ-00049X-OS
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 13:21:54 +0000
Received: by mail-wr1-x444.google.com with SMTP id d17so8611156wrg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 06:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PoXpptiQvZNo1E5nzo28jyKXV1DD0hsQqmB0l8Idshk=;
 b=lCaGHhSawMAYCMT/A8HhE1E3b4/W32o3Apk3ZS+JH88wehgLrmwsSqWB/Rhzq8rW+z
 oakNod42/DC7/Pnf4bP/9LHa9IBbwHDd+drosTw5UVxO6cac3hl4h9T3JcCxdeNpxltM
 2B4Aso2DAlRfI6QoyObDSV/NhAuQpIOuMmtADIFPbjs8pUjai3ywuEkFlW4p/VbH1eti
 WHD4HSV87eJwrJu3gApXJDm/Q3W+3AT4MPkZSBMCprroYMjVVkTm3N2b1Ps8ZLa2kX1l
 WlJ3QSAOp2ldmi6+olPk5h6hqu2irSuoLu6+rQuwQCXKELzmW8hyG3NAIVqCNXH/F/4H
 Zuag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PoXpptiQvZNo1E5nzo28jyKXV1DD0hsQqmB0l8Idshk=;
 b=D1yrifQwccD5NqORKMbYtVyYexbNoho5NraR/NJdGFGTvVXxAqgGb4oM9JfizBTMrl
 pfW+7S8eTmQkPFtVIt4uEUvxTI2JlFLWsXhkB5S48afAY6O9Wh8d5SpEjfF6yqK9GbTf
 rHC5KW0u4wqd19z2cn4ERq3niFrX+5raJoIajopUxYZ5iBumGXGBtEQvRBHr2HaK1E3/
 87PNIxauUmEszhPo+2zZj5/pa29OxVNEHxNZljeP2y0uiPD0UEGw1/jNk81TCTIVRW9i
 hBn7nw6tGXu6+IpeckVtymzTXwRK453HhHLoBDoIIyJoV5I1rhXLfxxnmuWBchrHQuyy
 GZQQ==
X-Gm-Message-State: AGi0Pub64fF6DrQ19LXl7HJUfZZnawK5jRiXls+RR/xBxs9g6uI5ZXHZ
 7hwR5nvVf/Syeduz3Cg8jXI=
X-Google-Smtp-Source: APiQypLo+SnHWzuzHnraxWsYZXTwTBc9Vya4hBaRUfr/K1B/G8PCCPfUkQNRMr0/L4KwPhwweYy8CA==
X-Received: by 2002:a5d:6305:: with SMTP id i5mr14066983wru.203.1587302510950; 
 Sun, 19 Apr 2020 06:21:50 -0700 (PDT)
Received: from localhost.localdomain (x59cc9bd1.dyn.telefonica.de.
 [89.204.155.209])
 by smtp.gmail.com with ESMTPSA id c1sm40401206wrc.4.2020.04.19.06.21.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 06:21:50 -0700 (PDT)
From: Sedat Dilek <sedat.dilek@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 "Steven Rostedt (VMware)" <rostedt@goodmis.org>,
 Jessica Yu <jeyu@kernel.org>,
 "Peter Zijlstra (Intel)" <peterz@infradead.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Joel Fernandes (Google)" <joel@joelfernandes.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 2/2] kbuild: Rename and use BINUTILS_VERSION where needed
Date: Sun, 19 Apr 2020 15:21:42 +0200
Message-Id: <20200419132142.173861-1-sedat.dilek@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_062152_792581_2756B3C5 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sedat.dilek[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the first patch I introduced LD_IS_BINUTILS Kconfig.

To be consistent in naming convention I renamed from LD_VERSION
to BINUTILS_VERSION.

So, we have the double "LD_IS_BINUTILS" and "BINUTILS_VERSION"
like "CC_IS_GCC" and "GCC_VERSION".

For the same reason I renamed the shell script to detect the GNU ld
linker version.

In Documentation/process/changes.rst we use "binutils" and GNU ld
binary is part of it (see [3]).

The patches "init/kconfig: Add LD_VERSION Kconfig" (see [1]) and
"arm64: Kconfig: ptrauth: Add binutils version check to fix mismatch"
(see [2]) added checks for binutils >=2.23.1 whereas binutils
version 2.23 is minimum supported version (see [3]).

I have renamed to BINUTILS_VERSION where needed.

[1] https://git.kernel.org/linus/9553d16fa671b9621c5e2847d08bd90d3be3349c
[2] https://git.kernel.org/linus/15cd0e675f3f76b4d21c313795fe0c23df0ee20f
[3] https://git.kernel.org/linus/Documentation/process/changes.rst#n79

Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
---
 arch/arm64/Kconfig                             | 2 +-
 init/Kconfig                                   | 4 ++--
 scripts/{ld-version.sh => binutils-version.sh} | 0
 3 files changed, 3 insertions(+), 3 deletions(-)
 rename scripts/{ld-version.sh => binutils-version.sh} (100%)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 40fb05d96c60..274ba9b3ac95 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1504,7 +1504,7 @@ config ARM64_PTR_AUTH
 	depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
 	# GCC 9.1 and later inserts a .note.gnu.property section note for PAC
 	# which is only understood by binutils starting with version 2.33.1.
-	depends on !CC_IS_GCC || GCC_VERSION < 90100 || LD_VERSION >= 233010000
+	depends on !CC_IS_GCC || GCC_VERSION < 90100 || BINUTILS_VERSION >= 233010000
 	depends on !CC_IS_CLANG || AS_HAS_CFI_NEGATE_RA_STATE
 	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
 	help
diff --git a/init/Kconfig b/init/Kconfig
index 520116efea0f..946db4786951 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -19,9 +19,9 @@ config GCC_VERSION
 config LD_IS_BINUTILS
 	def_bool $(success,$(LD) -v | head -n 1 | grep -q 'GNU ld')
 
-config LD_VERSION
+config BINUTILS_VERSION
 	int
-	default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh) if LD_IS_BINUTILS
+	default $(shell,$(LD) --version | $(srctree)/scripts/binutils-version.sh) if LD_IS_BINUTILS
 
 config CC_IS_CLANG
 	def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
diff --git a/scripts/ld-version.sh b/scripts/binutils-version.sh
similarity index 100%
rename from scripts/ld-version.sh
rename to scripts/binutils-version.sh
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
