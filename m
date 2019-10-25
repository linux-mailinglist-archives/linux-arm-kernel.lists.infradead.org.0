Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B52E4B67
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5UpIxyS+AzOZWkFgHvWAiiNTdLk6P3vf2FB9xbfgd8=; b=Oh0GcSgaF9556P
	JbOi96zPm1vOsoQ8oUpofTwvX+JT6aml0jpqngumFan35TiUdBwvP0SGishtXe8bjnB9g2FDOVpk/
	GBiTPkzoyVEgkYqN8mFgb+HXCu3VZXiuVfvri7aD+dpnfVz/+fKh5/VLuMpWsQiersJipgUK5jp7Z
	s2gcB3XOlKKaHJUuXciF8iLoTVYlVgTd3+Lyds2zL42GvU5iDFhRT0+3RnV5t5t7J16ms9wcdaedt
	oORuagmTIMLdr39guNk26lsc2DUHM5Zrlqi83OciAwUeucdn+1kACkPFWT722WY1gXaqZMTmLxpMI
	F5d8gJgbo0FBYLoN7T+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNywP-0007zr-Fm; Fri, 25 Oct 2019 12:43:41 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyu0-0006GM-MQ
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:41:14 +0000
Received: by mail-lj1-x243.google.com with SMTP id l21so2554146lje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 05:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N50Dd0BwKrCHAeZk4A17lzm64zQu/57ZOLH9CQ/zcnE=;
 b=GbMgHMlPuXicUd1jD2lMN2qhtRW8TtquRFBK/Ddk4tseiBp72B5kglvaqT7HytLeBz
 ERycsML3pLKiOMNp8blGqHqZt1010NyDGfn7LqQaBg6mJbO74s9jsmr3XhByikIXl+at
 RFzgtUIoBjMXP8kS9sv6NM1bEvcbXcMXINIIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N50Dd0BwKrCHAeZk4A17lzm64zQu/57ZOLH9CQ/zcnE=;
 b=Eg0m6gDzLi4Cqh3qEGpJi6xwqyD2EbmSfS2BoomRj3h4pe36Ql7AeCQAgj06fT9JWd
 DpKU5DeR1vbot7fvWblQHbgN6ev0gFadB5/6oWRcOIl9AT0hhZAHnsQt3qQDT8Ked8tz
 3yvzLy/6YBNQ1AThBe0TKslR/5WkHeVPOct4oRx+PPn+DiT14+b608DysMTEgHBj4Zv/
 hLyZGeQFuY/9h7UVoMCaJ8WiC4BY78O8cuwxBts9cpqRySKAC+R1hrCC/cLyIQjGkYV4
 SKJ8sjaB5h2BfJX9Aduu+qqBJbCzLhKBWYBQ0jV5vrBEvSi7xzbRO4q6VBm5w8SqWlxX
 h8BA==
X-Gm-Message-State: APjAAAW8wxQmEi7Exx48iyNYspixQgMgl2TYxKc0CSsbIzPoMD3UCHEp
 DW0Gxc0VDYeSlzqOpmdYihKxrg==
X-Google-Smtp-Source: APXvYqwo2JfL7eIt5j0UGDMoCocGX5aXqxwftXfPdGyY5T7w8Mdcm7mXtiOPvL3zk+z+WGo8qCu+jw==
X-Received: by 2002:a2e:7815:: with SMTP id t21mr1151982ljc.149.1572007270677; 
 Fri, 25 Oct 2019 05:41:10 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 10sm821028lfy.57.2019.10.25.05.41.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 05:41:09 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v2 06/23] soc: fsl: qe: avoid tail comments in qe_ic.h
Date: Fri, 25 Oct 2019 14:40:41 +0200
Message-Id: <20191025124058.22580-7-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025124058.22580-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_054112_774442_FFB9598F 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is consistent with normal kernel coding style and the style used
in the struct definition above this one.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/qe_ic.h | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/fsl/qe/qe_ic.h b/drivers/soc/fsl/qe/qe_ic.h
index 9420378d9b6b..29b4d768e4a8 100644
--- a/drivers/soc/fsl/qe/qe_ic.h
+++ b/drivers/soc/fsl/qe/qe_ic.h
@@ -89,11 +89,20 @@ struct qe_ic {
  * QE interrupt controller internal structure
  */
 struct qe_ic_info {
-	u32	mask;	  /* location of this source at the QIMR register. */
-	u32	mask_reg; /* Mask register offset */
-	u8	pri_code; /* for grouped interrupts sources - the interrupt
-			     code as appears at the group priority register */
-	u32	pri_reg;  /* Group priority register offset */
+	/* Location of this source at the QIMR register */
+	u32	mask;
+
+	/* Mask register offset */
+	u32	mask_reg;
+
+	/*
+	 * For grouped interrupts sources - the interrupt code as
+	 * appears at the group priority register
+	 */
+	u8	pri_code;
+
+	/* Group priority register offset */
+	u32	pri_reg;
 };
 
 #endif /* _POWERPC_SYSDEV_QE_IC_H */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
