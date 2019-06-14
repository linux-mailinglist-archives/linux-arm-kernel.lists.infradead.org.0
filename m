Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2424345280
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGrTGUD8J/78pr87Qfo+1yvMxNqw5lJ2xHsoIQ5HGO8=; b=OJWOwMT5fZfjFq
	PDDC31Rej1KhLruoC2nYqKAUCuD7tYy+gtrg7El/sCIuxSfRozWnoF/DhTtJVyVXoefwFoa7IBBWM
	S9y2XMqd/QaBM7PADhKOvYrSOFEKtCzcdvzQiinR3SxWwoKxD0VIuz6y5pecksMG3U0wKhLd6em/C
	xTixuMuLovm13WWbT2cjCMPaGIiG5u9embOz44dSU+hLkUHVP4uR9pcOaHPxHTkWZJzxekMXDH0TU
	NEN7fBuP4aIh7CtNrIORhrPpO/X42hiwrUAFGYs3nBl2kxSvYkiJ0Mh9rayNbu/2v/lSrBr6ES30d
	OKxcMX+donKOiZiDRpcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbceR-0000Z1-0I; Fri, 14 Jun 2019 03:13:15 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcdE-0008Rk-Lt
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:02 +0000
Received: by mail-pg1-x544.google.com with SMTP id k187so688981pga.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QZmd1kVLh8a0enxFfoIC/p5hW82ft4CjkM7ASI4iKD4=;
 b=EvZ8YJG4wMc9LRAO6zkuZDB6vSMjpc5gH6HrZCzProPQlk2T5U44R+xBWLpmPhGOl1
 EYtvILwKXnEhHhYC4hhnw0FLXZWT16beuQnjDfHqyhxbcF1goUL0Fu4gXpO1oNVzy5gi
 2gzTcM/BWmzycyhn5rSzl9dP8Jkw9xDSdvIMLeHKQVYMDAgVH/bo2yXFqIYo8r3Ixml5
 HVm8knVEon61EpTiy1YxUfObhlo4wvz+shhRrnO5/g3U6lYwZV/lODFQCepgLvFqGced
 AO1fcHmxMHwR4NplGJhXum/Ogb6ZdMDHtvWtC0uAePx4nzM2LU2xR6nIFcuf7NdLI1SF
 z5sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QZmd1kVLh8a0enxFfoIC/p5hW82ft4CjkM7ASI4iKD4=;
 b=Xvo9AmWA9BQuAHiaJoRQc0+IKtTH/RySXHL91UxGHX08JZjtYOEil+4n3a6gL7bh56
 gjhRWPmtt3Rw8OEWbj2Pv0ZKcWTNg11SvkLr6zPZZwjeyIgP2qY1FZzrOVzsk2kLQs02
 g3FWAY0PuW7m3R4apZ1tNu6HggWw+oyKpXZDe9KWwuxPKux2WslnweJXxDUGdYrlO9gB
 dN96srARKgfXCsb9Snt0nzIuGElt1b7u/uz3UaJgoYkiEhRwOTCIjQ/PMHtwwbjBkPV2
 StlfmcJBE5FdkGC/J1XRQ7C/xUx0Yo7Z76/x0caWZagVi1yy0k5M73166z33F8TGsP7C
 8Fqw==
X-Gm-Message-State: APjAAAXd2yC7VpV5hNT2S9VD+j3gxLBmJNhMNy4ZN4EqcubR1XZxsvw9
 dL8+LGR8F9pC635Vz94jvfgnKP0maww=
X-Google-Smtp-Source: APXvYqx3siDfJdE96lBsZdB9DtFQr1ZpNWzKGo5dP44HA8C8Ry/tMqyMeRfDgDx8gJYyYbwGnrGPXg==
X-Received: by 2002:a17:90a:8902:: with SMTP id
 u2mr8561016pjn.96.1560481919775; 
 Thu, 13 Jun 2019 20:11:59 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id e127sm1035402pfe.98.2019.06.13.20.11.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:11:59 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 02/45] arm64: Implement array_index_mask_nospec()
Date: Fri, 14 Jun 2019 08:37:45 +0530
Message-Id: <3f1bc5e6cfd1d72a2e3612aca52a3811f38332cf.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201200_760544_FE61AD4F 
X-CRM114-Status: GOOD (  10.91  )
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

From: Robin Murphy <robin.murphy@arm.com>

commit 022620eed3d0bc4bf2027326f599f5ad71c2ea3f upstream.

Provide an optimised, assembly implementation of array_index_mask_nospec()
for arm64 so that the compiler is not in a position to transform the code
in ways which affect its ability to inhibit speculation (e.g. by introducing
conditional branches).

This is similar to the sequence used by x86, modulo architectural differences
in the carry/borrow flags.

Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/barrier.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/include/asm/barrier.h b/arch/arm64/include/asm/barrier.h
index 574486634c62..7c25e3e11b6d 100644
--- a/arch/arm64/include/asm/barrier.h
+++ b/arch/arm64/include/asm/barrier.h
@@ -37,6 +37,27 @@
 #define dma_rmb()	dmb(oshld)
 #define dma_wmb()	dmb(oshst)
 
+/*
+ * Generate a mask for array_index__nospec() that is ~0UL when 0 <= idx < sz
+ * and 0 otherwise.
+ */
+#define array_index_mask_nospec array_index_mask_nospec
+static inline unsigned long array_index_mask_nospec(unsigned long idx,
+						    unsigned long sz)
+{
+	unsigned long mask;
+
+	asm volatile(
+	"	cmp	%1, %2\n"
+	"	sbc	%0, xzr, xzr\n"
+	: "=r" (mask)
+	: "r" (idx), "Ir" (sz)
+	: "cc");
+
+	csdb();
+	return mask;
+}
+
 #define smp_mb()	dmb(ish)
 #define smp_rmb()	dmb(ishld)
 #define smp_wmb()	dmb(ishst)
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
