Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1CB7C1ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/U85Sal07xtPABVlOoeUEnnZ0J0+n8UYJNZuiioPXs=; b=UZTrMNgPWsESAt
	RuSNd8gsUmk3AU+Sm4TPBJUfNCEfmovlNWe+0K9GYTGlO/i2xlrln8u810XyDIPwrf4p9ete87XDk
	jx/vgcjAD419Y15LuGpTmE8WvhyAMaFimmsZTtq1sR4oN7Avj0ZlDZfyRfiFx2E/4dWHUpFmJWMVq
	8dnzQjI/Uq///+n6kqbTId5eIo/HxvFQ/gMyG9mflORifXNSOaojqhPZWtAbZKx/ou6nAMiBiDGjO
	Ot1U+wxkxs3xMrtAtI4wZEp/3VLgfCkGMZPjH/GxYMrVTcjjd8aiN4Ad2zAbkEkDOMeje0jiTdJjW
	GyPwBHsZ4lX8/AyWMBCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnxu-0006EO-1o; Wed, 31 Jul 2019 12:44:22 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsntr-0008VK-G5
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:40:18 +0000
Received: by mail-wr1-x443.google.com with SMTP id g17so69515412wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 05:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C2d9mGASGzMpInrSoJK0V8OGQfPk83dPTb4eOOdfv+U=;
 b=cjOwxm2J/7H51Ue5ov5AkJjESWQHWHlWqPj80RJZF+rAsemKIeCRLVrCvsmYRZRPyx
 ai1kqq28s01F6DZZolLYzlyEsG0DPguOTNU1Y5snSDKYQsxwWZzi2GzHnwu48YaYCs8I
 SajOodxGJ+wZLA1Tb8Dx/dX2zeAdmKVOZhe2itPGxpUeCD2SBDHIeF6RD6vEgD3F3/dY
 it8PdVRoc6LTQ/uRDlOoRR5PHEqOc5vYZesekudOefn9Y/emCeO4lhtU2o0pd721sn6M
 RL6kJiM94e4CCRY0xqygSdK42upKAtOf9JkA/bBx4aBAci/a8ZuwEsGK2MGpYWcMFXeG
 2ZVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C2d9mGASGzMpInrSoJK0V8OGQfPk83dPTb4eOOdfv+U=;
 b=lzDwSDz6vnawJhvmEK6i0dWvZuXd1HIueq+Wy5XYPN2cKJe+u3LgEvyOKZtBlpvS1C
 7E0WT+hoH5Tz6yKYtW9v+oWXU2tL/CMb3ARyeyN0SJ2v/lU0uyae3RneX5L7cR7twvTj
 aGqMU2kY6QfS05aC26iy9Q6FDcvbxAoekqr5JArfesadVt39rEEW+zSi9q6DADdOjTU1
 rFRPSen6V/YxZJjK8LMkS78Mxz7DLUKJploCZt+Vh7URpLHFQdIhanO4OYxFT96kPPoh
 tS5pvggblZmwQtovPY8jGxWiYEPuvCFrEGutSqNZz62sDOUsInNIEmBKFFDcdg4OmbMx
 J65w==
X-Gm-Message-State: APjAAAXhYHO+tB1rFQmogRH/lUTIIhItNufPftJwX0NTDO5XuMsJl94D
 +jxB/tMikGRJMSsEkugtXOefCQ==
X-Google-Smtp-Source: APXvYqwykNgEFzibUKyYi02YlbDi0YMTvNF6eGkL7v//QXPpj15O1pF8qsk6YQ8aZWO8v8MUMTsJEw==
X-Received: by 2002:adf:db50:: with SMTP id
 f16mr125512065wrj.214.1564576804558; 
 Wed, 31 Jul 2019 05:40:04 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x185sm62504271wmg.46.2019.07.31.05.40.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 05:40:04 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 1/6] soc: amlogic: meson-gx-socinfo: add A311D id
Date: Wed, 31 Jul 2019 14:39:55 +0200
Message-Id: <20190731124000.22072-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731124000.22072-1-narmstrong@baylibre.com>
References: <20190731124000.22072-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_054011_799510_DFC58EF2 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org,
 Christian Hewitt <christianshewitt@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christian Hewitt <christianshewitt@gmail.com>

Add the SoC ID for the A311D Amlogic SoC.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/soc/amlogic/meson-gx-socinfo.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
index bca34954518e..ff86a75939e8 100644
--- a/drivers/soc/amlogic/meson-gx-socinfo.c
+++ b/drivers/soc/amlogic/meson-gx-socinfo.c
@@ -65,6 +65,7 @@ static const struct meson_gx_package_id {
 	{ "S905D2", 0x28, 0x10, 0xf0 },
 	{ "S905X2", 0x28, 0x40, 0xf0 },
 	{ "S922X", 0x29, 0x40, 0xf0 },
+	{ "A311D", 0x29, 0x10, 0xf0 },
 };
 
 static inline unsigned int socinfo_to_major(u32 socinfo)
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
