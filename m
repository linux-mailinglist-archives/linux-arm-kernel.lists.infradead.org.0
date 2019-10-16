Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDCBD9AC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:05:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yapr/S/olcdG+Kni9GUSsHck4YU1JdAw8EA3NJRQD7k=; b=G1TdBot9Us4ese
	MaLebG59nOjiY+5xMTwEpbSV5aVndii6w/9in04R3H6t/D9TFIYUoOx0S+SEX+UGj08bubQfFQ6cQ
	MZMsJsDdQ2Z3K1e/RlVVhimpc7nlLlLtq/nzTIiUl+NDVQWsWZSGx34NjtgMC7YCLlzaWVoZhydnN
	oqvSpf7GUMKu4k53Wd3dY0Ek77tbmuYAZu4Z2ChqxUl9gumFB9idDJACxpERSVaT8L9fUponmHqts
	Bpg6nkVvyl1VEDbtfljd9OBRap10sa3Xl5IlkEDJ9Jl14VR1BBcv9Uxt5r2inIlBZixUvJ1A6bbag
	bup6zJIC86XYCSr4R4pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpXN-0007H6-To; Wed, 16 Oct 2019 20:04:50 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTZ-0004El-Ki
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 20:00:55 +0000
Received: by mail-qk1-x742.google.com with SMTP id 4so23981124qki.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 13:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=nna15T41FBOo8C0ScgrwWvHxD4xBB4A7rtr2LOcD0mg=;
 b=TQPiVPXa6rC+kc21T5AmnzQtQWNyHeLwcYOGqGygHSZ+fqUC6+tQeXq3H2/srTI5dS
 vEw9EaypNQQzPeKXsH3RHjmh5y5cLcTDAGhFTQsAIZKI0loaphdsKgusgX5SZkJWrqGS
 uuLke5b1StwZolCe2CpSrX0/fu/GGKG4aO0epbNKb4IEVQ1gFJv03fvfP90Fhb8UHFko
 DRJPJixDzGdMtrAvKc8A5+QSj0H2JImxJYrtOOTwV63s74TYwqaw5sEq9kOU/Rz6HwFX
 J5ESQ9FSmQS2P3y4sK73jjdbXN3u3rRc4rk6pEcv618j9wqmw8xpOwqQuSsHU0s7+oDZ
 B5xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nna15T41FBOo8C0ScgrwWvHxD4xBB4A7rtr2LOcD0mg=;
 b=aPkj1oIW9Iz3mzxluHTS5/fN8c3vzvfe2lfiKcnCs5BXOgBbtQrPnK8e+NYIW1yYE7
 A3pnG9jS38hfEMbcig1KBz7x7er9rT2UkkUA/YK/VHdVGRREvbroJBslo4cBHuROAx53
 JjX9iiZ7oUOgkzaVl2QkV65xMqDzg8EGHCbLJqfleBJJjpruYdTjSqZOjti9jdwhmBUo
 w3PkYKoDX5OkYfNniYWkTu7v803FwThC/5l9S+Br8Wd+FcaYFeWoBkjAIxdag/bum/WU
 wSuS7XlGbdyAB/TVnGwzha19JgNbzPIS9LK/Rg0ZHOjqUqsMK3FucmJ7jL0oluHY4Kms
 OyKA==
X-Gm-Message-State: APjAAAW3fxLdCsRzrOPSju6FNRpAlDnNalrznNWPutx4YHRh5z2WjuA7
 iVLZU/sxhbE1Iv4yVgCJ6A4GcA==
X-Google-Smtp-Source: APXvYqwwc0v2zGWdRcDisHGnJhHRf8p5mNSEZfi0uPD1ZI7/TTBqwIA/aASx5yQlegVlk/zNFWbPjg==
X-Received: by 2002:a37:ef04:: with SMTP id j4mr43731174qkk.482.1571256051867; 
 Wed, 16 Oct 2019 13:00:51 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.00.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:00:51 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 09/25] arm64: hibernate: add PUD_SECT_RDONLY
Date: Wed, 16 Oct 2019 16:00:18 -0400
Message-Id: <20191016200034.1342308-10-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130053_726821_4D71B23E 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index 3df60f97da1f..756a1dfb4f55 100644
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
