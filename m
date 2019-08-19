Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5782592438
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GXsafRz6KK6GZ6kvuvQKbq2JQxuguWGjcTNjh8ZdQKY=; b=EleFY/aN+cpM9WPjskpLhRamuw
	504vll1Rb2ZQ0C4NF4yxT1GnfHX6xCsGjUQiado2R6hyxlkCk/ENMOmrUTz30x5ECgnyYhj5sElKJ
	R2WVmUaBmij9JgotayfdM5Xu/aWAo3uJ+/4NME+jJEAoMEVePvv5a0AfwxHOsHqQbaREqids0Nkp3
	lsRZKULQ1lgYJPDprQMtPxtSbtHBuJoZ+Vx1cj9Q75IeO76aO6IwA2H4B/QVVF5TDIRJ6XeKF/oIr
	fdAvd7Az3VrmBOP4eM9w1v621EKycAJaldpaObg9SfbQgs/mxLluPS+oMtcuSJpaULagaNptqc907
	uPOkOIaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhK0-0002je-2b; Mon, 19 Aug 2019 13:03:40 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhIt-0001UD-C0
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:02:33 +0000
Received: by mail-pg1-x544.google.com with SMTP id n9so1201897pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 06:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=K+pJPk2iXl0LixGuiysFHZxmO1vjBGFGOdrJivWtPCQ=;
 b=I5oxOMlmoNOBbAK8yXgi9UgRNTFhNomtkzu3X2QO8e9IumF8D/Lpl6NMi/w1GZX9Sf
 ZK5Byq71nZ2OzppGvc/p/9fED/etHr5cTRub8ov86DfOJWPaLZOe1KVajuiPObzWDsR6
 LKJy5pR8DRMaByo2/gse9aaVTDzG31cYw9Fw5DlEoIw89cnqiwqGHVFu17YvBt9wrKmC
 3zA7TriDC5WL4umb/J4R1JektpkfFtoX+dcJvA+bh/0sihHUaITD5cKPOFKmYqXFpwQY
 jqHuiPHRSm+X1JFjqWLu1emfp3f2lpIM1sjpcCFQBb68yXVS83d0gRXS4lU4bHtqYQzX
 GXww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=K+pJPk2iXl0LixGuiysFHZxmO1vjBGFGOdrJivWtPCQ=;
 b=jLHUVmn6Z3h53OHk7muQvE6ksUx1Y2LuJrGahJ4gUtHRwAqnr+RR+BnSlHPo44A3Nr
 5rD2LU8nmYtrDKPOAQbHS5TU57YHPyC4E8BpvlEFRQwxSutFLW9P0TsPIXWZMi+91eGV
 AoOmymbT1qM2/tLlSn+2ZyiUGRlbdcwuuxmm1xYOvyyJy9wzywWRrsU8xBD902ZGLr/Q
 oV9TXGdAkvh+4iaXiL5Zt9KOWJ0iStnpm4ugi0NDa2TJGvDZWccLjtZsrG7wMgVBHHP7
 OGSL7GRaq22TpyhuzofIVCTGIBPz3ZO0UsRnGyjBvhwV3cJ7AAuvLZWOTwrd7gEmfNYe
 AXHw==
X-Gm-Message-State: APjAAAVryPwPvtF/jb6fD6/0XFemoTRZk15meQ6INZdH/Qr80WyHIZ5h
 1QeOWqbbB4fmfPIABrXYLIMV
X-Google-Smtp-Source: APXvYqz3130G3+QPHySpMazLaiDQvFYHTuB7P2bgiUvNOFEeeEsILzEH24tPP6zr7ff0S/wJPaVKPw==
X-Received: by 2002:a65:64c4:: with SMTP id t4mr18405715pgv.298.1566219749465; 
 Mon, 19 Aug 2019 06:02:29 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
 by smtp.googlemail.com with ESMTPSA id l123sm20626464pfl.9.2019.08.19.06.02.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 06:02:28 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH v3 8/8] MAINTAINERS: Add entry for BM1880 SoC clock driver
Date: Mon, 19 Aug 2019 18:31:43 +0530
Message-Id: <20190819130143.18778-9-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819130143.18778-1-manivannan.sadhasivam@linaro.org>
References: <20190819130143.18778-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_060231_483464_0F473153 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
