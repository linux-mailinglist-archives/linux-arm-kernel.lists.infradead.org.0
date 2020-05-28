Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7829B1E63C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 16:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2NCA3uIZ8TAkLj49eZ+xAgfK3Clr1ZvzEZrOH0jMZo=; b=gsJpcOVmXxEy7F
	IfDO0xkGsf+giO7CFQ3EO8HXYyzO1CCBSZVYudNU59PoQF+qH7cRTgpCdUwu4AYdF/RA7sAXe3FgL
	xM4Zi4viUMyD0QTh40yYpMMVu18NCfG4Pv7B4gulw1K/fjMVoA70BwWCO6dSpgfUnkyzwcd192hyg
	mA3vWHtBuYPnSK5oW/oXrGvlS5/n/Q0NvsFJ5sPnHjj+TITJOTAQKm2CJtvD6Q9+6CNC/oXv660Mg
	Gyx/VvUWb1eVq1dBrbO0rwaDNi2Sm0QOlmrzseBPcQbC+llchhRJCgtzm9lRGMqurL2Qk6ol24v8O
	Jh3fFwTrgdE56oRF0Tzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJRo-0002zQ-Az; Thu, 28 May 2020 14:23:52 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJQu-0002K9-2K
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 14:22:57 +0000
Received: by mail-wm1-x342.google.com with SMTP id c71so3319567wmd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 07:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bUTqIyJQ96SSMI0A1T4YUDc+Z+dd4WsNKtNtEYEWK4U=;
 b=upvfkJpE+j2X8Py5StpA9JlDlz2G9d49LnZEOgNJpWo/0I87+o9/l2XXA6HKaXcNac
 bXBCxrNiF435IihMwKsSZiyIuVjmiev2lr80Ts7YvZxkr2y+Ny3q+KKL2LEWFCP4f2Mn
 jDCBpYaiitFDb9cI/2Qsa+yvmMxX7nEjTCkgmHspXj8M19pq6FYicVh5ufEf3GsndFsC
 3sImHWzerLDxh1w42NoP5PX14EUb5k9D/VNKWVIobkFk8O77pL77IyOg7lrb757twjpi
 QsnvGsOfA4hIJLkF9gCVphVrXvKu4hwwk8x1d2eQE56DXo5ckQKHQI6aiKdnddEUBnxD
 tqoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bUTqIyJQ96SSMI0A1T4YUDc+Z+dd4WsNKtNtEYEWK4U=;
 b=cfKoxyrEODn38Fb5xEFhxsl0zWv0UCP5ZZAv9Ktnwc5DPnuZcne+2DLGso94Lej6hU
 HZUtoKJmPxu89zM+O+YIywok1wZtxehmxBMy+DromQCXOLVcpx+V4VVyFheAHMwAeAus
 KiZhIOUyku2vd/BPsuIDcrhEHoAwa4MwCvT/nHeZR8LDLKRdBNgZYKBqShWulM/bDeqN
 9/q0v03JY+jOE3TtjXI3aV/r+C3t+fPVW4nfuGTXJQlvif7ifCdStSsG9K0F46cscZMw
 yDLn9nItFtZadkCAUy0427AmTGHqcNWmqhDoBDvj8LVKyxlkvaH77JCtCKC0EpTPNSE0
 +VsA==
X-Gm-Message-State: AOAM533DQPq1IB9Qep4FdQRf0o4hws3EGogra+Fpq3xYqhz7LfX+eL7r
 bKx8nBOZtBGl21dzJPlAhxqhxQ==
X-Google-Smtp-Source: ABdhPJyl+FBJZedD5liWJOKutUX+saEOEFndp/bsIsFCtM6wE+3IrguyrR+0NAJOMR+t886hi1rjXQ==
X-Received: by 2002:a7b:c086:: with SMTP id r6mr3540234wmh.29.1590675773653;
 Thu, 28 May 2020 07:22:53 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id h74sm6258162wrh.76.2020.05.28.07.22.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 07:22:53 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 1/2] regmap: provide helpers for simple bit operations
