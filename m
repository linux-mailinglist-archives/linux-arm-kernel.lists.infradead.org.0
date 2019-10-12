Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 444F4D4CBF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 06:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+fiNp+ZmYPcvuPSKavL/twf1HUVUGGw54kmTXe+/B9Y=; b=mLRwLGJqxjrC9L
	i6Cm5irMVM49bCQV7dcprZ2MQHC7RBJewlPkfFXmBURLMNBFPHY9zFdm7lRVF4l7prdhTy7rBIuQh
	3cjgZAQCO9AnQ7duMk8ZnuDDkyRuJoKjvIDcVPO6JY6e8+AeBTLcaH9tZV34BKPHa/5Oqmz9xP7IB
	zKQtKnwOA4xxS/rhrd5vgvL7eIy9XFKCw5THxl6q+p8V9ourqeqZm0/kEmiRduoRDYYKjI7UgszXK
	0iniwWeBILVhmlqtg8ea4tMitFSEyAWouQ14B/AaENSWaTXKdHXq/EeE/6pK8ffH8zVA419tGUB82
	zbU0Zj6w0y3AdHhaSW3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ8s1-0000vn-WB; Sat, 12 Oct 2019 04:19:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ8rs-0000vV-Qu
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 04:19:02 +0000
Received: by mail-pg1-x544.google.com with SMTP id p30so6906851pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 21:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Biq3dW4bW0477lomZDFZTi490SFYFw1BtO4yj510/vM=;
 b=r4RIe8BNwJ0mRu0383jbVNv+Pew63+jHslfI95XxABq09NjQfA2VbtjGuA/gXOLAQl
 HZetYhW/n8CUHfMwH+Y/FRz0K1JSfvFnABT3Ywkd2sDXc97PjH/UNuAVYbf7TQ7Vw/+C
 nDzAyJqC2ovtyVsY9x9bWkGB57LysASSXRfqls9P+Xs+CwKeCOCvAIkMhtdwb8dc2csx
 RaQ/2BfeD5ZLEhTvJyyVcMc62wuRuAHNtxzSWPhLn3emvnNagm/59SAH8BfJGCsgei6h
 KPjHK6QiSX2LhCf7rkvGvgxYHV6TDPoeFBIDb39q6g3YEv+9ZdsqQ474ZBj0zpWCjXo0
 vI+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Biq3dW4bW0477lomZDFZTi490SFYFw1BtO4yj510/vM=;
 b=acVDnarr23VSWgSmRiZ6Ie33QS9D2zWKcNsAO2cmzHGA5cgjCIumtERFjJ7eG2qNBx
 XMpbBldgypKPyMJJPuDbi9SkBfM1hk0deyfewlj+52HnE1uiMkGM/EIsQ4TpEoWZtIXA
 8XgUTtiEf3ZHnhKNSFFYGJs/iy/VR8wNs1CjS5NRqeZHf0comPfniAxs2YRg4NB9eRUm
 z0eKNXOogiW2loj5e/WCcHMStome/IfOin4dFMeCPxyuw1TAKTk2enb0BWGdKJtJofxd
 QUV3oe+EeIcKsMn5g8ddbD/3+a0u3YEx93y3NsIDmy4OsAhOXTBdQH25iqh9MVGND4zN
 1GJA==
X-Gm-Message-State: APjAAAWVRuSv/5NeDg8hdvhxVsQfdcu+KynvD8EHBmKe4o+JUY2shnHp
 53+4gkB5jSke7jsgErwY1ReYXg==
X-Google-Smtp-Source: APXvYqyVEDPBqKwv5CKlG8eF2KQdfnZBkXGmGTJfcvzir7jHGT9V5OIUDE2xY5S2OQRADy06KWyO9Q==
X-Received: by 2002:a62:8305:: with SMTP id h5mr19838213pfe.190.1570853939670; 
 Fri, 11 Oct 2019 21:18:59 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id u9sm11142953pfl.138.2019.10.11.21.18.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 21:18:58 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Olof Johansson <olof@lixom.net>, Maxime Ripard <mripard@kernel.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Dinh Nguyen <dinguyen@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: [PATCH] arm64: defconfig: Enable Qualcomm SPI and QSPI controller
Date: Fri, 11 Oct 2019 21:18:55 -0700
Message-Id: <20191012041855.511313-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_211900_935834_3E002240 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the drivers for GENI SPI and QSPI controllers found on the
Qualcomm SDM845 platform, among others.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 688c8f200034..dcada299ff4d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -391,7 +391,9 @@ CONFIG_SPI_MESON_SPIFC=m
 CONFIG_SPI_ORION=y
 CONFIG_SPI_PL022=y
 CONFIG_SPI_ROCKCHIP=y
+CONFIG_SPI_QCOM_QSPI=m
 CONFIG_SPI_QUP=y
+CONFIG_SPI_QCOM_GENI=m
 CONFIG_SPI_S3C64XX=y
 CONFIG_SPI_SPIDEV=m
 CONFIG_SPI_SUN6I=y
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
