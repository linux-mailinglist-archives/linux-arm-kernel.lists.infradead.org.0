Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4882E1936F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 04:28:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jpXnbIRqOY+Q0MbQxysTAluexqJXi5/GU5mshFGITjs=; b=Y3q76/SURuqydH
	BxPEsqB2FUM8TfI6OOuATyilivJE2J3RS7+a10dxJq6Q2HPeaxo53H0JtGWA75K1vX/bMQm86FXoV
	KlUrqQCdzVqvCe5X1MbJCrMKqVvYRSmDsGVL+1yDO6SFXUIEZAovZGKWoO4LC610epBPTIL2Ay74K
	lsZrxgladw4NZR+oommGuul58xI8zbTw2wR3D3Y7NM0vOFXdPxvHbsXlWpCOrb1zn1f8dnG45z+ll
	6s2kDx91k6sSfvcJGeRLbzupS53NrAvpLyF1XTHIWNLMf22AjWvC00KiAUHQGMXp9U7GZEc8RFUhT
	xBMMetM5QllqHJbJMzIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJBu-0007vX-LB; Thu, 26 Mar 2020 03:28:22 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8D-0004aI-CM
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 03:24:35 +0000
Received: by mail-qk1-x743.google.com with SMTP id q188so5094543qke.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 20:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=BKhAx6BebFw/oEITnjoM5nL1ibAHOPqPAiH4c9gaYa8=;
 b=YNFNHzcL8opCZWUO6XnLzhdlsu4Yy+Rizy9yCWVbFy3ZRpvtcZv2puWnEOvUC3b1Vt
 XHs+hMfat0AMwYaJFwe1RjtrQM1/uslxPjzHvIs14d1/5BioLW/YL75JijXhWEBD/9yF
 5sEve9b8u+au7l1RKRTggSnH7moh6udjbiEcmw0ePceWaMVwexeB6yeHT0HIof6DX8JL
 fQtTMoJKaZnvMyOB2sU5splZqi4JPAZcRlyG/7Pf29MOG3wsql0XOZOoGU/cimjTj6y2
 2DVjOG87kdt+O93WALQb53VWLj/tVNY4j/j+Wlv7R+JedlxC22BoesYGUjxdDwJ3uBn7
 zG/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=BKhAx6BebFw/oEITnjoM5nL1ibAHOPqPAiH4c9gaYa8=;
 b=m9X/Pg3BDxjH36DqCnXvAchwqrQNfRS+zDnl+/IhiisgB3FE662ezpPYAT/yGyb+97
 KBYrQ2RBSQk9iRcoG9IFL2bp0EMO7qZrOmP0w3keg6LrLCv9hAiz54Dm1aq4NdljClbX
 rGXUSthzxh1G7UFbpSwuwbhCgh5e16Jk24Ul2oPbW4wiC0vfvEoglWl4WopAZqeggiap
 2ZA9BPKs8Ri5PEMIX0uDDCbfyW47ZFEyqOY/OYmq9BwThUA5Y8PTispsRtqu/A8is210
 2Ilfp2o522UcBAGvT8MSFmzZAUK+63GHIJckMULSd3Hwoa9OOO5bk1tM1NK+Cn7Q5q5a
 G9QQ==
X-Gm-Message-State: ANhLgQ3e4c9WC3UHlkZhnDtki/jNIP8ScJ3oUXYELAfHAA8SJEwgz/RB
 9WswxMy279ZJxf+dAx76cPbDvA==
X-Google-Smtp-Source: ADFU+vsaZX4t6NPWbuLtjOb6I822H6afCjwQpAn6wOnDl28ywTXqmlBMj7nd/Y69a1G7LrS1oIl+Zw==
X-Received: by 2002:a37:a543:: with SMTP id o64mr6053234qke.460.1585193072231; 
 Wed, 25 Mar 2020 20:24:32 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:31 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 06/18] arm64: mm: Always update TCR_EL1 from
 __cpu_set_tcr_t0sz()
Date: Wed, 25 Mar 2020 23:24:08 -0400
Message-Id: <20200326032420.27220-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202433_539403_F7C74540 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: James Morse <james.morse@arm.com>

Because only the idmap sets a non-standard T0SZ, __cpu_set_tcr_t0sz()
can check for platforms that need to do this using
__cpu_uses_extended_idmap() before doing its work.

The idmap is only built with enough levels, (and T0SZ bits) to map
its single page.

To allow hibernate, and then kexec to idmap their single page copy
routines, __cpu_set_tcr_t0sz() needs to consider additional users,
who may need a different number of levels/T0SZ-bits to the idmap.
(i.e. VA_BITS may be enough for the idmap, but not hibernate/kexec)

Always read TCR_EL1, and check whether any work needs doing for
this request. __cpu_uses_extended_idmap() remains as it is used
by KVM, whose idmap is also part of the kernel image.

This mostly affects the cpuidle path, where we now get an extra
system register read .

CC: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>
CC: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: James Morse <james.morse@arm.com>
Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/mmu_context.h | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index 3827ff4040a3..09ecbfd0ad2e 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -79,16 +79,15 @@ static inline bool __cpu_uses_extended_idmap_level(void)
 }
 
 /*
- * Set TCR.T0SZ to its default value (based on VA_BITS)
+ * Ensure TCR.T0SZ is set to the provided value.
  */
 static inline void __cpu_set_tcr_t0sz(unsigned long t0sz)
 {
-	unsigned long tcr;
+	unsigned long tcr = read_sysreg(tcr_el1);
 
-	if (!__cpu_uses_extended_idmap())
+	if ((tcr & TCR_T0SZ_MASK) >> TCR_T0SZ_OFFSET == t0sz)
 		return;
 
-	tcr = read_sysreg(tcr_el1);
 	tcr &= ~TCR_T0SZ_MASK;
 	tcr |= t0sz << TCR_T0SZ_OFFSET;
 	write_sysreg(tcr, tcr_el1);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
