Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0D31646BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 15:19:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0Rd0PQpPDcTkpqN2OML7TJhET5iOaOZU2TP8+3TWxs=; b=tdweFRfT9J517O
	W1qNZOa94opkVJiD3b15EbORBZUASA4vqpMk5O2U/syJ0BTD9Bqz1B3vc1gKx6FEGg1gG1hG24QaN
	pzUVX3GYY+v8TWRX0MvtcMYOfSMDY3GMe8xnZyXZHMckAvl5w0HcPjNDksi232XfownSj7whjGSIV
	pOCAx/yiMei8AxrQqkWa+yzbXLQAI5eCkCRQJUo5lzrmCC43xv7xg2MyxyRBiuFwEZ70tg9q2oY+O
	A4eHtG8SpfoO8OD9FLzhWQu06sHsMWOCYlSf+AGXsHC+kaX9UM5Y8g7QjtDTA4wPmKjvaZDkwxW7T
	0kym+mXVM8S0+2TUd9iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4QBi-0002CP-TE; Wed, 19 Feb 2020 14:18:54 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4QBD-0001of-AL
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 14:18:24 +0000
Received: by mail-wm1-x343.google.com with SMTP id t14so825609wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 06:18:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cskzhIjwtS0ZVRi8zMZa+kHk4M1kBjG50N69LQL60P8=;
 b=OY4L7JXID100VO7sMstNm3Vg7a0+wT+lVdg8MEtqryyI+TYXZGlIErbrrbqxqK3yPs
 wdvk41G17tIZ1Ri3e1jZu3lvbkz+5WxSsokZK4IB2ZF58bVnRIxqOra/hIWPqh0WiXTf
 3BciMV40Ew2d3lcXTn5sJCCJq40CQBm5euELUb6bmhenK2YYJ9K6Yqgz/s4ZxQh0/uMc
 OaH+ZvfL6aVJKEfZMgW3jmEQ1bcHAKMrYn7T+qV/V5xvTiPqsJjuprnJjJT//dt9wJOa
 nna9/GHGDLoUjKC4FlAkG4+HUnxCFQu7hzgb5WtMEJ4d8GmOtobA60I+8L48wt4aoh0b
 ZUcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cskzhIjwtS0ZVRi8zMZa+kHk4M1kBjG50N69LQL60P8=;
 b=sJdaiTJPx1A1Pq7EbA0ggl3pYQA5V4O4DZSve7K8yfSsxKFvho6iyybVa3/eV9/5V+
 pC1TQiOdZ6pC3507vW3oBQCBaP03OU/2QU+RsV95tmVEqvp1hlpQSQYM45KBDUA7v4Wa
 Y8rJPcdmqD8Wi+ikhxaS4+0x+BQhkNeXNqXTnDIf21lpzuyhO/gd7968DnvhoL8LC0pG
 FUK/qAjMp78Qe4wDxgXoOEGW7CYNZ13C7EklH5TSbj6+dGINNsXLoCUC1Ta8XuERlBpG
 6xdw4+gLEvERhYGNs+seHc9BhDcT5OuVVx/LLxs6D22sc+Qpvh+q1CiIoJG6Tw/Q/2rv
 s0ng==
X-Gm-Message-State: APjAAAXVfu6KvuYIK2j2obd353A0xy7j2Ylw/76ZngfZERWGGqJDD93k
 NjQtuozMAKG6zb3SWj6+j8GXDw==
X-Google-Smtp-Source: APXvYqxbFf7wsrLC1kZpSw63DDiVHiO6jf7+hpSQDkUZ5FYc6y6crGhDW4wdqY4nIxMLAhwojCjI4Q==
X-Received: by 2002:a1c:6389:: with SMTP id
 x131mr10179005wmb.174.1582121901731; 
 Wed, 19 Feb 2020 06:18:21 -0800 (PST)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:510e:e29a:93ab:74c3])
 by smtp.gmail.com with ESMTPSA id b11sm3337772wrx.89.2020.02.19.06.18.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 06:18:21 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: balbi@kernel.org,
	khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH v3 1/3] doc: dt: bindings: usb: dwc3: Update entries for
 disabling SS instances in park mode
Date: Wed, 19 Feb 2020 15:18:15 +0100
Message-Id: <20200219141817.24521-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200219141817.24521-1-narmstrong@baylibre.com>
References: <20200219141817.24521-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_061823_354325_B6D5714D 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tim <elatllat@gmail.com>,
 Jun Li <lijun.kernel@gmail.com>, Dongjin Kim <tobetter@gmail.com>,
 linux-amlogic@lists.infradead.org, Thinh Nguyen <thinhn@synopsys.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch updates the documentation with the information related
to the quirks that needs to be added for disabling all SuperSpeed XHCI
instances in park mode.

Cc: Dongjin Kim <tobetter@gmail.com>
Cc: Jianxin Pan <jianxin.pan@amlogic.com>
Cc: Thinh Nguyen <thinhn@synopsys.com>
Cc: Jun Li <lijun.kernel@gmail.com>
Reported-by: Tim <elatllat@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/usb/dwc3.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc3.txt b/Documentation/devicetree/bindings/usb/dwc3.txt
index 66780a47ad85..c977a3ba2f35 100644
--- a/Documentation/devicetree/bindings/usb/dwc3.txt
+++ b/Documentation/devicetree/bindings/usb/dwc3.txt
@@ -75,6 +75,8 @@ Optional properties:
 			from P0 to P1/P2/P3 without delay.
  - snps,dis-tx-ipgap-linecheck-quirk: when set, disable u2mac linestate check
 			during HS transmit.
+ - snps,parkmode-disable-ss-quirk: when set, all SuperSpeed bus instances in
+			park mode are disabled.
  - snps,dis_metastability_quirk: when set, disable metastability workaround.
 			CAUTION: use only if you are absolutely sure of it.
  - snps,is-utmi-l1-suspend: true when DWC3 asserts output signal
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
