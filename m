Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C19E017CD50
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 10:40:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GqfNjoGkaOvH7Y1znxuQYw132K3SJgVCZrZ2qBQS87E=; b=Vu6HRDlNj9YTFi
	ndHs35ZrsnsNDSu1MN9d+GvdhollDum3o5QvjMeVCYcGy4CmXNNPwic7nATaFS3PLRyYZP3CZr4If
	7fAdADuB8em91NFZaFquKQEp51IeoWaengV9n+WrqQWJiT9/bIAyh98mOu2Unu4eVFXsRO8r/pAkb
	cepfmKEG+mABcbuWtR+0E13jIn4XRN1bUsCVcKlhnZrHP7ncd1J13ggB4l7j3fvn4kLxSXLp8G6kN
	XYZ6SHq8mRADWGclqjG8NMaIwSDpltceooRGHew+amONGE463yZdvT20M0tikRLXX0K2vgz+JGoTG
	lXcRBYvcynH/9M59LCiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAVw1-0004vm-A8; Sat, 07 Mar 2020 09:39:53 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAVvs-0004v9-70
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 09:39:45 +0000
Received: by mail-pg1-x541.google.com with SMTP id y30so2263062pga.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Mar 2020 01:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TQrEvZ13F8kEvhfqqpGuqFY2wEN2DIfUxspJmPRPnIo=;
 b=S/Ump+m7pX1/2CQ88Se755gIiG6OFrXK2l/vah7aFG/d2RAfEoB7TE8hjfGUTil34U
 yOaTgDLAAka5xml/5Pud4/O/GJ4N43tPXekh3oTC0Ip5ViOMJHy5GwRKliFKleSrNjt5
 CntuBDxL66X6Tt4URFw7EACYFPbil8BU9wlYdCaH/uXNYaDvqi624jOc9Un1jcgUEi3p
 MNa45X3SwRRzhlZoAhG5vXImE/Yy7RrqiZw18wVv0XwDZ17L+OjYm4JBQmXEmeD2mfXp
 CcoGiIiEnVw6N4a3/flDIX+mJwATmetu4O3tOBszVqf/yyvFawLFMIaIn+CEIlN8y7V+
 ugXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TQrEvZ13F8kEvhfqqpGuqFY2wEN2DIfUxspJmPRPnIo=;
 b=BSugz8eSAOyuLUEkdibcIDO1iBFNG7gTxcrohkMabwyDV8lgQFnu701BiHlc/Vo+LY
 wNZmHELn6sXw1IQ07orol8B4LX7e1cuLMr07YadSmAfvEZ/z6R98dRm487DBEh00juPt
 ae7Nm5HIDycHPjOZyikxNu5eGhHy676y0Q4Zc5dMh2GOgLpHouw54WFGl9LWvOTarZyp
 s/4zRIRTes7MFkpr3zqSsRqR+K/HRU7ANqul0kXq3pRlZqNe7lC7KvuJiI8gfvBSB4Rm
 MAF6Ay/H7ck2wWqaxXAQXw54wh/rGYoxqrA2LCrJVfFCEUAJil0U4s9Jfdu6OHuHkEow
 mSzg==
X-Gm-Message-State: ANhLgQ0BXtmQnCkLJ3GJ77K/iSAsIkW1m6u2e8OvTuiN+K4l0yYmv3Zt
 KNQpcFuT+hry3MgfpoI/7mo=
X-Google-Smtp-Source: ADFU+vsMj19AZ1LMNkk/TpNkNt56C7jYnDIJMIFA0yMpCIVVFSYlfPbfxqUpAEoPlL07hhQWMJ5ofg==
X-Received: by 2002:a63:348b:: with SMTP id b133mr7346984pga.372.1583573980485; 
 Sat, 07 Mar 2020 01:39:40 -0800 (PST)
Received: from debian.net.fpt ([2405:4800:58f7:2133:c967:474d:b56a:15e9])
 by smtp.gmail.com with ESMTPSA id q13sm37932689pgh.30.2020.03.07.01.39.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Mar 2020 01:39:39 -0800 (PST)
