Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AB2D64E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 16:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WRM4QiSJIjcISk7OeDwPK96+MVc5mC3YmdyaKLhz7vs=; b=AsM82OsjMfu6m3
	uRBuqyEV6ecv4irst4a1olHWvlNw14AYKnB6ZX3NvUMa+dne+o0t0SmLK1JjhN0hhXUF7fNvxYccX
	euSXTHnci1BUzBn4f7sKDtj81qUsL/EULHS88dWNXuMb/T12dbZHvBihKVXUMqje0QRPK3UJSOiCu
	jA7Z444t1BszLoSDjQKgCOhh1KHoj6DNjtO3ZpQxp3ADv69C/6XLwoRSc8ozI/PltKcsB63OA8mSt
	NmJZCpE1ktuAvRcC8j02vimdbrkUvtcZ9cJXnff/a3/ItCYEZ0iHg6P4N2HRhD9JI+AjPLKOkiqfD
	Tdryj+8Cn+6cQ/kmYqmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1AU-0002sF-Uq; Mon, 14 Oct 2019 14:17:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1A3-0002bk-OF
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 14:17:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id z9so19938454wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 07:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wMvLKdMW2yszyQrYkGsmywM/YMlu6KRc8iq2yfQBOJU=;
 b=eY5Ijx4QWTlhlQGgOpdrVKEgjA20rWFw2eiZwRKaJUwJG/7aYuLbxNjxklme848/FJ
 bZIENnbseJ8mKmmwXVSzonk7Ng1vb6vhsbHBsJNqNAmUllpNX8AX1ucQG8nUQtVatNSn
 sFOIgOQ9gV9zZjtGU0jIjQTaRE9DBPg+HEMIyXkmO2VTK/khiMwWsvhrac4wYFbgq+Z3
 vE5xtZZ0RJ1pMA7JuOvXzAaOGtggmD2NXmqcdm4f6tWycPkf8RLCBBUsj+BrcLeomLtJ
 mR19XkB+Lfc1ufptniAr2amT/joX/dioGuQbWLAGoXf3f64nUyhxO6JQtw6i4rFn3BMz
 quqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wMvLKdMW2yszyQrYkGsmywM/YMlu6KRc8iq2yfQBOJU=;
 b=ZiJSQBk2lp5Bz3a/KNA0ubEh19kP1EM3WBMunGJR/LSGCs9s2Z8Wp6KdC6d1nLNZyR
 NUVk3ZtO/6wq3JmFQzMQBk+KD5qDpT85Lg8kTJnof9QEGo2VNJ2R7YM52MtSL8HlDH5w
 RmBVlTuNDfSnMtQa+MDuHkbyW+f8dm0dabJ1Ocz9x6eFUVUtcU3phKfcx89Q4kMN01GZ
 vFZwBh3OdV+rkNrM9VOSLrvSD+EEPx71wMAppW4vVlkE//5ZCv5UmqF36sNTXiujrWhF
 QdN0tqGXvKJZghOxwTNQfaN3d/tuqK1sTeLACR5aV5fzEXTHsC9DITMQDh9d6897SL0E
 +baw==
X-Gm-Message-State: APjAAAVorkackydiYbFOiZCmYB7YOafw66z3UhwEl4aHOSaMH/ToDSg7
 0Enhz3dOs9DPXbsish/g/Bv+vQ==
X-Google-Smtp-Source: APXvYqxYpJiFTdR6oysIP3BylyvjHRtG6AcTsX9/NO35uydOOjXlwBQ3nkYdCfVqNkSILXSLfHU1UA==
X-Received: by 2002:adf:8526:: with SMTP id 35mr300767wrh.266.1571062641346;
 Mon, 14 Oct 2019 07:17:21 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t83sm42708624wmt.18.2019.10.14.07.17.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 07:17:20 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: balbi@kernel.org,
	khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH 1/3] doc: dt: bindings: usb: dwc3: Update entries for
 disabling SS instances in park mode
Date: Mon, 14 Oct 2019 16:17:16 +0200
Message-Id: <20191014141718.22603-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191014141718.22603-1-narmstrong@baylibre.com>
References: <20191014141718.22603-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_071723_834098_9179B4A5 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tim <elatllat@gmail.com>,
 Dongjin Kim <tobetter@gmail.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch updates the documentation with the information related
to the quirks that needs to be added for disabling all SuperSpeed XHCi
instances in park mode.

CC: Dongjin Kim <tobetter@gmail.com>
Cc: Jianxin Pan <jianxin.pan@amlogic.com>
Reported-by: Tim <elatllat@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
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
