Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 766F223A2A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tMpv3VP+fcx7DsjV2JJxkYp8U/LbVf4A6g/CAXYfeh8=; b=msBKeWGNBfA9bE
	QDBxIBMI9Ot6jzoLlRr02Sme5lcTEzBfQygVG4IcdXOHyx/ArEt9k8tu2aBQwfGKBprp5cVByWMvR
	9huawVzIkpseQJ/ItsP1+ZyW/Z2ivG9QhiHE4yghGVhNCTHTIWznfKAXyvdXbBoViVjxkMVb7mxKp
	6DhG5XNBTi09d2NqGEbm3pe3bYv0fBkYaJ9t+GBil0evLYoWafL6DGltQgYAQus1ibh9UHVtiFErS
	pDBCGOSZ8OxFmgkd7ZnF64f2AiuzpifX48/zFRZQkq4nXzHVadp9BNLmmK4obHGdxJoBzUvXqUxxv
	DArW2dCiXd56ppLAQErQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjOX-0003mg-GG; Mon, 20 May 2019 14:36:05 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjOO-0003l5-1y
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:35:57 +0000
Received: by mail-wm1-x32b.google.com with SMTP id t5so11950246wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ejqilo1yto88LxSnrCJSQqgQ1iaCyh2m+KasJchWoQA=;
 b=PmFsDuszt8zbmDWBibaKVcHa3d90eVt4oIYeL7/WxtMyAqEGQbecyxivNB16FD1jmy
 OHpQWFInSxzYr3AAThREgWvzyqMI+SaJxcNBwZBcoBFeIvDMoe9HlOmkrBc15EgKVUuH
 Tt/f5FbDD7obeidLvSTYxokhRD4N4rjLqyXCMK9q6nxvsWr2H+mR/VgFUWGiEyrhHSes
 0FEtNlU63uUSmpRlQnApY+moyhJO2/ZlPc6SoHNLxHaqZAn+wKTgAivHht17C3UHos0w
 wHHcfwtKgT8Wee7OkOXAKp5LRgzqbXgCUN6XreuRrzjTg93nK43V3yQwDGibXoIvkOJn
 nhQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ejqilo1yto88LxSnrCJSQqgQ1iaCyh2m+KasJchWoQA=;
 b=ev2rOwlBRohqq23ldFyyBaISfyShnuPJa+X4IOTSeStNQT0iWNpzsa+Rj6dtk3lCp2
 QUxBn3rs6EycKyBrRoGbtPOB1kinsjLz/8Ahqs9r9KfFv/zqWJLgcn16HPsp8BJRK13h
 0sn3zCWRu/2ixTtvdGxW/pGimJnAUeU3Z/IPhs/bAg8h2HtIMQNhEQ468J29uIF8jRfd
 wULhthUxjkIrfoUJTYq9FxYcuinprMThS6fn9k1JjgDKrrvcW5RpBmkDz4ei/J24yXjj
 c4ig9ScF7CmsPH6u37a7VC+eaXRiDNn9CFvRMU/NnjzeCNTYPfoyTb5VdUGZSKhl60xU
 tsvw==
X-Gm-Message-State: APjAAAW97Z7zBJRk8VvUgzB3ak4WpLmc5EgYvEN4jrdknzUj4yqTRhro
 HZnYXS2PeB43DF/Q67Omr9/GmPElRuXJBg==
X-Google-Smtp-Source: APXvYqzCnbrhWCGv6z19ZfaxyrIPmjh819MAp3NfOSe8oAbofCIxL969Y+24vhzKZK1CnQnZkZVN6A==
X-Received: by 2002:a1c:7312:: with SMTP id d18mr12188411wmb.147.1558362954239; 
 Mon, 20 May 2019 07:35:54 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id j13sm14042591wru.78.2019.05.20.07.35.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:35:53 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com
Subject: [PATCH 0/2] phy: amlogic: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:35:49 +0200
Message-Id: <20190520143551.2330-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073556_094610_5BE51A9D 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the SPDX Licence identifier for the Amlogic Meson8b and GXL PHY
drivers.

Neil Armstrong (2):
  phy: amlogic: phy-meson-gxl-usb2: update with SPDX Licence identifier
  phy: amlogic: phy-meson8b-usb2: update with SPDX Licence identifier

 drivers/phy/amlogic/phy-meson-gxl-usb2.c | 8 +-------
 drivers/phy/amlogic/phy-meson8b-usb2.c   | 8 +-------
 2 files changed, 2 insertions(+), 14 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
