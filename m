Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7E377B82
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 21:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FedDF7uwTrqLmbM7HBl3FpWaO0NE6gwQAgZSgP9ehoY=; b=TCZ6Kj+oeEVKKg
	SzWy7AHqp/lpGzLlcSZK37OoCXHN9PC6nUpeF7c8XQ6xMZ+S3RGRIJiipPc8vtpNLuKXZzMzSa5sd
	ALK0HgvkhZHULGiSDZ9fLHdPaQjHNokDfdHvgN5LWnrmlN1QRbIQT65nND2hfn4o8J84pU9pRcLjg
	dhrolz7qaDAj+ov7ARjP/EWYiUj3UqlOTCg6ZxdqvGqyn6q5eZ/PqMGCm8z+jZqmN3UiKKVPywn37
	mzHN56Ki4pUi7RrE6YGr7C4za8GVEQ5PDyPYJOE86Uk7JaIFVyHZof30Y5MBwUSqbOVDqHtBOQH+2
	e6HQVOZXGH4Leev/VotQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrSSw-0004LN-7G; Sat, 27 Jul 2019 19:34:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrSSh-0004Jo-23; Sat, 27 Jul 2019 19:34:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id n4so57766148wrs.3;
 Sat, 27 Jul 2019 12:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CwPC0uC2vhnnQFt6dtjfct0lT1hDdrq7y6oBUVdLJKw=;
 b=QHT+vr7UctQsq5De/q5TWMQcuzSpL9ljxuV/hNLT+ItJwKXkM5g0LOvOUd02ezmEgN
 I9oEh9513WE73nzCZyW2keHtEuqZpwwDcSya5rATKTtZS58nE2Qe7BZLO6CzOpQGeoMO
 t63VYywAg5wGh+gDQPQixN/ocPo44KmMqJ7gyBLUeZIkhBUXCOAcfweN9A9U2uyNKkjt
 j2MGWuCFgqB2fu9j+oN2xm0rTzmMou7027hLuHn/CDTIiL777gOwV9l2CxAm78GnV6L4
 sW4AlzaBnvgMuiJoSEAkZxefKDwMqv1nMl1oJ8HGWMjelXlyk0MGOZOr2umlEIcQUbY5
 adrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CwPC0uC2vhnnQFt6dtjfct0lT1hDdrq7y6oBUVdLJKw=;
 b=hBAM9tXw3hE6OoIo6WBdmmVOZ5lfDlKuynz9ckPjcTvZnCHHyLC41KVswoswEAu8yC
 4VshPz64uv/CIEOlAycOeVtoiYWNfkzBRw7U8N2tv1DJxIXWql+MC7/2qbMtD2Daw/6Y
 7H3JQ7YPGNWaJWSKMT6FEQr/2IXt2104QrlO0ojAYIPP7bLKypfHP2aQJgdSJwsRpEjl
 ZaLEqYEQYg9Y0+eX3daygwYbw9rtAFGU0Q8eLJKUnbxNAK1+PXkpwEiARyKQhpr9png9
 QnVZ/jYoqc4BOsx5ljDRk/croT1RnXnO3xCiVUuGNQ1LFbQztqxhxPkhUn4IBvRbB0/D
 0khg==
X-Gm-Message-State: APjAAAXeN7nx1K/g+NDTtSp8e4aYKLeb6r6jfLPtc76eEjjsj8qKdPOA
 5Wog6S+91dGRIXXwvVRMWrzqTYEq
X-Google-Smtp-Source: APXvYqwtcykN6reCHIDCRtC2TmW13zB5ZF0C7B4/4u2+Ho0Ih/KuuXH6Lj6HdkYgFIebULYKFdTG9Q==
X-Received: by 2002:a5d:668e:: with SMTP id l14mr52098236wru.156.1564256073191; 
 Sat, 27 Jul 2019 12:34:33 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C65C00B418D0F4A25A19EC.dip0.t-ipconnect.de.
 [2003:f1:33c6:5c00:b418:d0f4:a25a:19ec])
 by smtp.googlemail.com with ESMTPSA id n3sm50301258wrt.31.2019.07.27.12.34.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 12:34:32 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	srinivas.kandagatla@linaro.org
Subject: [PATCH v2] nvmem: meson-mx-efuse: allow reading data smaller than
 word_size
Date: Sat, 27 Jul 2019 21:34:14 +0200
Message-Id: <20190727193414.11371-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_123435_095810_5928A4D9 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some Amlogic boards store the Ethernet MAC address inside the eFuse. The
Ethernet MAC address uses 6 bytes. The existing logic in
meson_mx_efuse_read() would write beyond the end of the data buffer when
trying to read data with a size that is not aligned to word_size (4
bytes on Meson8, Meson8b and Meson8m2).

Calculate the remaining data to copy inside meson_mx_efuse_read() so
reading 6 bytes doesn't write beyond the end of the data buffer.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
Changes since v1:
- switch from min() to min_t() to get rid of a compiler warning


 drivers/nvmem/meson-mx-efuse.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/meson-mx-efuse.c b/drivers/nvmem/meson-mx-efuse.c
index 2976aef87c82..e8fc0baa09e7 100644
--- a/drivers/nvmem/meson-mx-efuse.c
+++ b/drivers/nvmem/meson-mx-efuse.c
@@ -155,7 +155,8 @@ static int meson_mx_efuse_read(void *context, unsigned int offset,
 		if (err)
 			break;
 
-		memcpy(buf + i, &tmp, efuse->config.word_size);
+		memcpy(buf + i, &tmp,
+		       min_t(size_t, bytes - i, efuse->config.word_size));
 	}
 
 	meson_mx_efuse_mask_bits(efuse, MESON_MX_EFUSE_CNTL1,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