Date: Thu, 28 May 2020 16:22:40 +0200
Message-Id: <20200528142241.20466-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200528142241.20466-1-brgl@bgdev.pl>
References: <20200528142241.20466-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_072256_185502_91098F48 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

In many instances regmap_update_bits() is used for simple bit setting
and clearing. In these cases the last argument is redundant and we can
hide it with a static inline function.

This adds three new helpers for simple bit operations: set_bits,
clear_bits and test_bits.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/base/regmap/regmap.c | 22 ++++++++++++++++++++++
 include/linux/regmap.h       | 36 ++++++++++++++++++++++++++++++++++++
 2 files changed, 58 insertions(+)

diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 59f911e57719..30f659e0b4e4 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -2936,6 +2936,28 @@ int regmap_update_bits_base(struct regmap *map, unsigned int reg,
 }
 EXPORT_SYMBOL_GPL(regmap_update_bits_base);
 
+/**
+ * regmap_test_bits() - Check if all specified bits are set in a register.
+ *
+ * @map: Register map to operate on
+ * @reg: Register to read from
+ * @bits: Bits to test
+ *
+ * Returns -1 if the underlying regmap_read() fails, 0 if at least one of the
+ * tested bits is not set and 1 if all tested bits are set.
+ */
+int regmap_test_bits(struct regmap *map, unsigned int reg, unsigned int bits)
+{
+	unsigned int val, ret;
+
+	ret = regmap_read(map, reg, &val);
+	if (ret)
+		return ret;
+
+	return (val & bits) == bits ? 1 : 0;
+}
+EXPORT_SYMBOL_GPL(regmap_test_bits);
+
 void regmap_async_complete_cb(struct regmap_async *async, int ret)
 {
 	struct regmap *map = async->map;
diff --git a/include/linux/regmap.h b/include/linux/regmap.h
index 40b07168fd8e..ddf0baff195d 100644
--- a/include/linux/regmap.h
+++ b/include/linux/regmap.h
@@ -1111,6 +1111,21 @@ bool regmap_reg_in_ranges(unsigned int reg,
 			  const struct regmap_range *ranges,
 			  unsigned int nranges);
 
+static inline int regmap_set_bits(struct regmap *map,
+				  unsigned int reg, unsigned int bits)
+{
+	return regmap_update_bits_base(map, reg, bits, bits,
+				       NULL, false, false);
+}
+
+static inline int regmap_clear_bits(struct regmap *map,
+				    unsigned int reg, unsigned int bits)
+{
+	return regmap_update_bits_base(map, reg, bits, 0, NULL, false, false);
+}
+
+int regmap_test_bits(struct regmap *map, unsigned int reg, unsigned int bits);
+
 /**
  * struct reg_field - Description of an register field
  *
@@ -1410,6 +1425,27 @@ static inline int regmap_update_bits_base(struct regmap *map, unsigned int reg,
 	return -EINVAL;
 }
 
+static inline int regmap_set_bits(struct regmap *map,
+				  unsigned int reg, unsigned int bits)
+{
+	WARN_ONCE(1, "regmap API is disabled");
+	return -EINVAL;
+}
+
+static inline int regmap_clear_bits(struct regmap *map,
+				    unsigned int reg, unsigned int bits)
+{
+	WARN_ONCE(1, "regmap API is disabled");
+	return -EINVAL;
+}
+
+static inline int regmap_test_bits(struct regmap *map,
+				   unsigned int reg, unsigned int bits)
+{
+	WARN_ONCE(1, "regmap API is disabled");
+	return -EINVAL;
+}
+
 static inline int regmap_field_update_bits_base(struct regmap_field *field,
 					unsigned int mask, unsigned int val,
 					bool *change, bool async, bool force)
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
