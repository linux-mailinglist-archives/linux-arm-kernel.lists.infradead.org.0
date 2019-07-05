Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EC26090F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QUQj6heFPnz7iNuwJ8TXOMgAf8GF1JK9ulQfR6O5dl8=; b=czb2Ta9qMQb1J8XoLOHPtOnmmN
	pZq1bs1NdLz59tYorTNwFAscWLVhq+ZyDZE1r5oN/fnMy09+XBYviPyhd/oQV/a2Zb3J6Bayn2czo
	Iwri0+a1EXSFNURNAPmdkJntWg721rlx8pAQOulPRNpt6Ut8ji9jTkheCtc7A25FVLvnsdlde+cKv
	afdChiBigvG0Nt5g/V8CJmS+Wy2GeHWZjdU3ymmzDGtGCaRD3tqusBy1N6rrS9opMNumRVH3OvFf3
	C7nH0U7Zg1I+dOljB8BNGNeGkvDlE3w2Yl8y8mgZtTzey5bxJd0i/4qlhEePQKq+O1lZpl5mcFi9d
	ivQ9Ex9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPxO-0003KI-IV; Fri, 05 Jul 2019 15:17:02 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPvs-0002Mm-Fp
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 15:15:29 +0000
Received: by mail-pg1-x541.google.com with SMTP id w10so4443330pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 08:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=W3shWyjUMuq9t5Vu5n5b4WyN7Fp07Hz5BxwWZP81hBQ=;
 b=GLp+9NqHTitbzc/EsYIplus2wwytDD1COg7tthvJ2z5C8u6TdKlK6E52+9zQmpo/WA
 vr2Ea2RI3BbF84Mjk8+R3Ql1MGPwxtXnLPOc0v6pelHEkoPT1mrL1wgi6ZR6EmyyHvAI
 jS8p0xLZHL2Pkqpa341OyGhxtca7Ga12OwWYTVagEvFpGj5CIhDJxSCMW0JasKA5K9mG
 ZyaqF8WakEI2giuswI29XVelWqw+Jy+oFJ+0oIeFIF5mADrGyv8nsL0DG5Vn1F3pE01R
 Hb10poYOGOSaXMvo7zwOHatpZhAqtyIwKRaMsnKjgtURH+zuyJLF2xJcCEC/5xNRlbOG
 mLdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=W3shWyjUMuq9t5Vu5n5b4WyN7Fp07Hz5BxwWZP81hBQ=;
 b=CHcn/PSUpOrfhDxPqE/d++N3moJd2GmZZ6YXxMqDZ/Ztin4N0T84H2CImSOlFsNInQ
 rGwO2E9SuAUKBO9FdwNbz1fWi/JizlhS/RTKReBP1SmLGxWnKRqs3Xlpi9RW4g72GgFl
 FimJV3XTpnuAYUI4mYQj7X46tWXniWP4qRRlSw9T5uZg5MN6i8gifAaPxlp+WchQYCow
 C8qgsjvuNf8IeNdkOhYlZsDs/R7E8vXtTfibVkU0ZtoTWDRWr/mo8EFRtk06MkY8xoQK
 LxKYzFkuwG3+SisnNPh5PpaJxMoOZcju5Jm5E+e8LefXwN/MbogDLioCski9AK024nBL
 T+/Q==
X-Gm-Message-State: APjAAAWAP7uwpFn1phLKYKyiarT0B2rIlX5lFyXRbwKoYEs+0fVA6b9E
 Txu31vEsam9DqP/UiZDED0fq
X-Google-Smtp-Source: APXvYqw6EQk4uR8VqbeRigjfRsmWR1YAaEHXOOQRQW99S4UWiNDtnjOUj1yeXWg4KdwRNP1FZyRfPw==
X-Received: by 2002:a17:90a:25e6:: with SMTP id
 k93mr6322707pje.100.1562339727172; 
 Fri, 05 Jul 2019 08:15:27 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:916:7317:a59d:72b6:ef7f:a938])
 by smtp.gmail.com with ESMTPSA id w3sm8248778pgl.31.2019.07.05.08.15.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 08:15:26 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org
Subject: [PATCH 5/5] MAINTAINERS: Add entry for Bitmain BM1880 SoC clock driver
Date: Fri,  5 Jul 2019 20:44:40 +0530
Message-Id: <20190705151440.20844-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
References: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_081528_561335_14AD70B7 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
index 01a52fc964da..f9259161cb5c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1464,8 +1464,10 @@ M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm64/boot/dts/bitmain/
+F:	drivers/clk/clk-bm1880.c
 F:	drivers/pinctrl/pinctrl-bm1880.c
 F:	Documentation/devicetree/bindings/arm/bitmain.yaml
+F:	Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.txt
 F:	Documentation/devicetree/bindings/pinctrl/bitmain,bm1880-pinctrl.txt
 
 ARM/CALXEDA HIGHBANK ARCHITECTURE
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
