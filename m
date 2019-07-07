Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E88D6150E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 15:24:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g7OcWmMgwxaRIRY+eJVJJS/cnMSaOi2ODsgf6kPZpSo=; b=Bg5F5Zp5VChZIy
	Dxbr9OSeOsGm0wV+5/GSQHKbfs7lRi+ILYBHWF2YnWlMwIPgQ3EAkwuyqFhPbKKiLmxhzOlGblFQy
	Kd5OOzJjZI+Gfc01b6WHblB1f3mw5tucjoYs90KDJ+3QjkHVdpUqyNQP+wRPU92/N9K9IBB/VT0WX
	1P9XOh2SISUecxDboQcNijfVz3LElxJaxoITiVzGo1DusbPyLLJlXC2/1f0P+4+LoJ6qDRHpvzFYR
	zRWkdjXdeaonP8YG9Jq7q1Dl5j/72G8knOtBGluSfESWoO/s4HIxd6mYxtogg4U2ag7f30uvjZCA8
	64IWOzqS1CfPjz0+2oAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hk79W-0003Mj-4P; Sun, 07 Jul 2019 13:24:26 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hk78q-00030c-Jm
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 13:23:46 +0000
Received: by mail-wm1-x344.google.com with SMTP id v15so2862844wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jul 2019 06:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=K0RTcoO3eeXEQ/VOA/kvp7SGagErS4KYjRrruQqiKoQ=;
 b=ROJDc2rqI7UvbNRweUh+r2bBgqFCTo9JCUFGVnleU7Q1mCJU0J7+3xseQrxNmt45Yg
 WjvdlCjNcunxGMwkI6msx/DlOmxFwzji4KijNRNXrTfGc5Qr6UlDXHhRaGnXNsmwtJjl
 YNV4aPs1x31SxEsH8TDFzRCRVJUgeMi1o2DXjFi4113Ie3IPoHIHWNNjH2vyKRj1wApi
 M8YTEd4svLWP53fLso5DcNLh0sgvcqCBRlVfEMo/y9NcXuFoUxFjkGHoalrTYn+Ktxge
 tqDgCaXiI7zjprSCLBxBE6VyR5oPFGW6pvD5PQ6/pOQoJHW+rPCQ0KzMzURjYbCSqf33
 8SJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=K0RTcoO3eeXEQ/VOA/kvp7SGagErS4KYjRrruQqiKoQ=;
 b=Fcc5nXVP9XEaHw8cXr26X5/3qp+HGccEQIdUmLmc53Cj2OTgy+Le+TfBtjrsBu9Prx
 G9UNSRvRnyL8aBrpPsEMzz+4Expgxou2xvL/QtpnvB2nA8+lI4IS81AaVdg5Y3FxZpUJ
 Hi5a9KgsbwX8riab7M1WbxjMQojakG757e3Pc3wvGAACHNCKZEoVzNQnJvmxz+DquRKf
 CiX7ffXyJsZZCpKlf4ueaOTDsaLIyNefXa+by8DAahlYW8AsXuDkmp03HvJd8igCrhjM
 2O1hBeZCjkLUiAtJEKvZoOvZz2XtpFo/goxZd3c+u6g7/xd2x3dVfFVdSfossT4BClRN
 Sx0g==
X-Gm-Message-State: APjAAAWiuBuc+1RUsztxdKnvVyul5yGqN4mE5fmJyZnBeKir88DxsRRD
 m1/HZe0OblTCoFDmb11MyVY=
X-Google-Smtp-Source: APXvYqx2x2SBLnwpDYcIhsQfbAcvKWlOd53k5NUzpD1x6Bg50bDEMiHB/Fi49gUVjnnroUk3BQURNg==
X-Received: by 2002:a7b:c4c1:: with SMTP id g1mr12835947wmk.14.1562505822861; 
 Sun, 07 Jul 2019 06:23:42 -0700 (PDT)
Received: from arks.localdomain (179.red-83-58-138.dynamicip.rima-tde.net.
 [83.58.138.179])
 by smtp.gmail.com with ESMTPSA id h8sm13515959wmf.12.2019.07.07.06.23.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 07 Jul 2019 06:23:42 -0700 (PDT)
Date: Sun, 7 Jul 2019 15:23:39 +0200
From: Aleix Roca Nonell <kernelrocks@gmail.com>
To: Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH 5/6] dt-bindings: arm: Document RTD1296
Message-ID: <20190707132339.GF13340@arks.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_062344_700531_5211D0FC 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelrocks[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bindings for Relatek RTD1296 SoC. And the Bannana Pi BPI-W2 board.

Signed-off-by: Aleix Roca Nonell <kernelrocks@gmail.com>
---
 Documentation/devicetree/bindings/arm/realtek.txt | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/realtek.txt b/Documentation/devicetree/bindings/arm/realtek.txt
index 95839e19ae92..78da1004d38c 100644
--- a/Documentation/devicetree/bindings/arm/realtek.txt
+++ b/Documentation/devicetree/bindings/arm/realtek.txt
@@ -20,3 +20,16 @@ Root node property compatible must contain, depending on board:
 Example:
 
     compatible = "zidoo,x9s", "realtek,rtd1295";
+
+
+RTD1296 SoC
+===========
+
+Required root node properties:
+
+ - compatible :  must contain "realtek,rtd1296"
+
+
+Root node property compatible must contain, depending on board:
+
+ - Bannana Pi BPI-W2: "bananapi,bpi-w2"
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
