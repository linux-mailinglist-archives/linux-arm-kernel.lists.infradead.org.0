Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA38813D34F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 05:56:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sne6vLOScT5x6RhMvWximJeN5kaCdXPvPRyK2lsGbO8=; b=BR2GWPDAu89efZ
	cXUngQBmVQN9UwvoPDbMtIGoVh3O9ouz7jewyTgDYXQjieUYF4TEAv7FdcnzftMZwKQtr6eCJkhxt
	ELkczB2MH6OauLTfQEFSMg3ZusDCdXv5i77N9Dh7gevEaFVjcAsd1u0Gs+jQyRxLA1Ick+Pghq7U8
	ui79L0FjF2rQGimxl+yE2SQby0Na1fBwIusqMF0LJWAB6wPpmgA2TfS5chJX2U1IxP2bwFZm2R9a6
	Z1QEgveXY6+edfMPo+tJI3RQDVM1xslvI1zk5xUFfxG30pAKnwhNBzmAT+oBsMEo5+zFRXCy2qOtd
	RNADm+MpV90MH9wCcIpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irxCJ-0007ix-Rk; Thu, 16 Jan 2020 04:55:59 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irxC8-0007iE-61
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 04:55:51 +0000
Received: by mail-pg1-x541.google.com with SMTP id x7so9255941pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 20:55:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t8v+4DgG5fbcG655PWQyALbezwDT0tnYhquzZ6Aq2MQ=;
 b=eFA6wLdiEyl3ZoRG7Sqd18ajRt2HOl+aeMKbdK4pAQPh+xanYAztfw5U5LK0gzJC6U
 4Ko/MudJrnmRZIdvZ7rUiUhrXfklOq+riOxXv5OrM+XaQFdaRaEZkL73OMTYNGhtf+A0
 SSromzDHLBBuOP9xfqmg5KDVMnedlxikPtVONL9AM+5q1DeKkeAiuagJATY3XGidmeOp
 uy6GUdr3rDdNyAABTH2PnWA1WwJiv9qUvpvugtoYYEWFg6WmpidBQgc9OMOLnsXXkgyr
 O/0Q6KUrD+sOq3mYUobqdruGJEHQbuMY1Y98g0Iy+5/P33+4XoP9csFE6nS8ytsV9BWO
 qRMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t8v+4DgG5fbcG655PWQyALbezwDT0tnYhquzZ6Aq2MQ=;
 b=gwNJMitvHmwv5MEBiURS5BC7riknbppykiZW4I4JqZSPBlEdWm5Ua3ywvR5X2V0RuC
 69VLGTn+lJPeCqi7xf0q6Nl6u7lZdRqeSvG0mKhPYtGrMX+2fLIQC+KJq3ZNwAIMELEk
 ZWm8S39bLmJRuScpTjIjaGYODOSJnbeb7PfArYgUhcDYCR8fvwcwahbZKugPlNge5jSK
 r8G1h9sGT/ogGdQ8VP7OaXQdfrMhu9FmIr/QPjgMmmI3PSblGEf1E2630BBqOdjxMEsI
 X2XBg1FkDCff2/4GDTlIhjaXI3ovRdbuLQudhibbGbgnZ8hDKKefWFePPllD5gZMDq5n
 Mi7g==
X-Gm-Message-State: APjAAAVAHLLd3N1qQKhND7qFENif8im6Yt9pRjXImryb0WqZS+Tl+5Cq
 M1U0RejP4BUrgV/LJNaO+7o4WA==
X-Google-Smtp-Source: APXvYqxnV6r1cSp8obgrdpEsHKaYRE3hpOyfzEi1lowGIpNqD6SK+1CizrnQ2nn9d21ZheCDgnO6MQ==
X-Received: by 2002:a63:4d5e:: with SMTP id n30mr37091031pgl.275.1579150546866; 
 Wed, 15 Jan 2020 20:55:46 -0800 (PST)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id c1sm24140468pfa.51.2020.01.15.20.55.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 20:55:46 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH] arm64: defconfig: Enable Qualcomm SC7180 pinctrl and gcc
Date: Wed, 15 Jan 2020 20:54:57 -0800
Message-Id: <20200116045457.2489704-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_205549_671892_397D6D8A 
X-CRM114-Status: UNSURE (   9.92  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anson Huang <Anson.Huang@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-arm-msm@vger.kernel.org, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the Qualcomm SC7180 pinctrl and gcc driver, in order to allow the
kernel to boot to console.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8409aa80e30a..a1766c05cfe4 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -412,6 +412,7 @@ CONFIG_PINCTRL_MSM8998=y
 CONFIG_PINCTRL_QCS404=y
 CONFIG_PINCTRL_QDF2XXX=y
 CONFIG_PINCTRL_QCOM_SPMI_PMIC=y
+CONFIG_PINCTRL_SC7180=y
 CONFIG_PINCTRL_SDM845=y
 CONFIG_PINCTRL_SM8150=y
 CONFIG_GPIO_ALTERA=m
@@ -722,6 +723,7 @@ CONFIG_MSM_GCC_8994=y
 CONFIG_MSM_MMCC_8996=y
 CONFIG_MSM_GCC_8998=y
 CONFIG_QCS_GCC_404=y
+CONFIG_SC_GCC_7180=y
 CONFIG_SDM_GCC_845=y
 CONFIG_SM_GCC_8150=y
 CONFIG_QCOM_HFPLL=y
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
