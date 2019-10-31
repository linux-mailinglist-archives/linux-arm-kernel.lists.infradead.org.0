Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E5CEB1F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 15:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8AMkFuTjiGLjKzJtLL9t9wUwomIcVkS3sgjQPBOC47c=; b=t6LxMcyoWwIW5jWVdji9yxgyrN
	4tIYEG2HRN3+us1glc+1njxsOEOezM3rTaeEsl0iKJYOSGAVZZ+0fcCgEQyOUcOH9beEfNNY54PUz
	bh9R3wiyH7Z78BrKJ8n9GZm2d+gWxDRHKlYif4Ukm0mcv4Nfype7aDoc16Wkrivv/ckSeEVwWaGEz
	i7ELvHn3qeg5x3fEyLKjAHYMPaw7aLircTa06y3v8iM4Vq+3O8GCS8quoMt1pZ8wavxMbydqEGKkn
	IewqmIEvZbBHBmq/aWbEQIMV4LiKfdrXnDSh8QMb2TE6bmHE4ErUlx5U9L6pMp0pgXXgogpXtg5v2
	7FVMb6Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQB0g-0000Ct-G1; Thu, 31 Oct 2019 14:01:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAzV-0006gn-Ri
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 14:00:00 +0000
Received: by mail-pg1-x544.google.com with SMTP id e10so4099197pgd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 06:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=E3OJFxf+mUWoz3h8BXrLdL53qyDG3CcJuYs/0iyxKF4=;
 b=tf+KATEyMKScBhe2rDxFmvhHdhpJvsG8Ppi+Ok6s+1JY+Ck0LsQI6EgbXGwk6Gxns2
 PBhFeVi79K6keCg6KQopPP+74YLxVly8VZb6Lkf1BGv+ATKanKjaohe+f55adgBuMttF
 ghSDNFsV11Nb21uJw86b7GMyPRXXuWo3nSS9se6Vt7rIUg3OvajwiDKd2Byp1nMqXkx6
 RLI18VC7Bc7ONNECHSTu/fq24VhTJJYi4wjTUIJfJ7zE+NM+fU/oyzFLdPiRdKQgL9qR
 NVu9qVxDVu59qNFL7TyaD+bkES5v9TlqyZ9mHlOmkX4lzMqpiLj8bfpJmBr8MVXkfcQW
 HHUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=E3OJFxf+mUWoz3h8BXrLdL53qyDG3CcJuYs/0iyxKF4=;
 b=asJt99T6N5rpnXLdQ1DEhBfstds+n1AUS3hmE0zjdZP02IvuHXiQwe5J1Sl9AJr8ub
 /8wcfZez2ttpCLzdDIq0KK6fhEC7zw48ubvoM6ATEoVMpxNGTvoSd3zI4IGvOAgr0lov
 +i1rYsj3ullYnjUGm0lK3e5eXFvXZP6Zgd4EQB/INSy6Qy8oOOpz9DXdGOS8eh9zj8ds
 N4pxXtokXmGdaxXNF4yF0iEVeH0bpASVTe0/NiGaOonAs1lWn1eIkzw4B1Kf1rBZBA/B
 Cxt4VGxgHDL5gwvTCQ7Nh/rITH9EWdeoVDM4biUFXdJlkZLemcCZazcKzKInPfVIqWTD
 3TKg==
X-Gm-Message-State: APjAAAVQsDbUKifu9d53Ul0pTAK/3Fat+Ch7Tacnox0ugpPPLfxYb1mU
 TNTk1bs7XRRLYUe2Lva1il/IZw==
X-Google-Smtp-Source: APXvYqx6w3fK7udP850k+SVSjxTClJG1BWGTayyOqKUy8HcRBFjYN6ROvTumbYp2kjoyQbEiFFSOdg==
X-Received: by 2002:a63:fe0c:: with SMTP id p12mr6825858pgh.121.1572530396394; 
 Thu, 31 Oct 2019 06:59:56 -0700 (PDT)
Received: from localhost.localdomain ([117.252.69.143])
 by smtp.gmail.com with ESMTPSA id i16sm3522441pfa.184.2019.10.31.06.59.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 31 Oct 2019 06:59:55 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: jens.wiklander@linaro.org, jarkko.sakkinen@linux.intel.com,
 dhowells@redhat.com
Subject: [Patch v3 3/7] tee: add private login method for kernel clients
Date: Thu, 31 Oct 2019 19:28:39 +0530
Message-Id: <1572530323-14802-4-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572530323-14802-1-git-send-email-sumit.garg@linaro.org>
References: <1572530323-14802-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_065958_213475_20F4F6CF 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sumit Garg <sumit.garg@linaro.org>, daniel.thompson@linaro.org,
 janne.karhunen@gmail.com, corbet@lwn.net, jejb@linux.ibm.com,
 ard.biesheuvel@linaro.org, linux-doc@vger.kernel.org, jmorris@namei.org,
 zohar@linux.ibm.com, linux-kernel@vger.kernel.org, tee-dev@lists.linaro.org,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 stuart.yoder@arm.com, casey@schaufler-ca.com, linux-integrity@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, serge@hallyn.com
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
