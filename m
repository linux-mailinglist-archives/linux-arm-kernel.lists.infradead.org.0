Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4824C11D3C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 18:26:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZttFqhbNdlW6EWVRkR3Fq7l4Vb9TYaZSm9t6gz/ORGw=; b=BrrZUFZfLiIBI9
	n/Lq6LVH0cmdAOZfyVq25X0RMkcaLh6h4bzCRvAUdCg55GWqZONylASw4eggOZACaNXUA+XG5V2NW
	Px6IkLV+1mvhCsi+BzBuo26paGNa2CSiGfpuGVoTuvxuv37UhlHnTA5OPTpXhK7uvrQo3iPupL9oL
	AGwWaxnMnknx5uyO4cQYD9xe1pIdYmu+omjAbqX/gPcEV8y9RmJ+md9lmAxLjg8VqRxfDe6O+7Ikc
	bGYfrmnDYWJMBsQJTYqARP4lXzmdqxPB4g9//Baeu9iIOFUw+xk7sLr5K2LtE2phyFAhn623t6/VL
	mxpb6neRCqQT86ECxa7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifSEK-0003t9-HD; Thu, 12 Dec 2019 17:26:24 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifSEC-0003sa-Al
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 17:26:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576171571;
 s=strato-dkim-0002; d=gerhold.net;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=BlCiMYhbq8IkQLA4/tbBRj9bcNcO7BYIvAcuw+Qgxq8=;
 b=AYrTQtvNSsKV4Xdd0EgCaVWoJ6PWDG6xCwJwzcZbDTTqd9JLdFUZ3+iaSX+6PcRvXu
 wCVjVQcOXIJ7xiliPPnOMH+bvLw7B4dTLrmHRmsxgCtof8aOzkh1x/fGbCkYDqNy+Kqc
 VeC196i6eRj0aQb50VWQWcDgNbaMLT/cKpezATzsJ6wjQRVNVVLHt2zyQDxKS4neeDpY
 v5zb4Mx3PQ+QYtvyGDztDKGqLYSleUvhzAUyxtJxVAVb7XatBAFvvry/X0h0QHYlWh76
 FtQKi+nC+Cte4E7bQJ1hMEqrawK4yRq2FEt10gkbkzOTNZJlhJ8TN1plDAygm7zF8OQH
 CGnQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXsMvxqxtZHg=="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 46.0.7 SBL|AUTH)
 with ESMTPSA id N0b206vBCHQ63lw
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Thu, 12 Dec 2019 18:26:06 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH] arm64: defconfig: Enable Qualcomm PM8XXX vibrator support
Date: Thu, 12 Dec 2019 18:25:13 +0100
Message-Id: <20191212172513.13200-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_092616_961208_33C7B5EE 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:10 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-msm@vger.kernel.org, Will Deacon <will@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pm8xxx-vibrator driver controls the vibrator motor driver
available in the Qualcomm PM8916 PMIC.
Build the driver as module so it can be loaded when necessary.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 2646fc76b8db..26ee460bb00a 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -316,6 +316,7 @@ CONFIG_INPUT_TOUCHSCREEN=y
 CONFIG_TOUCHSCREEN_ATMEL_MXT=m
 CONFIG_INPUT_MISC=y
 CONFIG_INPUT_PM8941_PWRKEY=y
+CONFIG_INPUT_PM8XXX_VIBRATOR=m
 CONFIG_INPUT_HISI_POWERKEY=y
 # CONFIG_SERIO_SERPORT is not set
 CONFIG_SERIO_AMBAKMI=y
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
