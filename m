Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B328F3AEE5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 08:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UayBuzOl4HaKxB79/xVd/7vXuRe8+omy+khjr2kV02k=; b=UtTf9yubZC0ApU
	gOE4Q9aQizhJSXt3dvVwSUUw8IIQJsp9RgZ3/k6xvhnNRCizbrcDF4HwOrpXm199WaAiYtcAH1Kcq
	kLX62aWsCcSWojJiny4dfwU5I5VKd7YVw7ZjkG45iBk314mGcbsvwS8kU3T6/LCCsRjk1JHK5J2TD
	9UDWkmae1cuFaGAlcYZurohe00w44RhV9VoMaLWMlHsHoJJ2VpizkHCJP94tNCJGnJDSdYyipAOfY
	bk/VplVGls4HHFBYZJNnzsMuS+6AtYmTl7gl45MDuyvuEpVOlbk1/1scqLUGSNYyfVR146qkmE7Z1
	VGgcPtaXeFJLItnrXFRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haDSH-0007JC-Q6; Mon, 10 Jun 2019 06:06:53 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haDS5-0007Im-Jw
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 06:06:42 +0000
Received: by mail-pf1-x444.google.com with SMTP id 19so3800693pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 23:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/Dkvj991Uhw/1cfRgxPNcyrHB69xx77ySHEyTXjhqvA=;
 b=JivEgBVuc6FZ4RjN29MeUE/bi4q5QoB1acpQCvG8UpXZhGQxck6vFiqw3+HjTh4Z5W
 2K4vQW/5irgR3BnFrr6hbyNMNs+TGlC5gFHh39gF46VAA6T3UWprM0IpMfaexBbj7klS
 C0Urd0dp0FU36novirPjriUnM1bK4c4qYvHL5ciE28lX6N/I6tkzuWewsiYx41IgwElK
 8EN8i0ved+yvkXSHOyHWnRxljY31ztw1L4wSWA9XJg4P1lxb+WrzDxCzsVGJ9b6EpCpr
 lNF96CTDQxEDstXRPOrYiz/mixGYEg9zIzZHwEFO467O4vSldUCZJuNfgCWnHkneFL4s
 oaew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/Dkvj991Uhw/1cfRgxPNcyrHB69xx77ySHEyTXjhqvA=;
 b=MwtLxbYhoLitHyjiZE8dgf4Zl1YgLLK39IApem4kcXdYTFrnKZJkH1RVz5Attr9nfL
 PVoCKmIpmRpLrutbMW/vJiOn/8G4SdAK1+sGsLZiKFqIwrFEwheWdVWKpCbCz8EIz3S0
 8jKXsBY7gwLAqVwNd4SaBoGlzrXMG+vb78Go5eFq8q1OcSrCkQBGuZF4loRFCeOBvQct
 cOhvrKZNYqWM6xyx9+OtkpDhpLWBBem78qO4UFgTEVr2I354tABzMdT/CPLxE6wynRLY
 X8b6gAZ5lCcZt98MvPHb81I3IFWYbEYIUfHhRvwD42FfoD0PM+eBbrYl7vnz9vFd7y9X
 ONPA==
X-Gm-Message-State: APjAAAXAIxb3qkqtXwrfXkm6fy6kcTnOBuHMGPJyOiWpYncbLR31f9u1
 87Qjmww2WvvFAlywP4qqMjoXuw==
X-Google-Smtp-Source: APXvYqwLbTkJ83xIZQSN0X41sV2Qx5mmIUMQI8suaFwh1ovaQIunxZGLx5yEKCwIgFShFJqoprwhXg==
X-Received: by 2002:a62:2643:: with SMTP id m64mr70607053pfm.46.1560146800022; 
 Sun, 09 Jun 2019 23:06:40 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id 26sm9290214pfi.147.2019.06.09.23.06.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 09 Jun 2019 23:06:38 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dave Martin <Dave.Martin@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 James Morse <james.morse@arm.com>, Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH V2] KVM: arm64: Implement vq_present() as a macro
Date: Mon, 10 Jun 2019 11:36:33 +0530
Message-Id: <7c2590c4d8cc95cd40bbb05c0d0c5e2b0735a16b.1560145715.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_230641_660818_4657A326 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Viresh Kumar <viresh.kumar@linaro.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This routine is a one-liner and doesn't really need to be function and
should be rather implemented as a macro.

Suggested-by: Dave Martin <Dave.Martin@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
V1->V2:
- The previous implementation was fixing a compilation error that
  occurred only with old compilers (from 2015) due to a bug in the
  compiler itself.

- Dave suggested to rather implement this as a macro which made more
  sense.

 arch/arm64/kvm/guest.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 3ae2f82fca46..a429ed36a6a0 100644
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
+#define vq_present(vqs, vq) ((*(vqs))[vq_word(vq)] & vq_mask(vq))
 
 static int get_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 {
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
