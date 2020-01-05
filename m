Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDFD130583
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 03:40:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5jHZBgbOWhKeGyc8zTsiP9znhVmGY58mOLYemE53mqk=; b=MlD
	fAASg+FhKNZgvNXEIJN0jtqVzl5DRbufHTUiV8AFnpR5u9FG5OujTq54m9E0JOFg4rS14ECzvgH/Q
	aCSX3//4bH/OJnMPcqem6xp5xpniLzxyE0DjM6hevlXL2jN0jZKsD38aBhknCg09QfJOkdPHIzDcV
	ZBduYZwj5YbGjla1kEVaxLAzZYPYBGSSG3Hv6YjODNQqE4MEBvNEmkQKz+z2Li+VlPn0jwtL1bpJO
	CukYY1S9Nxc0PvI/fBpSv/w9BQ+aAUUqsU+CBH2wYyF5BpgN8GJpDEmgHWTvQTo5WhIwnaZJV2z2r
	ZwtdoTyo0RViwfejtc+Qk1N9KGa5TIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1invpt-0007sU-5x; Sun, 05 Jan 2020 02:40:13 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1invpf-0007r2-CD
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Jan 2020 02:40:00 +0000
Received: by mail-pj1-x1043.google.com with SMTP id bg7so6276784pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Jan 2020 18:39:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=FvN0OALrqqthHRQdlBaHVurVWlA48kDjs+DhgYUoFLs=;
 b=kivdRfdDgBMseccLXwBxcCrqpg7sS7rxF41B2ljiGYYzLXqIEjxQWWTKQGEtTK+YVo
 rPi4nkSz7DubooNk90HzkbtBnD4ymCmsqwmgtgRTM9u5ZwmLIveSg/w52TBsqdBjID8z
 D2ouf7R7ztxe5wQfgcID1+x3fCcTmDymPxqyhoswN3tXV4CHzGaDNzhBpbforMoNi0c+
 f9RMY6TXY60OsslIjR0zJzcKbZkyaapMwjQnk5KodyXacz5W+BZMm1uqDr6axO0GGSwU
 UuzcJHNM3if7C9xiDBY+k/6+K6ZXKA3I6AvkqVQaixP+h7YnI62Y0PLHmC8w2DfPVVip
 5fVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FvN0OALrqqthHRQdlBaHVurVWlA48kDjs+DhgYUoFLs=;
 b=kVn2mXXQP+zdmx9d1hpY3RcAXcXe0a3WXdTyvYnrVytBsd2qgXGKqcrMiRIqObg54a
 AEMNtDneOfHWjdJJ8+ADoEKO0BWf9AMy2NGnnnQK31s7yVYgLzwIruKnXFg0fqoeWCu8
 eI2uEQK2Ugzsy6RrwjjL7C1lgOXu0+491a1JTGr6JQFBGXa9epughbt2H9P8o30EH2Pi
 YHR50JD818eM30fT/px7JU0I+dsFwC1xeflJOz7FbDMjAdATB42tjT6c/ZLpXjxvtRSu
 glMlIaCkEvTGaqeepu8mjA953OvJvAn6T5ZuaxfNI1Jj888LiX9jkTdUbSBoR5AGLkca
 Szrg==
X-Gm-Message-State: APjAAAW7QOhl9I+PLQ7mLP8GpL63VututyGuyE9W7tK/HSwOryiXR4xE
 F8geYB36BhbqBMvlUHEbZEJUTTGHYFk=
X-Google-Smtp-Source: APXvYqzbJ4DgsfW8i8SYBleQkCtuGg8ImSkmSylUfLzmzH07/0E+XBtMhZVykDxn6ttFCVU6i6ggFQ==
X-Received: by 2002:a17:90a:8c8c:: with SMTP id
 b12mr35621883pjo.119.1578191995775; 
 Sat, 04 Jan 2020 18:39:55 -0800 (PST)
Received: from localhost ([117.80.183.12])
 by smtp.gmail.com with ESMTPSA id r37sm19070660pjb.7.2020.01.04.18.39.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 Jan 2020 18:39:55 -0800 (PST)
From: hanterliu@gmail.com
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM:alignment:correct variable type of nr_regs
Date: Sun,  5 Jan 2020 10:39:22 +0800
Message-Id: <1578191962-19634-1-git-send-email-hanterliu@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_183959_441028_9F9A0375 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: hanter Liu <hanterliu@gmail.com>, linux@armlinux.org.uk
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: hanter Liu <hanterliu@gmail.com>

if ldmstm instruction U bit is unset, nr_regs
should be negative value, so change variable
type of nr_regs from unsigned int to int.

Signed-off-by: hanter Liu <hanterliu@gmail.com>
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
