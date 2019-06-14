Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAD545272
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wVE5f/Q5Nj3SOHmGothpeltT7CJaCfVTPP9qGOmGPUM=; b=Tdefw8e9hSttGI
	OOLfrjmOPA6AgyHNWHlsHZWNfcVKXkHTsFnCO04g8i7mBovQ+8gO+4dszGBJqN7Wd/ML24/sivaJz
	/EoxJzPzPVgO3JrTP1DtWvxCRiAfWNSmhwopC+ZeLNuvfqjFVavtx8aMxD3fIKv42Jgh196b7NcjC
	nPNjgQ4DQg1ykaLukNNCX3Eu5VfIymOL9ArYeeXRyGNG8Xuk0tq9e0vdChGVMF8jH4F86b2fQXOQA
	+/lJN5rLFxuN5FaPqFTWDO37FJOw2XsYHEx6TvzGzNug+w+fSnICLc5vM+04npZitoR5oz09KycbQ
	J39/OyjKp4yzYB75zIQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcdt-00007Z-NQ; Fri, 14 Jun 2019 03:12:41 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcdB-0008PS-FK
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:11:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id n2so660998pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t+8ZINgorfc9/vHqnYTLmiCH63MmZJ4ah1lcUclNBnY=;
 b=sNIF4TaqtWZx+SWXbKFuSQaAHyH/3etk8jvo0f9cyStxOLJ7UvQrp3TwDEOw197rwO
 98mN3sbimtbmJkPhi84RBjFB0UN2qrwienlr/AJgSjaPpIAWaX+3frMl5trjF+1LjlC7
 k+5S98Sj+bieeo9G1hY6QVkFVZW1w6gGdz/v0owtlM8lV/YHFr9ZDCWLMyLz6Arljf+h
 zQc27CMZcJzoHdGRaiI2x8pU1bCcsCzzCi4eepW4MYwrdIcpbHUUBM1gMzCjZ8yFVNPi
 D7GLLGrHEi/XtWbRyH7DR9nFwnu6aPy2106vuNB4XahxgkFzg4j79VhVCpyfl8td3Jq4
 3I6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t+8ZINgorfc9/vHqnYTLmiCH63MmZJ4ah1lcUclNBnY=;
 b=TMj9wk/iRcEqS4ti/qzGXdbQysxfz/5gzUE4aryly2NrwPNiKp7l6JnBENyjHzs84q
 14Ubl+Kub4oIYN+LV18XjIOW/5wisiwfB9h0eL8ZvfdqWLBQdd3hGubb0sF8bYiXceXy
 hl4GqY32bvWZEeveDpVZttmqsteqdBUS0cGkNk/TPV8L8iX+z9u+Xki/c3nW6vPEkMVA
 36kS1RwbwAG2lDeb25QnMRvkIr8jL5zzjMZ/8Oj2uOgdwnIrGZTYJCUsZfuksSwPa4Qe
 6Dxl72e4sPosYNiA7oemEe4MmfBTklLBdai6ySuhidFTXP28J6vDHXwFoJicZGje8bcv
 zJjA==
X-Gm-Message-State: APjAAAVkJNvf5WiUAATMfAZ/VaZ7hKq6qR97ZEmp6RxFf2tlHXoSRsvo
 jg99h82p/SEGa1s1KhMFYsKdTmwtQtE=
X-Google-Smtp-Source: APXvYqyAzgvvDB61N6I95Bv68pRhUXvpbEJUgMHj4bpypTUrI9sTqkH2OWfxMqOd3+IJUx5FEUOrJQ==
X-Received: by 2002:a17:90a:19d:: with SMTP id 29mr8971505pjc.71.1560481916646; 
 Thu, 13 Jun 2019 20:11:56 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id 12sm1107859pgw.55.2019.06.13.20.11.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:11:56 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 01/45] arm64: barrier: Add CSDB macros to control
 data-value prediction
Date: Fri, 14 Jun 2019 08:37:44 +0530
Message-Id: <9cbf3ace67c45ddb00ea1a1567d20f6954fbc15e.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201157_512285_8D783D96 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit 669474e772b952b14f4de4845a1558fd4c0414a4 upstream.

For CPUs capable of data value prediction, CSDB waits for any outstanding
predictions to architecturally resolve before allowing speculative execution
to continue. Provide macros to expose it to the arch code.

Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/assembler.h | 7 +++++++
 arch/arm64/include/asm/barrier.h   | 2 ++
 2 files changed, 9 insertions(+)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index f68abb17aa4b..683c2875278f 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -95,6 +95,13 @@
 	dmb	\opt
 	.endm
 
+/*
+ * Value prediction barrier
+ */
+	.macro	csdb
+	hint	#20
+	.endm
+
 #define USER(l, x...)				\
 9999:	x;					\
 	.section __ex_table,"a";		\
diff --git a/arch/arm64/include/asm/barrier.h b/arch/arm64/include/asm/barrier.h
index f2d2c0bbe21b..574486634c62 100644
--- a/arch/arm64/include/asm/barrier.h
+++ b/arch/arm64/include/asm/barrier.h
@@ -28,6 +28,8 @@
 #define dmb(opt)	asm volatile("dmb " #opt : : : "memory")
 #define dsb(opt)	asm volatile("dsb " #opt : : : "memory")
 
+#define csdb()		asm volatile("hint #20" : : : "memory")
+
 #define mb()		dsb(sy)
 #define rmb()		dsb(ld)
 #define wmb()		dsb(st)
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
