Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9C61B2166
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:18:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQYttvNgQsNp6CmjOD3dgLhC4hf2F70GM20m3g1is9w=; b=kGrVK0bwZBj/JC
	uAPNyA2kV4f6ALkNhmg2oHaVmsV9QAXGqMFAjsKJ3bdyi9Z3f2V6kiruLyCP+DpjZMetZQ2Rob0RV
	469+pQA185FT/dm08PNSPLsgpiZEqmyvM/pr3MhuBQ5llYtY3BXx+ed+uNlGaI+nEQSEQNPwy9bjp
	fGUvQv2+VVOl23ApWPI0can7B48ENyq9z7P5YytKanSp52xnpU+eY4M5K2Qc+Ae64qc7GMWN2FEDu
	/OUhMAGfc7X+ykgfpaFwm/c0I/K89TmLNhlofHSXrON2mikVLEAEw8BkftVILAQD3siZHynB48Np9
	oAVsFCCwnfzlQz4ac6iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQo6q-00084d-9K; Tue, 21 Apr 2020 08:18:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQo5x-0007Sw-BJ
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:17:31 +0000
Received: by mail-pf1-x442.google.com with SMTP id 18so2643464pfx.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 01:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qCOK+HxEBj2bh5BFlG2zt/46BhY0DW9NF3gypZJ6i18=;
 b=cj0aBop907dm+mkl5z5Mfm3dfJHK382iyGGadBdhXTU4SezE2MCsVNmjWKHydO1MeY
 hFpq9McPFpfy4rmx7G+Ad1j8hWL2TnkmF0IkMCtKAGmpU+zQZ6aqaTdmOppP8E8jMoFd
 Fk88jdQI+8R4LkqajRqwVMi8EwnmwqLx6QnbQ8a9F0T2Mu69VHyd9ana73iFO3tfR1QY
 WOG8lsevniXIBle/Wpw32M1HPnUM/cXVhVfyULOzUIUxNwMYRjXLGcKHakrVVhIkdCst
 HcA/EUYHskjCRFk4RGeoZHsmrSkm/oL6EadoBmaeDy9n6/Ei3y51wlw/4DW50BwDLHDj
 41mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qCOK+HxEBj2bh5BFlG2zt/46BhY0DW9NF3gypZJ6i18=;
 b=KziWrKMMsiukXVCk7mbKlrNROgKWcGi+PQZWVkb0LTBjVVoAM8uJRfYwGfJ3s06Ucm
 gbXmzKeFr/8UBRWAgzT92v7CLt6nnjwdUMBYIRydJnkMhk+bR9Y2ACs08bQhI/4VJKKX
 nDKH8RPktKffqSUsF3qYBGufhDUH+ZhkcACXNwmzlX+fUoqXpStEMrLS/SJB6DH90jVc
 Bxeyk/TiuUQBzv9HcJrGgtbRpPakvXukx5GT3GLSl6BmhpwYn7xHsuJdlvYRBgjN8kuf
 Q2vZXkR9A303tTqOgd8lN2L/794MzZdvK1gzyZ0MoVic31QVsHDCUzMWziDjKQyQG3zx
 WagA==
X-Gm-Message-State: AGi0PuZZo6bvQ+Af2xu9pwjNHOBcK8R+45zVseFe6P5xxhpL6P8c2U5a
 DEy4V8p4CdHHDuY47AwdR4kNxw==
X-Google-Smtp-Source: APiQypLl5oCj7vFGv7zZNaxGJsgDSRmBearvlFa0TCQKMUrRrSskifrV8HFOIzfmSxRHB+7OBiCjMA==
X-Received: by 2002:a62:18c8:: with SMTP id 191mr21232603pfy.255.1587457048276; 
 Tue, 21 Apr 2020 01:17:28 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id v9sm1610067pju.3.2020.04.21.01.17.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 01:17:27 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: akpm@linux-foundation.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, tglx@linutronix.de, mingo@redhat.com,
 bp@alien8.de, x86@kernel.org, hpa@zytor.com, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] mm: add DEBUG_WX support
Date: Tue, 21 Apr 2020 16:17:12 +0800
Message-Id: <23980cd0f0e5d79e24a92169116407c75bcc650d.1587455584.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <cover.1587455584.git.zong.li@sifive.com>
References: <cover.1587455584.git.zong.li@sifive.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_011729_513870_E4B8DADC 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some architectures support DEBUG_WX function, it's verbatim from each
others. Extract to mm/Kconfig.debug for shared use.

Signed-off-by: Zong Li <zong.li@sifive.com>
Suggested-by: Palmer Dabbelt <palmer@dabbelt.com>
---
 mm/Kconfig.debug | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/mm/Kconfig.debug b/mm/Kconfig.debug
index 0271b22e063f..077458ad968d 100644
--- a/mm/Kconfig.debug
+++ b/mm/Kconfig.debug
@@ -118,6 +118,39 @@ config DEBUG_RODATA_TEST
     ---help---
       This option enables a testcase for the setting rodata read-only.
 
+config ARCH_HAS_DEBUG_WX
+	bool
+
+config DEBUG_WX
+	bool "Warn on W+X mappings at boot"
+	depends on ARCH_HAS_DEBUG_WX
+	select PTDUMP_CORE
+	help
+	  Generate a warning if any W+X mappings are found at boot.
+
+	  This is useful for discovering cases where the kernel is leaving
+	  W+X mappings after applying NX, as such mappings are a security risk.
+	  This check also includes UXN, which should be set on all kernel
+	  mappings.
+
+	  Look for a message in dmesg output like this:
+
+	    <arch>/mm: Checked W+X mappings: passed, no W+X pages found.
+
+	  or like this, if the check failed:
+
+	    <arch>/mm: Checked W+X mappings: failed, <N> W+X pages found.
+
+	  Note that even if the check fails, your kernel is possibly
+	  still fine, as W+X mappings are not a security hole in
+	  themselves, what they do is that they make the exploitation
+	  of other unfixed kernel bugs easier.
+
+	  There is no runtime or memory usage effect of this option
+	  once the kernel has booted up - it's a one time check.
+
+	  If in doubt, say "Y".
+
 config GENERIC_PTDUMP
 	bool
 
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
