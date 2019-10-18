Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3798ADCCDA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:32:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lIYKG2ivtdrdXRK8WODEgy3t6UvvXqeeWvVtkhhxcxI=; b=TMSmTHmZxln+aJ
	bz6Cl0lJ3FCgTocSDnipod9yOiolifyEtFn3YJGLRd1dLpZHuckveQdnDjK+89aM2tP1QXA2LJtGa
	r5sTsI15d+1ocDQhByb0V2fQ/C3VwmXUJ0RtopRh6yHANezWDgfSm+ImPe77G0IhYgmd28WWdhx5c
	ltMyWrBij8pD6D8oG4/f0/oEkMRitvhA62g4tC/R6ztaHXiXxfWLzD3yldZuNM0khOwzMYRQKvpe+
	dy5CalAT9lWnRGYBvIgvZ0dWL03fnqIVHmR4rCHaYgv5RqownrwJFTfJqKfYugcwzE668az0bhLWT
	KIyWBrannLUUAf8ipHtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLW77-0001VF-Re; Fri, 18 Oct 2019 17:32:33 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLW6s-0001Tf-VV
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:32:20 +0000
Received: by mail-wm1-x344.google.com with SMTP id 5so7014745wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 10:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1Sw0jFW5jGSGbXDR6kjw3sQ7x0eXAWOU04hu+4Lun0I=;
 b=F7bCnS3unseU4Pe5IzC5zUpmWlYMdj2YoPBCoyigGCpOa5U4q61E23KUKl7/OO8nS6
 WUdzxbAus6HqI12ynE+nZwyeZbScvBHaNZ/MS3f0KnUNnx/EplI1jIZL/5iH71+0mdDz
 dcRy9M6gwI3bMmfZsccnxZpqW7Rd51W1NywMy4/Mp4wT89DnDgdkLVO9fv5sh0RYkPyS
 Ehf0VdWN6+9r6al9EuDyaJi+pPQ0TMXNqxP6f179NCcs0/5FVY+iBLYjGQ5xJXBeU71O
 Q8mJc2Fg+yP3dNOPle+Zb1QIZzX2WsgUBZelWPvl8lmHh9R83fIiczy6BM3vNpewfQqr
 /wPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1Sw0jFW5jGSGbXDR6kjw3sQ7x0eXAWOU04hu+4Lun0I=;
 b=HD0sDfbmxOsqcSIKDJMCMa19H8d4Z6tXU+F54PvbF85aPjoRRnmRhVbDICCk3YGaHK
 DdG0InyOGGMTV5KKKxhIiQb/1IN6grG+LLk6i2bYzGjT4206tayrICmMs0izev1/Safd
 e5wf3D56NPZaRSLuKPnFxfDZVqMlI0AbXlFevn9KZgLVzvCA/Kn9MeCGeiDoKzL6Bfhx
 PnibHiSuUS0v+u1Sug6wRKuC8Wt0b/78AoSxnS7Gz5NtHyi67teCwI/dbQlSdMTTeHAO
 gHzUnQrbTfM49gT4m4agxO0K68tAvlx4nUJ3dpDr/c3Hpo+Lqlun7Bz8il8/S/SRlDBr
 9+5w==
X-Gm-Message-State: APjAAAW7TkpaTivzG3YC6CoLAbUq23kZcTubktuatho1gAL6s/VWm94D
 b/d3rkqAvjBkmNKD0rTcoXQXbQ==
X-Google-Smtp-Source: APXvYqwLL/J/QMgyordUs7NtcgM+iCDETbDA3BzJsTD+EyqWB7RmlJjXBDAvzNb7XcPW3p+O8v6QGw==
X-Received: by 2002:a05:600c:2201:: with SMTP id
 z1mr8798906wml.169.1571419936945; 
 Fri, 18 Oct 2019 10:32:16 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:32c:e530:1f62:944f:4c42:96a0])
 by smtp.gmail.com with ESMTPSA id
 z4sm5911967wrh.93.2019.10.18.10.32.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 10:32:16 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Subject: [PATCH RESEND v2] i2c: i2c-mt65xx: fix NULL ptr dereference
Date: Fri, 18 Oct 2019 19:32:13 +0200
Message-Id: <20191018173213.13282-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_103219_073817_17695145 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ulrich Hecht <uli@fpond.eu>, drinkcat@chromium.org, wsa@the-dreams.de,
 Fabien Parent <fparent@baylibre.com>, hsinyi@chromium.org,
 matthias.bgg@gmail.com, Cengiz Can <cengiz@kernel.wtf>, tglx@linutronix.de,
 qii.wang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit abf4923e97c3 ("i2c: mediatek: disable zero-length transfers
for mt8183"), there is a NULL pointer dereference for all the SoCs
that don't have any quirk. mtk_i2c_functionality is not checking that
the quirks pointer is not NULL before starting to use it.

This commit add a call to i2c_check_quirks which will check whether
the quirks pointer is set, and if so will check if the IP has the
NO_ZERO_LEN quirk.

Fixes: abf4923e97c3 ("i2c: mediatek: disable zero-length transfers for mt8183")
Signed-off-by: Fabien Parent <fparent@baylibre.com>
Reviewed-by: Cengiz Can <cengiz@kernel.wtf>
Reviewed-by: Hsin-Yi Wang <hsinyi@chromium.org>
Tested-by: Ulrich Hecht <uli@fpond.eu>

---

v2:
	* use i2c_check_quirks to check the quirks

---
 drivers/i2c/busses/i2c-mt65xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
index 29eae1bf4f86..2152ec5f535c 100644
--- a/drivers/i2c/busses/i2c-mt65xx.c
+++ b/drivers/i2c/busses/i2c-mt65xx.c
@@ -875,7 +875,7 @@ static irqreturn_t mtk_i2c_irq(int irqno, void *dev_id)
 
 static u32 mtk_i2c_functionality(struct i2c_adapter *adap)
 {
-	if (adap->quirks->flags & I2C_AQ_NO_ZERO_LEN)
+	if (i2c_check_quirks(adap, I2C_AQ_NO_ZERO_LEN))
 		return I2C_FUNC_I2C |
 			(I2C_FUNC_SMBUS_EMUL & ~I2C_FUNC_SMBUS_QUICK);
 	else
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
