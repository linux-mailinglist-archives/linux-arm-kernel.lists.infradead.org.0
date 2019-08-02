Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DD07FC10
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 16:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IE4azI7MGzgvPLzaJHrzw6NgpPTG9spP+O3FvoAjtQ8=; b=GpE
	Ai0XUHpQoGxL1ZutRURqWjr+lUpdmdlLGDzoyMznCJ37QrndfYV9B6YBWu/kLqBl5C382pq+l0d3Q
	wQJTLZNelEbXGbwDBnuevAW907vMxNf5G7chsKo3BXJtyFpSG73DqOhwN9Ur1ouCwpECxfuh5dYn8
	GRHDMU93POmsB/g7CHxuW/qgyWNOpkUKm5wObU6iN2hb/kPmLUc/+V3FZgNGaXG9oIYGRdZ1sFKxt
	bZXMojRJ6KM6rJYzZdpHfII20MGygoJCRi8n8ajIpmXoaW1fIdpAeoQitsea5cyIL1y2/WvRQxraI
	yKDwGsN5b5hdysN4GikzWJPa/bBPtGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYTE-0006qr-BF; Fri, 02 Aug 2019 14:23:48 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htYT8-0006qA-17
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 14:23:43 +0000
Received: by mail-qk1-x743.google.com with SMTP id s145so54903670qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 07:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=CWdgiiN/Z+VeLUxPy5NDLjA/glfsWptWvE0Hk0bA4Qc=;
 b=ClkjwnuAjyQX4RFGsqAZhTjqGMDy7ocP/0TCroEDlhL07SsQmlRYVGn8aIHaHRwUCf
 utzbV9Rw0J2YHV76T0ve3706m4aR1IZDfRam5C9funveugiRgC8FUpWqlxtq2tFKy7Hd
 VfsToKr4T96EcEkZOa1EYCPGLYzko/sCPdVXxdcyEjThSesEn1Yukp4qAFEBL8pv9AD7
 cQ+rtCtxrN7cT7v5yWDPwKLFyjF7Rnrrjf2zLhORo1f2RRy4znki0byJia/elQpyLyRH
 W9Kr1qkd/1ceoeZGcwQI6LhEwYkuiNtZoZc8nOVzH9lX4xcZnaGp0ETvzemP5soQs71N
 fvgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CWdgiiN/Z+VeLUxPy5NDLjA/glfsWptWvE0Hk0bA4Qc=;
 b=h2ZCijjdt2spr+eNYBgLck2lJnoFIowOMpZM2UkkRgWwZ/yJXn6NyGhTUxhSJhxTft
 CCeYXqZlLO9ddTtKkgTrfkW69N4TuYNGyr5S2TW4arY7D9bkSVc+6sn4OYkAeuL8w9G2
 0Zi7ZhdjQUxgWCovS+OaGFAIblS+0hL2OsnmnU/Hebd9BcMn/PXVtV2zYcKNbO2SW1pz
 5RFzvUONZPQlDMBULS2kUPKbJ7j4t7EvDrMs8/UPCTSGziRL9NylhEyzaFAm3jtJ55r8
 NTBVyIZbzrFsCwF1xX2ebUbaQRl+5dchcWYwDtEo55Zb3DwTRnqjvA2QqBKYP1VLzJ5d
 GQyg==
X-Gm-Message-State: APjAAAXYWGiEUvn6phch734GEKYuKhK2WFwtKxsJRjgN+RCfnZP+XC8f
 JlREaK6MkVxrogFhhjlP+zw+Hw==
X-Google-Smtp-Source: APXvYqz+KxEnFgHjSy1G4Be0JgFETmApxP1tkP5flW/+UvCcQ+n9HdUVJ9MvLVxmfppI//mnB3tdag==
X-Received: by 2002:a37:2c46:: with SMTP id s67mr92776362qkh.396.1564755818363; 
 Fri, 02 Aug 2019 07:23:38 -0700 (PDT)
