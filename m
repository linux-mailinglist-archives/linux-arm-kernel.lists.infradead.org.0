Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4ABD579B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 21:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+W2EAqnBSseaSgaBbk2z14hUizP6bCMtZ4Rw6C1mxgE=; b=HJPWSrdglNxcqr
	pFucCRcvUoDUMCRYjxa/O5gjYTeluqpuym7hwhixJRS701WJaeYZHa3ATVeF1HCxkXYu/yckx8cd/
	Y7GwyzmD7BaVPRXwtKjAxExAkHq/nWt90scx3hKHsZzkFqylrtJtMe/TtmnpCfCXEeG4iyLc7uZQa
	lsdkQb/QXDDEA+SAjF4wxQKoH4ojUGcnZ5n1yW8IRPRBS27COOZembPlfriGm+HZYYlcoqZ+pIjo+
	Sor4uFs2cGRCKYN1dRG1T6JOvU+1ubO6ukH2fvRnu8OHgG6bhxQWfKBL/lfwByLVsGFV6GfdwBVRt
	3NV9zWNyvtstMKf0NHaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJjGd-0004ve-Es; Sun, 13 Oct 2019 19:10:59 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJjGT-0004tz-0r; Sun, 13 Oct 2019 19:10:50 +0000
Received: by mail-pg1-x543.google.com with SMTP id f14so3661174pgi.9;
 Sun, 13 Oct 2019 12:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b80mjczMKdynxDiqihftIRC/nvOfe2fufAmH1zUWecg=;
 b=Rnt3TaLC3t5HfsHxd7aOpUWt1ltyyk0x1kQ4RXg7fRL316JzXDZRbp2fDirHoNbT+p
 TkG0KrYAXKYZNnszzkD7/wFIkEvaGtbd6sfhQ9e1SXbZgrRjSeI1ZAOdRbbwp9vIhfgU
 iCEGzzxe/taIIbL0bD56GdvxKmVDDlcE1Vnjet4RvBSzT7GlQ3a+GswEBA7O057MD433
 sZzmLWGxZq9bfq5CEi4K3+GMVHY/tdb7BA11kXrydINEflM9jUm+rQRyrwdTux7LKIgh
 h/gqD6dw+6LHAe+ajJrvsqNJBYbke0Zs0T56BFwmnZGs7Hz0ldSo7y/uJhwQpGC8aFmR
 0o5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b80mjczMKdynxDiqihftIRC/nvOfe2fufAmH1zUWecg=;
 b=OyY0JugCHbBiKjMlthNv/BF2gYIyr5/48YoWYJKj5dVhg5aMrzmdkQKo2wt55++bsL
 nfhMUPJd7MuBX10EYCXggYZI0uaoVC83nj0cHU2JuxzsdPvY8QaHva07FolPaD9FA8qB
 5t4UIxqEy8JElKVu+M/nUpAmDHoDRGxFOo2f7M9HQP2FAZQHOLS4e8TL32pj/U0PcxAk
 OhIFTV6PCScbXaisX7tam58ud8RKGm3cLICz69wDRZJnphrxK0omUxabnrQMXCzQnxk0
 DwK7F1M5r3KdATx9vGE5h7opLyv5zIb2rnOHSet8mu0zKfjgznTAnxgo+I/9l5Q0Pkz2
 moBQ==
X-Gm-Message-State: APjAAAVjm1JO+8Wq8EneQsdQX66dja/7qly7PCMtZzOSjl7f6Ox0jliz
 bXHiYpKG2rZPNGz3WyIgGpI=
X-Google-Smtp-Source: APXvYqxQzbjm7g/LJpdZWfeo4Uaggr8/CzxmLN7hdm1fYG9ceaKdu+4kP3AREI2KrAAK0x40piPAqg==
X-Received: by 2002:a17:90a:bc41:: with SMTP id
 t1mr31936123pjv.67.1570993846203; 
 Sun, 13 Oct 2019 12:10:46 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id m5sm15261216pgt.15.2019.10.13.12.10.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 12:10:45 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8723bs: use DIV_ROUND_UP helper macro
Date: Sun, 13 Oct 2019 22:10:27 +0300
Message-Id: <20191013191027.6470-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_121049_087657_063541D2 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wambui.karugax[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the DIV_ROUND_UP macro to replace open-coded divisor calculation
to improve readability.
Issue found using coccinelle:
@@
expression n,d;
@@
(
- ((n + d - 1) / d)
+ DIV_ROUND_UP(n,d)
|
- ((n + (d - 1)) / d)
+ DIV_ROUND_UP(n,d)
)

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
Changes in v2:
  - Remove comment that explained previously used calculation.
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 87535a4c2e14..22931ab3a5fc 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -4156,9 +4156,8 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 				break;
 			}
 
-			/*  The value of ((usNavUpper + HAL_NAV_UPPER_UNIT_8723B - 1) / HAL_NAV_UPPER_UNIT_8723B) */
-			/*  is getting the upper integer. */
-			usNavUpper = (usNavUpper + HAL_NAV_UPPER_UNIT_8723B - 1) / HAL_NAV_UPPER_UNIT_8723B;
+			usNavUpper = DIV_ROUND_UP(usNavUpper,
+						  HAL_NAV_UPPER_UNIT_8723B);
 			rtw_write8(padapter, REG_NAV_UPPER, (u8)usNavUpper);
 		}
 		break;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
