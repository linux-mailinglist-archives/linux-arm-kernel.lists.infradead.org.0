Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 649671825E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 00:32:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a0T0lBWkwdpEF7lF5+EzwKWholgztNh+OXtP/MF0mU0=; b=r/Hlqeak67wCmm
	lwiTbQx6IWrguP68XubQgatPjPYUurUhNzThHvcylSwBxGsBuiVmMkD151cBPqszoAbzDgAMvhr3L
	dgmBkir2RNJQmeYN5bEDbeDBbw3n0Yeirq9vj21fpzRKVkb3GoPm1TkKhhq7ByeIWN85eyLSCUPZ/
	fgYHhOWi3ZfJrqMQhFZoXziLJBr19uihSzLYrtCPJ0QjxbYFresYdXaGwissJVtYaPBOYw3lj5uxc
	/FhB0AHF02UqS3iGBuSevvg+QL2p60ZeL1Gpbf6OTQzWMuXoW++44ydH34OPEHAfSJbeR/UnqXRcE
	H+1GTrU42DP8aXwFk5TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCApo-0004oq-Cz; Wed, 11 Mar 2020 23:32:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCAph-0004oQ-IU
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 23:32:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id p14so2236991pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 16:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZAFxnU3NgpJMRLveB1Jihkaz6R/8FOdMPSF2gijKBWE=;
 b=RQnJ/B/XeSshmnos7GbXMEoonGg2/3cDqgKr1Pp8lC9PlWN7SkhRbcX7KTF7i3dkkZ
 ZnNwYPwTVpxTdi1m9i21YZACZzEdehahf5C8jse8o0DAIa0WHeJ2Cuodt8MExVHa7XC5
 hvOPCnF7rT6SrSdz29jq4rBXUyc8wLhQTEYfIFfJq6cwKWIHEofYDSv5Tpcjc5f3oK5C
 6koZQsAjIwMgnVps0Q6exeHjuc1D/DRvax8MqIe8Ll47uX3X1C/GHUPd/BlhDE6eLSlm
 pNQ3D3PmRgVmJ01pXu8eWHSgXt4CLXsqRlUefG6iN7PZ/Erk/VlsSVC35pJxlmpY1Wyt
 lwfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZAFxnU3NgpJMRLveB1Jihkaz6R/8FOdMPSF2gijKBWE=;
 b=EZIFsDuz/47Te9dQLnQb/125xDzuMsN3v+/4XKdiow4/PH3LuLgLPcCHfg/bYH6WzT
 d36fXUS2T+sbIzPaPMvWrFxuWgGbR3nHb00YlHZ1Uk7jKh01G/kyxgqK/T1iyMPDlbOf
 FsQuiO79CJyhZI6PFY/AVY94xcZdAKqwtf19cYDU4GmzEu9o7WmLj+iXO9Afp12ERzWZ
 vY8B+CWj6OXc2hsRAgrvxnbEArI3HB5BJe5pTzV+KFAWrA6/+xYKM5vriakcmGMsDjAc
 wFZk2HyxlqltTkeMKxiW/dl4Q1ZR7Tx9WxpiTWCILqB0tKWuX0ECVqKoOwLbv9AjeJOQ
 zfTQ==
X-Gm-Message-State: ANhLgQ2OQnERCGIkBa8cIxm0iBliI36VTbqTJdcVuBSNPzJNI0aha0bs
 qVhnXZQz8F4+cvdauTvWHNfOMg==
X-Google-Smtp-Source: ADFU+vssJZbi4+8lRsENa/Dx4wELabrI5tBFSOR/chzDO+9tWUirfJxgeaXL9W7NYjIV1v7Tyvfs1Q==
X-Received: by 2002:a63:441e:: with SMTP id r30mr4888212pga.51.1583969532339; 
 Wed, 11 Mar 2020 16:32:12 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id d77sm40505835pfd.109.2020.03.11.16.32.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 16:32:11 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: defconfig: Enable Truly NT35597 WQXGA panel
Date: Wed, 11 Mar 2020 16:30:39 -0700
Message-Id: <20200311233039.928605-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_163213_737598_B0CB1EC7 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Anson Huang <Anson.Huang@nxp.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 Olof Johansson <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Truly NT35597 WQXGA panel is found on the Qualcomm SDM845 MTP,
enable the driver for it.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e8be14b93b40..07b57510394b 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -573,6 +573,7 @@ CONFIG_DRM_TEGRA=m
 CONFIG_DRM_PANEL_LVDS=m
 CONFIG_DRM_PANEL_SIMPLE=m
 CONFIG_DRM_DUMB_VGA_DAC=m
+CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
 CONFIG_DRM_SII902X=m
 CONFIG_DRM_THINE_THC63LVD1024=m
 CONFIG_DRM_TI_SN65DSI86=m
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
