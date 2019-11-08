Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFF1F4CDA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:13:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vBp68pmjfKGpkV8QmbI7cxz9OrdM0+ZSRJ0aXdQle+M=; b=TtoqcO5jOYCwGk
	RQkauhIEiGrGO3rmwLdGWRmvlLNlr7bXqxDNo856PX6dMyIckNG5+zYVlGdRAyP1EKRJVU2XdQRZs
	z2GdKx8otr2HlnyHd/oZ5aLOYhwBUR3llAWgYD/S8eWrG9sc/I/ThEKaXtglPG+F/ELavTg3IyL9+
	ceOTCLDuoz6SCOZ6EGUFqRZRqYDSe9VeB+Zo5uw0NDTCjB6AuAh2BKpBRKQ8aFrfTkdwGqTV4yaJ0
	uMj3VJlLHbNc/sVVdPZFRD4nLdNDQLibIm1kJ8zKPdv487ee1OEOMOLx/NNTbSi9ASo++KCo+/v6i
	ibNa84nWZjPB27/87dOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT44P-0007fw-I7; Fri, 08 Nov 2019 13:12:57 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3u3-0004nu-B5
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:17 +0000
Received: by mail-lf1-x142.google.com with SMTP id j14so4394981lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hiVnbA+aLQJgHhafT97yYdRXOf2rz2/qkrRHHeVl/y0=;
 b=RkUIYnXtYtHoaluers5poWFKyA9z83YZFiREEHR69eo9ytnTPqRk666oOcDh796rt5
 W1SjnIiqgz5KNK11xLTj256um9u/k4+/5+8GSUUNS1JotuxHOPV7fZbIa/ZjkUpQA3ac
 P0TDnhp2ooUva3vHkfByfLzAZyZAhhEcqhIuE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hiVnbA+aLQJgHhafT97yYdRXOf2rz2/qkrRHHeVl/y0=;
 b=Wn9tEDjssDVL5jjUxRqtZtlkxi8PhZufOY9nwT2smgSEicM4/mVA1K3sBMfWEZfRXP
 y5XmSvLKPHxg9RMxVEanls7l1E41vJ5OTW/8cSwjSLK6Yyx9xcXoAirAEekHQqcOnnXb
 jmKXrlRp0pD/qQbhwt3MUssNHOJGDQFxdwAwemIjDVFLC2RrSn1URn1Fd2wUjeAvir0b
 fhorCppTLx4CaxYtWgIOk97fqUrQX7V0KR1/gEbNi7XiQRkvtdo8a5aOr/wVRb68Xo/7
 ZYqvygKYZ3EvtIIxtpsUwl7YwvpX+//w+W+v8rWT/tIdqobey5RbfHoSLbZYEUI+LlpI
 4LWg==
X-Gm-Message-State: APjAAAXWy2FnTwWMEcGWBbeJbG50+ByoiIpUwQLifh2vNh7x5Qmp0ES6
 u6HAbnbvDlhVgQ+o/GLrdo3Lhw==
X-Google-Smtp-Source: APXvYqyY1XtYAXaxuUxr5OqGf/UpqCH4S0tKcnokVcpJWs4tNPMtCmYKxFMQ4t+72vh1UpmamXg+gA==
X-Received: by 2002:ac2:5635:: with SMTP id b21mr6601913lff.89.1573218133640; 
 Fri, 08 Nov 2019 05:02:13 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.02.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:02:13 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 36/47] soc: fsl: qe: make cpm_muram_free() ignore a
 negative offset
Date: Fri,  8 Nov 2019 14:01:12 +0100
Message-Id: <20191108130123.6839-37-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050215_472711_42C1D85B 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This allows one to simplify callers since they can store a negative
value as a sentinel to indicate "this was never allocated" (or store
the -ENOMEM from an allocation failure) and then call cpm_muram_free()
unconditionally.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_common.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/soc/fsl/qe/qe_common.c b/drivers/soc/fsl/qe/qe_common.c
index ea9bef1d2c77..4437f4e14d2c 100644
--- a/drivers/soc/fsl/qe/qe_common.c
+++ b/drivers/soc/fsl/qe/qe_common.c
@@ -176,6 +176,9 @@ void cpm_muram_free(s32 offset)
 	int size;
 	struct muram_block *tmp;
 
+	if (offset < 0)
+		return;
+
 	size = 0;
 	spin_lock_irqsave(&cpm_muram_lock, flags);
 	list_for_each_entry(tmp, &muram_block_list, head) {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
