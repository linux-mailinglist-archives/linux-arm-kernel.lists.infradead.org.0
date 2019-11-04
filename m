Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92068EE73C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:19:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Im+Od/yWO3C1TVBXNm1HhInh4QjmfMaXkyEw4OmvaaA=; b=btAnne2azfHM1HBCz6Qu2BFpkb
	Of1XPcg3E5AKVDuwl3Vh0/SNALfGdNTrwVny6OYV6hBCgzX23VVNRx/RjPks/ImAlKdwFXuMqK1Qc
	qAe6gjgUnIIQMdsYUqrTLTvRtdi1AsW/bSzBufxzfTenwDpT7NYsn43UYO35wNsjoVIF0fSnQwl/a
	tTptZrUtwSH3eFcdDRpICyKVKtlJmGSVRakAbpwAyaQHol0KTnGpAHialuJOpniLQHgil3Msbzpf6
	KCAHJbOxWMV9ElYGeitUWbFMRRcQlECJLgT3Fdy8YpKyAESr3EZKaI5T/I+bq6tijrUN/37P8KFfP
	VG6suNMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgx8-0004bO-UE; Mon, 04 Nov 2019 18:19:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgwg-0004QZ-QJ
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:19:20 +0000
Received: by mail-wr1-x441.google.com with SMTP id f2so9332245wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jqFW9T9RJ/ISderEtopGklmK4C6dkJo0rJ+OS3iJ73A=;
 b=S5MCpg1L8b02V2z2ICSzdNKGmQ287S0OI3azyhOeH6NEuNYcUmDfTvy8dfZkDKKtV7
 6HwpPPVECl2f+lB9SorKs/8nY0afZF7Z1vNzj6uiQ6Bc11yzW47MtDomJtuxZjRJ/Wst
 +wkD00OOYujOwOLm7utUPIS8AjYgaqSy8uPfXaUss5tgWa283uxe8UEA8+OqGtNmMfa/
 /AlNzr88OEBqTq3dJalHF0lJ1jA5kQm8jlrYjotT+FUGgWHDcBHPjwSEU7z/KD9B9FRR
 R8w1ScpR3Tpav87C/2blQukhmXn/Axet/nGj61F7XgohAtfWIKNHtd4H5Lu6sf1z9zJF
 jYog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jqFW9T9RJ/ISderEtopGklmK4C6dkJo0rJ+OS3iJ73A=;
 b=D8yxHLehutsIVkUAfS0TL2fPf9szR5dDmYRjiQI8PzBwQcMFD2RkO3RSXsIwCRlmcB
 PD9dXCHCfyxreoWCB0Uafq/J4AQZ61wtdhu6+TborqgasFGIgmaG0K8y1TkPg/vZDnk5
 CRfTVhPNQlE66jqZHhmFXcMu3VkGotl/VHFcyJFxPOg80LpKeZx1b0UQ+7dk5AvtK7eM
 C8toT/vNd1MNKF2yrmM/cqY6o7XeOUI179R4oVTYr113R38SvhAl9jVJ99mBqY4bUrKW
 6YWQbU0qG23CPtxvCyfsS2qTkfg5GuV+DnBt8jA4X0x8lUNqSYMRUzf+3RM+wqP6jNhS
 2CKw==
X-Gm-Message-State: APjAAAUzQPTgdujTmnmi7yvG6ea8HSd+B5bLPOD5XD8tsdGg9Q7mzEDE
 Vo2rD9ih9rhBgKiTXcpy+dPZNRWY
X-Google-Smtp-Source: APXvYqwon4ik4HW0JxMQygfcZEahSfXgMdF7oXGavgz6ks/vmPmxJ9ruyVfcUYUmW8Vsk/bDiENHzg==
X-Received: by 2002:adf:f607:: with SMTP id t7mr3189673wrp.390.1572891557087; 
 Mon, 04 Nov 2019 10:19:17 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w8sm23127580wrr.44.2019.11.04.10.19.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 10:19:16 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: reset: Fix brcmstb-reset example
Date: Mon,  4 Nov 2019 10:15:01 -0800
Message-Id: <20191104181502.15679-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104181502.15679-1-f.fainelli@gmail.com>
References: <20191104181502.15679-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_101918_868952_49505C13 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The reset controller has a #reset-cells value of 1, so we should see a
phandle plus a register identifier, fix the example.

Fixes: 0807caf647dd ("dt-bindings: reset: Add document for Broadcom STB reset controller")
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 Documentation/devicetree/bindings/reset/brcm,brcmstb-reset.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/reset/brcm,brcmstb-reset.txt b/Documentation/devicetree/bindings/reset/brcm,brcmstb-reset.txt
index 6e5341b4f891..ee59409640f2 100644
--- a/Documentation/devicetree/bindings/reset/brcm,brcmstb-reset.txt
+++ b/Documentation/devicetree/bindings/reset/brcm,brcmstb-reset.txt
@@ -22,6 +22,6 @@ Example:
 	};
 
 	&ethernet_switch {
-		resets = <&reset>;
+		resets = <&reset 26>;
 		reset-names = "switch";
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
