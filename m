Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E731936F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 04:29:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n9zU+kfoPaONC2IApnbU0UH4oLDdQoIWIz1LKT/kySc=; b=FJRFSw5CFKQ1cU
	GjKbPNT6WvQ4siJ8Tbd7RJAwoCFaYRO9ih3gge3grce3m6c5q5TqyTMF5HSIEk5k1Y4Je4zeSshsA
	8Ml45tRIOtHvJRMZPA4NdUy9Wrx/6tQUFipa7pj9n/EkJ7qojd3KBxmmX+r/xuoCzPQHM95MpWjjN
	IIZcuhvMqPV7j07FHrIgXDlkRkJFcXal7E4KWelMwTJswLaFDseq8iBua+pEabOB5V2ypgyMSntEM
	2m1hUJ8Cl39EWVrmGp/5zCqjOMYOJjy/b/MFv94VMgCj1XAKJBtvdeIaMnFN8BVywcCQ5T6NrPNY8
	U/2XDAD257G2jkgLs5RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJD4-0000S9-7S; Thu, 26 Mar 2020 03:29:34 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8J-0004g6-R2
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 03:24:41 +0000
Received: by mail-qt1-x844.google.com with SMTP id c14so4230716qtp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 20:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=d2Tg6DUqu4h4AoeF1TJqlJ7g20oT0br2Hcwg7d/p1G4=;
 b=W08QSBFeQAtNj54YvzgesJNcVcH7833kHC2Us83ZevVOe7Do2dNazfnDt+CowHHQIC
 faz2AvdaBb/yLUxNw0/J44AfAn28mCBeR6ZDqxdwi8lE6AphaLIb5sZ6jxgB7vY9oOIk
 WirTf2XUGuqGE0ims6heIVFQaZ1NjjK4vA/HACW8LgMbhJcnRZ8fO4gf3Ukmff15jWgO
 itOmuS1IhfrI1BHKq+fLFhc1JPpepcBtDb/iE42VAxTYZOSl8arS8TAxmsuXEpTMt1T1
 QX+gB0l2JZ6f1BbyCORa0271cXO+lTRznlXSB/d/5l8qUgKci6e0pTZFXHFGgQZwxPKx
 G61w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=d2Tg6DUqu4h4AoeF1TJqlJ7g20oT0br2Hcwg7d/p1G4=;
 b=GleTqH67ZAXMs9Q+5lDLYT+ocFxky74hA9hDEPxj0T7/dD7Tsy/bU37bPEM0eHRLza
 0wUrUwNM2pr0Ep5jh1kIOs+wqa44oCA6Fdkp4LNOegNNRleRsmG6PEm1aOoC8IFDpoQ4
 aHdIGjIrgYh4fA9Gq6XHiX4xN6PII1IlbtB/JyYjmacycxlJAcULbHeAgTWH72LCBi0r
 SDfXotpFHtdCiqdAZzpTsAR3wUwuVvaEBiy7et2CycDpADaPlk6FQnWYTxp7N5bnu71T
 Qu6jDsYtmiNvG5CN+D5Jf365UKAcgY5Wolk2el3HUcRSHdudELcUz1hzdiiZ8uIk9jLn
 dvvA==
X-Gm-Message-State: ANhLgQ1YvYM27AQ0nCNP2toA9hKPWAXIIyYzfpbO4zh53fQzD2AwTrj9
 w7r62baLrc0Q6Sb4W/tWw6A5lw==
X-Google-Smtp-Source: ADFU+vtNI1N6KYYNTKClbFa5p1eL7S/68psb1NMui9aroUYD5+m0J4zDvXEIXwzpeJXNUnHnRvaNyA==
X-Received: by 2002:ac8:6edc:: with SMTP id f28mr3781501qtv.271.1585193078245; 
 Wed, 25 Mar 2020 20:24:38 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:37 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 10/18] arm64: kexec: cpu_soft_restart change argument types
Date: Wed, 25 Mar 2020 23:24:12 -0400
Message-Id: <20200326032420.27220-11-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202439_923391_9B0D05D6 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change argument types from unsigned long to a more descriptive
phys_addr_t.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/cpu-reset.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/cpu-reset.h b/arch/arm64/kernel/cpu-reset.h
index ed50e9587ad8..38cbd4068019 100644
--- a/arch/arm64/kernel/cpu-reset.h
+++ b/arch/arm64/kernel/cpu-reset.h
@@ -10,17 +10,17 @@
 
 #include <asm/virt.h>
 
-void __cpu_soft_restart(unsigned long el2_switch, unsigned long entry,
-	unsigned long arg0, unsigned long arg1, unsigned long arg2);
+void __cpu_soft_restart(phys_addr_t el2_switch, phys_addr_t entry,
+			phys_addr_t arg0, phys_addr_t arg1, phys_addr_t arg2);
 
-static inline void __noreturn cpu_soft_restart(unsigned long entry,
-					       unsigned long arg0,
-					       unsigned long arg1,
-					       unsigned long arg2)
+static inline void __noreturn cpu_soft_restart(phys_addr_t entry,
+					       phys_addr_t arg0,
+					       phys_addr_t arg1,
+					       phys_addr_t arg2)
 {
 	typeof(__cpu_soft_restart) *restart;
 
-	unsigned long el2_switch = !is_kernel_in_hyp_mode() &&
+	phys_addr_t el2_switch = !is_kernel_in_hyp_mode() &&
 		is_hyp_mode_available();
 	restart = (void *)__pa_symbol(__cpu_soft_restart);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
