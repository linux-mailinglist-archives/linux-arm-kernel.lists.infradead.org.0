Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2941FB00D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 14:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xn5XUe+i0CRys6lt8dOx1cSoO7nI4KMIa2myANtGHrI=; b=BUtPck+qfW27Bx
	GATux7yVp9FMz18bm9XQ/xwqixx/JHMPVTyFEhlXIRKTqaHk+mb5PrwwrI9bQnWQ8K0s8FtpFbfZF
	CowbWDF2ZcDg9svjYX86zWRs3eufZQtANmIj+iSYT5jlpDEWWFv6q6rkhRcWcC/zFOaU/1iOQgkIC
	9lqeXFma6qe3sdJ1kG98SFs3oBUdwyt3GENLn+r5zb8MZ+5l9C8FEuXUH3hXW4UaumJHBDsAFc6Q2
	lPwWWAgoIXM22d79NO+0JI97b8PU5R0Gcg1bdgrniYsSpRWrQ28Sm9z4+VbTNIxuAHPnE4BH/mMdf
	WC+XsegOjZ83S487JXjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAXF-0000Mh-2r; Tue, 16 Jun 2020 12:17:49 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAWf-0000B8-HK
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 12:17:14 +0000
Received: by mail-pj1-x1030.google.com with SMTP id u8so1355150pje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 05:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Im+gWXwz9xrt/i5JNVHGmDB8gIP62Jly/iM3EIi0NBg=;
 b=XYOS/3//CEA68v+h5ngRHMKXDOo7bWl8gOA4MxY7IFFhBr64ctPeOjbdTHTw+cO2i0
 qSghunqiPGyKUL6GxCGttew8Tst+2b0tT+u444JO6vUfdlf03BIeFycb/Kt8E5xvo46Y
 hbXIctmm+yhchgtjbUEFjTfyv7YPB169kf0+Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Im+gWXwz9xrt/i5JNVHGmDB8gIP62Jly/iM3EIi0NBg=;
 b=gCA59zwzC4buSS3Q4hJTcWZxmM/8GxZNg3Vb7IVB4mJBrX/aze737rmNWfy+jUS2Si
 aG/RL4iHqv0Vnb+zfV/fHUkyUvukB+3nzTeriL5El/tIQqSMZ/DoWW7erN4PMQtOYvCM
 SmF3LDskdW+Ro47g0WJ4FDiEuKqVNnifT9k3Ov3Yv3pDpRErHu+KEA/oM6sKWmax7FIZ
 1ZoeOROyb3n1SbWxtkon6FGSDEYQthSHjpFVBOHFlr5nlooX+ORkN1A/Syvx9u6kVCt8
 5H+5BjUotfM02OX251o8I6zvChVEmjM8B1im0ErVV2bdlB0H9OjUc1I4TNRgL5lREMDq
 qzDQ==
X-Gm-Message-State: AOAM532vh9FGIRZ5g+uVf7Gr8V/bcsCnUY2kG2GKn14xi8c1f7dzgern
 epuchGz4/tlUMGOhQhOqWkBJxpxLxIs=
X-Google-Smtp-Source: ABdhPJwaPXD+3UGrbUOue2kQH1OEHemcgB9H5Q7Z04moIxoi/6LLQ2MgiaKS6I+q8uTmAUSpd8zc6Q==
X-Received: by 2002:a17:902:848d:: with SMTP id
 c13mr1819369plo.289.1592309832346; 
 Tue, 16 Jun 2020 05:17:12 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id f23sm2360703pja.8.2020.06.16.05.17.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 05:17:11 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 01/12] dt-bindings: vendor-prefixes: Add mstar vendor prefix
Date: Tue, 16 Jun 2020 21:15:14 +0900
Message-Id: <20200616121525.1409790-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200616121525.1409790-1-daniel@0x0f.com>
References: <20200612130032.3905240-2-daniel@0x0f.com>
 <20200616121525.1409790-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_051713_569383_03C48F7B 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1030 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Daniel Palmer <daniel@0x0f.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add prefix for MStar Semiconductor, Inc.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9aeab66be85f..b09b6c9911c3 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -680,6 +680,8 @@ patternProperties:
     description: Microsemi Corporation
   "^msi,.*":
     description: Micro-Star International Co. Ltd.
+  "^mstar,.*":
+    description: MStar Semiconductor, Inc. (acquired by MediaTek Inc.)
   "^mti,.*":
     description: Imagination Technologies Ltd. (formerly MIPS Technologies Inc.)
   "^multi-inno,.*":
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
