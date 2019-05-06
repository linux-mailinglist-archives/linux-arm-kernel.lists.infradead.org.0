Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A44714824
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 12:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8CzsAi3GN1KPGPHKwi5OvyiDg1EEX4C/QPxfAwx4ZEs=; b=StWbamRFhTZMTB/F8L4GOVPzkm
	EuboBEvmsen/kqQGMrTKoTCrfvxFrjxeoqM9hJ3vvil1ABXpfcflL/ROMGJv68EdqRba+iPwTk01E
	eLPviGJN1LAvpyUIjxhU9RY7jtnc/PUxfpkD0iCtj26amOm9oeN+KfkRAbEHG5rY1emB7ljubL2/r
	SSUGYF/jdhkV4oZbPrFvMQksuTO+FoH7+pU6VOnF+Mqn2uKo+L6Dfi0zsT/XGSJjKqyaxKCqlJe73
	7KiAuLmAsLrMk8+V8R8HgvWTq4OH85pFcEgW506tkvIO32IBkQqF+f5ByVHdbo3TBdQQ1EbeglD9C
	wlCDSh4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNaVe-0006kc-0U; Mon, 06 May 2019 10:06:10 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNaVM-0006bR-OR
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 10:05:54 +0000
Received: by mail-pl1-x643.google.com with SMTP id d9so6123002pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 03:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=J11CAk6hX0rsSVl1UifJnPX7sfZSPwS6EsqX4Zx/yUk=;
 b=kaM5lSuLI0FV3PRZ8stKKlOCGIigBQ3ofdGJObwDHHSCL5UEwGsdcoi3yhbvo6H/5K
 ZIBp/fx/ZM9jarokbi4rfhTl4Skw9U5+/R9qFky+M3PdsEOYnGSaJXlrOZefGTweIRIS
 IK/Nm56I3yTXFWjf3St7nh87hpkbs/X2CHfqmE0kDWIhIkuY6gTQdVZWLTgbiM07MXJR
 Qt8Lq93vAC86lCeyQjRjUu9vs4reNp0Kcrw1V70NYG4IkpRGqX27lvJCN4b5dAOCQDds
 jyxaFs3H8ep+9+Kp4cjj5sxxQm0pcB/T977glnoYh22pxFsCyq61z3UEAgvPS9Xg129Y
 bvmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=J11CAk6hX0rsSVl1UifJnPX7sfZSPwS6EsqX4Zx/yUk=;
 b=fzIHm0uUhoGgmbzJHabF9OlfBcJX5Vuu5fBwKNZcB9FmFf3I7D8T+gjDmFUrtRiBDL
 4RAy3wnHAVh7U6rWnW0Tgs4IH2Lk2QPgz3nKfAMYgxMEAHHN2RJgWgZ0lLLJCuA917ku
 zDU7H2m/OdKovmML5wRIM4dfgzaPh7p7W+L2x/0QDJkysoP/JHsq3NVXn+u5L+eelbIU
 7v7LWlj+a9nabosnlz5VZ0ERuqmB2IQab0eTA5cTB9QCmECEnTXeI1fZ1Z4NDR0XXkbz
 glACDW7Vi+p2OssoJSfHIgWQ2ipD9Uy0JbD0lRRzv6pp1c6QHHD/PcHjrqoy+tTYAKjI
 Bnzw==
X-Gm-Message-State: APjAAAW1xBrUvCZXweqj6/I1vo7wJ2O3QZjT8eQ+JUDQo2c0TDFgMmNG
 AV+GRpJlPJtUk6Pan8szoaHt
X-Google-Smtp-Source: APXvYqz3YRJ9CGw5YQkYfcQtat0QM4RY2d72UCJBxq6uSXcYbbBu1tSi1wsMToVYUR4UT9LkO41+QQ==
X-Received: by 2002:a17:902:be09:: with SMTP id
 r9mr31239391pls.215.1557137151415; 
 Mon, 06 May 2019 03:05:51 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:611b:55a4:e119:3b84:2d86:5b07])
 by smtp.gmail.com with ESMTPSA id c137sm16229653pfb.154.2019.05.06.03.05.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 03:05:50 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com,
	robh+dt@kernel.org
Subject: [PATCH v2 1/3] dt-bindings: arm: stm32: Document Avenger96 devicetree
 binding
Date: Mon,  6 May 2019 15:35:32 +0530
Message-Id: <20190506100534.24145-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190506100534.24145-1-manivannan.sadhasivam@linaro.org>
References: <20190506100534.24145-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_030552_878407_A2277A86 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
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

Document devicetree binding for Avenger96 board.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/arm/stm32/stm32.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.txt b/Documentation/devicetree/bindings/arm/stm32/stm32.txt
index 6808ed9ddfd5..eba363a4b514 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.txt
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.txt
@@ -8,3 +8,9 @@ using one of the following compatible strings:
   st,stm32f746
   st,stm32h743
   st,stm32mp157
+
+Boards:
+
+Root node property compatible must contain one of below depending on board:
+
+ - Avenger96: "arrow,stm32mp157a-avenger96"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
