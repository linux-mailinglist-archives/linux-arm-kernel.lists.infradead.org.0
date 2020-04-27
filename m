Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FA01BA506
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:41:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIZuRxlutBa2n8hVQSD9RoxzoTelWtdyDEdYPjpWbZE=; b=dyvKs+e8FO1KZU
	hNJF+yl+8U77LKl2g+pBEaadUi3OFUwtPZUIadswxGrQqvo0hdquIh+bGvl/HVbhi5FWGIkxWOEIr
	oyrHkFmeliEi2TKBpUZI+IqCO3jaChdoB2ICe7fM85p2jyyvrG8yP2qOx2AFlqgpONropTcnXfLEd
	B4ijdiZyVx8kKogaAK9v95fxlLO96V7lyJQgzP14Fzz/8nGsC9diAjDCNaR3pNgB7UR7UiHX59h7b
	GXW9T+c7oRf5GF4r8Zp9rRx8IzR5qVBEBB+Q/8jswy+sbR4b6YuH8i24DDtjOd6M4GtL8iQWaR3LK
	UcMV3DM1fOYrpvC3H/JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT414-0004eZ-Tj; Mon, 27 Apr 2020 13:41:46 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT409-0003wS-FT
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:40:50 +0000
Received: by mail-wr1-x444.google.com with SMTP id k1so20636684wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 06:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dbz02nTisvSMaCayZqy6zWjnsQ/x3RdNInN9mouDTIA=;
 b=YY1jmVDbUfGdSLdgSDdaKPBm2PF2JHjNumWTt1P1fphtHbOBXVXrXmgkZRwKvFFWuy
 iPNtnd4W98w9keMNLqki98aRtpIor43i8tQS4fA6gaBfqTC4p3RKL0PYNAnKtVWTexc0
 QPR2LSluUz8r+O4G0J4uF2+kDNX16Ys1vzdO9nDadgJr0X6A06TrI2jqOo+5wT2Oe3T3
 b4zUF+gdcXcl4IdHGNZXawehv5l0wahrHjg/HCKFtyRk+hrxx08BOgLXmeSTrx3/jIHN
 4ereEY9dqG04kMSsPza4yLlTPZcq+DYbR9CaAZg03+z3fQjRksMeO1WaEnN1MkfqQ9ZR
 uBFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dbz02nTisvSMaCayZqy6zWjnsQ/x3RdNInN9mouDTIA=;
 b=lIy7ZgdD0kwKR0mjI3ut9i0JR7kQiwHDEFVmxCS+XL/F2S08Jhqev+MPNgwSghIvzL
 IPdSkfpBko0s1waZoO8UG3D34SEVRK1PAtZeqjFBlQSFopUkleeS89y6WNlWaPWriBL8
 xF0YQZ78bSslWFqz2bqin8gHUUBo6ViP+zJTWn2VRE23ZIv1/u1KHtx1v2CzcurNl3gQ
 VG8OKGYYU4DpwsXxxg6f2gTzg6Phxb5YLWn0ze0QTdloXh8Rt62gkg/aYMf6ah2z37us
 RehvtDsSnRIsA2fY9iU97NDPEPVQ5nn4cYnHA0b9fY6fb2pjyY04kd7kJM0fvIAGlGNE
 d4Fg==
X-Gm-Message-State: AGi0PuYCqYEJz0mW7OGKrI/zgSU1z2eR0Abftu2UZRRjDRuYdCQ1ilby
 Ri48kpj29xTSBygT0YeDQKI=
X-Google-Smtp-Source: APiQypIxshtgimAmWOuZWe0EuOq8ivAkmULsqGc6bzgsHFELdT4aMXsRp+/Q87EoLqOYY0pUnKLmBA==
X-Received: by 2002:adf:9d8d:: with SMTP id p13mr26794247wre.17.1587994848390; 
 Mon, 27 Apr 2020 06:40:48 -0700 (PDT)
Received: from linuxdev2.toradex.int (31-10-206-124.static.upc.ch.
 [31.10.206.124])
 by smtp.gmail.com with ESMTPSA id g186sm16290640wme.7.2020.04.27.06.40.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 06:40:47 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>,
	soc@kernel.org
Subject: [PATCH v3 3/5] arm64: defconfig: ARCH_R8A7795: follow changed config
 symbol name
Date: Mon, 27 Apr 2020 15:40:01 +0200
Message-Id: <20200427134003.45188-4-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200427134003.45188-1-max.krummenacher@toradex.com>
References: <20200427134003.45188-1-max.krummenacher@toradex.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_064049_513432_7B9BFC8C 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [max.oss.09[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [max.oss.09[at]gmail.com]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Anson Huang <Anson.Huang@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Completes commit b925adfceb52 ("soc: renesas: Add ARCH_R8A7795[01] for
existing R-Car H3") and commit 361c5dbb446e ("arm64: dts: renesas:
Remove use of ARCH_R8A7795").

CONFIG_ARCH_R8A7795 was split in CONFIG_ARCH_R8A77950 and
CONFIG_ARCH_R8A77951.

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

---

Changes in v3: None
Changes in v2: None

 arch/arm64/configs/defconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 218aa4fa74734..b8259814065dc 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -853,7 +853,8 @@ CONFIG_QCOM_APR=m
 CONFIG_ARCH_R8A774A1=y
 CONFIG_ARCH_R8A774B1=y
 CONFIG_ARCH_R8A774C0=y
-CONFIG_ARCH_R8A7795=y
+CONFIG_ARCH_R8A77950=y
+CONFIG_ARCH_R8A77951=y
 CONFIG_ARCH_R8A77960=y
 CONFIG_ARCH_R8A77961=y
 CONFIG_ARCH_R8A77965=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
