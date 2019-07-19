Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463D06E174
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 09:10:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0Ttq34QwU/5UNrCn0hcc4aLse1WNWUjF8msVaw58AcY=; b=qVnl/6kbciyS1hLfyCrTC0PjJ0
	0le4+xGzIpbF7mEvAl+mZDIg4A4yAJIVzHA2L144EXEUKC0SCEhiF0yad3Y9Jtmn2FLqKIghSskT1
	69u2p8LH51TSdDemcI9XLETRRuhrSr4kjsZQwYzE1V9IVDXegHambhllpmXtV/0EUnAk2QXfGfxDT
	Fi+ehdKYTU4PFJu1/ZZISTPI76S8ErKHc5xfA06zoKzL/czSf9kuoEOWm+VfcKabV2oMUJcTwEAlU
	Tm8dOiaO6k+K9wVdlAgCPpKD0HhMpxsDM3keNtKc6jTesmSRljuz6Yu9g54w5oR/DEoMyk3nitCFR
	0ee/L3Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoN2W-0002Dp-7j; Fri, 19 Jul 2019 07:10:48 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoN1c-0000b4-Ga
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 07:09:54 +0000
Received: by mail-pg1-x543.google.com with SMTP id s1so7737073pgr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 00:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1bNSUve/pXrf+sup56CDnfI8ZoTKP2QzwnZv3hxzyr8=;
 b=BMxm0rLneBaUzO6uvV2j7xck7bF6x09mf0F27/8TZc5OqqvBJtOMHyXj8lJt6CcjGp
 YEmWJIiAKK+KZi44BaBh0hKwOe6dFI6X+zUFBgrfzg28iOQyonY49DW8vA/iJ0dJJ8so
 FsbWxkFj5DJpVKqQe+gauBQmdulWsMWjm3hsHc6TAwXKIg/j5k8iYNRfVTXGDMPsF017
 vJeTXco3N4/lj2kSI/nKzHBtknwSI2psj2LI5uHiGrvmk1YDx9cdxqz+nqEXG2f1U6ub
 WjEEe/y0/As5VuUtiZ2QvnZjgq0Egbgvs6B0iQXUMlccNSWb+eLxFIQeznF7LeUkqhBo
 SGmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1bNSUve/pXrf+sup56CDnfI8ZoTKP2QzwnZv3hxzyr8=;
 b=qbTIOQOmIyDg5MbZn21qPL4Yw699EUh8lhyOTQWVw5XqMs942YOdEJ2Vpjj5SoANyG
 AnsKlfwHVpA+ZfIVx/u4LsaeIiRRfaWyb9xAxjt+9bnJ6hZJxeFm2A6gtV8ps8PboIP6
 z6R0lscIUWeJZBjmOwSbuRcLdUb11HyNj04vJt0Txr+wSMFIIH8PuxrjMBlN9Oc49j9g
 HCQmkQQHTTlTi8ebCdegupJviJ0BfaXIP0DwxAz6htJOXj/TIbtQI+e3/Im7ocLdiBIX
 klCXdnZb5LqoTElpNh87gdKg3G+k9OYu+DlpaKfMtenvZRzGH15ZciROCf9EgOZPWj7B
 nM9w==
X-Gm-Message-State: APjAAAVnk/w5OIVniLqg5a3AEHr3UA9gillwf/iXR+TFF8tQE/hDQryh
 Fbc0YbyM2ngBWCKV7crz+Ri0
X-Google-Smtp-Source: APXvYqz+ntFqUef71itprU0QfhrLSx4biiOXZwZEKA25oS7byv43fSukhUUOEJq44czk7qMKC3cN5w==
X-Received: by 2002:a17:90a:2506:: with SMTP id
 j6mr20752744pje.129.1563520191528; 
 Fri, 19 Jul 2019 00:09:51 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:730b:4a40:d09e:c7ec:fbb:1676])
 by smtp.gmail.com with ESMTPSA id
 r6sm56259346pjb.22.2019.07.19.00.09.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 19 Jul 2019 00:09:50 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH v2 1/3] dt-bindings: Add Vendor prefix for Einfochips
Date: Fri, 19 Jul 2019 12:39:24 +0530
Message-Id: <20190719070926.29114-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190719070926.29114-1-manivannan.sadhasivam@linaro.org>
References: <20190719070926.29114-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_000952_638115_4238A53C 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, kinjan.patel@einfochips.com,
 linux-kernel@vger.kernel.org, Darshak.Patel@einfochips.com, linux-imx@nxp.com,
 kernel@pengutronix.de,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree vendor prefix for Einfochips.
https://www.einfochips.com/

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 1acf806b62bf..9b74c4de5676 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -255,6 +255,8 @@ patternProperties:
     description: Emerging Display Technologies
   "^eeti,.*":
     description: eGalax_eMPIA Technology Inc
+  "^einfochips,.*":
+    description: Einfochips
   "^elan,.*":
     description: Elan Microelectronic Corp.
   "^elgin,.*":
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
