Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A13127C02
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 14:53:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=b3AFbNaTOEKXwpNzX3sAWy05PI7+Ug4PxF4GAcWMq9k=; b=EFW
	O2xse99uSrZ0h9hD+fDk/bFIdJlfNGF/u3aYVNpb+fvnoVEm8nWM7Z6T6kD/qUkFNPrG2otlih9Ys
	PUB7QnaM71GryD37sbpFswM6PoRRFHVlMnUkHcb/+V6mF5AU0kk1JsjI9+793b+ZANTJDa+VkFAqB
	TocR2/7SAPiIK8DYsx76wg0gDkJbBFNGuzjOF15o7E/NnNNpeA1bCVcQ+1eNLfvXn+PTQmTMfZxG+
	/8F+hZRWXgpozo5VtZX5cDeIxjHc0a4NxlJmL1X9XHSbXO7II8bdv8OiQzrpCdCWXgwjkNJZWO0Fg
	JgJcNzItC+S6BkCu6elgk5Wd0y/6JzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiIiM-0004Ka-Tv; Fri, 20 Dec 2019 13:53:10 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiIiE-0004KD-JD
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 13:53:04 +0000
Received: by mail-wm1-x343.google.com with SMTP id u2so9310387wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 05:53:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=5KYMiEA30Ig6hFhpzczklpo9jBsbb52y0neKNwihPMc=;
 b=eQOjGAErlMvMi+RDY5FkIAUNaOn164WRavvFlKShvNDRdC+bKWThpo7VqGeuU+X7Ou
 zb8J+2PAUgy2s/jn3oU16gUzjGWcxNAjb4nITou9BcDCkSBnECAISGfWc+ckgo8nAzqt
 /tMgKTTb7JEVyLH+iV+DF+he5w3Q10z0UPVXjgHmjnht+xa5E32Ass4DQSQlaHn/F3OM
 BvM+RHSPOrZxnS5DYRnukevcEOB2nBMIwvYmWwbFrKL6rZ1hxC5HLSPoj7Z3rPAjcvS3
 8wRDsve5BHBt76e9LA5ze6T0alr8oytj+pNc/pQ+plu+psE2LrFkGUgoUjoLD19i9law
 cCTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5KYMiEA30Ig6hFhpzczklpo9jBsbb52y0neKNwihPMc=;
 b=nKl0ADxWVPllkvk+1ZlY4AVAgOYL5KNNTZ/jEGlo7iRItivKAeTCvYgTOsSEzjM7e+
 FBa2Qk/ozIaA0gHP6ko/tq2F/1qIo0yr5CK+M2VYJHlj2BxLS7gqEMljIJKfxTktV854
 JoAe/ZfZ7kBL2964XPp74KUqCBqr6huZed0h4ZI9FSIHrOoobKlkdljEPHXcRm2pyada
 KMqOYnep8Bow0qZgmnGBLbCc0PnCaGwXrjs2NrQ8KLRqtiy82TYj7OgYBznJ6WCHSZ/r
 d+zn7IbJaj040KKujPK3MSBgjh5Qe5Rw5BUF+24AfystDnH9k0QSajTWHTYsiXy+wgDZ
 lb3w==
X-Gm-Message-State: APjAAAX+fLJXcIAexvh8HrcdbdAcDYZzm1UslwJtWYdXSBniEvZRygvt
 VAns1zg6ygRKBdij+Rc2vqVmiFJeiLY=
X-Google-Smtp-Source: APXvYqx/Ss5KGWuSnu4OK/cZYsF0FM5TkWy6km/YsYMAtdJxRvfwOBGoszAgUR0cBoGCjoc39PNk3w==
X-Received: by 2002:a1c:f009:: with SMTP id a9mr16082437wmb.73.1576849980289; 
 Fri, 20 Dec 2019 05:53:00 -0800 (PST)
Received: from localhost.localdomain
 (amontpellier-657-1-145-216.w83-201.abo.wanadoo.fr. [83.201.136.216])
 by smtp.gmail.com with ESMTPSA id p18sm1892787wmg.4.2019.12.20.05.52.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 20 Dec 2019 05:52:59 -0800 (PST)
