Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 609A710F370
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 00:32:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RAgeYMXm/6NiXl2IEEHO9M6ObeNzy433iZVzAv4umc4=; b=Mrbm2+ektCnCVu8allPB6+u5sy
	Vq/W0iJMc30im+PtAWs3Bzbb03bgPnLkYSWYswegqK7G3HLyRg7aoF9nSOFFuHcXYStUUp6OaJhn3
	mrgJ7bWyVmfml5n+QZuboLGRn8BQyZjH3DUUJSkNSFHQ4NQcMrMGOz7OxYNmLSFsgEFNxr4x5p7Tm
	k5SdVKqFK6ZMqOd3K46C+xhp2mDZzka1C/zk03IZVTSazF/1JHd09ZiCVlaBY0BTSK1CV1arlc8E9
	0p+vaSsXJrMdAjg4LHb810+uheuDWOWRLU9ePE47ESbrjnJZOvt2690O7VUOzhFym/9ihZy3X78ws
	fH6gfrgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibvAq-0003DB-RD; Mon, 02 Dec 2019 23:32:12 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvAU-00032j-1L
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 23:31:51 +0000
Received: by mail-wm1-x332.google.com with SMTP id p9so1137060wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 15:31:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xWcs6YBFvK3VWP3N+z+8H4QcT8nQTNi3hW2Yzv1rJdI=;
 b=FHbq7/qo14idRh4Ycz3BnsTzhOXiVAEwxYErTdKgCSDH61utWT62Z7CfuhzZnQdL+B
 pxz030T16txh09dKbYYBucqWounpt7XrZXahIEa5f9HVvtWfiA30+WXyFp8rGY3MSKXG
 uAbONxC7GcKnHmhyp/SFHpGKIEZYln3HNhz3g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xWcs6YBFvK3VWP3N+z+8H4QcT8nQTNi3hW2Yzv1rJdI=;
 b=IPJpQr21/TJ/Y30e8yLNvtVogdieAhXli/rSZEqTnd2Urli8Jp9CtCdZA1KfBSHjQB
 3uAKj7bXSFjsY1tPlwJ5m89oKObK95Ha2lc+MuUQBy3anZIKM7TG2b5WKhbrh/NhEEss
 bH9oTGhYSR+F3v0U6v5Apeg2QQTT+U/heft7GklgzfkzzzjPriWGCmNnQ9eJqcxGVwvS
 9rxaKtVSM7SuC+Thb6QIHQsNYOial4SGD+tgR9rOC9q9GPurBUGbqqv1+OasLE7Bef6s
 0VdkeriwX3Wc0kPZIUjshSi1iar9VuRN3Fm/NZnvVmFC+inowK4znuYrsJnx/UowD+dH
 kBzA==
X-Gm-Message-State: APjAAAVEXJgew6k9BsdSOQDNokruTQqKdWcYetaeUuVfGIp9CRRX4zQ7
 I8yN1MLaDtBgghHvQF5qYTABUw==
X-Google-Smtp-Source: APXvYqxmaGXdgBpgNe29YrOm+siaQQufajyUm4E1xiLmmCBSR0ydUEMysFw8OjRat34k1cVFfuznvQ==
X-Received: by 2002:a7b:cf39:: with SMTP id m25mr4427262wmg.146.1575329508184; 
 Mon, 02 Dec 2019 15:31:48 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id c72sm1066197wmd.11.2019.12.02.15.31.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 15:31:47 -0800 (PST)
From: Ray Jui <ray.jui@broadcom.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/2] dt-bindings: soc: Add binding doc for iProc IDM device
Date: Mon,  2 Dec 2019 15:31:26 -0800
Message-Id: <20191202233127.31160-2-ray.jui@broadcom.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202233127.31160-1-ray.jui@broadcom.com>
References: <20191202233127.31160-1-ray.jui@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_153150_090226_000FF3FD 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:332 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Ray Jui <ray.jui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add binding document for iProc based IDM devices.

Signed-off-by: Ray Jui <ray.jui@broadcom.com>
---
 .../bindings/soc/bcm/brcm,iproc-idm.txt       | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt

diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt b/Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt
new file mode 100644
index 000000000000..388c6b036d7e
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/bcm/brcm,iproc-idm.txt
@@ -0,0 +1,44 @@
+Broadcom iProc Interconnect Device Management (IDM) device
+
+The Broadcom iProc IDM device allows control and monitoring of ASIC internal
+bus transactions. Most importantly, it can be configured to detect bus
+transaction timeout. In such case, critical information such as transaction
+address that caused the error, bus master ID of the transaction that caused
+the error, and etc., are made available from the IDM device.
+
+-------------------------------------------------------------------------------
+
+Required properties for IDM device node:
+- compatible: must be "brcm,iproc-idm"
+- reg: base address and length of the IDM register space
+- interrupt: IDM interrupt number
+- brcm,iproc-idm-bus: IDM bus string
+
+Optional properties for IDM device node:
+- brcm,iproc-idm-elog: phandle to the device node of the IDM logging device
+
+-------------------------------------------------------------------------------
+
+Required properties for IDM error logging device node:
+- compatible: must be "brcm,iproc-idm-elog";
+- reg: base address and length of reserved memory location where IDM error
+  events can be saved
+
+-------------------------------------------------------------------------------
+
+Example:
+
+idm {
+	idm-elog {
+		compatible = "brcm,iproc-idm-elog";
+		reg = <0x8f221000 0x1000>;
+	};
+
+	idm-mhb-paxc-axi {
+		compatible = "brcm,iproc-idm";
+		reg = <0x60406900 0x200>;
+		interrupt = <GIC_SPI 516 IRQ_TYPE_LEVEL_HIGH>;
+		brcm,iproc-idm-bus = "idm-mhb-paxc-axi";
+		brcm,iproc-idm-elog = <&idm-elog>;
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
