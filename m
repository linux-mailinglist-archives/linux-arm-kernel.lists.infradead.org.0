Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4C63B271
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 11:50:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJPLh0shnoQ7hY3kTD1tmNWjx9EzB7IDHfP0eCLRCj0=; b=RKhrf0igRZvhzJ
	o9ZTg5RQQ65qSG1Vvkb/gynHJRmEMA+nGxpS2X9NzIM+hlmT3PimUoR7HfYUdqGLZVsC2nmAeRSKe
	h5qEa2BV+M8kqRjiLmR45Of+BlqOamcAfEBSeRUlsGC22lT/GZJ5cVE0rYVAqTazrXf1W6WZK66np
	Tb1xh7yFQm0WxTc5eJfDn9oR7zZ70TjNwQ/mWjzl4ipLIrvs0IiYyFq1btGKLsyJ6kFfe5wcmQT5w
	3qRRtttjX4zRalXNGL7xI99MHS7+pRbgCwN0w6ju+ODzEs3kEjgu+xflPwqxXvpomXeFLMvvVpRjU
	8OQFMchRnuSSNDnPhlLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haGx1-0003hR-3i; Mon, 10 Jun 2019 09:50:51 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haGwk-0003gp-IK
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 09:50:35 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so4975303pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 02:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kcMkiDLN7tiwiQsNRFSRAPQinigwUeaLd/2nza4IvSU=;
 b=yT6RPU0CmwKG/FXMD1Wgkm2QRYHkYuYg+/raqwOkmXEjq3RAv2+lfhy9R5IOAS93RG
 i7tOc5zL3+RoZHOkwakdN/UbrwF7aF/rJw83u+svd+cmYj5VPG1O9R1FLsptHLQqB3Mc
 84Ntiy5ndSJrLIuA3KCS/hZIgDPK0UYohsaTdKTUOa0qHER7c7tlLOE0zdMhqCws3Bif
 g8+YdSagQ2c1Pt5DrPXrUAYDi5IxMc/xUSO9WUV6vwblZGT8pgtT4nzXBtqJ/0zJ4d2a
 ZdhsBkksjFQeFfD4gqnEB3Bzht6ugBXErf1g3PTvTVNBe1PmJl24fo3A584MOXTSzRtx
 W4lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kcMkiDLN7tiwiQsNRFSRAPQinigwUeaLd/2nza4IvSU=;
 b=HzxukvMzvk/T+azGJ8lHqPh7jLKlcNUlPgrCFTvxQKI8aG27iAuKd8+tnynAka5NYx
 aQgsHYA7N5ocxPwteahWulPwOOV0KF9pE0XHt6m0V7TzWCY5trI3mhGQRFgYHvJTuQyp
 35HfVCOlME/Uug8ymEaEbrpvCBX97eC724QM3m2BHbFnCAlpZ0DQQWRJbjQMrhcCYJhf
 7IDu1q1/hJ3bWTNAc6nDSDZHjZuioYG7vmXwkWgLJVIXMEKhKQUQO5KHK4Wj7o8B459E
 O3XiplWv3Gk2W/RW21yZ8VddFK4iJDYsm9xNLjlyA4pTtnyhTg6oHm2b1naocY7LAlve
 /DEQ==
X-Gm-Message-State: APjAAAUynUHwnTAOaOWS7LK1zZhtjMHYX3KfooGu75GNI6ajngjYv6ix
 BnUqTBRNaiKpR8NNz0dGCXOshy9qeTY=
X-Google-Smtp-Source: APXvYqxpR4cUB4btPVzc36PN9bN2L8r8IX/mf5wWOjnnmy45D/evuMovHEqSoavCWjijvi5HdwPJTA==
X-Received: by 2002:a62:d11d:: with SMTP id z29mr20325246pfg.21.1560160233436; 
 Mon, 10 Jun 2019 02:50:33 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id o6sm10260545pfo.164.2019.06.10.02.50.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 02:50:32 -0700 (PDT)
Date: Mon, 10 Jun 2019 15:20:30 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH V2] KVM: arm64: Implement vq_present() as a macro
Message-ID: <20190610095030.yurzajuyylyo57h2@vireshk-i7>
References: <7c2590c4d8cc95cd40bbb05c0d0c5e2b0735a16b.1560145715.git.viresh.kumar@linaro.org>
 <20190610090917.GK28398@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610090917.GK28398@e103592.cambridge.arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_025034_614741_DEA74265 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10-06-19, 10:09, Dave Martin wrote:
> You could drop the extra level of indirection on vqs now.  The only
> thing it achieves is to enforce the size of the array via type-
> checkout, but the macro can't easily do that (unless you can think
> of another way to do it).
> 
> Otherwise, looks good.

Below is what I wrote initially this morning and then moved to the
current version as I wasn't sure if you would want that :)

-- 
viresh

-------------------------8<-------------------------

From be823e68faffc82a6f621c16ce1bd45990d92791 Mon Sep 17 00:00:00 2001
Message-Id: <be823e68faffc82a6f621c16ce1bd45990d92791.1560160165.git.viresh.kumar@linaro.org>
From: Viresh Kumar <viresh.kumar@linaro.org>
Date: Mon, 10 Jun 2019 11:15:17 +0530
Subject: [PATCH] KVM: arm64: Implement vq_present() as a macro

This routine is a one-liner and doesn't really need to be function and
can be implemented as a macro.

Suggested-by: Dave Martin <Dave.Martin@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
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
