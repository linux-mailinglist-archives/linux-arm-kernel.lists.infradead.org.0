Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E93E1D014
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 21:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zJVJqR0qsk9Cyvm+CBwRx2K6mjDtojIfm+7oPEl7eOk=; b=BmU/9k6ZMh9Y2KJEsDWmNgaO4Y
	c3sZn9KwI6kxEzloIJWTwnFr4AIjkaa0EVCJfHyIJb+hgaUw//56S523OURcwvL9m44jT6BhjbhxK
	Wg48qq3gRso3hXqhxFPQ1IUZQHq/2mg3hjTa+iDC6mHtEJgG1m2ywB0xMvJWG3CQsCZjTeH7jLe/P
	WGbV4w5J4SSewbbi7xcepBUVw2RnvjCLp/Fkn5bUvqM1+EYMwkKD9rXmJDzmmGuemOJPrf0wEbJqB
	/ELqwcNdmUZ91vkctx7ZU7CrVoEYafUAlMtLgWZb1gyIM7sNKeSUpoTXaWH7vl3BHPM+Ti1SErXOc
	lVpJ69AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQdIE-0006ie-Na; Tue, 14 May 2019 19:40:54 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdHj-0006Fx-RL
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 19:40:25 +0000
Received: by mail-pg1-x544.google.com with SMTP id d31so70145pgl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 12:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+AhN3Bvjm6iExjpvfnaKjLZ6Hur3GYpc1/lk5q3y4p0=;
 b=ffGExovUSLhtcOKqbyTXzRlHzMpyVLs5ai0l4CZ8LqjMkSlA3Ln6kWmowCiuhEs8h9
 WgcJLKyZhJ+z8JA2XpxMxxvNnoxZkw2mJ87u0CoLKHJ0kCSge9GVUomZqvUnlLYXd6zM
 OZnLv8FCLugHEnkH9wni60vjwz6D7sgS6ZII4ML5eiZ+soWJBBlBMJwa0UsIkEtCc4bo
 pcCuaW2MEAzib9wTFRNcQKO63HctbFqv0Iph0nOh+1otPV9LwFo3ITIjESLvjuz+o5hq
 KRH0Gax1S8Lx7K+t7cxQGfCMGU80Kr4ioxHFCq4zBIgs9sCHF6KmFtMAbjYjSRsQQ8TM
 Zijg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+AhN3Bvjm6iExjpvfnaKjLZ6Hur3GYpc1/lk5q3y4p0=;
 b=p6jW8HRhgtzQRfXNlO4uLc60Sl7sjTPi69D8v3EEGrZ9uevWH9jGiV7FgICJXlcnDc
 DJuwJlrn0Mm6iUZXk34IHbteSNHzKgso3s47eRihF/67xrFJGiUs4PXb31L9PmmavNMC
 5RMMUOehS7brx5B5JCl3X72KICsGzvM53+fVe4o/2qVacOeYY6Aori39ypo0xLpQl9Pp
 CBf4hpSd9dGriIMfn+/eW8jPWEc8Xz7OnPTtBGarGBGxIqAWohvyhOMF9u+SUpa4qyc1
 8A/KADmH4pI/Eqh+cyViSZ/WP9Ou5IAN2Nc/xVARsKYMfiqk0hanW0gu9ircYApg1bV9
 tnOg==
X-Gm-Message-State: APjAAAUBPPyztNZaunLhKkmsYncY/uzwv9i3Ke+6Jz8GaI38z36rKKTy
 4Ef086ARcMeU5fXXLphCtCGhBmp2KFo=
X-Google-Smtp-Source: APXvYqxQnuHPyiJxOcjfiMT2ToXf2Pynp+AgagCoPx9qjPtyO3u2zh0otNBTtQ68qiBpNENECDlU1g==
X-Received: by 2002:a65:624f:: with SMTP id q15mr40053183pgv.436.1557862823074; 
 Tue, 14 May 2019 12:40:23 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id w66sm5791196pfb.47.2019.05.14.12.40.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 12:40:22 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 2/6] coresight: tmc-etr: Properly set AUX buffer head in
 snapshot mode
Date: Tue, 14 May 2019 13:40:14 -0600
Message-Id: <20190514194018.23420-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190514194018.23420-1-mathieu.poirier@linaro.org>
References: <20190514194018.23420-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_124023_880324_348ABE60 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: suzuki.poulose@arm.com, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, acme@kernel.org, peterz@infradead.org,
 mingo@redhat.com, leo.yan@linaro.org, mike.leach@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unify amongst sink drivers how the AUX ring buffer head is communicated
to user space.  That way the same algorithm in cs_etm_find_snapshot()
can be used to determine where the latest data is and how much of it
to access.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index df6e4b0b84e9..cc8401c76c39 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1501,14 +1501,13 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
 	tmc_etr_sync_perf_buffer(etr_perf);
 
 	/*
-	 * Update handle->head in snapshot mode. Also update the size to the
-	 * hardware buffer size if there was an overflow.
+	 * In snapshot mode we simply increment the head by the number of byte
+	 * that were written.  User space function  cs_etm_find_snapshot() will
+	 * figure out how many bytes to get from the AUX buffer based on the
+	 * position of the head.
 	 */
-	if (etr_perf->snapshot) {
+	if (etr_perf->snapshot)
 		handle->head += size;
-		if (etr_buf->full)
-			size = etr_buf->size;
-	}
 
 	lost |= etr_buf->full;
 out:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
