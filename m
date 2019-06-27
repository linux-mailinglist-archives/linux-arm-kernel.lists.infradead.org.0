Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A893958D20
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 23:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xOEpFzvWpNbZGqw23zv/E5L09fUTgflGR6VYOMkU2us=; b=Ke1
	rkru42yvJ6/vO2mqpuwX3DD0KY0T5H5X9MKVcvHU3OLaKjbnciVV1ZxkgH6Pk9LPNq8Af2Dzs5GJk
	IyDqhxdJnJWzCfVX650K+OhQ7eS28cIx0j2NZ6ETKap/lF+8ci1e9LMM7YHa454/VUcs+RGSRc0IA
	IfJ3P0EgvsEGjpcqcOCdzE+uYvRvxOZsjIkWob15SIXtXTaZEW+hBdi1mJMzO6D68n2it48+IMWV7
	bz1G1QlKuPhF7HWqEPgRj3RWYweLYeFsqZ2BcwLoP9KXF4IJA5Oj0SdUEq8I5RazpSrtldlwExsC6
	sIixg97Wjj73oCIzK+Jqdyq1YRSyqnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgc1R-0005fp-MW; Thu, 27 Jun 2019 21:33:37 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgc1E-0005eo-QH
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 21:33:26 +0000
Received: by mail-pg1-x543.google.com with SMTP id k13so1583774pgq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 14:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=PZGYipUyd0OlxHfS8UkofkYjMsM1+ZdDLnbfUznJ73w=;
 b=Eiq/zgNYvuYsTc+BJ/I589PAFh3f4hL6NiOSVV7grwZJde+ytgdcZiTW0oWETZLd0c
 z1PcdwG6kjRnYDdS+KZ6VCrPsag/QMseoN/R0VnAwUlUFpWcs9/kR/tDy/6I7U3a2g4H
 ki9zHH0wvDrf/VkRgAfOLiiz5Srl8uhUbpF42vU8gBbuPXEDwPHw6W5H+u2CYLmz9LTp
 IPGdhuUkeZZCQg1QSJDTpfb6ZILNraVHxGvFf1KYr7asBN9d6RqpYJ6E0CgmKYRa23wR
 PfHsEjo5h4M8ncI0HWqB81jd3PZ3DgseeNWy9lHHijRZvbQTBrEuriQa1wMVBhAPfMqQ
 1REA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PZGYipUyd0OlxHfS8UkofkYjMsM1+ZdDLnbfUznJ73w=;
 b=KW/UgZhZRqsMChDkyMtzbzXx+GO2miIvK2RKuTzY/bm1y34WO5Fmdijw1mtft0dIxW
 mZ5tmUAFT3jElelaQIcfvYVdgNVZFJNP7tTFCc8/fr/Np+r21Nq0dQtlERfPJL6dSLD0
 dgQR6IhsH8hl12aUkd8lJI30zFYuTUQt/Pf6bAngkbO1eZj/td5cywTlO6jaAvsG2S5z
 o4H5EJJzWtqdofP+23ufxgLIzGJRU5SJSmXRDNCpArFmX2yA3SNEp7605DBVF6aMx0ph
 /s4VZZZrvfn6mGpIMJhNVySBJxveG81xuJ7QclPzhOE0ui6gICoMqMjg3E8M2tZwaPy9
 tPGQ==
X-Gm-Message-State: APjAAAX4/ClVj35Kur13TwxS/JgHrKwNBIm4PQvEg7tzmn+j9bvFgm1F
 EUW809oTYr/JdFCO5P4hAUOYfKJF
X-Google-Smtp-Source: APXvYqygAgpdlhMUf0iJGc41fnT4h96RI4dGVHLFQHhK06uF/Xp9dkOpgaUN+KTq57ZE5aV3XyAZ0g==
X-Received: by 2002:a63:1645:: with SMTP id 5mr5722563pgw.175.1561671203119;
 Thu, 27 Jun 2019 14:33:23 -0700 (PDT)
Received: from stbirv-lnx-3.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id k197sm96223pgc.22.2019.06.27.14.33.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 27 Jun 2019 14:33:22 -0700 (PDT)
From: Doug Berger <opendmb@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: mm: only adjust sections of valid mm structures
Date: Thu, 27 Jun 2019 14:32:48 -0700
Message-Id: <1561671168-29896-1-git-send-email-opendmb@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_143324_853616_50A26B52 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (opendmb[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Doug Berger <opendmb@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A timing hazard exists when an early fork/exec thread begins
exiting and sets its mm pointer to NULL while a separate core
tries to update the section information.

This commit ensures that the mm pointer is not NULL before
setting its section parameters. The arguments provided by
commit 11ce4b33aedc ("ARM: 8672/1: mm: remove tasklist locking
from update_sections_early()") are equally valid for not
requiring grabbing the task_lock around this check.

Fixes: 08925c2f124f ("ARM: 8464/1: Update all mm structures with section adjustments")
Signed-off-by: Doug Berger <opendmb@gmail.com>
---
 arch/arm/mm/init.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index be0b42937888..bdc70dff477b 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -616,7 +616,8 @@ static void update_sections_early(struct section_perm perms[], int n)
 		if (t->flags & PF_KTHREAD)
 			continue;
 		for_each_thread(t, s)
-			set_section_perms(perms, n, true, s->mm);
+			if (s->mm)
+				set_section_perms(perms, n, true, s->mm);
 	}
 	set_section_perms(perms, n, true, current->active_mm);
 	set_section_perms(perms, n, true, &init_mm);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
