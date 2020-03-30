Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A9B19870A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 00:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KbA3GJySbRIvYeYOKlf07H/enCs6xpk4oOGD6Uk2UA=; b=iQSS1WD/RiyEDL
	CaRIfIIq9gi96H1coya3f8g7/PyZIUVIuZwy3/FKxM9CUDAGHLAnCKoz9KvynhvtAdb347f0oTHwP
	HtkoSoxcXzRMbz6GPFrgZoYSaXIcuWQzSCW29yPB93d890oJJKp7UnSfhGVpCjAR2BDmjLafxTHWl
	u87LyglMWf4GS79p00eJKK9ghzA/8ISoMRglUYwfKoQnQSHF7qiM8NEvhESAR+7sIjlhuMM1eXW1G
	RJzhTQw+tycNIpkyAkuK4UfWwzFw4EZWj1/vdc/yX05bfoDxkeXoOZuWQvuEjUHa9nvpSGLLRjsF9
	2PREBbn1Nx82pQjgvnVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ2ch-0001SO-43; Mon, 30 Mar 2020 22:11:11 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ2cV-0001Rp-FL
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 22:11:01 +0000
Received: by mail-pl1-x643.google.com with SMTP id a23so7317059plm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 15:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OUGH6boV97QY3HPRNrCFz2qqIfy/MTKq/GJOXJzP+wg=;
 b=MQVSNn2B3F3HsK9ir4fS2ndd9PcObJReFqU2iu8kOgjtsyNLT82Qh4PZ6+Ja+j1o/g
 CLWS+vO5Vm29wR/P+4euN23K32dR3Mw1J/oWBOXuaADswvearulbVUSrv1l9nfP4ubic
 Q5Xb2IbiDvftfxjFmes7agaI80lcocbh6OK8Tr542ZZ2Oj0xtyXp2nZkVtF3qOldfwaR
 GZrXB9NwQ0gbVRceWn32m85JeffhCfu4/UDGBgz6QQRNwY3MpRuaRCQz709U7lLwXStn
 tAtifNytyx+jL6AHs+86VRzaiblHu8aIrhN2i0VEI79XdejDPDbqRTHbtiQ5jjk/qHhR
 mlsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OUGH6boV97QY3HPRNrCFz2qqIfy/MTKq/GJOXJzP+wg=;
 b=O/YmhVMITdbzX+cmnUTKmhwwqzBwy47+5XV63O7ntzPVWPqN51LPPSw0FZAzV1CnJy
 JY5BUzUPBIBxANux/bGZfY6+hBGy/+P6EkmKuItgE5LMpOxRKPQW9Yx2B43GxfBPw+W8
 9zq4ohvObMISws+4d11mmauxMHPUN6YWocXFLy25TpoEWpEDdsnVFV54WxNnR41R5Kj5
 FY+SoquKNZ/9zSdrFNNcZbmtx1aMhRdQ/ioeVKPFaLDnV6BnGaNLvZSg5M36eO/0okB1
 7Shoydzc41qO0rqkcyofqkS8x4uGcAIQKaoaO7mYyqqIc6nu7K5NswlJqocvGfgr8Yqa
 kPaQ==
X-Gm-Message-State: AGi0PuZ+5ul5uSAVNSqeArLWrmLJvHQZ09gjtWsBoi632N5pU4THjs1o
 WM56PWe6BsZ2cOU/wPDQj2aEnPPk24o=
X-Google-Smtp-Source: APiQypKhqTu8qeFVMWXm7jXDzhpHz3/DkGaphHnvsFkrjRrbxpQPVyvnJLqt2kjIU1+rUuz/dxjILg==
X-Received: by 2002:a17:902:9682:: with SMTP id
 n2mr1154759plp.44.1585606258179; 
 Mon, 30 Mar 2020 15:10:58 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a24sm10958283pfl.115.2020.03.30.15.10.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 15:10:57 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: soc@kernel.org
Subject: [PATCH] ARM: qcom: Add support for IPQ40xx
Date: Mon, 30 Mar 2020 15:10:54 -0700
Message-Id: <20200330221054.76441-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <CAK8P3a1_eyVSTgKDk+qph6CCKswWFWhPfX=yi3=jAeUf4uWC6w@mail.gmail.com>
References: 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_151059_678874_56BFF490 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Luka Perkov <luka.perkov@sartura.hr>, arnd@arndb.de,
 Christian Lamparter <chunkeey@gmail.com>, linux-arm-msm@vger.kernel.org,
 linux@armlinux.org.uk, agross@kernel.org, John Crispin <john@phrozen.org>,
 Robert Marko <robert.marko@sartura.hr>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christian Lamparter <chunkeey@gmail.com>

Add support for the Qualcomm IPQ40xx SoC in Kconfig.
Also add its appropriate textofs.

Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
Signed-off-by: John Crispin <john@phrozen.org>
Tested-by: Robert Marko <robert.marko@sartura.hr>
Cc: Luka Perkov <luka.perkov@sartura.hr>
Link: https://lore.kernel.org/r/20200106135715.1159420-1-robert.marko@sartura.hr
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

soc, please pick this up for 5.7, per the replied to mail.

 arch/arm/Makefile          | 1 +
 arch/arm/mach-qcom/Kconfig | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index db857d07114f..3db642722af0 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -152,6 +152,7 @@ textofs-$(CONFIG_PM_H1940)      := 0x00108000
 ifeq ($(CONFIG_ARCH_SA1100),y)
 textofs-$(CONFIG_SA1111) := 0x00208000
 endif
+textofs-$(CONFIG_ARCH_IPQ40XX) := 0x00208000
 textofs-$(CONFIG_ARCH_MSM8X60) := 0x00208000
 textofs-$(CONFIG_ARCH_MSM8960) := 0x00208000
 textofs-$(CONFIG_ARCH_MESON) := 0x00208000
diff --git a/arch/arm/mach-qcom/Kconfig b/arch/arm/mach-qcom/Kconfig
index ecbf3c4eb878..1772eccb5caf 100644
--- a/arch/arm/mach-qcom/Kconfig
+++ b/arch/arm/mach-qcom/Kconfig
@@ -12,6 +12,11 @@ menuconfig ARCH_QCOM
 
 if ARCH_QCOM
 
+config ARCH_IPQ40XX
+	bool "Enable support for IPQ40XX"
+	select CLKSRC_QCOM
+	select HAVE_ARM_ARCH_TIMER
+
 config ARCH_MSM8X60
 	bool "Enable support for MSM8X60"
 	select CLKSRC_QCOM
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
