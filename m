Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD41188698
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 14:58:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dl2vKj1eVhqHODmz7HFCTiAtBBeGb6dSxGK8hSpscH4=; b=t9Q/RyzeYFKIMo
	HoxsA+GcRTufpvT3SkJTXIIxtE2zRya7anqDMX9I+n9nl6IfghOkP5xzCE28AwgEt2euPcfAsqPIr
	yQRc5GVhqBDYVCIo9W+fj+V5G2xqA2WxSONIYoeW1vOAtusfAby+h87uJG0jopx8tVx9Eb/04tEFl
	cFsp2FfPvw2RxMMFRHrUeMucUKSkjgz4US5zzH8adNvq1iK39NUmzuj8j4qSU/OIPyZGc+6mKtI5o
	jRiPpqrVSofjsngndPxjMxGAzxmcOBxi3VelJWiJacm3uh0oB8bAFcDEWw6Hr6pq7XmhPwoGWnI7o
	opg+3hxO0//X638Imvvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jECjO-0000cm-4s; Tue, 17 Mar 2020 13:58:06 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jECj9-0000c3-Ef
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 13:57:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id f3so18832948wrw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 06:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R7mPWyazQzpq+QB7kvcjm1xqFg1EYXZslw7p+6l9zyk=;
 b=almf5Jtj3eNx0d/aXBR7+Oze2+ETeYjtyMlJ9OEbQmb8gMN8blXwHv2GG8cTMSG8Gb
 TqQI2NvD/8dBdMeEBmIXhIlFHwrbl/hv5ChDDsNGpnlpK5hvQzof8fIixUIUsBguIXTb
 KDN4gxBzEroJNoXlYrX/bRITTsURtbZ+0C1rc3DI0n3W0P0ylmLJ6omYznM5Mry+BHEl
 sXOc3Pq73C98/nsy0iLaajh56wLjwq7AMkYoauh0RYGnVUMCy44eNrnIGcJTSZeVDb/w
 dYQ9baRi0UO2Pr1LUpCM6HKEzgo2MXSbZM7mFSpDv3xrJ2Ax8m4VmF9IwYMZTjiNJSAG
 YvNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R7mPWyazQzpq+QB7kvcjm1xqFg1EYXZslw7p+6l9zyk=;
 b=awwRlRbbkIl35oTaSi3Qpv0jeqg+OQwzBGrjmwc11ZHxkCg6yFR0JDtt3o5J3KHVj7
 pvmporikeFrpM4AA0R+vWx6fCzXBgKgygJ8KkSU2l6HI/Yyty4kADLHat2+79yph6wMH
 R5YAlxyYGo7TfISlfoFNQ9qgiK84zvhJb0INl/PCGybZItEmrGtbCMQb3DLKUomHIz/0
 O8dOvVyh9Ta2JLZzxB5CcNLmCixWk5PhPqfPHCPUNoJ9fW7z+hsvUGL3W0XNSIYoR2lU
 3bIQK3F/kUthwCal6q8qCZW/9hPhQXmgHElctF6FXckrM5wWbVZGwXwzfdjpGU9HMLG1
 NxOA==
X-Gm-Message-State: ANhLgQ2A8NDUhPCfSG6WwO/6ldyUcFjT5G1FySnTLJMZyp+SVGiLzqmL
 TtpSRLMYAm4dCLU88S7ywrx0sA==
X-Google-Smtp-Source: ADFU+vtjVlC/k5+6U/ZJ5/Eyy3Wu7I7oB0zbdo6cV/jFpbNjcRBn/Fnh1DNmBZO9Lag7OIncCJrjOw==
X-Received: by 2002:a5d:490e:: with SMTP id x14mr6707580wrq.58.1584453470131; 
 Tue, 17 Mar 2020 06:57:50 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:84f7:5c25:a9d8:81a1])
 by smtp.gmail.com with ESMTPSA id r3sm2976558wrn.35.2020.03.17.06.57.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 06:57:49 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, maxime@cerno.tech,
 Anson.Huang@nxp.com, dinguyen@kernel.org, leonard.crestez@nxp.com,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>
Subject: [v2 0/6] Qualcomm CCI & Camera for db410c & db845c
Date: Tue, 17 Mar 2020 14:57:34 +0100
Message-Id: <20200317135740.19412-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_065751_500947_96F340D9 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Robert Foss <robert.foss@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series depends on the Qualcom CCI I2C driver series:
https://patchwork.kernel.org/cover/10569957/

This series enables basic camera functionality on the Qualcomm db410c and
db845c (RB3) platforms.

This includes building drivers as modules, adding devicetree nodes
for camera controllers, clocks, regulators and sensor nodes.

Loic Poulain (2):
  arm64: dts: msm8916: Add i2c-qcom-cci node
  arm64: dts: apq8016-sbc: Add CCI/Sensor nodes

Robert Foss (4):
  arm64: dts: sdm845: Add i2c-qcom-cci node
  arm64: dts: sdm845-db845c: Add pm_8998 gpio names
  arm64: dts: sdm845-db845c: Add ov8856 & ov7251 camera nodes
  arm64: defconfig: Enable QCOM CAMCC, CAMSS and CCI drivers

 arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi  |  76 ++++++++
 arch/arm64/boot/dts/qcom/msm8916.dtsi      |  27 +++
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 210 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sdm845.dtsi       |  92 +++++++++
 arch/arm64/configs/defconfig               |   4 +
 5 files changed, 409 insertions(+)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
