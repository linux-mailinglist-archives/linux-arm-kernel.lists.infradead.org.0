Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A77452D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uf0MNUftKdFblmffXT7BOT8WQ4naGuI/DAstHa3QItY=; b=DqhzT2iySlKoGJ
	LRFmUch4KNOTg10KYUVbtZFnZWsPjb+FyHXIPFI3MUV6qhKscrzHOSkm4eJE40u/fY+aXUebWvuGR
	DOrXEYYVu3WECn3LlQDjFBJuKXuaxjECkxrrwa61mklNQNqbe4GxNYgKF8gPR5m1SQDpZHvo+oBw9
	GaWmiDuT9ssicd6ZfsZTC5Ke2EL2WrFQy3NcXmvrsjj8DC92FpAVcLXh2EFYIi7fEYEfSu1pZMGcD
	gTdZ9mnZ+D5kizgD2k9DvK4t1CI146XT+EKBI3F9GIZ7mVuj3Um0VI6pJEkIgoNANoxPyZeFe4fx8
	k/0Z6aQgjcIcBKSJ6oOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcnj-0002sD-6F; Fri, 14 Jun 2019 03:22:51 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbceO-0000q0-Bl
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:16 +0000
Received: by mail-pg1-x541.google.com with SMTP id p10so690188pgn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hP63VKEYPHg3zKNj3xMaZwjK56Qq/K++eO//dDzRjvk=;
 b=XKzO/FoVC0F/C4cPzxh2/w9xDeu3OZ3640Q66sWIDaYrI4StlFuJ3ZBr1yFuUuBOeD
 lAPWHE6wpJixcIXHSeVdX7HYeAwZ1jk4l8IId6e2YoZyHBTw1Cbhs+1ZcCD7HmWfBg9Z
 Mg/z8WeXnPtbWv3DcJW9vguLf6NclZdtb2PHrhx7vP4hvspjwrd/UcpBOqakQ23I8YJj
 wKS5TakaT13Waa8g7uoG37UWjq8U6cOWr0o3yUbZXY9T7L8MuVXzIqFMxExia6clUbSu
 HApz5WTgOGxo7STDNUHSQuiqTJd4DXkW5nwubO7ta7JT7OFDH/B+bGerim8MwpmMSWzp
 9rRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hP63VKEYPHg3zKNj3xMaZwjK56Qq/K++eO//dDzRjvk=;
 b=eWScJHdpwE0XRm+DNe3rBpAcZzzn+KiUZY+d/UT7rGdCKJGST8v7eamGR/b5bnJMP8
 bnCOymqWq5BuYvPXnSEJfJDRSSTgTI68F64Ky1J9xy/58MQ83epeYLtg8H4Ys6RCJHqU
 b/zerPWfxaafAzdvwa+28WYq4/aIWhtubBQbVxSsnHenSlxLyY3YYNXBhLVSQLPk4oyI
 xltTTY2z3+2eJ3PFyqPfa24Hn8BsSucKjs8us0RIBCBq3tL1Fd0xudHMzzR8gzzHjp/x
 sVKR5MFGP1+u3uJSc+0L3aTzdDcfdjs8hXiQjvH+88I7imoO9MOtw+QZRhSKiMPE7qOF
 HIJw==
X-Gm-Message-State: APjAAAVkv1Iqb9a3Mo4lMsQ+CXLtFELN6dyXfsqIPbbFND+FmerqcwXc
 ZrRUFh8J1Cclf1MsFXHDduMG9Gv9gXE=
X-Google-Smtp-Source: APXvYqz3iGB3sFLe1ujAa4CWxg87VdsLELINdehSRwwhAyr0qsSp+adC3/BhKcW2M+2In5oYCgZjeg==
X-Received: by 2002:a63:545a:: with SMTP id e26mr33192910pgm.162.1560481991000; 
 Thu, 13 Jun 2019 20:13:11 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id b16sm1067054pfd.12.2019.06.13.20.13.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:10 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 29/45] arm64: KVM: Increment PC after handling an SMC trap
Date: Fri, 14 Jun 2019 08:38:12 +0530
Message-Id: <2798950c13d82c9e5b4c9a94afe8eeeef052283a.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201312_506102_8715F18A 
X-CRM114-Status: GOOD (  11.83  )
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

commit f5115e8869e1dfafac0e414b4f1664f3a84a4683 upstream.

When handling an SMC trap, the "preferred return address" is set
to that of the SMC, and not the next PC (which is a departure from
the behaviour of an SMC that isn't trapped).

Increment PC in the handler, as the guest is otherwise forever
stuck...

Cc: stable@vger.kernel.org
Fixes: acfb3b883f6d ("arm64: KVM: Fix SMCCC handling of unimplemented SMC/HVC calls")
Reviewed-by: Christoffer Dall <christoffer.dall@linaro.org>
Tested-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kvm/handle_exit.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
index 5295aef7c8f0..c43e0e100c11 100644
--- a/arch/arm64/kvm/handle_exit.c
+++ b/arch/arm64/kvm/handle_exit.c
@@ -51,7 +51,16 @@ static int handle_hvc(struct kvm_vcpu *vcpu, struct kvm_run *run)
 
 static int handle_smc(struct kvm_vcpu *vcpu, struct kvm_run *run)
 {
+	/*
+	 * "If an SMC instruction executed at Non-secure EL1 is
+	 * trapped to EL2 because HCR_EL2.TSC is 1, the exception is a
+	 * Trap exception, not a Secure Monitor Call exception [...]"
+	 *
+	 * We need to advance the PC after the trap, as it would
+	 * otherwise return to the same address...
+	 */
 	vcpu_set_reg(vcpu, 0, ~0UL);
+	kvm_skip_instr(vcpu, kvm_vcpu_trap_il_is32bit(vcpu));
 	return 1;
 }
 
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
