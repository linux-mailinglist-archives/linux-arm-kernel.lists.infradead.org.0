Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 209B61EC217
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 20:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vojaqnYYll4d5QKFuw9qZyfrJcIHr0LGPqCKr2+DLFs=; b=a1s
	hL4hZXwE3DywcsFSM/RqPbaRV1W3XQvPOe2Ln4EdaQI0B1vUc/8A8NZDhR7qaEOvsgeKyQhud6NFc
	XdZdh6CLrQ3E9F6ONdhEi2vzKOZCf0jh/w40Y4J9uHE+xBBE7thzMbw01PlGvIbHybQmO42mh0rpJ
	YzjN9XfsyMx0Cn+SoNSxxi/MhaYGaorQ723rsuF3/OV6bbipeQuY9Eqx4A2BEEqjvdT0kFclmxeNH
	wvHbHsMslvX7Yd2xRwk1P44IuKypoRE3TPIpVUBVxZcYM2M/VY6GclVBKpvRETc9GGkeTrBoZCjk5
	PUYpT9LdCkSEf8bcZvJdG/xU6FY8aSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgBvu-00048T-El; Tue, 02 Jun 2020 18:46:42 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgBvl-000480-EY; Tue, 02 Jun 2020 18:46:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id h185so4494363pfg.2;
 Tue, 02 Jun 2020 11:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=KjGFYyFxgPYs05yaRJGkiTGGqOdTYKxkxLdoLAX2dfc=;
 b=umDxVyYdwoQVgslyAnCov/qRec06itnasXt33K/1Tx+Q8ZmZvHyxMaMvFdd28DbusM
 00OSH9nQ3R40zOLyUUXqK4jyjOKSjW5IZxLS+ityplv0VxKv8HxdfUDHTVT7PQKaoSeB
 CIRzOgqkQJ56y9F5GjagLKE5/3qqD8eGm3UZA6j2Ujd5zNrI2Q8Qat3qcFHeqOL3uKbo
 LaQsDdUIxL9GPZoHUNdLRXS1BBeitjt7kbbmGf2Al1kpzpNbAUm3iZg1x6oA7jGpcBh+
 hrI64AI9nCHF3YvHI0J1geuB6VLPTt20Gw0XZYK0+rAKn2jSk24PzrIGOl4HCvLJQKn3
 ZT+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KjGFYyFxgPYs05yaRJGkiTGGqOdTYKxkxLdoLAX2dfc=;
 b=Kqd47az7TKQ6HeamXKVICcnOi4bBX6zibShokOdqzkfPSf2CQAWjBeLGg5jgOoRgfW
 xEmwxK1gIkDAMve8g62nhDJ4PCBZOB9HdqpQXB++3b5a3TcFfX7xd3CuELMU2nhS7wv7
 bpvJpfCgJma3KrczuOzmT2vIUH4+ZdgzZNaxZv16Ww7xDigxNUlB5nHqlklQBXW2xBcQ
 bFx6Fe+o4d/oFQcbI7/aF5SiSj6nE3hl7GoK3y8HL8XRg91hg2uAmqM/R3N9I4G78Cdq
 JuUZ7Ve5FaoJ32SSoT+MhXrmrg9JuPsEmIiCc6PznEF8KAgo9Ll5gGZDICl+DLNqMOYD
 Y4Og==
X-Gm-Message-State: AOAM533bhPYZ4nFS6VOeId3eDjVw/8NSY9YCfcx61bcnWoRQwROqCaJd
 echWwPWSNva5BpuJ8oJ92eA=
X-Google-Smtp-Source: ABdhPJzXP7o7aqixQ14sESQ0eCXX2+MysWeKa5rOX2JW53KzJBa/ov2sDcBhfSB4Q3HNGTYycAWfDQ==
X-Received: by 2002:aa7:9910:: with SMTP id z16mr3427117pff.53.1591123591678; 
 Tue, 02 Jun 2020 11:46:31 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.171.172.1])
 by smtp.gmail.com with ESMTPSA id o21sm3056833pfp.12.2020.06.02.11.46.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jun 2020 11:46:30 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: gregkh@linuxfoundation.org, jamal.k.shareef@gmail.com,
 dan.carpenter@oracle.com, marcgonzalez@google.com,
 hariprasad.kelam@gmail.com, tasman@leaflabs.com, nachukannan@gmail.com
Subject: [PATCH] staging: vc04_services: Convert get_user_pages*() -->
 pin_user_pages*()
Date: Wed,  3 Jun 2020 00:24:17 +0530
Message-Id: <1591124057-27696-1-git-send-email-jrdr.linux@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_114633_505706_4851E0A0 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.171.172.1 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jrdr.linux[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, John Hubbard <jhubbard@nvidia.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Souptick Joarder <jrdr.linux@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In 2019, we introduced pin_user_pages*() and now we are converting
get_user_pages*() to the new API as appropriate. [1] & [2] could
be referred for more information.

[1] Documentation/core-api/pin_user_pages.rst

[2] "Explicit pinning of user-space pages":
        https://lwn.net/Articles/807108/

Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Cc: John Hubbard <jhubbard@nvidia.com>
---
Hi,

I'm compile tested this, but unable to run-time test, so any testing
help is much appriciated.

 .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c   | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 38a13e4..4616013 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -287,12 +287,8 @@ int vchiq_dump_platform_state(void *dump_context)
 			     pagelistinfo->num_pages, pagelistinfo->dma_dir);
 	}
 
-	if (pagelistinfo->pages_need_release) {
-		unsigned int i;
-
-		for (i = 0; i < pagelistinfo->num_pages; i++)
-			put_page(pagelistinfo->pages[i]);
-	}
+	if (pagelistinfo->pages_need_release)
+		unpin_user_pages(pagelistinfo->pages, pagelistinfo->num_pages);
 
 	dma_free_coherent(g_dev, pagelistinfo->pagelist_buffer_size,
 			  pagelistinfo->pagelist, pagelistinfo->dma_addr);
@@ -395,7 +391,7 @@ int vchiq_dump_platform_state(void *dump_context)
 		}
 		/* do not try and release vmalloc pages */
 	} else {
-		actual_pages = get_user_pages_fast(
+		actual_pages = pin_user_pages_fast(
 					  (unsigned long)buf & PAGE_MASK,
 					  num_pages,
 					  type == PAGELIST_READ,
@@ -407,10 +403,8 @@ int vchiq_dump_platform_state(void *dump_context)
 				       __func__, actual_pages, num_pages);
 
 			/* This is probably due to the process being killed */
-			while (actual_pages > 0) {
-				actual_pages--;
-				put_page(pages[actual_pages]);
-			}
+			if (actual_pages > 0)
+				unpin_user_pages(pages, actual_pages);
 			cleanup_pagelistinfo(pagelistinfo);
 			return NULL;
 		}
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