Received: from qcai.nay.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id v84sm33042439qkb.0.2019.08.02.07.23.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 07:23:37 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: maz@kernel.org
Subject: [PATCH] arm64/kvm: fix -Wimplicit-fallthrough warnings
Date: Fri,  2 Aug 2019 10:23:08 -0400
Message-Id: <1564755788-28485-1-git-send-email-cai@lca.pw>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_072342_095636_D8A1A596 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: drjones@redhat.com, suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, christoffer.dall@linaro.org, Qian Cai <cai@lca.pw>,
 julien.thierry.kdev@gmail.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit a892819560c4 ("KVM: arm64: Prepare to handle deferred
save/restore of 32-bit registers") introduced vcpu_write_spsr32() but
seems forgot to add "break" between the switch statements and generates
compilation warnings below. Also, adding a default statement as in
vcpu_read_spsr32().

In file included from ./arch/arm64/include/asm/kvm_emulate.h:19,
                 from arch/arm64/kvm/regmap.c:13:
arch/arm64/kvm/regmap.c: In function 'vcpu_write_spsr32':
./arch/arm64/include/asm/kvm_hyp.h:31:3: warning: this statement may
fall through [-Wimplicit-fallthrough=]
   asm volatile(ALTERNATIVE(__msr_s(r##nvh, "%x0"), \
   ^~~
./arch/arm64/include/asm/kvm_hyp.h:46:31: note: in expansion of macro
'write_sysreg_elx'
 #define write_sysreg_el1(v,r) write_sysreg_elx(v, r, _EL1, _EL12)
                               ^~~~~~~~~~~~~~~~
arch/arm64/kvm/regmap.c:180:3: note: in expansion of macro
'write_sysreg_el1'
   write_sysreg_el1(v, SYS_SPSR);
   ^~~~~~~~~~~~~~~~
arch/arm64/kvm/regmap.c:181:2: note: here
  case KVM_SPSR_ABT:
  ^~~~
In file included from ./arch/arm64/include/asm/cputype.h:132,
                 from ./arch/arm64/include/asm/cache.h:8,
                 from ./include/linux/cache.h:6,
                 from ./include/linux/printk.h:9,
                 from ./include/linux/kernel.h:15,
                 from ./include/asm-generic/bug.h:18,
                 from ./arch/arm64/include/asm/bug.h:26,
                 from ./include/linux/bug.h:5,
                 from ./include/linux/mmdebug.h:5,
                 from ./include/linux/mm.h:9,
                 from arch/arm64/kvm/regmap.c:11:
./arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may
fall through [-Wimplicit-fallthrough=]
  asm volatile("msr " __stringify(r) ", %x0"  \
  ^~~
arch/arm64/kvm/regmap.c:182:3: note: in expansion of macro
'write_sysreg'
   write_sysreg(v, spsr_abt);
   ^~~~~~~~~~~~
arch/arm64/kvm/regmap.c:183:2: note: here
  case KVM_SPSR_UND:
  ^~~~
In file included from ./arch/arm64/include/asm/cputype.h:132,
                 from ./arch/arm64/include/asm/cache.h:8,
                 from ./include/linux/cache.h:6,
                 from ./include/linux/printk.h:9,
                 from ./include/linux/kernel.h:15,
                 from ./include/asm-generic/bug.h:18,
                 from ./arch/arm64/include/asm/bug.h:26,
                 from ./include/linux/bug.h:5,
                 from ./include/linux/mmdebug.h:5,
                 from ./include/linux/mm.h:9,
                 from arch/arm64/kvm/regmap.c:11:
./arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may
fall through [-Wimplicit-fallthrough=]
  asm volatile("msr " __stringify(r) ", %x0"  \
  ^~~
arch/arm64/kvm/regmap.c:184:3: note: in expansion of macro
'write_sysreg'
   write_sysreg(v, spsr_und);
   ^~~~~~~~~~~~
arch/arm64/kvm/regmap.c:185:2: note: here
  case KVM_SPSR_IRQ:
  ^~~~
In file included from ./arch/arm64/include/asm/cputype.h:132,
                 from ./arch/arm64/include/asm/cache.h:8,
                 from ./include/linux/cache.h:6,
                 from ./include/linux/printk.h:9,
                 from ./include/linux/kernel.h:15,
                 from ./include/asm-generic/bug.h:18,
                 from ./arch/arm64/include/asm/bug.h:26,
                 from ./include/linux/bug.h:5,
                 from ./include/linux/mmdebug.h:5,
                 from ./include/linux/mm.h:9,
                 from arch/arm64/kvm/regmap.c:11:
./arch/arm64/include/asm/sysreg.h:837:2: warning: this statement may
fall through [-Wimplicit-fallthrough=]
  asm volatile("msr " __stringify(r) ", %x0"  \
  ^~~
arch/arm64/kvm/regmap.c:186:3: note: in expansion of macro
'write_sysreg'
   write_sysreg(v, spsr_irq);
   ^~~~~~~~~~~~
arch/arm64/kvm/regmap.c:187:2: note: here
  case KVM_SPSR_FIQ:
  ^~~~

Fixes: a892819560c4 ("KVM: arm64: Prepare to handle deferred save/restore of 32-bit registers")
Signed-off-by: Qian Cai <cai@lca.pw>
---
 arch/arm64/kvm/regmap.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/kvm/regmap.c b/arch/arm64/kvm/regmap.c
index 0d60e4f0af66..c94e9bc3e8eb 100644
--- a/arch/arm64/kvm/regmap.c
+++ b/arch/arm64/kvm/regmap.c
@@ -178,13 +178,20 @@ void vcpu_write_spsr32(struct kvm_vcpu *vcpu, unsigned long v)
 	switch (spsr_idx) {
 	case KVM_SPSR_SVC:
 		write_sysreg_el1(v, SYS_SPSR);
+		break;
 	case KVM_SPSR_ABT:
 		write_sysreg(v, spsr_abt);
+		break;
 	case KVM_SPSR_UND:
 		write_sysreg(v, spsr_und);
+		break;
 	case KVM_SPSR_IRQ:
 		write_sysreg(v, spsr_irq);
+		break;
 	case KVM_SPSR_FIQ:
 		write_sysreg(v, spsr_fiq);
+		break;
+	default:
+		BUG();
 	}
 }
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
