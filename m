Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47AC113057F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 03:19:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1f0E9oopeHUz5wp0K74dY99AF15NdnFqoZe8HmTLGnY=; b=cwG
	+H5CeblxzqR2G/9tvGkSWtqFfpUJ9DsOiT8o+4Sns6M5zumsKnY+BUxKNkyJ3nqWUr4y0k3aHhm5f
	SfoIILUAlAwPSEmcxzVUO0/cx3O0M56UiB5QDo+MRAiwp6nztn2bO3UaQW07kmP5sjjOX2XhudWIW
	5nLuYd3usAnEKUw+/9dr31smhXmN/McUY5oMa0n+Zbun9RAqUIry5HhTj+SUMnRpEdkBF+oKU4tRz
	gQmF7GZgzPqc/6/2DhzYBcetaHi4EMGvDd690xPgfcSQfsZNoEPx2sN/RUkop0TEAV8ECOTSisYbE
	s0/oLC13cxk7Aaauf3/zkPMqRWbf8+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1invVS-0001ha-7U; Sun, 05 Jan 2020 02:19:06 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1invVJ-0001hE-OM
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Jan 2020 02:18:59 +0000
Received: by mail-pl1-x642.google.com with SMTP id f20so20472574plj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Jan 2020 18:18:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=tfPAdmpOoYwPlifIt03XQZdn+ipMaCO2Up5Sx4/swIc=;
 b=PQU0HlPR9mLLtcJqlPn+j1gyxLZTrNUWNiC2f1sblOGyc8xoeE9u+arZMZdWEeEhdL
 fH8v3eJb/kAF3H26VjeTRfXFYxdFSqyNsqBbuTHlWeLATun0DvDnzJN47pCCCsmkZJIu
 tIcJ6RMudqL+Rx3qUkhdjVf1o1xIHdQZrZf4B8JlUpL2TXZxvcNoQc/VpmtNdv1nO83M
 BYWraMpaR2gQkPQ1SyycfqwVE87hC6VrKbKjCW5NLd5zRjgil+9oNf1iopQo1UNFt8GL
 28PjMlRtAPQpYDMNvyg2DS3n6rPQyIb8IJh0JWPnkjPCKrVkLKGkrOOKdlAG1tCsfBAq
 x1EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=tfPAdmpOoYwPlifIt03XQZdn+ipMaCO2Up5Sx4/swIc=;
 b=DgqKbHOL14dGwF3deomMDj9nYQOAlRmtVhreoxTu/YotP+CRwZC0YVXktuQbuIoJyB
 DZG2AQdhANBXsZ3NvRFbKe/ip0WD8dUdp+t1gf6S71FCvrEuTsAmAw5COiBvCxmMKzl6
 AleAZZ4Q3hY4EZbvMaS9ldu7oj0zAgnCaQsnhl6TB0exYnOKLn+5GZ4+ULKMq1+hselE
 gQQVY7PFqXr+RgXnZbz745oObAA/rrBN5VGdNyCdySrD2IG6sGY4SNj9z2hg8Fkmdi6k
 rEh8gM9FudQdz0TtUmRkC8yjgju4WVMfY6SWp+6u04oq9T2bfgN1pc73IRSo5tf4bWW4
 naYg==
X-Gm-Message-State: APjAAAVnnhJ8Kj5JwWE6pALmSw/waVNWgvOC/hQAWw0QTIqZ3oDh+dGc
 BSx2yB5buKY3c/WXfqAPWsrV/2MlLKU=
X-Google-Smtp-Source: APXvYqxuxb+cVilnV/vVXAw6p2qs58qQJCUwMonxvanQEcy66q0igE/tKDGkh6FZPsn/EhfVSzU4zQ==
X-Received: by 2002:a17:90a:db48:: with SMTP id
 u8mr35194404pjx.54.1578190735847; 
 Sat, 04 Jan 2020 18:18:55 -0800 (PST)
Received: from localhost ([117.80.183.12])
 by smtp.gmail.com with ESMTPSA id c1sm39501149pfo.44.2020.01.04.18.18.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 Jan 2020 18:18:55 -0800 (PST)
From: hanterliu@gmail.com
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM:alignment:correct variable type of nr_regs
Date: Sun,  5 Jan 2020 10:17:36 +0800
Message-Id: <1578190656-19270-1-git-send-email-hanterliu@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_181857_819720_F6E371A0 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanterliu[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: hanter Liu <hanterliu@gamil.com>, linux@armlinux.org.uk
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: hanter Liu <hanterliu@gamil.com>

if ldmstm instruction U bit is unset, nr_regs
should be negative value, so change variable
type of nr_regs from unsigned int to int.

Signed-off-by: hanter Liu <hanterliu@gamil.com>
---
 arch/arm/mm/alignment.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mm/alignment.c b/arch/arm/mm/alignment.c
index 788c5cf..d8e3bd9 100644
--- a/arch/arm/mm/alignment.c
+++ b/arch/arm/mm/alignment.c
@@ -499,7 +499,8 @@ do_alignment_ldrstr(unsigned long addr, u32 instr, struct pt_regs *regs)
 static int
 do_alignment_ldmstm(unsigned long addr, u32 instr, struct pt_regs *regs)
 {
-	unsigned int rd, rn, correction, nr_regs, regbits;
+	int nr_regs;
+	unsigned int rd, rn, correction, regbits;
 	unsigned long eaddr, newaddr;
 
 	if (LDM_S_BIT(instr))
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
