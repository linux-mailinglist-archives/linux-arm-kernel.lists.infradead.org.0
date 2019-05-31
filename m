Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15B630726
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 05:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XedAdaevGpw4UU1bXmsaWo/LHP8auWiNGml5AJVsps=; b=BF3UVJQqLm9H5p
	NXCO3kTcCVMIwDSXQYtq7HED9caYiBcGaBFHkuc4pvaf/962sY1lG83zdwZzb9dduzHQ2MPTY3hpt
	nUxiC/kmBNKhZzk00lVEAOUxS8o2FHb26YG1TRp9I5XkFr54BFoe8pwF9ExWa+Ind7Lsupn5OzRab
	VaVUI8ZI4AXg0fnmmv3CTeSzW6gdblEPnoBDmdVQo06MFzfF2frtDDThpSQ+xe02JoxmBH2zcSTCo
	rWsCXeSVihq3N1YMLFdG+0nOUkeKS9q0zmIPTw1kKpQ4cLM05jULdZND+bHpwnLilIn5JxcUIySJT
	AgmlIgUHwLhrfAv43aYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWYcI-0002ZT-QL; Fri, 31 May 2019 03:54:06 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWYc9-0002Ym-Q6
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 03:53:59 +0000
Received: by mail-it1-x143.google.com with SMTP id g23so9833200iti.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 20:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r4mnV8n9h367f6/VUTN5uF0kUnyjJ6IcwlGv5KmdBDM=;
 b=uQ5CqKcdh/yUYawzZpJbRZ12LMQNtmodArP5AWBWD9vjKgkFac6xjrmwQsM1TNxDlB
 /afVEpVlc6yUnyDL44O6VpMUSZbGnJz5vY8t2TzIRYBTxXyfrA/opbRkuMh/s0FMDa10
 Yaj82guuMR8LL9IGBSM7Ugvz2Mbl6If5nbkrkAzZQCD2ne7/fQngLuOUEnSSt3p2AKCj
 T+Fle7a7mKUJ7KN0nHLDILNV5TdkKzxqJsbbO43z/DfarwmzWVJXOuJ4Nt4wxRBxM6/R
 /OIbcj6WOO07tz9PONxo9f6wd/jt6IerZF/L3gWS9w39N8TbRAm7kbZpma7Age9p10+Y
 yCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r4mnV8n9h367f6/VUTN5uF0kUnyjJ6IcwlGv5KmdBDM=;
 b=BQkDpoUKGBVheuqZbV8ppWur52s2MwP2agGyXVpUfXgKin1QWHWZUUxf31blR7xH5X
 DuMi9V38Lb//24a2iDSa+q5UHUQTBc/NHPepNIL08MqZ3WJ96i9ol6nae2LDsMtCBkV+
 nPGgBDwD8xwtxltTv5WV73ml4TgEwBgX7SgK+m8NLii91CEjVCXa14ocn9RA70RqLlCY
 Pcz+XVLAhqoqFmJQtG+/uLsLjX8Qh7G1q3pK+W6cBJ0eGIpNhV0uQbg73Qe1Q47jnndK
 jyuk9Sf2vNMi4+kNoJvjnb0E8vTUEbkQuNd3Quv9UVoRwEtX562AkJx4wbD9RwfHqBrm
 QfMw==
X-Gm-Message-State: APjAAAWJ+zTZlgNOoIw/oRT8W6wrk8nEzgHBtARqA2vjS9ZSLwgWHF7B
 go2ih2cF6J1ibG7zw+fOXXk/DQ==
X-Google-Smtp-Source: APXvYqwO6awYQhmpOv3yi4OxH66vN6iPJ0929GOj5GH4pyJJakg8VatINo8iNHYSqyTX8R1QdVMheQ==
X-Received: by 2002:a24:b07:: with SMTP id 7mr2381324itd.59.1559274836720;
 Thu, 30 May 2019 20:53:56 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.gmail.com with ESMTPSA id q15sm1626947ioi.15.2019.05.30.20.53.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 20:53:56 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: davem@davemloft.net, arnd@arndb.de, bjorn.andersson@linaro.org,
 ilias.apalodimas@linaro.org
Subject: [PATCH v2 01/17] bitfield.h: add FIELD_MAX() and field_max()
Date: Thu, 30 May 2019 22:53:32 -0500
Message-Id: <20190531035348.7194-2-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190531035348.7194-1-elder@linaro.org>
References: <20190531035348.7194-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_205357_907961_E692D3CE 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
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
Cc: devicetree@vger.kernel.org, syadagir@codeaurora.org, ejcaruso@google.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 subashab@codeaurora.org, linux-soc@vger.kernel.org, abhishek.esse@gmail.com,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Define FIELD_MAX(), which supplies the maximum value that can be
represented by a field value.  Define field_max() as well, to go
along with the lower-case forms of the field mask functions.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 include/linux/bitfield.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/include/linux/bitfield.h b/include/linux/bitfield.h
index 3f1ef4450a7c..cf4f06774520 100644
--- a/include/linux/bitfield.h
+++ b/include/linux/bitfield.h
@@ -63,6 +63,19 @@
 					      (1ULL << __bf_shf(_mask))); \
 	})
 
+/**
+ * FIELD_MAX() - produce the maximum value representable by a field
+ * @_mask: shifted mask defining the field's length and position
+ *
+ * FIELD_MAX() returns the maximum value that can be held in the field
+ * specified by @_mask.
+ */
+#define FIELD_MAX(_mask)						\
+	({								\
+		__BF_FIELD_CHECK(_mask, 0ULL, 0ULL, "FIELD_MAX: ");	\
+		(typeof(_mask))((_mask) >> __bf_shf(_mask));		\
+	})
+
 /**
  * FIELD_FIT() - check if value fits in the field
  * @_mask: shifted mask defining the field's length and position
@@ -118,6 +131,7 @@ static __always_inline u64 field_mask(u64 field)
 {
 	return field / field_multiplier(field);
 }
+#define field_max(field)	((typeof(field))field_mask(field))
 #define ____MAKE_OP(type,base,to,from)					\
 static __always_inline __##type type##_encode_bits(base v, base field)	\
 {									\
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
