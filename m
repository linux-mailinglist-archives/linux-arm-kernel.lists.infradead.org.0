Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A593B29B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 12:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yl6oCW05evLn1Ph06iQcxV0X2j+2U1HSbeAycfNUD/g=; b=P+1bH9irTkMVxF
	4SgGrOzqu+D9AoPN9QKyOo/ePisgigkGjIt5ow5djXQvLz13WmCUK6Jab9/fOc3sNmHt6XUA3ksiR
	F7FX30qOilQmz/N4og+B7uMite12QLQBLhfLbabbLw+Ca8eKbY3iiQNTu1bd/bJgn+UCLXdW7Frox
	eQQHxtpXIRcP6s/i9GkjUgXzM2N/rSrlh7IfpIRUqjjsSePUU9l5ZAxtJX0qxaU9svpLMOgraJC+/
	kgUeTRPCm1sxZT5O0+DpktGZmnW9pzBgSyLKzj6Tx5dKTQ7wrKH13TM80k+mOAFdi/WyDG0Db5SyG
	irCh2L425NKX5/GpF90A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haH6H-0000vJ-2T; Mon, 10 Jun 2019 10:00:25 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haH62-0000ip-TG
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:00:12 +0000
Received: by mail-pg1-x542.google.com with SMTP id 196so4774137pgc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 03:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xLE9IGDGdclf5seO4s6mk7AfmrPI38Ub2I2BNpgZVTo=;
 b=PeTp1CxMq+zR12KX2wkiABCPYzSqQIDnWSVpSvstVkPPWnBZyDWVTL4H8QSP7JqDru
 TB9/M8ZIq8P8V0ShHkknV1lZAdsUqW1u18CrUend6YfToJ5g8Irn8doqeM6Ru7R9nI3k
 3RyuUhyCj8Ak+xE7uTLn44+Iy+tf6FtGZ9jsKrEDWl8uqWomvQ1cfPAvMdwsmQ4rSi2q
 6NeGcAeadhChSPTPh1KI2VucPfxv/e98rrBN4X+xq+7tPu1QjiJrEUp4jRetGH7m7Sog
 3u/QwyA4Uy/AbWddtsq7KMB8z5Gf5+2HKrLHrvm4H3QjI/yqwqVfrXg8dT5+cXQ6ZKV0
 zYkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xLE9IGDGdclf5seO4s6mk7AfmrPI38Ub2I2BNpgZVTo=;
 b=rhT6awFy6wi+ysyE2okaJlV52ASC9gahWiKOlxJm19grsuN2QWfKl/IRIKGFRarXcT
 NmQgPgqvjGclO9z/oAhxzao1cE0YWwGGueoKdCBZlo6xsmBCd93YJs2zqZZ49MZ8rIjc
 EkQ5lRAs00HrQHxVW192yFFFb0NSDEUuPBIfKieivgy7uyYtwWKEYgsNFcAgUGm6le9n
 JPxWC5hA0MlL2UAkC6hT/NkxD0ZjNWNYK2ZRS0bLDCYV74t1DrdgWnqeCO8C7sA+24oC
 4c0pzVve7KfdA4Meik75ZmbzaSVUdsVL9wDCDC60BaYaIUPYDV3OjTeiCdX+i1GPAOxz
 RrJg==
X-Gm-Message-State: APjAAAUnmQ/y0OrwX5o9glyM/fCFK9kfn1y196VkVCK4o1ngebsIR2Lm
 Dr/KckIYWnBl3ekxnDxuh8GGEA==
X-Google-Smtp-Source: APXvYqyTrGc5VbAA6ehlwFcrbKwbbIShkAJlagVDXOlRG1GE7uZWgJAtgL+wq6SkgRxGuHw4kI2D5Q==
X-Received: by 2002:a62:e518:: with SMTP id n24mr17466524pff.102.1560160810189; 
 Mon, 10 Jun 2019 03:00:10 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id m8sm18299091pff.137.2019.06.10.03.00.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 03:00:09 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Marc Zyngier <marc.zyngier@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH V3] KVM: arm64: Implement vq_present() as a macro
Date: Mon, 10 Jun 2019 15:30:03 +0530
Message-Id: <be823e68faffc82a6f621c16ce1bd45990d92791.1560160681.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_030010_970973_CAE13681 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Viresh Kumar <viresh.kumar@linaro.org>, linux-kernel@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This routine is a one-liner and doesn't really need to be function and
can be implemented as a macro.

Suggested-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Dave Martin <Dave.Martin@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
V2->V3:
- Pass "vqs" instead of "&vqs" to vq_present().
- Added Reviewed-by from Dave.

V1->V2:
- The previous implementation was fixing a compilation error that
  occurred only with old compilers (from 2015) due to a bug in the
  compiler itself.

- Dave suggested to rather implement this as a macro which made more
  sense.

 arch/arm64/kvm/guest.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 3ae2f82fca46..ae734fcfd4ea 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -207,13 +207,7 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 
 #define vq_word(vq) (((vq) - SVE_VQ_MIN) / 64)
 #define vq_mask(vq) ((u64)1 << ((vq) - SVE_VQ_MIN) % 64)
-
-static bool vq_present(
-	const u64 (*const vqs)[KVM_ARM64_SVE_VLS_WORDS],
-	unsigned int vq)
-{
-	return (*vqs)[vq_word(vq)] & vq_mask(vq);
-}
+#define vq_present(vqs, vq) ((vqs)[vq_word(vq)] & vq_mask(vq))
 
 static int get_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 {
@@ -258,7 +252,7 @@ static int set_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 
 	max_vq = 0;
 	for (vq = SVE_VQ_MIN; vq <= SVE_VQ_MAX; ++vq)
-		if (vq_present(&vqs, vq))
+		if (vq_present(vqs, vq))
 			max_vq = vq;
 
 	if (max_vq > sve_vq_from_vl(kvm_sve_max_vl))
@@ -272,7 +266,7 @@ static int set_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 	 * maximum:
 	 */
 	for (vq = SVE_VQ_MIN; vq <= max_vq; ++vq)
-		if (vq_present(&vqs, vq) != sve_vq_available(vq))
+		if (vq_present(vqs, vq) != sve_vq_available(vq))
 			return -EINVAL;
 
 	/* Can't run with no vector lengths at all: */
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
