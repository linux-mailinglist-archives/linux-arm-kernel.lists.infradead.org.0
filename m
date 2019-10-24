Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F58E28C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 05:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vuwk4/0ThI6eyAKRU1AayVulS4q2tqRxXmyXFXfaoVA=; b=SZs
	QDyHpVxfTXpj7yAVal0G0TKvsc9yFXYmDz8TguGZSToaTPnuzF8kOnMBz8OgQv4T50O4DePUi/5U/
	amY5wXkVsFfQP+oIK6EcWk/nXPgfp408h5s6MEWWTb2u/8id+BW8jBNHzxG026idI4nvxilLy3U87
	OmcHXxMd+WwkoIO44py8RcNBc4BvnW076aB4w2HkNJI1hVK1MyoeqwS1aLIsN/snEwDZhodqHRgOn
	Dx7lV6PjaN3G1acInY2Wp4Q35me6J8UDSRKTcip79qGHgg6VihK1j5RCp982WEYbrpcJlmGb2BSog
	Dht/5Wxb2hj9dj1m1CjHaYkBEZMZ9XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNTkz-0004Q1-L3; Thu, 24 Oct 2019 03:25:49 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNTkp-0004PX-Nc
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 03:25:41 +0000
Received: by mail-pl1-x641.google.com with SMTP id v5so6406929ply.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 20:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=hL+v0VkC8nJZ/yYasVVgoGkbvgueSaBBRK1E46vpngU=;
 b=cfP9jwhqOFa3Vyoo5fskQENeWHMYsaigLQ8xtjIEM5zJoA+Rq1Ue06Np5/krsZaMIw
 l/EQ2wbVLdCWYJAt1DcFCMNA8NIGRky3whO9LVAAQAALv9qr/uUgTVJveuDwr279TvN1
 JX9y/RURDl96/B5aq8Lxyzzg96YbhzeARNUhFz8ehVls68FvU1lMOVk6nlrr0OyHTO1/
 LO3bhuZgjxvH3RwjXK1nHRmHbfVs+dxy7T6w6t7ukMsrbfg+71lHzCG8Mcb7PNijQf38
 Yz80yF8KKyRWQTW1UNKIgpv9V76hX4cVKry9PQzlVlQIydVnuQBKc6XKE6GsT3tBd6EP
 9eLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=hL+v0VkC8nJZ/yYasVVgoGkbvgueSaBBRK1E46vpngU=;
 b=pdMCYbotqrsmcqzMmWpZF//Eg0HYt5wQf0yV7oTFS1Dg3shCWtMUWcuars2gTse6Nw
 DtDViTLqUcx6UG7lCOORIun2+0EUUgG/Kr8aFiji/MJts/QEzRuGzG7QttvSRQYoTE+N
 lE+X+KYwaIiQQvRZsLVuXd5PTdhfUsCZn722iuAsFSIaBPl93eZx6Rfai8AebTiHRGdj
 Y+TufWZ7MRT+GqHbBNQBZP0Nsj1o5gEBaOLMK2V2zuppfG16PneXyFljoVvxOUhttfKH
 1bkFlF1GULPQoBxy7E/Cq/ndynTWwQo1WUM+ybOROUX+HhBG0SaBFcYbG8gcSycdcv4M
 OB6g==
X-Gm-Message-State: APjAAAWwwqt6zkLlqpTs90h7Fe3MPMD8CSTBEPHmxlbxKxjmYp89KcyS
 gohMjSEZ3MNIkEwtl9kINTlCqaLAKfY=
X-Google-Smtp-Source: APXvYqzbPeO9Sylf2UWrSs/mFlQJikvRlBtwZ0Ytzy9PU0f4W4+Z/AVwT9xzRUzfQkBXgjOJgWK+Hg==
X-Received: by 2002:a17:902:524:: with SMTP id
 33mr13606140plf.123.1571887538912; 
 Wed, 23 Oct 2019 20:25:38 -0700 (PDT)
Received: from software.domain.org ([66.42.68.162])
 by smtp.gmail.com with ESMTPSA id y10sm23642731pfe.148.2019.10.23.20.25.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 23 Oct 2019 20:25:38 -0700 (PDT)
From: Huacai Chen <chenhc@lemote.com>
To: Andy Lutomirski <luto@kernel.org>
Subject: [PATCH] timekeeping/vsyscall: Update vdso data unconditionally
Date: Thu, 24 Oct 2019 11:28:29 +0800
Message-Id: <1571887709-11447-1-git-send-email-chenhc@lemote.com>
X-Mailer: git-send-email 2.7.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_202539_771649_E4842710 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chenhuacai[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, chenhuacai@gmail.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Huacai Chen <chenhc@lemote.com>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In do_hres(), we currently use whether the return value of __arch_get_
hw_counter() is negative to indicate fallback, but MIPS returns 0 when
clock_mode is invalid.

It is sure that MIPS has a bug when clock_mode is invalid and should
return ULL_MAX as ARM64 does (Vincenzo has already submitted a patch).
But at the time we found another bug: currently update_vsyscall() and
update_vsyscall_tz() rely on __arch_use_vsyscall() to update the vdso
data, which causes __cvdso_clock_getres() and some other functions get
wrong results when clock_mode is invalid. So, in this patch we update
vdso data unconditionally.

Fixes: 44f57d788e7deecb50 ("timekeeping: Provide a generic update_vsyscall() implementation")
Cc: stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Paul Burton <paul.burton@mips.com>
Cc: linux-mips@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Huacai Chen <chenhc@lemote.com>
---
 kernel/time/vsyscall.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/kernel/time/vsyscall.c b/kernel/time/vsyscall.c
index 4bc37ac..5ee0f77 100644
--- a/kernel/time/vsyscall.c
+++ b/kernel/time/vsyscall.c
@@ -110,8 +110,7 @@ void update_vsyscall(struct timekeeper *tk)
 	nsec		= nsec + tk->wall_to_monotonic.tv_nsec;
 	vdso_ts->sec	+= __iter_div_u64_rem(nsec, NSEC_PER_SEC, &vdso_ts->nsec);
 
-	if (__arch_use_vsyscall(vdata))
-		update_vdso_data(vdata, tk);
+	update_vdso_data(vdata, tk);
 
 	__arch_update_vsyscall(vdata, tk);
 
@@ -124,10 +123,8 @@ void update_vsyscall_tz(void)
 {
 	struct vdso_data *vdata = __arch_get_k_vdso_data();
 
-	if (__arch_use_vsyscall(vdata)) {
-		vdata[CS_HRES_COARSE].tz_minuteswest = sys_tz.tz_minuteswest;
-		vdata[CS_HRES_COARSE].tz_dsttime = sys_tz.tz_dsttime;
-	}
+	vdata[CS_HRES_COARSE].tz_minuteswest = sys_tz.tz_minuteswest;
+	vdata[CS_HRES_COARSE].tz_dsttime = sys_tz.tz_dsttime;
 
 	__arch_sync_vdso_data(vdata);
 }
-- 
2.7.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
