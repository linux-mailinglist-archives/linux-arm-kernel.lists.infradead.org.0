Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBAD1FABD0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 11:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ArK8mOBCbXSo4rBDh3Qfnv5FJWcdiWfXWyrdcYtuTVQ=; b=sw8kw/Nu33Virc
	yt8IC7C/i6Dv4pwmBlH9+LjVe/eLl0i7soYz2i1JxjOeqeg1yCcgDfTCWB/zWCQY39+NY3VFrLWvX
	StbHOipgLQTXTIgiv2wEy0p5rp2oUTAuI9XTg2ift7G0A7ZWGKYNoSqMzfVVv3d2+KAf83HB0cycH
	GSByxKH439LRWpOu3nQtKq8haW6uYNE2UtSCHLC1aCQPDZ/V8Xx+HQyI4N070a5CGw4Apa/CfBuqL
	KmY6Ve8I5yr/cKWUUck5wLGkk1Y7fe+dR3zKrmKXDZ7N2TmAxzPJ3L6XL9NsEq5kOPFDjqXc1dr6Y
	JKanahRzFrPKGBdzhTQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl7VI-0003tv-EB; Tue, 16 Jun 2020 09:03:36 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl7V9-0003t6-KR
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 09:03:28 +0000
Received: by mail-wr1-x444.google.com with SMTP id t18so19914939wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 02:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lDNCxnb1DYpdrlf35UqFFy3yTai7H7N9sG+v5i2Zww4=;
 b=lvgHYSHqKLTgxAzGT3gCKD6NOFxMOgIo+PIl/yDI6gMclwq4OQV1ovp19Kor1PUUrI
 tKySpt/PQ5tTwntS6GZzuU8k5yeWtrUw1ZKnSWx1pNO2a6ZcRBLLJmB4asgr9qGADtil
 bSCXvzeeCed3I8OacKe36YhQhSpp4PBme2AkyXxWR8O/kHiRmHkcEe+KPbnI/ZaG2yYU
 JlpKI+gZLSdFs7OVHGDbm0nG3bX5V4V9zHzFLvfqk//ZXDuz4xT2vcY0TAh482ZBxmIr
 Sk1KZdP2tlOLbzlPkcJXF7BwFbmRVkut+KsI/qUiyKEaYNNjJ99G8nsmKMqftCOR0ia6
 2+PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lDNCxnb1DYpdrlf35UqFFy3yTai7H7N9sG+v5i2Zww4=;
 b=Ns3MHp8arnYY7rOXB+4KBD4709rygCcrs9HIcOpkBUpVQ3d1crFPCVMlUH10KAgEVk
 Uf5xoIMEN7qi8Y6Tx1hFxRQpvTnYK8ep40PgncbXdO2+uRjsSduiJ61JkpdCKuZa+dln
 LjnMvShrYXqPn7ZwohJiKYXQfNs1pFT8ix7pTiE6wz+oOoyYoJAMLvmX7BcMV03BWRRg
 Rsddzb0+VU9/YeoNPNhFlKDRQqM/vButqMv6TILYQ+/nJSM+8Km7lVVLR2StYwpqUyup
 w92IHPtXOWZp124gEXZbp9gcU59TyH3D1CQaxjpSKMW+/yxr3QnvyqIxCNdui4C94zJb
 /h7g==
X-Gm-Message-State: AOAM5326JZ42SKeVAzt5+B7c3qIdy55vqxDLbmfla8wslApIFqE+MPfS
 tWukFm4blBmw4vM3u3FmsHvKAw==
X-Google-Smtp-Source: ABdhPJzMuAADdmSq767ybrYcZCnAWj09SBWZxI0QASOBJ9pzkRuk1jisXG0pfU51rUiGLS95P85bhQ==
X-Received: by 2002:a5d:42cd:: with SMTP id t13mr1874691wrr.355.1592298205550; 
 Tue, 16 Jun 2020 02:03:25 -0700 (PDT)
Received: from localhost.localdomain ([87.120.218.65])
 by smtp.googlemail.com with ESMTPSA id c66sm3148331wma.20.2020.06.16.02.03.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jun 2020 02:03:24 -0700 (PDT)
From: Georgi Djakov <georgi.djakov@linaro.org>
To: bjorn.andersson@linaro.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH] arm64: defconfig: Enable the PM8xxx RTC driver
Date: Tue, 16 Jun 2020 12:03:24 +0300
Message-Id: <20200616090324.6976-1-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_020327_705289_404A7107 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: geert+renesas@glider.be, Anson.Huang@nxp.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 marcin.juszkiewicz@linaro.org, olof@lixom.net, shawnguo@kernel.org,
 will@kernel.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable the driver for the real time clock found in the PMICs on various
Qualcomm platforms.

Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 883e8bace3ed..387807e40010 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -760,6 +760,7 @@ CONFIG_RTC_DRV_S3C=y
 CONFIG_RTC_DRV_PL031=y
 CONFIG_RTC_DRV_SUN6I=y
 CONFIG_RTC_DRV_ARMADA38X=y
+CONFIG_RTC_DRV_PM8XXX=m
 CONFIG_RTC_DRV_TEGRA=y
 CONFIG_RTC_DRV_SNVS=m
 CONFIG_RTC_DRV_IMX_SC=m

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
