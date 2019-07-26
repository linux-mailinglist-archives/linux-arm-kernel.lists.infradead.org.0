Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 120C876627
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FlniHGx/rVR4VhXYU+MVmwe7Ssy5CdAyeL7SEAlIs0U=; b=b4t5D3XkVWcKPm
	hjgegGPBbxiYhgqIioKvVqycZlqse7SCX7hrhYBYuOmWrc5VWUkK3KNGmP5esAs14vjViFKOau8uY
	Fv3WyWGjHveyy2p8LDRX2cUIK/IyYyJfF4S9hrTgrHuETsq+tp90PNdOmoc0Sa4x4MmE5lNoqcQBF
	7sLCJSZN8ApKWDW92QC/gQDPerlT8x2AqKH+ek+CyfpU+idtG487++/McRb8tGNfDM11Vvs8OMiKc
	U8DQ51LAZcjKkhcj5zKexpCkfTqziY6vDSwSRsGilvBxlxMnx9+S+2iQvYoj83vuSrbobFPyyxO+o
	G7ifQgr97SsBnPYuMgiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqzcs-0003R9-Vm; Fri, 26 Jul 2019 12:47:11 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzcY-0003NN-CJ
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:46:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id p17so54291618wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 05:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q2ZYPAYax6bQxbm/1YpeRuib4ukPUXFCF68rf3gTwXE=;
 b=UExMW0UUk/saslNhvncL7VmYbPBukVTDIwiQ9JEDm69304VqE2iV0GPHIMb+GUPi9Q
 XdND6CCt4qIO7Z4R//L+VDKTJAUY+3+Y1HzYcDO2y4mr4QOkGhwHY3+9qwH1jcJt6sgE
 CoiuxUwVJ1pmjRomS01ZwYEr690+g6Hf0aYHNDKua/QYqVCnK8s+lUjCoMqMBGPuokIZ
 gewunm6XF2lbta7rgn6eIKlLbS4HzeUPan8WI9YsybAITkTOZdv07nFpAQE8F/0jpMWr
 1C43R+9oAIwvWjl4yunSxC0lKcsRwrKAEgJ9Muul1S0BDHCmeNzV8cK0Ds3kH/DwncuW
 bJPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q2ZYPAYax6bQxbm/1YpeRuib4ukPUXFCF68rf3gTwXE=;
 b=f3ZpFRpJKAOZ5fepbGpUB5LVgB1fP5IyqdzFU2SeOsejaOdErOxFztLp6lVObJe5of
 huvva/X9dkOyygT3JQkvHlnkg41tKr31URATftLgBW3anwures5tYEytiLB3aZ3gB575
 p54vJCBJJSIKsvwdjsYQOcrA3m3oue2+9B6Jq9dvcnm1zeQLPFqR9vPQc/+lGmaEhrpo
 k0xpQRkyryzQiNO69U7zFtJiYGRqrjxs6GPPh4+zS73HXn55wb+tb9W36BnCwvYB5LZP
 JIzy5C72GWLorLF49k6uaiiw77TjPG8pNQTBFvtsp4zR9V0WRCNWCBKOKMgpE/PWh5AT
 srlg==
X-Gm-Message-State: APjAAAWs89kqFW5tscUBDxJnR1IFRlrOO4OWJjwtfY5MHGywzzwufZGH
 GAk2i47DGC+W3bhQLMpqJfAdoA==
X-Google-Smtp-Source: APXvYqwqpHIX1Hp7OItyBHPULfeNjzdPhmgqs5iWOD8M1voMJHDkAIcMIUA10pnpZcFezyDpSX8tag==
X-Received: by 2002:a05:6000:3:: with SMTP id
 h3mr16592055wrx.114.1564145209279; 
 Fri, 26 Jul 2019 05:46:49 -0700 (PDT)
Received: from mjourdan-pc.numericable.fr (abo-99-183-68.mtp.modulonet.fr.
 [85.68.183.99])
 by smtp.gmail.com with ESMTPSA id x16sm39090124wmj.4.2019.07.26.05.46.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 05:46:48 -0700 (PDT)
From: Maxime Jourdan <mjourdan@baylibre.com>
To: Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH 1/3] dt-bindings: media: amlogic,vdec: add default compatible
Date: Fri, 26 Jul 2019 14:46:37 +0200
Message-Id: <20190726124639.7713-2-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726124639.7713-1-mjourdan@baylibre.com>
References: <20190726124639.7713-1-mjourdan@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_054650_445809_4A244CE4 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The first version of the bindings is missing a generic compatible that
is used by the base node (GX), and then extended by the SoC device trees
(GXBB, GXL, GXM)

Also change the example to use "video-codec" instead of "video-decoder",
as the former is the one used in almost all cases when it comes to video
decode/encode accelerators.

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
---
 Documentation/devicetree/bindings/media/amlogic,vdec.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/amlogic,vdec.txt b/Documentation/devicetree/bindings/media/amlogic,vdec.txt
index aabdd01bcf32..9b6aace86ca7 100644
--- a/Documentation/devicetree/bindings/media/amlogic,vdec.txt
+++ b/Documentation/devicetree/bindings/media/amlogic,vdec.txt
@@ -26,6 +26,7 @@ Required properties:
 	- GXBB (S905) : "amlogic,gxbb-vdec"
 	- GXL (S905X, S905D) : "amlogic,gxl-vdec"
 	- GXM (S912) : "amlogic,gxm-vdec"
+	followed by the common "amlogic,gx-vdec"
 - reg: base address and size of he following memory-mapped regions :
 	- dos
 	- esparser
@@ -47,8 +48,8 @@ Required properties:
 
 Example:
 
-vdec: video-decoder@c8820000 {
-	compatible = "amlogic,gxbb-vdec";
+vdec: video-codec@c8820000 {
+	compatible = "amlogic,gxbb-vdec", "amlogic,gx-vdec";
 	reg = <0x0 0xc8820000 0x0 0x10000>,
 	      <0x0 0xc110a580 0x0 0xe4>;
 	reg-names = "dos", "esparser";
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
