Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4ACB3D9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 18:08:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zabYIap+iBOYBhgHm0V1JXyof/GIC+HwqNk+eKaVTnc=; b=jYy
	KvPvBoC7oj20th+kFKi/srWZ8dx6wH3qXcYpuC/b5+WqFLSNZ4MfFFSygrGqU7NfbliLsn5Icdhnf
	C+2+ReyCSS0Vozp8AOsACz5IDIJDtneIdJ91XsjsLU19gI8YhDq3/WsWos74VQnNscJBmyOHx1a65
	Hdh7OB2OcKqCm0cGsB3uBXKOV6F3aL0k2wEQ/tzfFIB8j0Uj+AWf0ohvt2qiJHlT3bmDrPypQUSK0
	OIwp80m6EwRFQA2gsVy2pvY6Hed8z0nVE/mis+BZG7QY9uyYTptv03rn3bGu8h3AWtS/jMbk3+/DG
	fC/pglpbfXQAhkXguonIUTlitPxX1MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKPsA-0007nN-Ua; Sat, 27 Apr 2019 16:08:18 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKPs3-0007mr-9s; Sat, 27 Apr 2019 16:08:13 +0000
Received: by mail-pg1-x543.google.com with SMTP id e6so3063117pgc.4;
 Sat, 27 Apr 2019 09:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=jrtjq2Yr4HF77ya+Bh8Y543ibzBroImWXM+PFp8HcNA=;
 b=Ne5FvEOmBkxwTy2jX6gYCth3dn2KTnAtafRBz7JPu1Kw9BVIwGeEJCLpiKWoamMBcz
 urGD/8j0mz74mFKO3VtZEjzRVBwwIB6gYUb9VCqbSEK248CVHbMH2l/NKiMioer2a/vg
 MdQgJt2CFHiRTA5JIJUG1VXpICsh+w6igmDLbqoH7bgDSQ4hAgNPirMdTscfsLwslEZL
 cy/o0/oaK2wTTuDGvYCt5gjRG5HhQRC1mumeoqgQQYKxmFhF+keouNxB4hXtbgUmY+n3
 3tUv0qI+6aK7NhA+itZjAMYxJ00Efc+aZ/VuxxXeDa6deD/qwbjaBimIBzzPxOD94DQ0
 gXgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jrtjq2Yr4HF77ya+Bh8Y543ibzBroImWXM+PFp8HcNA=;
 b=VRQSkqiKBcfJ/5HEiiainCFOk9TYo4SjVpsWszbTDBG/33gYW2d7jqI8b0cMT5W0Ex
 BLf4LRUbADH9xBGPUWO5mOFdhmfjYSwHCPETmw/o1B4tmpp7u6NlPXnPuixLovkmkbv2
 faKP2CAmGHeb3NcbSK9fuy3FJN7tyDiu4hAFWQ3nPYPDRBJRvBMV3lj1Gbp4Vyt34R40
 TdMns13K5MrdPCO5aQFdPQHEUhAW9LtFsWKCiKvhG+0WOFFRivfZmjUY35T5tErgYRDP
 9Pv9sGZKsOtUMLwsdwlQTxy+1PNwu7blbvB7qv8hqQQFKOggiZJxTHD+7IbEHoff9e2q
 NVNA==
X-Gm-Message-State: APjAAAVu0gzDouEKRwXkgMJ9jwN79aLBZEc5pBd6DmLUFICfKyvMLHwc
 uWFUrjnsOF/WohDoTCfiZp4=
X-Google-Smtp-Source: APXvYqyF69/OmR7bOmXYXW/LXDpGgNxGAtz8+b6/5BfchkZuZPAVu1YEIQnv0Kd0un/R9zqCk+NSTA==
X-Received: by 2002:a63:ea52:: with SMTP id l18mr35848874pgk.124.1556381289756; 
 Sat, 27 Apr 2019 09:08:09 -0700 (PDT)
Received: from localhost.localdomain ([103.87.57.58])
 by smtp.gmail.com with ESMTPSA id a9sm38584613pfo.17.2019.04.27.09.08.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 09:08:09 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: vc04_services: bcm2835-camera: Modify return
 statement.
Date: Sat, 27 Apr 2019 21:37:49 +0530
Message-Id: <20190427160749.11191-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_090811_369243_FA5C9E48 
X-CRM114-Status: UNSURE (   8.85  )
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
 provider (vatsalanarang[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: stefan.wahren@i2se.com, devel@driverdev.osuosl.org, f.fainelli@gmail.com,
 sbranden@broadcom.com, julia.lawall@lip6.fr, rjui@broadcom.com,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Vatsala Narang <vatsalanarang@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Modify return statement and remove the respective assignment.

Issue found by Coccinelle.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 2e0a422cdf3e..9841c30450ce 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -270,11 +270,9 @@ static int ctrl_set_rotate(struct bm2835_mmal_dev *dev,
 	if (ret < 0)
 		return ret;
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
+	return vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
 					    mmal_ctrl->mmal_id,
 					    &u32_value, sizeof(u32_value));
-
-	return ret;
 }
 
 static int ctrl_set_flip(struct bm2835_mmal_dev *dev,
@@ -313,11 +311,9 @@ static int ctrl_set_flip(struct bm2835_mmal_dev *dev,
 	if (ret < 0)
 		return ret;
 
-	ret = vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
+	return vchiq_mmal_port_parameter_set(dev->instance, &camera->output[2],
 					    mmal_ctrl->mmal_id,
 					    &u32_value, sizeof(u32_value));
-
-	return ret;
 }
 
 static int ctrl_set_exposure(struct bm2835_mmal_dev *dev,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
