Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F9AB941D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 17:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+N4fR7sOmdoWeKtP8DKkVKO0lMROLLsu1c7OW7l9U70=; b=RhnGnUgAizeSTz
	FoIjSPBHOF+cldmhjmFt1g4sITavp+Iu9PwA3RpdRVBYcU7ZKED0zPKzAD0RUHOsgTJ8OCO0VyTAs
	R5oT9YWyWbX2VRM+G1ZhvI0Jq6rTGKH3d6CdelwzcKRz3d0ZXN5STqwALM2rolF2dujmRca/quYhk
	Uy1cfe1Md6djsWCpwGzcnfSqppK5eLdXNCG5dEFMIYYgaY6u7IE/nCxB6ADrHmMv3PYpu7wCbr96v
	jweJRFtDfms1IMGAT6zVYgqO1FQTSOFJwRB1eEDimohrfHAa8yz4GCsJXOhi3AQ1eMQ6a8Ti+n9Ff
	Vw2kalE25Sh/Fuq3c2qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBKxS-0006jq-EZ; Fri, 20 Sep 2019 15:36:30 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBKxM-0006jO-Nu
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 15:36:26 +0000
Received: by mail-oi1-f193.google.com with SMTP id x3so2122679oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 08:36:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wZ4E+3xQPlRfGWiHf91pAqjECWWINrd5qiSpF9xPch4=;
 b=Ro0ya3w12Nsf+59K9crIS5lr7oS06QB0B+C0RrM9ybQFycvwu7w6USKB5l25c+UaHa
 Lmz1EkcTpp2seG6n20BqBAePyj9Nfc4WMkghAhv2CqjX8cY6ymGmGoVDFj8snXp2bNc9
 LVT3GebG0qjORj6hG67BIhDIVWp18Gxr/VYgZxyUip1w7oL7Wk1PHUqSvOvAEdQwFN4v
 /2kRZhXDFFDP266dUjpntEnDIH/GIVIbBFNYBKLg78szQPvjcgxaPS8HLGvvblxHFvzZ
 eVzXZN7YW/mhBig6YmQhpYL555DVKaKvvEM6AL3MClIzU4/jnHDXxRx9gCj99iYdKu8q
 UjVg==
X-Gm-Message-State: APjAAAUn4e8FemFbvKyhk6f1+NpgnEsKfheTgVLPFW4+obHD8HDl5Xe6
 +W0dK9h7rce8lMpKOtuYmw==
X-Google-Smtp-Source: APXvYqzkBJLKw/GcElqOTNdV8gsrbNW4HfrE6RWxrrt7y1DSP4w2/ZzEGqLhCl+xXh9SC4Ypohg6fw==
X-Received: by 2002:aca:b2c4:: with SMTP id b187mr3487644oif.93.1568993783178; 
 Fri, 20 Sep 2019 08:36:23 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id b5sm737419otp.36.2019.09.20.08.36.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Sep 2019 08:36:22 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [RFC PATCH] arm: dts: integratorap: Remove top level dma-ranges
Date: Fri, 20 Sep 2019 10:36:22 -0500
Message-Id: <20190920153622.14616-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_083624_781716_E98235E5 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'dma-ranges' at the top level doesn't make sense. 'dma-ranges' implies
there is a parent bus node with '#address-cells' and '#size-cells' which
is impossible here.

Likely this translation needs to be moved down to sub-nodes that need
it.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
This probably worked due to bugs in dma-ranges address translations (or 
lack of).

AFAICT, only PCI needs dma-ranges. The TRM says inbound PCI addresses 
are 1:1. So a translation from child address 0x80000000 to cpu address 
0x0 seems wrong. The v3 PCI driver also fails to look at parent nodes 
for dma-ranges.

 arch/arm/boot/dts/integratorap.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/integratorap.dts b/arch/arm/boot/dts/integratorap.dts
index 94d2ff9836d0..198d66181c50 100644
--- a/arch/arm/boot/dts/integratorap.dts
+++ b/arch/arm/boot/dts/integratorap.dts
@@ -9,7 +9,6 @@
 / {
 	model = "ARM Integrator/AP";
 	compatible = "arm,integrator-ap";
-	dma-ranges = <0x80000000 0x0 0x80000000>;
 
 	cpus {
 		#address-cells = <1>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
