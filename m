Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85D919CA0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 13:30:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xthi+MYKv50zbF/zgI+G104Dk+OItFIJLevrPu/yS3M=; b=dFU
	YQ+tdmGsXhWEh3VFglffVtNIfzXtorrquzLZKFd71QjJOesrk5kpzFVnJ+uAuSvt+zLFn/zy97Dsf
	EwEy2r1aR4659q5TtUUpWRJS1zcpAXNXtbhpiMEr2klN23IJIGRbdh03R/DXimnXOXOxHAuRCr1Ry
	q/WnwlgUGQaK7hgE5s7M5WqP1tKvS+/YG4afkl+3vVti7gDbSZL9QHoxxs31hE4Mh0dv2bUManZTJ
	/CAyLtY8D52wYv/s+xSnqB8rEnR8GCBW2FnKi3VKm0TtaZQQUfbfWsh4dcOK0eDmXOWnkwIbONJC6
	R8aiDe0tgDuAYvR2Z/GnZUm6fqRw32g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP3iz-0002CP-0S; Fri, 10 May 2019 11:30:01 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP3is-0002Bl-0G
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 11:29:55 +0000
Received: by mail-pg1-x541.google.com with SMTP id z3so2891446pgp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 04:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Ue5mOOFAvoPLlx+aQdtAXM/fuPAWTez2nWPJo9g796E=;
 b=uicbkotaBDnFydBWVAjlyZRlDEMY5Vg3dmrqWg722894E8DW0iRM+IRPolafC3VzFk
 je/6llph6+Vbou40pDPIwMeYrFg0vFO7mrzlR7J4StXGMeHsZtwVxtOhCYe9He+OTZeW
 CBVwLAfCF7gcdrQ3nhhwGjtTk8sCu5tV71Wh69+jpbF9xTP8HfIDFm/D/PMeVFDw9hMB
 2H4Q1oqFuYGyrxqDsHo/XSily6/cG5WccWNG/eSN6CbIQmp2FJNTy4EXFY/mbX9BPDVs
 Zglb1moJZ66pBukTzDlLuWiY9XEOSn2Tu+UX9ayowtwR9I8zXu7DeSjH9mdtZ0J+CB2T
 LUpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Ue5mOOFAvoPLlx+aQdtAXM/fuPAWTez2nWPJo9g796E=;
 b=YqSDD+WtqCsGNqj2ghtfbKxWCEMvx1h20OD8R1wqTYSVcxO0ZXFvnyqVwPo98IzFkh
 vUD7ZCTV96aapCD33KYUoj+hSBwr9gpBxLQ66rJLTqOa4/Ma2BCK1jpk5HVEoOF330gk
 liTp1ZfaO9SONTUpykNFjsR9rb2e8idK1o2pe9siJJZ6rwX/up/dntKINZUzHte+HctH
 XykcAFd7/t0ZHbGXeKqdKOVmMHbTiFZfcd+3BQTKpZP4Nxvijml4b1F5Ezp+WbY7HSWQ
 fFsjspEZkYk61F8GnfsXNSARWAtlhqbVvUsbEZb4GLq2fauOEa5WuAh840CjUfLDregz
 Z4+A==
X-Gm-Message-State: APjAAAWJoM00J9HNIUrKhhmezvswbXHzcdzYCVWZi3rIvE51CqwzGpf0
 UiW71PkiDKXw1Ffl1EH0ZzIncw==
X-Google-Smtp-Source: APXvYqzWQIWfv6uEkBOl2pEy6GNE/FSH6j6zBJxAG++VxRiPbxcfG1Ywi3f+IncMokmWUUgmQrzorw==
X-Received: by 2002:a63:e956:: with SMTP id q22mr12729606pgj.277.1557487792565; 
 Fri, 10 May 2019 04:29:52 -0700 (PDT)
Received: from localhost ([103.8.150.7])
 by smtp.gmail.com with ESMTPSA id g71sm15166395pgc.41.2019.05.10.04.29.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 May 2019 04:29:51 -0700 (PDT)
From: Amit Kucheria <amit.kucheria@linaro.org>
To: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 bjorn.andersson@linaro.org, andy.gross@linaro.org,
 David Brown <david.brown@linaro.org>, Li Yang <leoyang.li@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCHv1 0/8] qcom: Add cpuidle to some platforms
Date: Fri, 10 May 2019 16:59:38 +0530
Message-Id: <cover.1557486950.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_042954_108918_13F7BB21 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up a few entry-method="psci" issues and then add cpuidle low power
states for msm8996, msm8998, qcs404, sdm845. All these have been tested
to only make sure that the C-states are entered from Linux point-of-view. 

We will continue to add more states and make power measurements to tweak
some of these numbers, but getting these merged will allow other people to
use these platforms to work on cpuidle, eas and related topics.


Amit Kucheria (6):
  arm64: dts: Fix various entry-method properties to reflect
    documentation
  Documentation: arm: Link idle-states binding to code
  arm64: dts: qcom: msm8916: Add entry-method property for the
    idle-states node
  arm64: dts: qcom: msm8916: Use more generic idle state names
  arm64: dts: qcom: msm8996: Add PSCI cpuidle low power states
  arm64: dts: qcom: msm8998: Add PSCI cpuidle low power states

Niklas Cassel (1):
  arm64: dts: qcom: qcs404: Add PSCI cpuidle low power states

Raju P.L.S.S.S.N (1):
  arm64: dts: qcom: sdm845: Add PSCI cpuidle low power states

 .../devicetree/bindings/arm/idle-states.txt   |  7 +++
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi |  2 +-
 arch/arm64/boot/dts/qcom/msm8916.dtsi         | 13 ++--
 arch/arm64/boot/dts/qcom/msm8996.dtsi         | 28 +++++++++
 arch/arm64/boot/dts/qcom/msm8998.dtsi         | 32 ++++++++++
 arch/arm64/boot/dts/qcom/qcs404.dtsi          | 18 ++++++
 arch/arm64/boot/dts/qcom/sdm845.dtsi          | 62 +++++++++++++++++++
 7 files changed, 156 insertions(+), 6 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
