Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC0C7A857
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 14:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8AMkFuTjiGLjKzJtLL9t9wUwomIcVkS3sgjQPBOC47c=; b=LTVvjhhctP3SkCvdm94EZMkzRS
	DfgR077r5Wx/dWliQajWevRdjayiUv5yp1khy7oGUr9qUQgE5T20stQUt79wStXG7WMnFz3xeKoKq
	DHBI4esbpTtuFsYH551qSA1pAaCdaMIGaB0wvt1ZnxO9hlLYprhZzIie3FufjgQCVlFuCFyg1zjSn
	1lwdHIy1I2oEWx3QtZ/IBAbO3JErR3Wr4mc1vIGLRpTuy2iYiymvqtn8efLfqNowTRqM8FVMHNQ5P
	jyKpSYpQRb+gUQYHrgpkDESrJaxl3S9BITuXYZeVctUMBAJ6EjO3xV8KnwYXT7wtl0FtJ4m0NCZ5c
	yvohHjEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRCP-0002pF-EP; Tue, 30 Jul 2019 12:25:49 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRBS-000171-3J
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 12:24:51 +0000
Received: by mail-pf1-x444.google.com with SMTP id r7so29768084pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 05:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=E3OJFxf+mUWoz3h8BXrLdL53qyDG3CcJuYs/0iyxKF4=;
 b=lHZd4YOtFXL1Gwc2xUvnMZ7Or2UzfTKDyw87HagAQzlXqafH7TIxkdoiJQJhmsgk4P
 FycQZDE8Qu4bgy/7+a4uDb9S9UKbhoubw4F01cu1xYmfVZcQaREf2QEB/I0toxi4LgV4
 /Mc5qRfpVdt9IGSYE+PYQWd1uaC515Ivb0mNPROtzmMX3fyeZicOL/5NY2SydG/NPcjK
 d5ThhCpIPGKBu8b6Wozgxk84LfNSFs/rNEEV0Es9qC5DSpJhEOcwlkDf9eGlwYHM0jVw
 INZyrebVn/ruh2+hKI2DdNFiOodeC0dZpYVQH8uuutCbtk35xar9PYrCyF2hfi7NebdX
 n+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=E3OJFxf+mUWoz3h8BXrLdL53qyDG3CcJuYs/0iyxKF4=;
 b=r61/xWs6glgvCByGfWYiRtLhGSQ8sBUg3DwFjyOFO5yhv4AcIcThtLXyU7bkqo7oy9
 QV6xxtG4xGyBb0kbD4qNLHWKIJvqUcKeyC87QxyfdbQeNpOSuUskGynBj55ZL3mhso2t
 wIPIzlys02C+JlLbqXHBnhjgv3J0hgLcDotqX7KZUO6dc3aqQtFTfr9VCoh4tXJaEnxS
 Jxup+WtJJ8SbJXsRqjsGDvqjzQdN/SV/X7tLt6IJYVaQfDZ2IQN1oW02+j+dCs5pmSk9
 T2or878JO1IfzwbWpYIJRVt46JgIvu4u4DdmS27yt2KcEbWWMgUtPDShzpZf5dldpA67
 D5Cg==
X-Gm-Message-State: APjAAAWWtsLJGuy6WMrdaELSkHlYjhI9tN/OoUdzSQyvEZBqbRVZ+sW4
 1s9PWNoxnVuWyxHBpZUODyFFgQ==
X-Google-Smtp-Source: APXvYqxEFprObBZEwR/k8yDSG0nJjc12vVIRVRrSEx17eih18Q12o75QCDIVmcsVL8aPvfWAMIaKIg==
X-Received: by 2002:a17:90a:3247:: with SMTP id
 k65mr73468902pjb.49.1564489489600; 
 Tue, 30 Jul 2019 05:24:49 -0700 (PDT)
Received: from localhost.localdomain ([45.114.72.197])
 by smtp.gmail.com with ESMTPSA id v8sm54895462pgs.82.2019.07.30.05.24.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 30 Jul 2019 05:24:48 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: keyrings@vger.kernel.org, linux-integrity@vger.kernel.org,
 linux-security-module@vger.kernel.org
Subject: [RFC v2 3/6] tee: add private login method for kernel clients
Date: Tue, 30 Jul 2019 17:53:37 +0530
Message-Id: <1564489420-677-4-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_052450_365266_AE66053D 
X-CRM114-Status: GOOD (  12.74  )
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

There are use-cases where user-space shouldn't be allowed to communicate
directly with a TEE device which is dedicated to provide a specific
service for a kernel client. So add a private login method for kernel
clients and disallow user-space to open-session using GP implementation
defined login method range: (0x80000000 - 0xFFFFFFFF).

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 drivers/tee/tee_core.c   | 6 ++++++
 include/uapi/linux/tee.h | 8 ++++++++
 2 files changed, 14 insertions(+)

diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index 0f16d9f..2c2f646 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -334,6 +334,12 @@ static int tee_ioctl_open_session(struct tee_context *ctx,
 			goto out;
 	}
 
+	if (arg.clnt_login & TEE_IOCTL_LOGIN_MASK) {
+		pr_debug("login method not allowed for user-space client\n");
+		rc = -EPERM;
+		goto out;
+	}
+
 	rc = ctx->teedev->desc->ops->open_session(ctx, &arg, params);
 	if (rc)
 		goto out;
diff --git a/include/uapi/linux/tee.h b/include/uapi/linux/tee.h
index 4b9eb06..a0a3d52 100644
--- a/include/uapi/linux/tee.h
+++ b/include/uapi/linux/tee.h
@@ -172,6 +172,14 @@ struct tee_ioctl_buf_data {
 #define TEE_IOCTL_LOGIN_APPLICATION		4
 #define TEE_IOCTL_LOGIN_USER_APPLICATION	5
 #define TEE_IOCTL_LOGIN_GROUP_APPLICATION	6
+/*
+ * Disallow user-space to use GP implementation specific login
+ * method range (0x80000000 - 0xFFFFFFFF). This range is rather
+ * being reserved for REE kernel clients or TEE implementation.
+ */
+#define TEE_IOCTL_LOGIN_MASK			0x80000000
+/* Private login method for REE kernel clients */
+#define TEE_IOCTL_LOGIN_REE_KERNEL		0x80000000
 
 /**
  * struct tee_ioctl_param - parameter
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