From: Loic Poulain <loic.poulain@linaro.org>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH] arm64: Add qcom Kconfig fragment
Date: Fri, 20 Dec 2019 14:56:00 +0100
Message-Id: <1576850160-1564-1-git-send-email-loic.poulain@linaro.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_055302_697846_CD91F081 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: linux-arm-msm@vger.kernel.org, Loic Poulain <loic.poulain@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add qcom Kconfig fragment which enables the appropriate symbols for
support of Qualcomm based boards, like the 'popular' dragonboards.
This permits to fully support the boards upstream without having to
rely on downstream deconfig changes.

This patch has been tested with Dragonboard-410c and Dragonboard-820c.

qcom.config fragment has been generated with ./script/diffconfig

Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
---
 arch/arm64/configs/qcom.config | 57 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 arch/arm64/configs/qcom.config

diff --git a/arch/arm64/configs/qcom.config b/arch/arm64/configs/qcom.config
new file mode 100644
index 0000000..9358df8
--- /dev/null
+++ b/arch/arm64/configs/qcom.config
@@ -0,0 +1,57 @@
+CONFIG_ARM_QCOM_CPUFREQ_HW=y
+CONFIG_BT_HCIUART_3WIRE=y
+CONFIG_BT_HCIUART_QCA=y
+CONFIG_BT_HCIUART_RTL=y
+CONFIG_CRYPTO_DEV_QCOM_RNG=y
+CONFIG_EXTCON_QCOM_SPMI_MISC=y
+CONFIG_INTERCONNECT=y
+CONFIG_MFD_QCOM_RPM=y
+CONFIG_PHY_QCOM_PCIE2=y
+CONFIG_PHY_QCOM_QMP=y
+CONFIG_PHY_QCOM_QUSB2=y
+CONFIG_PHY_QCOM_UFS=y
+CONFIG_PM8916_WATCHDOG=y
+CONFIG_POWER_RESET_QCOM_PON=y
+CONFIG_QCOM_APR=m
+CONFIG_QCOM_FASTRPC=y
+CONFIG_QCOM_RMTFS_MEM=m
+CONFIG_QCOM_RPMHPD=y
+CONFIG_QCOM_RPMPD=y
+CONFIG_QCOM_SOCINFO=m
+CONFIG_QCOM_WCNSS_CTRL=m
+CONFIG_QCOM_WCNSS_PIL=m
+CONFIG_SCSI_UFS_QCOM=y
+CONFIG_SND_SOC_CROS_EC_CODEC=m
+CONFIG_SND_SOC_MAX98927=m
+CONFIG_SND_SOC_MSM8916_WCD_ANALOG=m
+CONFIG_SND_SOC_MSM8916_WCD_DIGITAL=m
+CONFIG_VIDEO_QCOM_CAMSS=m
+CONFIG_VIDEO_QCOM_VENUS=m
+CONFIG_WCN36XX=m
+CONFIG_BT_QCA=m
+CONFIG_BT_QCOMSMD=m
+CONFIG_INTERCONNECT_QCOM=y
+CONFIG_INTERCONNECT_QCOM_MSM8974=y
+CONFIG_INTERCONNECT_QCOM_QCS404=y
+CONFIG_INTERCONNECT_QCOM_SDM845=y
+CONFIG_INTERCONNECT_QCOM_SMD_RPM=y
+CONFIG_PHY_QCOM_UFS_14NM=y
+CONFIG_QCOM_CLK_RPM=y
+CONFIG_REGULATOR_QCOM_RPM=y
+CONFIG_SND_COMPRESS_OFFLOAD=y
+CONFIG_SND_SOC_COMPRESS=y
+CONFIG_SND_SOC_MSM8996=m
+CONFIG_SND_SOC_QCOM_COMMON=m
+CONFIG_SND_SOC_QDSP6=m
+CONFIG_SND_SOC_QDSP6_ADM=m
+CONFIG_SND_SOC_QDSP6_AFE=m
+CONFIG_SND_SOC_QDSP6_AFE_DAI=m
+CONFIG_SND_SOC_QDSP6_ASM=m
+CONFIG_SND_SOC_QDSP6_ASM_DAI=m
+CONFIG_SND_SOC_QDSP6_COMMON=m
+CONFIG_SND_SOC_QDSP6_CORE=m
+CONFIG_SND_SOC_QDSP6_ROUTING=m
+CONFIG_SND_SOC_RT5663=m
+CONFIG_SND_SOC_SDM845=m
+CONFIG_VIDEOBUF2_DMA_SG=m
+CONFIG_WCN36XX_DEBUGFS=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
