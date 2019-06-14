Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B62B5452E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Mnj7cjL5xrqpyGoAxqn17DLmVnWv+waojwXBq6Ns/Y=; b=rn7B7o2Tc3D58o
	IFzSA9msP58pQCO3pBfE1fbt5lHbL1+6Xlx+hSdIFWcmlEGX6K135/Xel24XSCpzISN59tgd6eYiC
	qCcRpP9BL1+4XIGUPu62uBnUF9AEC6yFlSyuy8oB6VvOD7c9L+fW6qIIob7RCzOuHHMoGaGdJn/yu
	OWjJGe5jRwEK282nBLITBRgjRP/gDBnBM7xa4SqYhi3V6rgRHcEE3dd3aTP1rhugAJc+HLAKuXmxV
	XEOt6vLYLSCN0P2eiZy4C/QLaBGwbMQfaHIW74I3CiE2cj///145A0kxcTkvsgMYv3mDVJgvp2J4e
	nLjgB8PvJtkbNiHuMw+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcqR-0006HZ-BK; Fri, 14 Jun 2019 03:25:39 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcel-00013x-JI
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:37 +0000
Received: by mail-pg1-x541.google.com with SMTP id s21so656671pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Jfnhx8qRw0jZ5LbGeW1WuYGyQJR2HfAomwQkRmg+oIk=;
 b=qJNBo0b4V/Cci6PjOFqtp7KxCk67ZIcnOyB16a8gon1qTpdr5xVxqrLnuWhqdFNwaM
 4IEiF02Kn66h2IT/dqtvYoVprY7kDlQ3auUSd+gCtWOisbg3BgIPgILlxtw7cDwDr6+5
 g3nUolw2TIhK6XAkhpzGrNxgTZe7gE4zG9rEHDINQZN8VA4O0bincWY61fE2whJrQnSy
 lLQ/VStv4avbGajJPyQab9L+Oae6AfdvNq2E4BHs1JvdYc45Qqpn5w+RI8Lr12aKqcpx
 jFPB4dwrBlFEulIsMgEH65dAPjlFyGx0mSWMJ2ZfixT02mGRRFp71hURgCO3Re6U5FoX
 6WNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Jfnhx8qRw0jZ5LbGeW1WuYGyQJR2HfAomwQkRmg+oIk=;
 b=oL0Al3eHIziJGNdMDzlm+lf1Ef/rTVvFaQNlicoCyoBn+fFrHwg7+93Vj3y9KKG4SI
 aimYGt0nP57tQOoi8GoCBB0WEPd7Y4N1UuNhIJm4DfMbxFaNz8KJrM0LV7WwM82DL42s
 f5O9Qz4YJAR1PQ7MK2VOkeuzH1j6LhChF1Zmc4awUkExUeF+ffVYzKZnV28kSMHj2kAa
 vLAh/ZgcbzwUJGhv+cdZu30zQBhuaHXfKKIB+K7po/eUE8RmukEf4SnR/EBaWlAhlfYJ
 QWTjUmrOye45RQ2qFy/J4CrQqgXsG2wDh/H5gT6MDdNWv1UgWefm4OItLAwqwTSkcS29
 7wXg==
X-Gm-Message-State: APjAAAUbkYj1Pequ2hthidjugsieGMVGDPG7oHaeEHY0gAxB0qn4zSKx
 e5XCPXyiASNLjl4fAH9kbMQOr8zmhOs=
X-Google-Smtp-Source: APXvYqy15f2JPOdFqBo2EZqq1Wijt1qcjXvFmXzWd9/Lc9RNPpfHv8WWo29ohtqmAJjjp8ci4qcIow==
X-Received: by 2002:a65:6295:: with SMTP id f21mr34672569pgv.416.1560482014249; 
 Thu, 13 Jun 2019 20:13:34 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id j8sm999110pfi.148.2019.06.13.20.13.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:33 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 38/45] arm64: KVM: Add SMCCC_ARCH_WORKAROUND_1 fast
 handling
Date: Fri, 14 Jun 2019 08:38:21 +0530
Message-Id: <d46e18606161998259bad6926ffb0f388ebf9c27.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201335_857078_A29AEA78 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

From: Marc Zyngier <marc.zyngier@arm.com>

commit f72af90c3783d924337624659b43e2d36f1b36b4 upstream.

We want SMCCC_ARCH_WORKAROUND_1 to be fast. As fast as possible.
So let's intercept it as early as we can by testing for the
function call number as soon as we've identified a HVC call
coming from the guest.

Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Reviewed-by: Christoffer Dall <christoffer.dall@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: Made changes to hyp.S instead and fixed registers ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kvm/hyp.S | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kvm/hyp.S b/arch/arm64/kvm/hyp.S
index 8d3da858c257..8aa2ede8c999 100644
--- a/arch/arm64/kvm/hyp.S
+++ b/arch/arm64/kvm/hyp.S
@@ -15,6 +15,7 @@
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
+#include <linux/arm-smccc.h>
 #include <linux/linkage.h>
 
 #include <asm/alternative.h>
@@ -974,10 +975,11 @@ el1_sync:					// Guest trapped into EL2
 	lsr	x2, x1, #ESR_ELx_EC_SHIFT
 
 	cmp	x2, #ESR_ELx_EC_HVC64
+	ccmp    x2, #ESR_ELx_EC_HVC32, #4, ne
 	b.ne	el1_trap
 
-	mrs	x3, vttbr_el2			// If vttbr is valid, the 64bit guest
-	cbnz	x3, el1_trap			// called HVC
+	mrs     x3, vttbr_el2           // If vttbr is valid, the guest
+	cbnz    x3, el1_hvc_guest       // called HVC
 
 	/* Here, we're pretty sure the host called HVC. */
 	pop	x2, x3
@@ -1003,6 +1005,20 @@ el1_sync:					// Guest trapped into EL2
 	pop	lr, xzr
 2:	eret
 
+el1_hvc_guest:
+	/*
+	 * Fastest possible path for ARM_SMCCC_ARCH_WORKAROUND_1.
+	 * The workaround has already been applied on the host,
+	 * so let's quickly get back to the guest. We don't bother
+	 * restoring x1, as it can be clobbered anyway.
+	 */
+	ldr     x1, [sp]                                // Guest's x0
+	eor     w1, w1, #ARM_SMCCC_ARCH_WORKAROUND_1
+	cbnz    w1, el1_trap
+	mov     x0, x1
+	add     sp, sp, #16
+	eret
+
 el1_trap:
 	/*
 	 * x1: ESR
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