From: Phong Tran <tranmanphong@gmail.com>
To: catalin.marinas@arm.com, will@kernel.org, alexios.zavras@intel.com,
 tglx@linutronix.de, akpm@linux-foundation.org, steven.price@arm.com,
 steve.capper@arm.com, mark.rutland@arm.com, broonie@kernel.org,
 keescook@chromium.org
Subject: [PATCH] arm64: add check_wx_pages debugfs for CHECK_WX
Date: Sat,  7 Mar 2020 16:39:26 +0700
Message-Id: <20200307093926.27145-1-tranmanphong@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_013944_280733_8B7CCA85 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tranmanphong[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Phong Tran <tranmanphong@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

follow the suggestion from
https://github.com/KSPP/linux/issues/35

Signed-off-by: Phong Tran <tranmanphong@gmail.com>
---
 arch/arm64/Kconfig.debug        |  3 ++-
 arch/arm64/include/asm/ptdump.h |  2 ++
 arch/arm64/mm/dump.c            |  1 +
 arch/arm64/mm/ptdump_debugfs.c  | 18 ++++++++++++++++++
 4 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig.debug b/arch/arm64/Kconfig.debug
index 1c906d932d6b..be552fa351e2 100644
--- a/arch/arm64/Kconfig.debug
+++ b/arch/arm64/Kconfig.debug
@@ -48,7 +48,8 @@ config DEBUG_WX
 	  of other unfixed kernel bugs easier.
 
 	  There is no runtime or memory usage effect of this option
-	  once the kernel has booted up - it's a one time check.
+	  once the kernel has booted up - it's a one time check and
+	  can be checked by echo "1" to "check_wx_pages" debugfs in runtime.
 
 	  If in doubt, say "Y".
 
diff --git a/arch/arm64/include/asm/ptdump.h b/arch/arm64/include/asm/ptdump.h
index 38187f74e089..b80d6b4fc508 100644
--- a/arch/arm64/include/asm/ptdump.h
+++ b/arch/arm64/include/asm/ptdump.h
@@ -24,9 +24,11 @@ struct ptdump_info {
 void ptdump_walk(struct seq_file *s, struct ptdump_info *info);
 #ifdef CONFIG_PTDUMP_DEBUGFS
 void ptdump_debugfs_register(struct ptdump_info *info, const char *name);
+int ptdump_check_wx_init(void);
 #else
 static inline void ptdump_debugfs_register(struct ptdump_info *info,
 					   const char *name) { }
+static inline int ptdump_check_wx_init(void) { return 0; }
 #endif
 void ptdump_check_wx(void);
 #endif /* CONFIG_PTDUMP_CORE */
diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index 860c00ec8bd3..60c99a047763 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -378,6 +378,7 @@ static int ptdump_init(void)
 #endif
 	ptdump_initialize();
 	ptdump_debugfs_register(&kernel_ptdump_info, "kernel_page_tables");
+	ptdump_check_wx_init();
 	return 0;
 }
 device_initcall(ptdump_init);
diff --git a/arch/arm64/mm/ptdump_debugfs.c b/arch/arm64/mm/ptdump_debugfs.c
index 1f2eae3e988b..73cddc12c3c2 100644
--- a/arch/arm64/mm/ptdump_debugfs.c
+++ b/arch/arm64/mm/ptdump_debugfs.c
@@ -16,3 +16,21 @@ void ptdump_debugfs_register(struct ptdump_info *info, const char *name)
 {
 	debugfs_create_file(name, 0400, NULL, info, &ptdump_fops);
 }
+
+static int check_wx_debugfs_set(void *data, u64 val)
+{
+	if (val != 1ULL)
+		return -EINVAL;
+
+	ptdump_check_wx();
+
+	return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(check_wx_fops, NULL, check_wx_debugfs_set, "%llu\n");
+
+int ptdump_check_wx_init(void)
+{
+	return debugfs_create_file("check_wx_pages", 0200, NULL,
+				   NULL, &check_wx_fops) ? 0 : -ENOMEM;
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
