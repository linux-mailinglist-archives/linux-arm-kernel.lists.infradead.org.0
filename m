Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C04B3EB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 18:17:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GXsafRz6KK6GZ6kvuvQKbq2JQxuguWGjcTNjh8ZdQKY=; b=NDMSCy9/mQPk2mChlmwHYBveM0
	+lcDA2IPXaQM6RqxcYX8nV4M4M6Ca0XPe5M5Wl4Q6nxiCN1isY9iEIbuzD2gUcOxRgMJCS22s5jde
	s5/BPtjlI756ePVBNnzCb9ooGr2AUMO57V5tGWY5QK8Kw7WWAUD1eeqXfwrH2Gldyyim2EP0oRYMr
	jMsm7YZOwhA0dGNP3WQiIg2VMG7bhgexh7hNiPkPJj4n/StQPswamC51zRjFWz3uuh5zMC0+uTmNI
	43kWDjbvX0Sy3Zl8cfGsxcQqyUXIeuE0eQ5L0heLhewJHfblVbkdBOUuYsnlJlEGKpkYM51moEMDN
	1nmrTIZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9thF-0005cX-Us; Mon, 16 Sep 2019 16:17:50 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tfA-0003xI-E0
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 16:15:42 +0000
Received: by mail-pf1-x442.google.com with SMTP id q12so174638pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 09:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=K+pJPk2iXl0LixGuiysFHZxmO1vjBGFGOdrJivWtPCQ=;
 b=GKCX6scHAe3UgbcWbSYj9UhGEhnAp5igFirmxVhIfdKD8kUhLG7HkdCa3KCBbyZhAH
 rIqB/2HAR4MJMVczIAFlhjR5sVZ7da7ARxPGdNx/3HjK3U9OsDPIaESzw/6d3XA+XLiw
 rWOES6DHJZCepE4RMrM71uDIgj/gOim8P4/CxBzgQmAlfHMFPDPYH1EMw385Vhmj7kRg
 xxr0K3OY3BQpgGKupuHIJxDAqQ6On0B7Q+4+zFXLCMzZ2J14y38HeSZbZ4XNO9nZYtZE
 gB0CKeHt6XChPihg5meAzZLbTLYT3C1+k31AiUqHJ15NKzADZwQ2mAOng2KtEJdDfpUX
 cdTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=K+pJPk2iXl0LixGuiysFHZxmO1vjBGFGOdrJivWtPCQ=;
 b=lcBQVbbdoC/wbIov5v9eEQKgdRABmLleWvCKXfvKbIp5MmSGldJaQum6/hq7c90VPx
 g/wN7y2cwUUZ/Mf7rDHEuTFRplYS0I4hOm3PP+1zl5Nx0ZAFmeUp3JYBV/BUn1AEr4Ft
 oeO3fhKeWZDp57tOCTVYvZfBWuFhgB4tY0tG/1ubyVwXKxS5pN7h08T92Pmzx5MNWCsa
 auqO1/HnViShQGmTxavWUp7Nn5Mo+fZaJqCYZ5wHK4hFk1kdTYa0pmUwkSXeiRw45f2t
 pj9Qct0lHONTuI3ZPcysNcFgmO3Kf1z32vGmjmrNxkahqJ5liNWV1K2/J6v2qEPZJMD4
 IdNg==
X-Gm-Message-State: APjAAAUJH/ttamGNKILFu1BKq3LUP3/1TZRMHWQTl331xiuGiGlnwiKJ
 eJ2zsvdN39uj+ph51Acx+FnC
X-Google-Smtp-Source: APXvYqwaTIjGBFw6rlJrBeKVPsJzm0fIpIu190y0N7zwgbmlpXO1k7N9rTebjfrkX62HrT6vruUWJA==
X-Received: by 2002:a65:57ca:: with SMTP id q10mr877pgr.52.1568650539809;
 Mon, 16 Sep 2019 09:15:39 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
 by smtp.gmail.com with ESMTPSA id
 h66sm614134pjb.0.2019.09.16.09.15.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 09:15:39 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v5 8/8] MAINTAINERS: Add entry for BM1880 SoC clock driver
Date: Mon, 16 Sep 2019 21:44:47 +0530
Message-Id: <20190916161447.32715-9-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
References: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_091540_501572_892155DC 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for Bitmain BM1880 SoC clock driver.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 997a4f8fe88e..280defec35b2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1503,8 +1503,10 @@ M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm64/boot/dts/bitmain/
+F:	drivers/clk/clk-bm1880.c
 F:	drivers/pinctrl/pinctrl-bm1880.c
 F:	Documentation/devicetree/bindings/arm/bitmain.yaml
+F:	Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
 F:	Documentation/devicetree/bindings/pinctrl/bitmain,bm1880-pinctrl.txt
 
 ARM/CALXEDA HIGHBANK ARCHITECTURE
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
