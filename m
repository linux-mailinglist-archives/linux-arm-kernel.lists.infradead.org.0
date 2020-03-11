Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7381181818
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:35:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6Vqe8eN6FmybD2iEKLgyVfqAzxjzGvxbv3dYPftmiVI=; b=gVoAZCODgRWoJI
	jLpwHLV1rZR5HejSPAnHPvKdBcGftojb34UGNx2YmsVjw3O8BOl6qIiZbHGs4mQg8dq4NyUEqlVgb
	SWQxGfDhIi3sCDqNJ+nkRzgSCW8CQY8EQicm0MThm1h+PIb5ZzWlOtRDyhvxieqI5PDURTvLuSk1W
	59+FIWUkcive5ElKNc7o44D13jQsY4aJT5dam//nrjq5IM/TVfV5RsAsFiojx+aABuigiAG4WcMgp
	n7iebUh+/IU6DB5wPPnJv3uqoyQJOGwMhg4iuCenZpNSw9iHqmmzEA/Yye+qxN+2wd5tXn9HbEAKq
	IkhnBGYTef0AAv0695SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0a4-0002tb-08; Wed, 11 Mar 2020 12:35:24 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0Zn-0002Nw-41
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:35:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id a5so1912540wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kaarF50dxbS3Z8Mh0BzIdcf7YKpiLwN04fKYbKDEJfo=;
 b=mTSFsTwTgQ395aAGTlSYACy3RpEti3lHZ/SdKLzuPJUEhPFwgtcD/0x7JD1LmsEyLz
 vLr8lEFv/uOg5+Hi5xuDDqecCPjxNi02fn6naqQ5/M/q4Q36F88RiOq/ovCCK48Ar+Dc
 0P34UBq5R1Jexx3KgTxx4vBU5PM8e/XP45Dxnf6oz2y0ZKKS2nAfn4tCxyECf+0moQgl
 DBaHI3o9o7jlpRQNCThE0/fSZpqYxbOA8VJE7eSxzaBnqfo+wHr/D/bQrHnsfazug5gC
 5j4YTLOoliD+IuU/K2E8FRl51ekJyN3da0utLjH0xJ/aWYgNoW9EyzQas3GGEipaYAQm
 Vosg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kaarF50dxbS3Z8Mh0BzIdcf7YKpiLwN04fKYbKDEJfo=;
 b=TvHFko75loVE8F1E4wdFfbMhoWt6NN1afX4e8ImaKToDj2cHD2wo7FtChzv1TvXejf
 Io+jRpPFsc98pwucJz8lB/awlO7X1a2wf1xlrAH7C78M4NF3c6fwQsgDtgqByiWpzvNI
 xc4TyBU7X1Fz+oSgY8P5SIeoLw4y2O42dhHyZZM/HFq/Gs1EGEqDgS0tycSs98xyfbD/
 Cn1os1yvnGuxmyDIlSvAVrwxLOaUvef3dsY9duO6uMPVB9vGa85Cwrg3kMXbYtCwA4/f
 02W/vGPcWDzAhqncwx4YaqOyvCVaN+Op3T2R/rBVnnialFFx1/8hvgTihbvEEi0wlJ3j
 zxLA==
X-Gm-Message-State: ANhLgQ0VTiT2+jqB9RPheJ8EQK1x+g12y5/TC4tGxxL0rV9QUKE+yzwt
 P6/JEnnLURyYTD3p3Sk0fsnqxA==
X-Google-Smtp-Source: ADFU+vtijpANu3z4d1JWR353H0zygtSe8oto36au5GoaVFlUBSvVn7Jemj9lTKV4zXVdPkwgCr0WiQ==
X-Received: by 2002:a7b:c5cd:: with SMTP id n13mr3676317wmk.172.1583930105627; 
 Wed, 11 Mar 2020 05:35:05 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:9087:3e80:4ebc:ae7b])
 by smtp.gmail.com with ESMTPSA id m25sm7822732wml.35.2020.03.11.05.35.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:35:04 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, olof@lixom.net, Anson.Huang@nxp.com,
 maxime@cerno.tech, leonard.crestez@nxp.com, dinguyen@kernel.org,
 marcin.juszkiewicz@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>
Subject: [v1 0/6] Qualcomm CCI & Camera for db410c & db845c
Date: Wed, 11 Mar 2020 13:34:55 +0100
Message-Id: <20200311123501.18202-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_053507_203179_DE7CF9CD 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

 arch/arm64/boot/dts/qcom/apq8016-sbc.dtsi  |  75 ++++++
 arch/arm64/boot/dts/qcom/msm8916.dtsi      |  27 ++
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 273 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sdm845.dtsi       | 110 +++++++++
 arch/arm64/configs/defconfig               |   4 +
 5 files changed, 489 insertions(+)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
