Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1061F863C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 04:37:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gXWRXuHyf0l8D/UkSYDWoe2MAIT/fGvFDVcG9H5RBXk=; b=nQT
	y8yuCE+2DH3mndxshai6v0J/niMSUTFhzFjqcth2s33jwf/tgdAHLjCg5+NuXQeBlazQCVFxZ/+VU
	zGOE7y9b4z5nXPQzSrpYhSD9dv3aYClz80cX7x+pbUYx1DdT7vDeE32WmPHRyMDyysQe3T9BuLwnH
	mZL4689uwOaINvi5I/eNIicM9kseM/tENTVPJkdPBaqu4+UBkjoTMSmD5FBbtdmOVBQDYJIsMcdR6
	IQCu3e2TzU6SPlZLy7x9tq5o0HUzOMaawDGb4Fxh7P27TSr0BxO7Thba7LYX+m+O0Z+4VLb/Z2GHu
	YjbgfRPQ/XB+RWTSl1DRK8bIqhyxLsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkIWN-0004bM-62; Sun, 14 Jun 2020 02:37:19 +0000
Received: from mta-p5.oit.umn.edu ([134.84.196.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkIWE-0004b0-4w
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 02:37:11 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-p5.oit.umn.edu (Postfix) with ESMTP id 49kzBW0LCxz9vZ2C
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 02:37:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p5.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p5.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pupTnnxsP7Yo for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 21:37:06 -0500 (CDT)
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p5.oit.umn.edu (Postfix) with ESMTPS id 49kzBV5mWfz9vZ27
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 21:37:06 -0500 (CDT)
DMARC-Filter: OpenDMARC Filter v1.3.2 mta-p5.oit.umn.edu 49kzBV5mWfz9vZ27
DKIM-Filter: OpenDKIM Filter v2.11.0 mta-p5.oit.umn.edu 49kzBV5mWfz9vZ27
Received: by mail-io1-f70.google.com with SMTP id t23so8933219iog.21
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 19:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=RQEF7X2he2CIvCAF0xeze50vGbmiUj8obcSj3YpGnsc=;
 b=Hj+qKjLqwxKZdFHcqhGL4RCVKHV6fP3Oer7rzrgPPWYbv35lGkAst5QgPc8y3nLRCp
 vKVaxl7tk1u8PZMNFAetQYQ6NwzqplGIsXILrLiVUysqIKuvbFEb3y0fL7NeZDA6eBqI
 pO96/Au+eO/frA1E4LLC+lPvS8hR2UvICjeKU9R3le1ae4tglEaeUVDybiZKisk2cU69
 JZ8sbETmJsW/DFxNKzIkJXdJ9tsV1lNSfpS/+4EkCHBrpLSK44iXq7e4QFYuFza1Hz8M
 Zi+3fmlSvQPyovl/+DtnyRguBKLN0yPRjqYUnqP4JoEqzyj84WdoVHPHGf9oZzOLGrVX
 3bdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RQEF7X2he2CIvCAF0xeze50vGbmiUj8obcSj3YpGnsc=;
 b=p3PUmHknwx7W6j8cSpv7524BuabAjKPPM4un9PILM/IKQNwvapgoo9rclHnVlGUPEt
 oAF5W6Mcv3E/YHp2kbk3UiplXpHDvlRHE1bVHWPFm6RA6xiLtS2rTOp7PM5HaY0yKXpR
 +PFMR03DkFmyM+Xn5n1Tc+iLqGwbEVGM523XlP9LU1Nicl+rusgf/tTR0sCeRHdjYBYa
 gbDtnlAlI57gmuhaBxsQDOcJDi3xfzk44yKMX8WN5y4eQIm/R0XfY178XiHQc6XSGVyO
 C2piqXncWNUz4h0c8F1L4GYXSROTbtmc4iBTjgkCv9ge1ADxy1CVNEPHDWOJ4Nz8P/fF
 QNIw==
X-Gm-Message-State: AOAM53009qznLuN41OCS9x/zfogtV1wj51OxER2pvK/oZkbx3XeK7bKh
 3Cq2z2WPD6Z2CD6gCXXBQWRdfMCW1oj8xrBkTouFSS1gI0sEdoI5lQagSmw5c5SJ0nLgMx6D/k0
 FBbeAc6Kunvbz0KOeNVCJ/hkLuHvoyl3a3lhJSsA=
X-Received: by 2002:a92:cf09:: with SMTP id c9mr19732356ilo.143.1592102226322; 
 Sat, 13 Jun 2020 19:37:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxZ86ckYqx5vk+JKvHiE51xf49YXvXEFvQYRO/7UldKAKo+GnZzsRu2IiSnX8jxysU/4zFyPw==
X-Received: by 2002:a92:cf09:: with SMTP id c9mr19732342ilo.143.1592102226008; 
 Sat, 13 Jun 2020 19:37:06 -0700 (PDT)
Received: from qiushi.cs.umn.edu ([2607:ea00:101:3c74:4874:45:bcb4:df60])
 by smtp.gmail.com with ESMTPSA id 18sm5499967ion.17.2020.06.13.19.37.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 19:37:05 -0700 (PDT)
From: wu000273@umn.edu
To: kjlu@umn.edu
Subject: [PATCH] media: stm32-dcmi: Fix a reference count leak
Date: Sat, 13 Jun 2020 21:36:59 -0500
Message-Id: <20200614023659.25979-1-wu000273@umn.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_193710_277866_39AD8F4A 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.84.196.205 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: wu000273@umn.edu, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Hugues Fruchet <hugues.fruchet@st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Qiushi Wu <wu000273@umn.edu>

Calling pm_runtime_get_sync increments the counter even in case of
failure, causing incorrect ref count if pm_runtime_put is not
called in error handling paths. Thus replace the jump target
"err_release_buffers" by "err_pm_putw".

Fixes: 152e0bf60219 ("media: stm32-dcmi: add power saving support")
Signed-off-by: Qiushi Wu <wu000273@umn.edu>
---
 drivers/media/platform/stm32/stm32-dcmi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
index b8931490b83b..fd1c41cba52f 100644
--- a/drivers/media/platform/stm32/stm32-dcmi.c
+++ b/drivers/media/platform/stm32/stm32-dcmi.c
@@ -733,7 +733,7 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 	if (ret < 0) {
 		dev_err(dcmi->dev, "%s: Failed to start streaming, cannot get sync (%d)\n",
 			__func__, ret);
-		goto err_release_buffers;
+		goto err_pm_put;
 	}
 
 	ret = media_pipeline_start(&dcmi->vdev->entity, &dcmi->pipeline);
@@ -837,8 +837,6 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 
 err_pm_put:
 	pm_runtime_put(dcmi->dev);
-
-err_release_buffers:
 	spin_lock_irq(&dcmi->irqlock);
 	/*
 	 * Return all buffers to vb2 in QUEUED state.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
