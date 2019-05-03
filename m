Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CB512728
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 07:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8CzsAi3GN1KPGPHKwi5OvyiDg1EEX4C/QPxfAwx4ZEs=; b=IvO09U2UTws3AfROejVXU1gWlA
	edV1InqN24GUosuDfgcu6PG+A+hNaQSuRAcWcX1A+SUY1dNxaCvK8B37r0Cx2+RoIuJCXKsKagJXO
	mzvcJoorPJTW50oWDiyPb9csEn/Hif/Lpnko6MRJKwGca/LLi4boUDXnbKkuLSR9IMP4BGXh4XiE+
	HDx+kqYRT/5drhXNNPXOp1h5KTDP5DvIHOOhBgePqaPOk8/fibBZpx3ZcRIxd5cP6mzvnlyQWx4gU
	lLLjPqN/L8PhpOtVmzNWiXIATCOARiTM/AjwBsV029eDykYZEcKSz3PpuakzEgRYsW6jYNYwc3awC
	fepcS8yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMQne-0001yZ-G2; Fri, 03 May 2019 05:31:58 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMQnQ-0001rm-Kj
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 05:31:46 +0000
Received: by mail-pl1-x641.google.com with SMTP id b3so2148612plr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 22:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=J11CAk6hX0rsSVl1UifJnPX7sfZSPwS6EsqX4Zx/yUk=;
 b=NfAt7TlYBcZ8Q5tKMBk2voI//3YAMOFFa7XGfmx+BhWuhARWaZjbkWNGgkq9G8p6UQ
 u0kiZStj8L0+SyBOGy3uMShfifPODyzMtk+t0I0LcDIiIW4UXtcLPVwXqiCOBfbUBDN1
 DuJoN7p2DjMbLUQ+g4HA58dJMuV8nO8WA34spCrn5Jcn+GqoVLgeo9+puGtORnzSkcJa
 GcRLRyHdBo6S3wWoYkjQD8Rd492P8MiWkAks7X9+zQ9oIYpCJw/NU15eDjVMv3Sv7faQ
 caiD+zPX7x+gleUDKJDKnsowuokZ5sLwLv9U0HGkcAZSf2ZI0yLO/so4RPHklq3EbkKc
 OXiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=J11CAk6hX0rsSVl1UifJnPX7sfZSPwS6EsqX4Zx/yUk=;
 b=lDNsUO9nlmQBeT/dXncv+Doa1UldSo6D385svxcK2KZW9CyK1issi2dkD/zmuI7/d8
 lcGk6XNcQ9kajwozD7FLgRut9ghhq4mPbEf3fq6lmZyRJ8pH/MYSyvcIjISobKhxJ8iW
 fv/SRFS69+hjuXvjRSmr68hrgWMaaVxXX+Ixyy+QpH27amik3oR6FwPQiaYQOSHyQAtE
 Ni2zwzXgZbEqjc8v2k4FyIkru6uHKkuJmu8IIlhGWxcUo8/4slm2HzbwCRqsgK+3xj/H
 c1kQU+bzBAkB9O//JauULhzHwn7iKs4/G0ly1QNPpKW73XW6GbGATNwpJFfVHLl+T/sb
 ZGmQ==
X-Gm-Message-State: APjAAAXobuPWx7N5G/n+F7hCjXWYVdm+lJ09/5VVoYQ9nvOp8wazoizm
 A1Dii4dOxgMFQ1Z6mJhYGSYd
X-Google-Smtp-Source: APXvYqx/FVvHZEajj3S63ojtZ+4apc82r5QUp3f7agjtxwzWnPlXgrRA0LNj6Lde8RF6sZUQ+Nn1Uw==
X-Received: by 2002:a17:902:e283:: with SMTP id
 cf3mr8159182plb.160.1556861502960; 
 Thu, 02 May 2019 22:31:42 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:72c7:3835:31df:f367:f70b:ed86])
 by smtp.gmail.com with ESMTPSA id l15sm1152226pgb.71.2019.05.02.22.31.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 22:31:42 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com,
	robh+dt@kernel.org
Subject: [PATCH 1/3] dt-bindings: arm: stm32: Document Avenger96 devicetree
 binding
Date: Fri,  3 May 2019 11:01:21 +0530
Message-Id: <20190503053123.6828-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190503053123.6828-1-manivannan.sadhasivam@linaro.org>
References: <20190503053123.6828-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_223144_726277_7D7C57AB 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
