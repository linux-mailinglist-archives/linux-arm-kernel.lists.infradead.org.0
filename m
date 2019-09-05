Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 920CCA9C39
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 09:52:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UdY/xXiOm9DV4V/Ohq4dY5faQksoNFnaXlLpvPgiG+U=; b=mks
	+sh9i/pXCKMnwPytzWP+KgxYpPsrtqs1rmmALZY1/zvymglmFiJuDPS86DhDbyI4Gl3+AUnuIZFJE
	YTtWyOBZi8CF5jJOJVomd20CBwlvPi3uPbRgMClDpk3YKXU0GaJTuIXUdXjr9ZXbrrGTf3iPrXWRU
	Q3vWey0yr3G50vazT476dzawXCilHIa5VHhtbAMOYMMpZN9xHmAhWoVgqGthsTfK0qXBbO0c43rCl
	e1v5Wb1TS3J4sdz8IFyasCMRlB8dQcLrtS+Swrf+Lbb/AJtvRPcV4hofNVULVE8Z1CfQY2k08WYU4
	9IBrVoxT/2POivwTro9TFyBfNkBceew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mZC-0005L3-7v; Thu, 05 Sep 2019 07:52:30 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5mZ0-0005KT-Gi
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 07:52:19 +0000
Received: by mail-wm1-x342.google.com with SMTP id r17so4319333wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 00:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=8QTtt8+sGnSqf2GZqqr6eKF9qx6336YqhCVxZTe4hN4=;
 b=P3M2iaYypKmONmySetZUFaEg2hS2Zw4ANUaBhR6r5Ydm74kgAH+IhORp1ZlSO3+SvG
 bPCT3dkX2yVgIb96qqnsLFsYvscdlxnkL5q7N2vsbXFwuzu0KFsjgL2cm4cVMQIVCiHg
 E3HyFv/qZeAvK2dR5fvXAwdJ6ohLBAUxXUlpSrnwZygHBjnfzUXN7K/XTGA3fFhhPMLp
 aef7z4TL+zPCwYLGdxAx8P883nSG9rZIhxXDy0ApUIjVYUWVdz2yX3BC0F3ldwajVhor
 yFM9sHNlHvSqgAqu2mpD6gLSQXdhjL2FV5gmXWXcKoqfAWr8dBPfgBb+lndVXZwEXGIy
 zv9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8QTtt8+sGnSqf2GZqqr6eKF9qx6336YqhCVxZTe4hN4=;
 b=ckXMvSMHW9tZWwro63sbEO6VsY9Ix48Os7P05ILLEAMIRokqTfUBbeaFJrBiWOuU1Z
 94Tl8CZyi5OFbpIjbOAGwzTJpL7fEsYNmEv73CpsSNg4aKKU+sj1wGv49vWrIzSHAmCl
 DJKYSPMKK2D3iCE6Hbv6Jahfgrux8xdgw8QLbWHeq5O0vz/JZJ+S3cBIKrSMYpQWm4e9
 Ps1NbM0HgZzN3NCGcRo08zat3Oe13oA21OygudO3vA4S76C6bWxewm2mOBwgkveTPE8F
 FMI2kMR/8FHKW9YDNZ+zDba3YSgNFeNWlYFDsAM2ydoMS0DQKMdYqf6IrtCktUe4GDBM
 v89A==
X-Gm-Message-State: APjAAAW6Yn5+5a5ijycn4rAxbDRJtMTL+PYiscyd2oCwpANwKObdx1iX
 wpMtp9hb+NyW6EnK07rRgynuxA==
X-Google-Smtp-Source: APXvYqwzQVlp8PCbFWrdVBA5xmrr3ZHShk2IdYXuGYRwilcld1G0FXOEOyA9G0LVuEDXC8E5xXtsSg==
X-Received: by 2002:a1c:7919:: with SMTP id l25mr1454666wme.23.1567669937202; 
 Thu, 05 Sep 2019 00:52:17 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id a13sm3418784wrf.73.2019.09.05.00.52.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 00:52:16 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, agross@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, bjorn.andersson@linaro.org,
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, wsa@the-dreams.de, vkoul@kernel.org
Subject: [PATCH 1/2] dt-bindings: soc: qcom: Provide option to disable DMA
Date: Thu,  5 Sep 2019 08:52:12 +0100
Message-Id: <20190905075213.13260-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_005218_562181_B93BFFD5 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Used when DMA is not available or the best option.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Vinod Koul <vkoul@kernel.org>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt
index dab7ca9f250c..a14889ee76b0 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,geni-se.txt
@@ -40,6 +40,7 @@ Required properties:
 Optional property:
 - clock-frequency:	Desired I2C bus clock frequency in Hz.
 			When missing default to 100000Hz.
+- qcom,geni-se-no-dma:	Prevents the use of DMA in the Geni SE.
 
 Child nodes should conform to I2C bus binding as described in i2c.txt.
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
