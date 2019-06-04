Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6335B33E19
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 06:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1SjmnMYLSVv8gdulHD8r3mplRmBKj+ReQHWB8Sp/+nQ=; b=sVVDKdNPUsU+MI
	0iKnGStvpPseiqMjS7nsEwy0NzMXkpkKmGhV68pznZyau43EY6JCQTqgRngBhYZQSpWfkQqpaEeLM
	1PS5KrsxsefYDokHdVfLfwLQqXy2KTd82Frai2SDKOcJU1RjeU62cNj8AuSYTm7DsvedApjfJS5H2
	6DnYvuCWTCRVTq+PGUc9nvNOn95OsSX0Iua7PFD97DuLC14fLWi3lCNoxNWKuiqPdNpA/izHf1zXV
	uVsp4hK9P6f23s/Os6AEn7yGaWCIKhbW9vNLaG93BGECfBzNp0ziPCFUiEBu4zdnSmlWWOFPnYZ8v
	QE5TXHGXyb3yqiAB1ang==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY1Ih-0007NG-AE; Tue, 04 Jun 2019 04:43:55 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY1Ia-0007Mo-UW
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 04:43:50 +0000
Received: by mail-pg1-x542.google.com with SMTP id 20so9584614pgr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 21:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zkepnFRWjo+2i9EzIxBtZYocaRmAxYlop81Nj4rH8DI=;
 b=J8sz4rTevobviVKwm+dLsHY0zZAT9dT0y9oQKyafTlFYIXFXc0sZ/DS6ZSOiJpH4ci
 KWIWCxBwVCaPaC6geJvwYMf++4HvY7OTCHRLscuRijfmR+cSNydwyg5D7V0LxdI+LGJj
 VoIsuIUSlisSzGAnZPF1DUqV6SKLx89VTa4WQfp3wugLav54sY7mHjBqxF+0JGokf+x5
 vAXrGc2v1k5D8fJriujqAgW3MBU+vh7xu/kdqnI+obXgP0yWUAbhuhkTIFIKQ3sLgrpa
 LHfdBBRDqAXOzJ4d5JHexjtnNKCmImiX9N+T5AaQoeIXuM7pSq+BGNA0pB/V9nTjcFod
 Ax6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zkepnFRWjo+2i9EzIxBtZYocaRmAxYlop81Nj4rH8DI=;
 b=fVmDNXdSX62K2QSOJYMrVVFpMXS8+gn4YHszqQ7gmA4UWT8uN3wCPGdBHOLTdg31GY
 81spipJDMu96TFnOytoxKUb0D87Qae7xwEVVagpAoGsGplUr9czmzgr7766QZ0tMdY/Z
 3ycvCjRw7fC4/zJEF2aVuapVFMUSnm8cCczgPgr4Cr/WfeL9UQLxR9H6PQOctCUB8/iZ
 L57yYNJUppD/uUJktYLEDMv5wlhp8xXJ2+vU53dJMkaaSEFSOJocxpRT3CEUqEvCn4zT
 8ISqm9PPAYFBZ69X3Im2tobzCX22d9Oz7hd25xh04Oav3cHlCoBENzsks0qhFYbKYb+0
 YKaw==
X-Gm-Message-State: APjAAAWfdiOc3KJvhLwhHMStEnFbPag2Yx9ap0zt1od0oPAerduzEshq
 IcNsaag3gY+F3KzE4a5Jo686kw==
X-Google-Smtp-Source: APXvYqyrbfVVhnHOSNRF/Ni0Um7ccZKTk5f7Qfxx4j3T7CrtwO7Q4cK+39lbl+3EGYtoAYqA4PM09w==
X-Received: by 2002:a17:90a:ff03:: with SMTP id
 ce3mr34487977pjb.81.1559623427427; 
 Mon, 03 Jun 2019 21:43:47 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id q17sm24195389pfq.74.2019.06.03.21.43.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 21:43:46 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dave Martin <Dave.Martin@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 James Morse <james.morse@arm.com>, Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH] KVM: arm64: Drop 'const' from argument of vq_present()
Date: Tue,  4 Jun 2019 10:13:19 +0530
Message-Id: <699121e5c938c6f4b7b14a7e2648fa15af590a4a.1559623368.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_214348_999861_C6AAE7FD 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

We currently get following compilation warning:

arch/arm64/kvm/guest.c: In function 'set_sve_vls':
arch/arm64/kvm/guest.c:262:18: warning: passing argument 1 of 'vq_present' from incompatible pointer type
arch/arm64/kvm/guest.c:212:13: note: expected 'const u64 (* const)[8]' but argument is of type 'u64 (*)[8]'

The argument can't be const, as it is copied at runtime using
copy_from_user(). Drop const from the prototype of vq_present().

Fixes: 9033bba4b535 ("KVM: arm64/sve: Add pseudo-register for the guest's vector lengths")
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kvm/guest.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 3ae2f82fca46..78f5a4f45e0a 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -209,7 +209,7 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 #define vq_mask(vq) ((u64)1 << ((vq) - SVE_VQ_MIN) % 64)
 
 static bool vq_present(
-	const u64 (*const vqs)[KVM_ARM64_SVE_VLS_WORDS],
+	u64 (*const vqs)[KVM_ARM64_SVE_VLS_WORDS],
 	unsigned int vq)
 {
 	return (*vqs)[vq_word(vq)] & vq_mask(vq);
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
