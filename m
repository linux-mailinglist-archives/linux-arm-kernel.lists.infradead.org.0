Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63A91EBE03
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 16:20:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jUxY/IRIc+WXYTtmH7c40ScG/a8P2WskCbvjXfl50EU=; b=uKdyaAI+aacDHshmFc1dH/mL6g
	uGcsbRkPL+z88YlrD2U0KsxVPUoHe1ENz474uSVnJHj8asYSPZrFVIE8zWuFBw44FasQwTWtzJUHB
	UQwSZHAABInrBgOITZmZoOInMuexgSRBWNyhh0F5X3e+OOYMZhzb8QeTmZ3NXhLTsXPsughADGnvD
	WyuA6+fRumsJlWdrfalI2lfEx0JSDT0cFkvgPinY7jcGHDJotQ+72d/1ZHAEz2lOjJlNYBJh7nR13
	42z84C6iJW63QSVHruqxcGMz+BjoKvmi1WDPkfcQy+gler4cJ/7F8P1oyfQ1pw5EVn8tJMVGbNhQ8
	Kc0L+EAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg7mP-0003LK-KX; Tue, 02 Jun 2020 14:20:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg7lM-0000Mf-V1
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 14:19:48 +0000
Received: by mail-pl1-x641.google.com with SMTP id g12so1389095pll.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 07:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xCxdAYBVIrnVoprqZ3jc+GoVPrFZj6YiVt4v2J1Jy+c=;
 b=xY0giUdNw9UJ2TjpJyNqI4efCSRpXtJ7KKCsoCmsl7Kdk1y5wXcoLznAn3lxWsl7gE
 P0N0oaJKpEO4QHz3289dxJouCe3Ss924AcbddVxgz1ZBpwNu5NS4AF4iFgefY/XZ8haj
 l4e8qU+Gj+HDdPTtQ74oTHfApphH057dmr7/8WJkrtiz1zee+wHNNpWa6CQSTSsNJ0QW
 t8dbUyNW200HiMjzM+5w4tm+98SjEEiqF3pxh3PgDrsNWoEa4+EvBCH6vYkUhZ9gI0KK
 HfGbwzfPPfQI0pksrCWAmbeyOwCSGGdcTUuoPgkYbDKl6nKl1VzWOAuzCnv92EzERP3s
 xc9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xCxdAYBVIrnVoprqZ3jc+GoVPrFZj6YiVt4v2J1Jy+c=;
 b=CfRl1eALqLM3syvHoGanG/DjPExsLli3DWAlmyQhAxp4DCJ5NA7MOfSq3N8+DY7lgv
 DZisUcD8caG6MnPICDzz7+RXQE+TZ6G4RJW6Qy7VyH4AHSGeYiY2+bLsGR/va0mWikJt
 N6zC9EQvR1gXGhCB079uOVGN07IJ1X/4rUDxWWfrnBoRxpn5uJT+ql2rCFr4XSo2nSfv
 iZTP5cXVRt746XG0xijYPMZz75+qUwm9PEt+EzYStlyP5kZQvYN2cQ4frsgcrF8t6hj0
 Lz/qnG1E44SuOGlJAHKmEnke6k1RPqNYvwGYonY6ZRJb9niFqTZXAp8+zdJIiF55XIkN
 cKZQ==
X-Gm-Message-State: AOAM533SWOKGSARKIp7XJ0fCtv9V13vL0OzwYffwAmfJjO/BdA4zkzHC
 UzPDBeragNc+wn24IR8ahHBnQA==
X-Google-Smtp-Source: ABdhPJxG830cH55AExGhe6B55/Arou3ybH7xW+GyhjWQJsAYEmUijypwo8iXX6XtFsQd8+bFbMS8dg==
X-Received: by 2002:a17:902:a9c1:: with SMTP id
 b1mr24928855plr.8.1591107571910; 
 Tue, 02 Jun 2020 07:19:31 -0700 (PDT)
Received: from localhost.localdomain ([117.252.66.248])
 by smtp.gmail.com with ESMTPSA id 141sm2529670pfz.171.2020.06.02.07.19.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jun 2020 07:19:31 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: jarkko.sakkinen@linux.intel.com, zohar@linux.ibm.com, jejb@linux.ibm.com
Subject: [PATCH v5 4/4] MAINTAINERS: Add entry for TEE based Trusted Keys
Date: Tue,  2 Jun 2020 19:48:25 +0530
Message-Id: <1591107505-6030-5-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591107505-6030-1-git-send-email-sumit.garg@linaro.org>
References: <1591107505-6030-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_071933_062946_1EA60FF0 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: tee-dev@lists.linaro.org, daniel.thompson@linaro.org,
 Sumit Garg <sumit.garg@linaro.org>, op-tee@lists.trustedfirmware.org,
 corbet@lwn.net, janne.karhunen@gmail.com, linux-doc@vger.kernel.org,
 jmorris@namei.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Markus.Wamser@mixed-mode.de, casey@schaufler-ca.com,
 linux-integrity@vger.kernel.org, jens.wiklander@linaro.org,
 linux-arm-kernel@lists.infradead.org, serge@hallyn.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for TEE based Trusted Keys framework.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
Acked-by: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 7b58ca2..50d0502 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9396,6 +9396,14 @@ F:	include/keys/trusted-type.h
 F:	include/keys/trusted_tpm.h
 F:	security/keys/trusted-keys/
 
+KEYS-TRUSTED-TEE
+M:	Sumit Garg <sumit.garg@linaro.org>
+L:	linux-integrity@vger.kernel.org
+L:	keyrings@vger.kernel.org
+S:	Supported
+F:	include/keys/trusted_tee.h
+F:	security/keys/trusted-keys/trusted_tee.c
+
 KEYS/KEYRINGS
 M:	David Howells <dhowells@redhat.com>
 M:	Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
