Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CECD4167928
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 10:16:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0Rd0PQpPDcTkpqN2OML7TJhET5iOaOZU2TP8+3TWxs=; b=KO8CSmixpSwQ2G
	2Qlj4+AijWvUEAUMgiPVwNVrDm467JX7MdmnK1xXHDcX2vE2b4DgLyQjMcR1eQMMHnWmjZLiw1Gwq
	RKF4PT5CEr4fVN3+eyill1gAZ1+QxB7N3pXxQf74cTGMDt6CXEP3EU5ckm6LTNUTjeddCQuYS8T7D
	0azYIeHari3rDF6jfI9l8JsgRWPe2RhFeCxcGqHBU+nCWBDb/dTB05qf1vSkRdcnnoRTO4SzAM/o1
	qezMdpr7SitxMnf9531NkMGHLLmz8nLpE+lSX525kvYbchuBSOHNkdicdCz6Jz4ul0WjDw4OtY673
	8spgK+MZn4+PkcyyM4Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j54Po-0003pB-Gj; Fri, 21 Feb 2020 09:16:08 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j54PM-0003XQ-Ci
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 09:15:42 +0000
Received: by mail-wr1-x442.google.com with SMTP id t3so1105839wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 01:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cskzhIjwtS0ZVRi8zMZa+kHk4M1kBjG50N69LQL60P8=;
 b=lK15oznkmE7fuECcUv45VNqmPJJHug5zq8zfFtk6asoOdoXNE8Ncepmk6uu778oaRb
 Wb5ADtEcDnQ1EoHLqd9x0hDO5Zfon8zRMFSAH3D55szfBAnIoMh5/8gqJqjERYn6z7CK
 XrtoYQCsOXL16av6t6Mdss1v/p6VCWn4Sx5PtMWtn8PmEsqzJvgSfDSeNd8wJcTim5y+
 YpDWz//queWKkrXbRBzoOqidSN8hslbIgUtrEFT74IISO51Y4qL45svbFHnAqa3Fmpkb
 400SJQUNjWCrbsCZsGX26tBkAiu5lPFKsnhs1hlVXw93LQvck3x54xy2xbRGbD0DX3b2
 X44w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cskzhIjwtS0ZVRi8zMZa+kHk4M1kBjG50N69LQL60P8=;
 b=meo6Csj/M1K8FLA+EMiRYCvCPY8W8P141voiN28xA0Dlaon/aKLRQXvgfo0+VCS9sl
 cqmz9TdaUxhMs6rsE65ROQG1SKtappScUmwoMGOQ5PhV1b20rzccEK71QWPg+wICv5UB
 I/2jyHyLNun2X2U9urjCQtomSvoYkfEPi9uPjNo1XwMK3+kF3thTyuZPtkUu9rIqqy6S
 KzkTE3Xgk6MnL4pedVa30Cm15fPku/MX1+cT+gav6cp80MyZcKuS0bFr0HfwcbjTE8rG
 cq2ZUEDqJcndKZ/xLgDMgOZPf32V7fowvUDncUWDkuzVb53jp7SRipL01GLxCGUa9Q19
 jQ7g==
X-Gm-Message-State: APjAAAXZbDtAPQ/bKSpmjlfJ/jqXyFHfwZ/fMCTk3BLQek3jJoUxKmA2
 40DM200TNlMTEB8B3LD9NV31AA==
X-Google-Smtp-Source: APXvYqw1IrIayRzEm5+L4hNTMttvykUESXzbqguy+LbKUkETLLIIENqD5GsBuIotlJYN9+0XYuZ30g==
X-Received: by 2002:adf:b1c9:: with SMTP id r9mr47715116wra.339.1582276539064; 
 Fri, 21 Feb 2020 01:15:39 -0800 (PST)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:4ca8:b25b:98e4:858])
 by smtp.gmail.com with ESMTPSA id
 o15sm3257837wra.83.2020.02.21.01.15.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 01:15:38 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: balbi@kernel.org,
	khilman@baylibre.com,
	devicetree@vger.kernel.org
Subject: [PATCH v4 1/3] doc: dt: bindings: usb: dwc3: Update entries for
 disabling SS instances in park mode
Date: Fri, 21 Feb 2020 10:15:30 +0100
Message-Id: <20200221091532.8142-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200221091532.8142-1-narmstrong@baylibre.com>
References: <20200221091532.8142-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_011540_428045_8703C40D 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
