Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE4F1A22B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 15:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y2wCrn+haNJb4qSZz8IYTJZ6m47HpnUIDUhXTciWUEI=; b=ac0IvMvq+//cxH
	1JwaYtmGhGYBCDeGIcm3Uiut7hE1IgfAXoV+lEfEEg1OJBkutPkAR3wF5Ux40IYxGj2FNMsk/XsV8
	CX8kwCueBiy2/AskE7IcCk+QfuUmCS/nUJQbT0xnh+z+E2x9FsQHZDRIi03uyOHIBJUUKCoai0M6t
	5Mr/8Gcx3EfJ7sC8+f99fVgYt1YHPvFJwq0cet1cyYu0XGZNyL3uM9nQl8OEjSObiA3QvJabHQgXt
	29ADRyyPvsMi0CrzocariTCFW+Nx2YPhmoHErmYzUlQC4+f6we63wGd63NeTEAi8LWhUXU58jJ9Fp
	P5KeW74zYRhO3iTCZZ9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMAU5-0007xt-3W; Wed, 08 Apr 2020 13:11:13 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMATg-0007nY-63
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 13:10:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id z7so5081066wmk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 06:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JYXlDfYBhiWgPgJU0Q/nJhdlPceCvlDUE/4GyWKcH6g=;
 b=QHL4MXPEljvtIQGjunB5zOVtcdXGVKmlw4SZOnXhxkT1G/idNJYDWnJFfBVSZA6ur3
 XLz9bz/BqDPWhdQatlMyK6MmtNW8HxbZeVjK0G1uqi7z9jMag7KM2wUrQWsgkoABLzNs
 oYhqehOttVSx8OlDnxRpDf36Pjdevb/n571RX6/ccykz1GdjpgOarVQkS4Bm9+QTsEy0
 UbUITpFmgxApWyw5xc28x/GA0O2u/y+CJhdZhLfIxQwoqqqjCYFGVNm594e3V6ypu9Lr
 UWvi+6+0ZKt423SaS92K/1Xh7qfhb+YaYr0a0RE4bUjQ2SNqU3UJArWVOsEbiLCXMGU4
 CArg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JYXlDfYBhiWgPgJU0Q/nJhdlPceCvlDUE/4GyWKcH6g=;
 b=V97xUXJyacj5VFZi1CypbKXRw7CzeY52gKboIpRvvnDyxULjZnedMHg26ODQVdRccP
 S00HaZxJW4wGRF5O3ElZtWvUf8Jw+OchZdTXa8ydTJJ6z8PFLcKB8arjCXHdyyxwK7Ol
 diEAXJNLjiokmJZ/qRSMDWh9fG9vEO6DY8nKvtnLmvFRlsdH0Bb8ZmYnfI9Shyltpm+t
 R1v9fmWs8d/vpcuWwh/gA9uT0KB3vgzGkfdRrhaSUpn1NYppE9RuYNgwvjso/xMCr4ZE
 a/49dgPWN/779iUlUB7EEBm2eg+AJ5vknpAdsJiVhdyiUqnO5O7zBcIe3J0E6gAe1NJB
 tf6w==
X-Gm-Message-State: AGi0PuZuthtdLeg3aTGg8HOlBqRs87AhD0wiJTM5v1ofsY9pyyurODWd
 nAooFh6lt3ez7tqNAOW/TqAVOA==
X-Google-Smtp-Source: APiQypJze0ARzAXgLTH/rmOlQ2KeFXFto1u/pWx1vCgzC7LIu7QenfXc92GJkM+v/zzhBPo68YSeJA==
X-Received: by 2002:a1c:2c85:: with SMTP id s127mr4663487wms.18.1586351445367; 
 Wed, 08 Apr 2020 06:10:45 -0700 (PDT)
Received: from localhost.localdomain ([37.120.50.78])
 by smtp.gmail.com with ESMTPSA id f4sm18428044wrp.80.2020.04.08.06.10.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 06:10:44 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, shawnguo@kernel.org,
 leoyang.li@nxp.com, Anson.Huang@nxp.com, olof@lixom.net,
 leonard.crestez@nxp.com, geert+renesas@glider.be,
 marcin.juszkiewicz@linaro.org, valentin.schneider@arm.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Loic Poulain <loic.poulain@linaro.org>, Luca Weiss <luca@z3ntu.xyz>
Subject: [PATCH v4 0/6] Qualcomm CCI & Camera for db410c & db845c
Date: Wed,  8 Apr 2020 15:09:53 +0200
Message-Id: <20200408130959.2717409-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_061048_746731_8A2F5DEC 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
https://patchwork.kernel.org/project/linux-arm-msm/list/?series=267371

And the ov8856 device tree series:
https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=268013

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
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 204 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sdm845.dtsi       |  92 ++++++++++
 arch/arm64/configs/defconfig               |   3 +
 5 files changed, 402 insertions(+)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
