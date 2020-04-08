Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 735931A2412
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 16:31:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+pdjKwNHTN7tk4kNWuNF7L9L7hmQzc2d8SERRLwXgyU=; b=cIqjpb2wvsll7y
	cw4zgKYsVTJ/b/4XrY43i7O/QSqbSgvja10uUaUED93waMNrJdsEWtKIHBi65PYyzJIA5jzNuOxUT
	S56exA6X8z4eOF6RGh1bUQXS0Vrc8SMTOAMMw/MqjhDBtAs8tY5p8utb9b23PFKK1UI19UVnkYjrP
	u7Dm75C20jlBEJ7QeByBmW9W7KPbBfaW6h/giMw3uF8YWpbbgbrU6wOueydw8RXo3jvX4iFX5AR7s
	jAkrg4Az73Nk52qMj2wcUUeW89lyn/FEce1oDfrxqNcJdFPOPBZXHLaY6kR3QsdtUjAFd2ZzdI3cz
	JnPkEl8AN/yxiBlWl3VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMBjQ-0001ve-HK; Wed, 08 Apr 2020 14:31:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMBjG-0001rU-UQ
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 14:31:00 +0000
Received: by mail-wm1-x342.google.com with SMTP id z6so127295wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 07:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gLLY+/8fyb+tDQXWdYgnIl/tWBr/7d984i2uDCH3Huw=;
 b=k6kM14Ab5Rm+t+feaQvmbnYXUFlxQOitXL475ByXwqgRGUMkPtGvGLjs9Nv9A0r0f5
 PArwglkr4ojfMmXBP/rOctRuy4QJHg5as8l/G4xVe9xlcboVVmsBdVor67Zv/cjXAFkQ
 EbzZm2fQz6FY7i5E+gZatvrOqij9ncMEatRvvS+/uvjTlLNNx24HDVPVriHoYE6Ev/8N
 Ct8Ao184t54E3vxDrLbRzZFEK/z3piqU06db/kq95ravFFOZ97J8HQF5pLmv7CR/ut85
 1lHIYp0JXkg9bq8fD75923g/fJxAqmpWnC5vk7DRMIVGNpPQ8dIKCTX472pqSeoPbF5T
 Sbeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gLLY+/8fyb+tDQXWdYgnIl/tWBr/7d984i2uDCH3Huw=;
 b=CRSaboHCGptBa6zK2DPFZmTtIw1bxPQz3qPQUiE2AXmzsi1o6dn5hxRYYrjcaQOEFu
 2UqEhiV0uy2Nftg1+g4BfyIFl0g4mgk2E0xK9wQNBe5Q/8w6ET2YX+5u1l+KnbEa/O3a
 SJmEUnoJboY6rScs4bN2Y4bBibvnQPi+L8WW00jv4jDv+ZjWzNV6X4C7MTuCyIxjoDch
 kL0HfZMfZOL42eHgNnIrsY3eWWunSkaryGpoT9TKM01vrZEgvMT/wV2dcjWiWO7UaqV7
 dr7nLRTBiDsnNsJodVF9J4EJBO3Y84derCoPZpl9SANIbkhXtps/nAtMyIgV8FKrckuJ
 85+Q==
X-Gm-Message-State: AGi0PuaaQGl5EF6k8ud9Z2NR78fc6/UeTxwyVwIoBvWSK0tkHpu4uccU
 /LthdpDHO/6eEihAyU4IHkH09I1tOL8=
X-Google-Smtp-Source: APiQypJh22VLyz5dqbb74SwPacdHhPu3FLYn+W8SmOsQPCZbfBy9giMe9q1XUUf00SUwrWhDS/d9Sw==
X-Received: by 2002:a1c:7905:: with SMTP id l5mr5235802wme.5.1586356257471;
 Wed, 08 Apr 2020 07:30:57 -0700 (PDT)
Received: from linuxdev2.toradex.int (31-10-206-124.static.upc.ch.
 [31.10.206.124])
 by smtp.gmail.com with ESMTPSA id a10sm36268828wrm.87.2020.04.08.07.30.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 07:30:57 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>
Subject: [PATCH v2 2/5] arm64: defconfig: add DRM_DISPLAY_CONNECTOR
Date: Wed,  8 Apr 2020 16:30:37 +0200
Message-Id: <20200408143040.57458-3-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200408143040.57458-1-max.krummenacher@toradex.com>
References: <20200408143040.57458-1-max.krummenacher@toradex.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_073058_977830_60896F0E 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [max.oss.09[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Anson Huang <Anson.Huang@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DRM_DISPLAY_CONNECTOR. This got introduced with the bridge rework
Which renamed among others DRM_DUMB_VGA_DAC.

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>

---

Changes in v2:
- additional patch adding DRM_DISPLAY_CONNECTOR as recommended by Geert and Laurent

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index ae908c3f43c76..d765a920a20b9 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -612,6 +612,7 @@ CONFIG_DRM_PANEL_LVDS=m
 CONFIG_DRM_PANEL_SIMPLE=m
 CONFIG_DRM_SIMPLE_BRIDGE=m
 CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
+CONFIG_DRM_DISPLAY_CONNECTOR=m
 CONFIG_DRM_SII902X=m
 CONFIG_DRM_THINE_THC63LVD1024=m
 CONFIG_DRM_TI_SN65DSI86=m
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
