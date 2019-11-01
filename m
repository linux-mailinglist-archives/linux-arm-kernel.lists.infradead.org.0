Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A35EC2DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:42:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/Io1TDculi07pDWANG8XU8ejupy4YkvFX+vjUyFZBE=; b=cFr9upGatcz6xp
	TlrmbSZ1KfR5I8EUYZEHLG6bvS3CwJkF860oBJYMJfz52/Dqqakvt4pKTHMhjc2bDrrhjhedZWHZn
	qb5qYrdxD7T+05zxAruFogZrgm2B/sU6G+wQfNzYfc9nljaKpC4AQQirn4l5rSO1FMGVbcuL2SGLc
	3ubhlHaojx40zHOZe+DIYdJmTH0UhDsB3JhjCa3uOAKCMtp6rKVtPEGxBMcdeojWgYicQDEo1JdCU
	GeZHX7lz9YM5E+oSf4U7qFxzKCV7oByW7VFHO6UTnJPgh5jVPj9IdWRDkI+hPm9HEkIS68FWLorlI
	qzsCbBmo/UBq+h/dfWfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWG6-0007pN-1h; Fri, 01 Nov 2019 12:42:30 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWFv-0007n4-T5
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:42:21 +0000
Received: by mail-lf1-x144.google.com with SMTP id j14so7133664lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7uK8xEnPEigQ7dFIza6M7Wg35/gDKz/RHXvPNwcggqY=;
 b=FJGEyUjDMyY3qQwDxrXdaq6kbDtEuWaQ9DdM3JQbmkDv5/TqT279el/27e2uU9No1a
 f+iz8Vxf6Hy5Yia656Z3D2IFrlqCrNAHpa+4MZwbyXZwnzKLGOuyKeoeouKUynNENL+w
 9N/0jeI/nf5AWsvbX8qp/uDqSP/sxEhYzWMsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7uK8xEnPEigQ7dFIza6M7Wg35/gDKz/RHXvPNwcggqY=;
 b=JGlehW+tZey0Ao78lCkrYcQmTq/SXsIyyZDZKJaBeVjljvOTbkRwrwF+o2WUae1DI9
 6LlNAwV92M9kgyyAd6HvP1dGIA2G0wki0e+HUeqK82XsG5tw6TEMTyuRm8XBUh7OxETJ
 GhYANA583/eb12FMX3u0byEMCPMwdrEygArC13Q9K3norqzro1Mlo1sx08ORaI069TdB
 PDVmokVzXJuckfv7JpK2Ys3Al9iK0rCEj6nkcmDzh+3h4l43542vqQZ5dulervULYeqo
 0Rmf5wOanATIycHnl7lQND7OZpC4zUnvqps5b4gHJcUiGtq8NhTe7m0o6eJftX6YNwoi
 Un7Q==
X-Gm-Message-State: APjAAAWBcue5SzGQnchCGxJxwaW9KiIIsPJH6UC6Umct+2vcvYWvwb2e
 yv5io8EgDuV/ELRyiw5mN7w0ahUSocFkdiIU
X-Google-Smtp-Source: APXvYqx10tC45xnMYXxbHsIhOZZte50RDX5EOtgZaSoKO0iY2QuiQYHpnCYFw+LsHLxAu07eF6ZXqA==
X-Received: by 2002:ac2:424c:: with SMTP id m12mr7265781lfl.140.1572612136042; 
 Fri, 01 Nov 2019 05:42:16 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:15 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 01/36] soc: fsl: qe: remove space-before-tab
Date: Fri,  1 Nov 2019 13:41:35 +0100
Message-Id: <20191101124210.14510-2-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054219_937217_BB770114 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe.c b/drivers/soc/fsl/qe/qe.c
index 417df7e19281..2a0e6e642776 100644
--- a/drivers/soc/fsl/qe/qe.c
+++ b/drivers/soc/fsl/qe/qe.c
@@ -378,8 +378,8 @@ static int qe_sdma_init(void)
 	}
 
 	out_be32(&sdma->sdebcr, (u32) sdma_buf_offset & QE_SDEBCR_BA_MASK);
- 	out_be32(&sdma->sdmr, (QE_SDMR_GLB_1_MSK |
- 					(0x1 << QE_SDMR_CEN_SHIFT)));
+	out_be32(&sdma->sdmr, (QE_SDMR_GLB_1_MSK |
+		 (0x1 << QE_SDMR_CEN_SHIFT)));
 
 	return 0;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
