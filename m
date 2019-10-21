Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB7CDECC1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 14:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XxHUVAW8I/tTwIxFyh7R0sqEqx50/c6EWTBv7fya4SQ=; b=Wlb
	hISnqMDj0RJKeOImZpcmo5Z5HOnBitjD2FuHFFFqoZBtTdy/z4PBjGCMlz2UC/ThIrV4+Te7XDm94
	Ax2WPJIZgV2LQAoXFr+XA8dlwEYS9fP2nkCFKjw9al/m3fZGzhpK6L2gnhX7cGo8J2JRxhkvnUbFk
	xMf9v15QaUuasbZeUbHYqalPuVvob9c3dPF6YiHKVR+xTDSzl97Fs+rArfLnzWlP9263yt7E+WzpH
	nlkQnExnnORQSJH0GaQ4dhtggueOqjiid340qi+3V5DCqq+JsRblB6qM8BAtAmJeW4jJ/P8pCmMPw
	cPgqs0+tQOEBuAPXV5n9wHVyKtjAD2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMX7r-0006ON-Me; Mon, 21 Oct 2019 12:49:31 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMX7i-0006Ng-45
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 12:49:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id y5so8378882pfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 05:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=+q3Pz7iL34R36Jp34sL215JsL0y1yMeb6aT9y4kfQGo=;
 b=HL1CGUD6Nz7+su39RPl9DRZCvAkH4cA/DgGsB0v7D7/OojLwQ2HtZTC6R+Y/HKIT/C
 ArlkbztVJx40v0JIKm0kOqhgtdcuogxNq5NFHTMURWlAz2mvhG85xEQT2lPImT7LMwZc
 iE9AhrrO7/OvolJVcURhbxbLcGakEtPTgJDJrp9Wc78TJ2fE3mfi/0ute/HbAV+j1v4H
 pXvppoJXLCdLKfGaL9+8wIGbai6GuK02eCwxSoSebFUEDRvkCWB6yQmXJKF1R0YdsZ4i
 YmIfzuBWPPEBK37R8y5hh3t5RqTIcGaZZx46oi/ZoJv6fx0NrF7sAuBObkDydd4aAW7Z
 e9DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=+q3Pz7iL34R36Jp34sL215JsL0y1yMeb6aT9y4kfQGo=;
 b=uEYLYawW8q6HwR6KQV3pahEdnmi/cNJnjv1sgo+afhQtaZd5uHMU5hfoE+FcTBlkTS
 at8Owhksprryn9FrHQl2vD/kp62/rFHVoUJ1s4JwxUxfKbCLRVNn3Bg2pDhVUo6pff42
 e/bctPGVr6DXHK8ZN3TiQCABWggdRdIQE+BhrP0zFYM68LE7ttfTQpZPTWKYqKiB+Vl4
 U38McBcKcY0kjijaloCNv2Ue/26KrMoNufGT9RI3VaLMw2z34i8FrLL+sTHGITPAI/sG
 iFXtI3FrZ3MogsaH0dMyCUb6IjIaLUHo598HzGvqIb1lgxRoE7hSxyZRuR2zYEf0EG5f
 SWdw==
X-Gm-Message-State: APjAAAVniHpDfgk6zH31yTI38ct/SuNYrvViLnB2rp+vDjrXFbhnsi0t
 Qhw9bZ7PgLupGHoF1awMpBU=
X-Google-Smtp-Source: APXvYqxossI4aU6pwFJhCfrqbj+HZM5LrpmwZru5RzRY1sbBA19PrYqquaB2cYODlJ4r1w8mqqfQvw==
X-Received: by 2002:a63:cb4c:: with SMTP id m12mr12957134pgi.58.1571662160373; 
 Mon, 21 Oct 2019 05:49:20 -0700 (PDT)
Received: from software.domain.org ([66.42.68.162])
 by smtp.gmail.com with ESMTPSA id b3sm13562285pjp.13.2019.10.21.05.49.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 21 Oct 2019 05:49:19 -0700 (PDT)
From: Huacai Chen <chenhc@lemote.com>
To: Andy Lutomirski <luto@kernel.org>
Subject: [PATCH 110/110] lib/vdso: Improve do_hres() and update vdso data
 unconditionally
Date: Mon, 21 Oct 2019 20:52:00 +0800
Message-Id: <1571662320-1280-1-git-send-email-chenhc@lemote.com>
X-Mailer: git-send-email 2.7.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_054922_193677_68BE3796 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chenhuacai[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
hw_counter() is negative to indicate fallback, but this is not a good
idea because:

1, ARM64 returns ULL_MAX but MIPS returns 0 when clock_mode is invalid;
2, For a 64bit counter, a "negative" value of counter is actually valid.

It is sure that MIPS has a bug when clock_mode is invalid and should
return ULL_MAX as ARM64 does (Vincenzo has already submitted a patch).
But do_hres() can still be improved so we use U64_MAX as the only
"invalid" return value -- this is still not fully correct, but it is
the simplest fix and has no problem in most cases (we can hardly see a
64bit counter overflow).

By the way, currently update_vdso_data() and update_vsyscall_tz() rely
on __arch_use_vsyscall(), which causes __cvdso_clock_getres() and some
other functions get wrong results when clock_mode is invalid. So, we
update vdso data unconditionally.

Fixes: 00b26474c2f1613d7ab894c5 ("lib/vdso: Provide generic VDSO implementation")
Fixes: 44f57d788e7deecb50484353 ("timekeeping: Provide a generic update_vsyscall() implementation")
Cc: stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Paul Burton <paul.burton@mips.com>
Cc: linux-mips@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Huacai Chen <chenhc@lemote.com>
---
 kernel/time/vsyscall.c  | 9 +++------
 lib/vdso/gettimeofday.c | 2 +-
 2 files changed, 4 insertions(+), 7 deletions(-)

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
diff --git a/lib/vdso/gettimeofday.c b/lib/vdso/gettimeofday.c
index e630e7f..5a31643 100644
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -50,7 +50,7 @@ static int do_hres(const struct vdso_data *vd, clockid_t clk,
 		cycles = __arch_get_hw_counter(vd->clock_mode);
 		ns = vdso_ts->nsec;
 		last = vd->cycle_last;
-		if (unlikely((s64)cycles < 0))
+		if (unlikely(cycles == U64_MAX))
 			return -1;
 
 		ns += vdso_calc_delta(cycles, last, vd->mask, vd->mult);
-- 
2.7.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
