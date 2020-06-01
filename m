Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D66881EB214
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 01:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2fm8SBfsRh35CfQO7gYIRUcEQyujCJi3uxcf7B6bwQ=; b=ZP0CjHWJ2GVEWA
	QZ/aYS6yBjYkKEVtB+GQTbfZlHD5AgGpM4sdvWjw3z1p8Fb/QorBZsGNWbu8iatjsHZrCV5lMfAMS
	eNBj/SiRPNvbBK32s6MCajH67gBcfJg8V1sSE49oD6hDeOerF7lvaVmxYdjW0dqk/z5vVgdMBLdsw
	EkZNv2QgHuY9YF+Ze4IMweljgNS53PwyrBAJ5crDye2vA2DGeK2AuW3qg291W7lh6ikpoR0vnC9gZ
	Hbin9g3pV4qBjSTTcG7A7uaquB09vSitl9nQW7RuCzZD0t1YmOSDHrAi1B92cOBs697ye0JaT8MoU
	6l3QCztlRkZNv3i+clnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfthK-0006fB-LO; Mon, 01 Jun 2020 23:18:26 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfthD-0006ek-IR
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 23:18:21 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id w131so14656457ybg.20
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 16:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=m13wCjxvuAss7NYvH083DUgqdGzlzjUJaqo6EGXo6l8=;
 b=hGSPlVHMPFqP8l1gdyaycFTDNYeJq+dmve4OcRx0o+NeFXjZUheZXksaQ3egykT3/V
 y3TrMe5GShycYHLIG9qR1qiVRi7FAG/jm43g8+Ud2xrrKhyEfB4RKkxmvPirR5YEKEDZ
 ZETulQIHcmg24tf9rxwGMM7FbhCEyAx78T7pYUbp+woYvGe0RFIl3qSPbmvVSpXfKVCc
 Tghecr2RnKGgHCBnF88MYyD2bMpevoM/xqi5YP+CqERPdo96+ROU7B14cSkX/GKFXAC/
 06Xdutj2ar9pRf2+dnMQTRlul7bsHDMZ7dWvbohS19s78wWY/19IxeUhRQTS4s5V5a2s
 pn7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=m13wCjxvuAss7NYvH083DUgqdGzlzjUJaqo6EGXo6l8=;
 b=gUTlg+e1KT7Q546fzWQ8EsqEYOwe/jpt/2qaFPIP6ENOobE5aW7HaGlrG396/w/AL5
 wRNYcdwSuVd/t0Y15RmtQa3iq0NDuI6ZlUmMH8TdGlefsPCs7tdNhI56FeJ0NjeCVZSa
 DjhmhXwdT4Rwy/Xlr/y0z1QmPofZg8kDsvymeDRmC3blXbNsjiE4R+6LkzYZvVVIx4tE
 YTqynMnwQwhjAyu8uyD7qRaee3QsejFVxgiiiJYecCRkAm9LucQpZ9dNcjHUsPHkFzvb
 IQ1RkDJmJmFbn7Ep8hlSiblVmECx/WQH95V1Wpe6aSnQVhf83ukoEyBQ3qnWgsGekFy+
 YZgw==
X-Gm-Message-State: AOAM530ms8pkDZ0WN5Ff49dkpQDucakADGe6br0aSlzVetTScOSZ3K3/
 Uh9tS2pO2Dpq92Hwo/0S19xGnAfGINVr608+L1U=
X-Google-Smtp-Source: ABdhPJwdKP/WIyb9zDhrdkpb/1aIfGh8Qv+dbXIL0nNPDlwjoNFg5jPiVanp/p5l0pHmiW9OMy1EYfxKlHO/6B0TWDI=
X-Received: by 2002:a25:d28d:: with SMTP id
 j135mr34423503ybg.208.1591053497544; 
 Mon, 01 Jun 2020 16:18:17 -0700 (PDT)
Date: Mon,  1 Jun 2020 16:18:05 -0700
In-Reply-To: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
Message-Id: <20200601231805.207441-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAMj1kXErFuvOoG=DB6sz5HBvDuHDiKwWD8uOyLuxaX-u8-+dbA@mail.gmail.com>
X-Mailer: git-send-email 2.27.0.rc2.251.g90737beb825-goog
Subject: [PATCH] ACPICA: fix UBSAN warning using __builtin_offsetof
From: Nick Desaulniers <ndesaulniers@google.com>
To: Robert Moore <robert.moore@intel.com>, Erik Kaneda <erik.kaneda@intel.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Len Brown <lenb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_161819_630008_6D27FF65 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will@kernel.org,
 rjw@rjwysocki.net, ndesaulniers@google.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-acpi@vger.kernel.org, glider@google.com,
 dvyukov@google.com, guohanjun@huawei.com, pcc@google.com,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devel@acpica.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Will reported UBSAN warnings:
UBSAN: null-ptr-deref in drivers/acpi/acpica/tbfadt.c:459:37
UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6

Looks like the emulated offsetof macro ACPI_OFFSET is causing these. We
can avoid this by using the compiler builtin, __builtin_offsetof.

The non-kernel runtime of UBSAN would print:
runtime error: member access within null pointer of type
for this macro.

Link: https://lore.kernel.org/lkml/20200521100952.GA5360@willie-the-truck/
Cc: stable@vger.kernel.org
Reported-by: Will Deacon <will@kernel.org>
Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/acpi/actypes.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h
index 4defed58ea33..04359c70b198 100644
--- a/include/acpi/actypes.h
+++ b/include/acpi/actypes.h
@@ -508,7 +508,7 @@ typedef u64 acpi_integer;
 
 #define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, (acpi_size) (i))
 #define ACPI_TO_INTEGER(p)              ACPI_PTR_DIFF (p, (void *) 0)
-#define ACPI_OFFSET(d, f)               ACPI_PTR_DIFF (&(((d *) 0)->f), (void *) 0)
+#define ACPI_OFFSET(d, f)               __builtin_offsetof(d, f)
 #define ACPI_PHYSADDR_TO_PTR(i)         ACPI_TO_POINTER(i)
 #define ACPI_PTR_TO_PHYSADDR(i)         ACPI_TO_INTEGER(i)
 
-- 
2.27.0.rc2.251.g90737beb825-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
