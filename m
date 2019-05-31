Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2493F308C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 08:40:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8oRUdygzGo+YMO+yUUhnAlJgpYBDpdwJL5zi849u/P8=; b=eMd7MnBOoCUElHyc41hTj5ArRH
	cgJUfv4NaHzaDWcdcIEtWPHroEpitUDPf4smf1pxf7rh1Mtp2Luia8lmJuyADWBO0liD+nEgwFuux
	lqAtePYB98GKFtobPdtSyMrwDzl3A2rcCkJUcHxZCGtK1NIx6zhyorEhEHNXNvL1dtVyQUSJmUxwf
	NkGVoo0wgnX4nZCHcSm2zaj60E8RTv9JS2Y4pxhvuaVf7GQVSlCATYqGAAMOjrjEcZolAAjc74yuB
	pBInkCYVqrUfl6wu41AnzCExz6UVDO62XheVSry6tORScXJIYgUiXYfBS/Xk+z7pbNFdlCMowKcya
	doLezoYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWbCp-0003gb-2v; Fri, 31 May 2019 06:39:59 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWbCN-0003Mv-Nn
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 06:39:36 +0000
Received: by mail-pf1-x441.google.com with SMTP id a186so4863839pfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 23:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ICFTAiKSf2WEzyVIUIY8aH5uQWN1lQV5+leEube4wOk=;
 b=yINLZjD+HVEFLHnmBFCdaPByQVMX2rctt7beGazUFTz8SHp0i6GnldmLXvhO0SP1Mz
 7fX8RkgnOgIIb2Yw3l4Y21M7JGbNFv+YLDPL4/l3XsYsQVW6gGUyANu0YsgWNQx5IlxX
 f8QIY1qI8vwu0jLKn8vFzYaePqLd2NGNmIQb162ZDMIqMlOf6tQ6II45zLwA26CK+O7n
 dPe+qTtVVsiNhNaoSnBeLdaoeawx1YDrAajs+58G5KKSDFRSeaBUkt09kb13GOd2gdBQ
 YMgtz5njgfXJCFAJkcKQM4lP6OFfh6dx1xvguxX/bK2i0l/RfWExcQGo9P//Xyf2munI
 VRhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ICFTAiKSf2WEzyVIUIY8aH5uQWN1lQV5+leEube4wOk=;
 b=kS2eldJaClfqQHEoglVokZi46PAd8gLld5LZLohS+kwiHEri0+UqMoAf8yyEH720Xw
 5ysIghtWJsFxQXAta/EGsVIZCOPFH1/SUe6EczNkDS5iVcA1r3mdwyAOvDvvjrKRPWNs
 GSF5vqEUdHtV+PPd/2xCaxvv5PHXZDuVJsIKqiahMXVhaau9oDV3a7WWwk8Cr47lellB
 CfthUp59iDuTU2B4nGsGAeOp2UCt5rhkhuME0PIZ0lGG5/+WTbzH5lRUfCQjAm90SM2t
 j8GgSXb7Q1Z8fObit8+4cNOj7cnf2R6/pCRUflJmOKLhVZHSAQIoT2CZWp2CO8P4z8tJ
 cUIw==
X-Gm-Message-State: APjAAAUanDiQKMUnJAbhNHawyAofwfCuJ7E5ty1x+qvYCuKvwcz5bNDs
 ih4zZb+aFi4fEyTKR5enHLVC
X-Google-Smtp-Source: APXvYqznyxZqc7FxorCk79gSUVlxMAYRL8gfbuzZWRdj6FY2XyPDB/CbxTdwXToIOIdbggnpYI8PVg==
X-Received: by 2002:a17:90a:d3d7:: with SMTP id
 d23mr6850098pjw.26.1559284770391; 
 Thu, 30 May 2019 23:39:30 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:72cb:ebf2:a51d:3877:feab:5634])
 by smtp.gmail.com with ESMTPSA id y12sm4644158pgp.63.2019.05.30.23.39.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 23:39:29 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com,
	robh+dt@kernel.org
Subject: [PATCH v3 3/4] dt-bindings: arm: stm32: Document Avenger96 devicetree
 binding
Date: Fri, 31 May 2019 12:08:48 +0530
Message-Id: <20190531063849.26142-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190531063849.26142-1-manivannan.sadhasivam@linaro.org>
References: <20190531063849.26142-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_233931_777710_CC70104D 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: devicetree@vger.kernel.org, loic.pallardy@st.com,
 linux-kernel@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit documents Avenger96 devicetree binding based on
STM32MP157 SoC.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index f53dc0f2d7b3..4d194f1eb03a 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -25,5 +25,7 @@ properties:
           - const: st,stm32h743
 
       - items:
+          - enum:
+              - arrow,stm32mp157a-avenger96 # Avenger96
           - const: st,stm32mp157
 ...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
