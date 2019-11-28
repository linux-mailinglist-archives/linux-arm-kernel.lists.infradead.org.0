Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B45B10CD39
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 17:51:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zBhao7SHYf2/DSKROvNxQs9YR8vcgd/N4e/Z8iISvA4=; b=IlU6p4AK8HnH1ez8Cn6UhJQgYq
	o6/0yo6kTPraGGfS1jKIKyUAHeXwEsddmyTB9YkRBWKGS6Kbk1oeUgTV4ZusJk6k7dOKsw/GySEM3
	IRdXaKQ5jyE8lIS3VyFe+9GijohvTDb3kG9cyk/xujvZbFSqYRdBi8XS2Q+KbcdDcteVMkFE8TbHi
	F4YLafeW0w6Bshfm2wKWfVS1jwRvlOrBZRNfZX7PrnInCJPxXX/Wx2DzjTDgruOEEGMzo8ykFEzBg
	0AN1DtgdnO5RNhv6fq5VHKXqNk8xulp2dXE0kzo4vw1grFWOqxncaf/sfnNAyqE+/w0ZMrpqzQp/L
	AR2HbNGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaN0p-0005JL-Lg; Thu, 28 Nov 2019 16:51:27 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaMza-0004F0-Fc
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 16:50:12 +0000
Received: by mail-pf1-x442.google.com with SMTP id z4so13367007pfn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 08:50:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3gfqS5lOXPiWWEEMhIxCyyS+fLBSJCNPeR6VbsvmT98=;
 b=jhdXMvF7E8/2RYD6Amz40/5Dec9vo4TrYTFm/r6nKztuLd4EU47wPRpIEnVGukrPq9
 6KJX/Lx31gcsN472LKTKhC9qqVht7WRMvzIuEkgW84gnYt1Q1V5qsybFpoRhsKZYSaZk
 D8zz/gLD9NiXIi51FQrr8I1tiAgYXwIfUVNtoINE4E40elNOWuicMEf8RRSLfBou5lMD
 21OIJW3h2SLpS3astqaYv2D1m65ILNsIQBe50CNQUvHJ8zlw4lYds5HZrqh88S3ZtnkY
 pMwWQeWqjtQaCpV7SrSyzXfsgvRuVQTusIn9jJ9kHRDKOfFhlkKAT3ImyVmHC6nCcJWO
 XvqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3gfqS5lOXPiWWEEMhIxCyyS+fLBSJCNPeR6VbsvmT98=;
 b=qenglBMZw6SEFd+f313Nc+BPDKRdjl9KaEtRmTSpMRD3+xvrRWMLYodC8W2pg+4Lk7
 faUr3kt+e3fmK3ZONkdQdJ9mnm3Ndr9gCixwVVVCFjU49TVJ1aBU6X7LuYDJj2saGHDa
 rB9k7LJ0qzlhYMp0Lhk/Ilxkse7XRHb5fjFWTjDNXKEXzuyFDtZNOvfdp6xfQgpr4zEv
 4qsTAxlxIVcG+RQw7e8bIOdAcDuCZOhseCCSEZ+vhjk1jUX61WGIWLiXsqbh+4CdSsG+
 fcTvOgWs4He0ckTd0eVJ3QTg83PLjrHDyYYWbYunHZt4N6FFHy4ED0HpuNwf1NBZSJOx
 xKAQ==
X-Gm-Message-State: APjAAAWZZp6QAy1sJErhU5ysN6ZqeBkCiKtUP7QQoTc2IiUCvHa6KVUb
 A7VEi5hlB6wkuVaTN6TyBuDdew==
X-Google-Smtp-Source: APXvYqx6xtWr8g9E9T/1JwgyO6jqtT8i4Z+88FKARM8SdyHi8DyEUM3pVBEuVW/Q2yGOKIuP1ovK8A==
X-Received: by 2002:a63:e84d:: with SMTP id a13mr1089909pgk.193.1574959808249; 
 Thu, 28 Nov 2019 08:50:08 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id a15sm2450343pfh.169.2019.11.28.08.50.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 08:50:07 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19][PATCH 04/17] media: stm32-dcmi: fix check of
 pm_runtime_get_sync return value
Date: Thu, 28 Nov 2019 09:49:49 -0700
Message-Id: <20191128165002.6234-5-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191128165002.6234-1-mathieu.poirier@linaro.org>
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_085010_751765_2F58E4E4 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hugues Fruchet <hugues.fruchet@st.com>

commit ab41b99e7e55c85f29ff7b54718ccbbe051905e7 upstream

Start streaming was sometimes failing because of pm_runtime_get_sync()
non-0 return value. In fact return value was not an error but a
positive value (1), indicating that PM was already enabled.
Fix this by going to error path only with negative return value.

Signed-off-by: Hugues Fruchet <hugues.fruchet@st.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc: stable <stable@vger.kernel.org> # 4.19
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/media/platform/stm32/stm32-dcmi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
index d86944109cbf..18d0b5641789 100644
--- a/drivers/media/platform/stm32/stm32-dcmi.c
+++ b/drivers/media/platform/stm32/stm32-dcmi.c
@@ -584,9 +584,9 @@ static int dcmi_start_streaming(struct vb2_queue *vq, unsigned int count)
 	int ret;
 
 	ret = pm_runtime_get_sync(dcmi->dev);
-	if (ret) {
-		dev_err(dcmi->dev, "%s: Failed to start streaming, cannot get sync\n",
-			__func__);
+	if (ret < 0) {
+		dev_err(dcmi->dev, "%s: Failed to start streaming, cannot get sync (%d)\n",
+			__func__, ret);
 		goto err_release_buffers;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
