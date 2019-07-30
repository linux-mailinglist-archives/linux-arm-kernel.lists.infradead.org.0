Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C6A7A85F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 14:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=w/bm3EUydeBhrLzbKnhu/00gXMeXmJQEmmqW7OLNJUM=; b=q5zWoBZM2WsgD7l+WQuMFxgAif
	5ddCzkUzryxsDU56DSAJAzcNjAfIMsDcyxB9dZsg8fvGQ8x0h/9rCZ5fIjVSwJP3KQLJ95IwtOHFh
	J6m14aUTabDrjNk6eKNUxC4HhGl0T073tEQEWeQCuyVV/5a2Qts70Ma3aMpefaMbEAPg1QWuM4O6l
	LcVIM3My8UDz6LWA1Qhka+5JJbhqCLhjRSadH8E/v9zgsgM6r0OLipShBHZ0myod7T2RKDFMwCbU1
	QFOovsGl17JO0DOfAPQoF6qN0enJY8Xfdq06PGqJNsR+Of/DNR8rgzR4UASUfqkZwt3ufj6NSLFb7
	fXQmyhRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRDb-0003ta-BB; Tue, 30 Jul 2019 12:27:03 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRBr-0002am-Kt
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 12:25:17 +0000
Received: by mail-pf1-x444.google.com with SMTP id t16so29733106pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 05:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UdO7TiN1GZWaQttAvLZ44/neyJcGu5j8j3RhNT+Sui8=;
 b=oeNn2Nb/KW67tK/SQYA3SwA0z1uQndtVJSRu+PDEjP72OlO8KmCMDtWBV5wq5bXjh9
 hS9nOcAhh0rZcgj0RAfW0XRibChG2g3/3zWkiH4hkx8VgHfmHWA4aM6qvQRMCbMGDSOp
 Bo53QaBP5OkWQzpZYWoNrCGtD3zIF2iH9bYNCt0o/ZLVt1XE+gTFteVw0X0p801KmcMi
 mIumz0AGK/+0LiHxAWX/nfQoS8Y1yP7gHMEixVeHFMyQ1tqGa9Tnh5U41MsKDVNf5llv
 RVYHfmDG2keihY0FTtTRGgzTF4IdgXDe5G/ve9Nji1Pbk27WKRIn6biY+aN2+F66OH/R
 oz6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UdO7TiN1GZWaQttAvLZ44/neyJcGu5j8j3RhNT+Sui8=;
 b=PdO4qpva21FgEH6taPb7c/EnYIC98hXwQYrMNGIZFzPgEm9c2WpJy15DYPbuW9eLvK
 0cXHkCAMWT9sc3Us7DhOU6fXj9rhTKMUWbuQug6rq/X9AaMuAYHRxbQ6/xhKbMtn0pUN
 BcVA5nlOV4TjXiQLzwWVJqWhJE9fXopXFcqsjD27cycg1Wxuy/xR7SjE+Kq0A1kSsU7e
 ddMXFXnBvMVHASRAS4AdbQhbMnib5OASao20LX45l6TJ6kytXf8+az9AX+XGHCrR//1f
 aQ1g3EmY1U0Hs71tr5NynZocuXmsQbahDf54ALQXLi6rUyUcRN20st92Y5xpuR5yize0
 vLdA==
X-Gm-Message-State: APjAAAXIp1y74UckI91JfhNUdYmVFOVOCRlbmlQiU9EncEPhDax2I71p
 manBCAuXl435nv2KEuvbMt86jg==
X-Google-Smtp-Source: APXvYqwiIFZ1Lpnf1zrtvEq7BSLgYRy9SXqV38k99nAfJbSJqZuysqZ14yG/NTWJNUvb4F6Bw3cxBw==
X-Received: by 2002:a63:5c7:: with SMTP id 190mr106671104pgf.67.1564489515198; 
 Tue, 30 Jul 2019 05:25:15 -0700 (PDT)
Received: from localhost.localdomain ([45.114.72.197])
 by smtp.gmail.com with ESMTPSA id v8sm54895462pgs.82.2019.07.30.05.25.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 30 Jul 2019 05:25:14 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: keyrings@vger.kernel.org, linux-integrity@vger.kernel.org,
 linux-security-module@vger.kernel.org
Subject: [RFC v2 6/6] MAINTAINERS: Add entry for TEE based Trusted Keys
Date: Tue, 30 Jul 2019 17:53:40 +0530
Message-Id: <1564489420-677-7-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_052515_831506_A5A73FFF 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: tee-dev@lists.linaro.org, daniel.thompson@linaro.org,
 Sumit Garg <sumit.garg@linaro.org>, corbet@lwn.net, jejb@linux.ibm.com,
 ard.biesheuvel@linaro.org, linux-doc@vger.kernel.org, jmorris@namei.org,
 zohar@linux.ibm.com, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 jarkko.sakkinen@linux.intel.com, casey@schaufler-ca.com,
 jens.wiklander@linaro.org, linux-arm-kernel@lists.infradead.org,
 serge@hallyn.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for TEE based Trusted Keys framework.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index ce06877..0b61ecf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8930,6 +8930,15 @@ F:	include/keys/trusted-type.h
 F:	security/keys/trusted.c
 F:	security/keys/trusted.h
 
+KEYS-TEE-TRUSTED
+M:	Sumit Garg <sumit.garg@linaro.org>
+L:	linux-integrity@vger.kernel.org
+L:	keyrings@vger.kernel.org
+S:	Supported
+F:	Documentation/security/keys/tee-trusted.rst
+F:	include/keys/trusted_tee.h
+F:	security/keys/trusted-keys/trusted-tee.c
+
 KEYS/KEYRINGS:
 M:	David Howells <dhowells@redhat.com>
 L:	keyrings@vger.kernel.org
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
