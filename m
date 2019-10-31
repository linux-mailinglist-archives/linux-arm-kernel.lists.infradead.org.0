Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC49EB978
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 23:01:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7NHEwwlXp9zgIAuL340Z6K9JIfGVFu+K+cIWBo4vn/o=; b=cAB
	m7G5AhYPb9MiYwFinJKkuAh0X0b3/5GsdIcMu/5xawSpN4mvvL7GAqIx8yhAPyoBM4SHWwa6P4K2d
	+8+3qmJ32dWDvoxZsOlgi6qskNp7sV39GPOa6AXhv/s1aaBa08i6lShQs0vO1/Uob5EaozYhSAUYK
	tJuTmFJMUzxYZmIrwIpAvjpbh9RZAfhcKQjlUSU4b11Niy42zwpqfeuxMgNNACZjTHeiT+THnWSFJ
	VMPH88TOSeHorY/m0sJXQ3Kp7QylYwKsQix57h2QRZ4iyK5zNMGwGSdx7yr+8JlR7Rtk+x5NsvLQV
	KnSkZavnk5+2OktiutgAiDLMG7Ku5dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQIVj-0001qN-FR; Thu, 31 Oct 2019 22:01:43 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQIVY-0001pg-22
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 22:01:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id o28so7880509wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 15:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=TSWfpuHlmZHBiZrAWDxgOb4uOk4kRce+AnQCKIxwQCA=;
 b=UYmNphie/gQPdtCpL+hIWLXiLGsjYbKuHWIKg2Ek8H5e8tWfy7gevZIMPHNPG8C11z
 lsJlMQ5hNr7TBkGgF/XR5L+T8OU6+oAiGiLN48KHunq1bmTmrDQ4y2Xo4iG2PvF2sB8+
 SJdUBnYF4dxhqC5s8yLtehKA4sTKNanVW3fBLXlzMF6QW+lAvZ2WkJanznmtfJk9cgeH
 8taZMEJmQtP57TIWusOYJDdNA4r0lx0IyqqjJ8iMCSCasiGv7VE74m9u9ukY23Ch6VP0
 7rKcz27gQ9FWanmFF6wGeLyZRtDH98JI/VDYzu7cQU/iRCiXByBoLyeFv53Nq+c4wvDT
 L8jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TSWfpuHlmZHBiZrAWDxgOb4uOk4kRce+AnQCKIxwQCA=;
 b=pjLgJ3gpx82rm4PADbBJ0kBsaD8fmKgC2AotT21WcXJfR8Z3HeqQ/ysuFl75aiiwEV
 MNuM6GhOoFKxdg8MgIebsKgKrrMvYgZzkWHQiVy4rFUrsezUxezro4Jfhn4BGNFB9tif
 /WeJQKJQGqGW0sXN1rnWLcME01dOyTlshhfq8hGsrAnmBJ51p++AtrA04bGTi4kqXgZN
 7oKlxT8Gd5wRbBb5RL4o0eN6dGuEvkbyhMTojyCyp8wsOVX/LYfA0FCMGj37vmT4k2nW
 kN1cd4EzekwZgM8FVKnlvvoSCM1z+tVbnaZnzKJmBjjmU/gwbJDnQ2OE+zX/aV0JMTZk
 N3RQ==
X-Gm-Message-State: APjAAAURzcF28fx0Lyg7wPfJE76vxtQxgn4C7i2/c3Mf8A06MmcCO6Fg
 DSFD6jX0jXQtuEghaEX1GiEz5x/x
X-Google-Smtp-Source: APXvYqyLIoyqUyRVy0CLKSm5HCoIrvAuvATFFRdjjXa27GCEStef7EHk7MkbTQKmJWpNw/KX0PRu5g==
X-Received: by 2002:a5d:4644:: with SMTP id j4mr8245262wrs.355.1572559289699; 
 Thu, 31 Oct 2019 15:01:29 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id d4sm7514172wrc.54.2019.10.31.15.01.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 15:01:28 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: spectre-v2: remove Brahma-B53 from hardening
Date: Thu, 31 Oct 2019 15:00:51 -0700
Message-Id: <20191031220053.2720-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_150132_123494_E006EBF4 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Doug Berger <opendmb@gmail.com>, catalin.marinas@arm.com,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 will@kernel.org, Julien Thierry <julien.thierry.kdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Doug Berger <opendmb@gmail.com>

When the default processor handling was added to the function
cpu_v7_spectre_init() it only excluded other ARM implemented processor
cores. The Broadcom Brahma B53 core is not implemented by ARM so it
ended up falling through into the set of processors that attempt to use
the ARM_SMCCC_ARCH_WORKAROUND_1 service to harden the branch predictor.

Since this workaround is not necessary for the Brahma-B53 this commit
explicitly checks for it and prevents it from applying a branch
predictor hardening workaround.

Fixes: 10115105cb3a ("ARM: spectre-v2: add firmware based hardening")
Signed-off-by: Doug Berger <opendmb@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/mm/proc-v7-bugs.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mm/proc-v7-bugs.c b/arch/arm/mm/proc-v7-bugs.c
index 9a07916af8dd..a6554fdb56c5 100644
--- a/arch/arm/mm/proc-v7-bugs.c
+++ b/arch/arm/mm/proc-v7-bugs.c
@@ -65,6 +65,9 @@ static void cpu_v7_spectre_init(void)
 		break;
 
 #ifdef CONFIG_ARM_PSCI
+	case ARM_CPU_PART_BRAHMA_B53:
+		/* Requires no workaround */
+		break;
 	default:
 		/* Other ARM CPUs require no workaround */
 		if (read_cpuid_implementor() == ARM_CPU_IMP_ARM)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
