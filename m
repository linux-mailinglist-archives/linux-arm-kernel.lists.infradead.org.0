Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E641746BF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 13:18:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tfMfGDHV9kq7C/3fvpC6i1cmHJAn3Me7EAEP04TT1wI=; b=JZejgAAjwY8iUFNI9AaQPsQSMh
	Uz22/dmLhGgby+E50M1hKappN5wqBH02ahCOrTxgjWUOzo2rgqfzfuWDn+sjx6bUyciQ5tT7/YIE+
	n7cNQ5Icz8vf1mFmLs7yiKNm+IXBp5cOkL5KhdJiLnshA/6XfLMRWfUzma5Cc6dFqVyvD8Fn6D8tH
	3lwDGmQnlg6xt/Z7tUIG9dnikaFurrY1qKhc3ayJ9CMvPAqvxrtLDlNTiT7ARTVPuXoGH2WTLq/xT
	2pU077R6wDz2MX+mit3Wl4e1zd0GUAP+sDnZH4yxh8cvQvAQjWJZHPD+QzvXNrkLvTEkYYJRZpO48
	E3JH6cWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8142-0005Yv-AC; Sat, 29 Feb 2020 12:17:50 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j813H-00056u-Ge; Sat, 29 Feb 2020 12:17:04 +0000
Received: by mail-lj1-x243.google.com with SMTP id u26so6208830ljd.8;
 Sat, 29 Feb 2020 04:17:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PUiZOEdutWx8wS79TjIHPc76XzhI43CZLLGIcRxipWk=;
 b=MqSkBkPBjk04hDgppfgMJuLujoJVKcBQ5q/pGfqNOON1r+G8cFy9Fwl71ZDKrOBB7G
 38bN0QnqC/p/UmggV6vnGEHyM88wktMmAmsm4p/cIRMKlnyuImkUwUmjozUas1zUvhYN
 NMvvE0uRO4QkHVcn5tTFNJYjQ8kjXGkd1WX44GJeFbmCLflh3yn4ZAWYZ4BbI18xreuG
 ycix+XYCpq/TOF7t7W7115rZKH4qxmSgLX3pWCxpz3QKoLsDgC9r/wYIQa+MUxxBOmGP
 t80vPcDRTeiAOWpGc6E+D43k9Xlvu7hODHjqnF8mEV5n3trfUK9w1ppUo8Iiqo2SoeQU
 u0Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=PUiZOEdutWx8wS79TjIHPc76XzhI43CZLLGIcRxipWk=;
 b=F6XJnCGH30+F+KRHMkmTemDzJHOLVHPFl1/JGXnaDWBKI4CCgeNNn+EqlYwgE7/rRE
 G/ZIX6VWNtVioOHhqSh0GCfuOcUuQ+Y7NAEdZkFwFTpWLMYFLR+9jpUPP64W3DQ+MrZy
 ce+FXKqKGI3y1tj1KZiky6U7r093Rgobf1ye9Xi5/x+CVaoFtPH+rWzI7AwOam9NOt+Y
 I5NMIO8Ie65e6NhvOeZcI3Ub/qu7JYU78ZzhHiSh0f0YpO+3Tvh0jPihtY6hPiF+ZMoJ
 twUTDxlJqQpEsHLdWdt7d4RFDRYluiaNgdLOtgIefQVzq1do8PcBtc0vtqUA5eiw/2j8
 0sRA==
X-Gm-Message-State: ANhLgQ3daDZMyPe/eFvbWuNTEu52D5DQvcx1pM68hT8w7iV1QVz4Yin9
 Y6t/KT4eERtZ2XHYQc1BhIw=
X-Google-Smtp-Source: ADFU+vtfyu/zEdv25VmM2ipzV3WThAztgg3/ulDhJPTfCVRbLqJ1yuJVjWhhAABZXUtB1ZxQ3NGdfQ==
X-Received: by 2002:a2e:9592:: with SMTP id w18mr5817470ljh.98.1582978621446; 
 Sat, 29 Feb 2020 04:17:01 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id x1sm6270232lfq.46.2020.02.29.04.16.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 29 Feb 2020 04:17:01 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/3] dt-bindings: arm: amlogic: add support for the
 SmartLabs SML-5442TW
Date: Sat, 29 Feb 2020 16:16:03 +0400
Message-Id: <1582978564-81491-3-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582978564-81491-1-git-send-email-christianshewitt@gmail.com>
References: <1582978564-81491-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_041703_587420_440E5BA0 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christian Hewitt <christianshewitt@gmail.com>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 =?UTF-8?q?Jer=C3=B4me=20Brunet?= <jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SML-5442TW is an STB for O2 Czech IPTV/VOD and DVB-T/T2 based on the
Amlogic P231 reference design using the S905D chipset. Specs:

2GB DDR3 RAM
8GB eMMC storage
10/100 Base-T Ethernet
802.11 a/b/g/n/ac + BT 4.1 HS sdio wireless module (QCA9377)
2x single colour and 1x dual colour LEDs on the front panel
1x reset button on the front panel
HDMI 2.0 (4k@60p) video
Composite video + 2-channel audio output on 3.5mm jack
S/PDIF audio output
Single DVB-T/T2 tuner (AVL6762/MxL608)
2x USB 2.0 ports
1x micro SD card slot
UART pins (internal)

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index f74aba4..c0c0f66 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -107,6 +107,7 @@ properties:
               - amlogic,p231
               - libretech,aml-s905d-pc
               - phicomm,n1
+              - smartlabs,sml5442tw
           - const: amlogic,s905d
           - const: amlogic,meson-gxl
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
