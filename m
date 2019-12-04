Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E184F112F72
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:03:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9VVxx2fhvE3mCzJ1KrZUGXZcfj3gSbuy2irc7tqyR88=; b=gtvp7hFUMYM1N4
	Md8LrIJjgQOCq+xZoHYPyJzxZ5F+xffOlMZFkUYdbx6AKdv0l9baWyCXEmZRMM9ZjiHcxCsDAF6jW
	s0CMD4Yt21eM/UWmD4UDCgaQfGml9zgfjVSyqwnVXmaezPJJZ2py2g53ohxKd86jRXBNrqgFDmY2v
	4je8/pNHoK/J1nFIhGtLWOqob9wP/gcNYX5xC7FvsFJ2/0+zfrYS/QdlEzlcxwldjSM5L+0yyJWdG
	cvVEaf0M4silg9LLTOAx9ClzBUbrNycj5vYUO10MdLILQvzXVKwUbBpEqJmFP+GECNBe7t7oHKPu4
	B0IULvVettPaDO+O0DyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icX82-0003Rh-RC; Wed, 04 Dec 2019 16:03:50 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4F-0007Py-8L
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 16:00:01 +0000
Received: by mail-qk1-x744.google.com with SMTP id v19so376405qkv.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 07:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=6DRAyEoCdK9TxqUcwf0g9TjRPNHmo9zs5TUoFziJ0k0=;
 b=eEEYwLt+hTbJHjZGXJOIHGoPV0UOvx1ZeURkx2R1nB3SsUBlIZE7ADgEwdPuTABwpE
 OOgeTioPRVrMb2bxe2hhM/Z9LPps7Xv03urwLflHmlURAqG19XK1s8aQB5nBf7zQn9s6
 AyEPd7zWZPyVjUA5naRYTpULbhhDs6YPFIrudc6FUPrqMbWXg6EVSuW0i4I3rqVlowzh
 COgxpK6U2JG6C+1eAy8zApzt++TssEuYpwypz1qDrRM7QgkRvgJTLErze5NA00L0n5z3
 fX8SMm/wVy54kstNl85WdK5lUxhSNWdaQnzWXrMcIi/esJ6Jq5SYHeuV76kHwxGrHsWi
 EedA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6DRAyEoCdK9TxqUcwf0g9TjRPNHmo9zs5TUoFziJ0k0=;
 b=YP6hWajI/jG/NgvBDQWdC87ZM0B5bNhaz2BGMTgA6ibEnC87hEDZUmu63J+ORDj5ET
 eMOnRPkNDxWlWcFc3gVtx5UQEH47MDRK0rci7YXAYtA8d/K9UFTmPzaTbe2o5MDgIem9
 ywwzYREFSO88++Z3pe8A1N9tH6q8FQBEQWW2rEN4A1yK0ZLjmMChcGVPay7b1oAtm6nN
 JJy4bhcRVqxtb9FWEdWGPOFpn958/q62JGW4wbL78bZmTja1OZYRAUXIh+a5bqd9EvGf
 dHGDBSxy2LubA3rORsf7Ed2rQMwfkTl93OXkDxH5FUWL7znIDL4Ijho5wuAf8ysCuF32
 LAIg==
X-Gm-Message-State: APjAAAUfd7H6qHdRqWFHL8Pn/HYAS3i4JEdvmOXnLQAM58HTHzYiAWji
 f/0hz2ArmVOAT5pRjsoB4eRSsg==
X-Google-Smtp-Source: APXvYqzjqDF0GY/1r5NyS3ngkq9gMg1MFDDPeIew1JMCjQUzGwF2bXi71E0HuqqkCdtpx38zKJY0jQ==
X-Received: by 2002:a05:620a:201d:: with SMTP id
 c29mr3583282qka.91.1575475194082; 
 Wed, 04 Dec 2019 07:59:54 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.07.59.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 07:59:53 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 09/25] arm64: hibernate: add PUD_SECT_RDONLY
Date: Wed,  4 Dec 2019 10:59:22 -0500
Message-Id: <20191204155938.2279686-10-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075955_415928_69B0714E 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is PMD_SECT_RDONLY that is used in pud_* function which is confusing.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Acked-by: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/pgtable-hwdef.h | 1 +
 arch/arm64/kernel/hibernate.c          | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index d9fbd433cc17..9961c7cee9c5 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -110,6 +110,7 @@
 #define PUD_TABLE_BIT		(_AT(pudval_t, 1) << 1)
 #define PUD_TYPE_MASK		(_AT(pudval_t, 3) << 0)
 #define PUD_TYPE_SECT		(_AT(pudval_t, 1) << 0)
+#define PUD_SECT_RDONLY		(_AT(pudval_t, 1) << 7)		/* AP[2] */
 
 /*
  * Level 2 descriptor (PMD).
diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 1ca8af685e96..ce60bceed357 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -436,7 +436,7 @@ static int copy_pud(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long start,
 				return -ENOMEM;
 		} else {
 			set_pud(dst_pudp,
-				__pud(pud_val(pud) & ~PMD_SECT_RDONLY));
+				__pud(pud_val(pud) & ~PUD_SECT_RDONLY));
 		}
 	} while (dst_pudp++, src_pudp++, addr = next, addr != end);
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
