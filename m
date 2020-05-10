Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2F71CCB2A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 14:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=21NZZrqiJK+6xyVStdJ3Kq2blbqMm9J0v3nls6OFDoI=; b=ZX8
	kssGl+Dvs0Bz3UeQHg3XWrTuoilIQaXvKX7zXzyh0YtToD9uRtvOLucW21CJ2VjYPy/o05jB1qVtK
	9E90IUMVrJCQeRshQMeXHK/3Ngqzmk6xewq02bL6Lesk43WKwr3qaGCASxYEHT+8Y0G3jMDX73mBk
	l1tVHHqOzHHGy28HYd1F0HNxnzxseVCKVcuZ98pmKRLueICY/8i6jFSMjOruSEtbG7SN1Jw6ESoGh
	+yLhaG1wqD8IWLJ7NJC7HDvJ1KwfTb8jGEDaQ6XZBY4njuwVYvWLxuzwnqB1MpmZ3zzwdPILrZobm
	2/d59LGhvfajVxZK0+ZkyxOzN4qnUMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXlHQ-0003UN-0V; Sun, 10 May 2020 12:42:04 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXlH1-0003Lu-Cj; Sun, 10 May 2020 12:41:40 +0000
Received: by mail-lf1-x143.google.com with SMTP id r17so2031701lff.9;
 Sun, 10 May 2020 05:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=0AyjPmU7cn4BL2KfMfomHiNoXCghCD471CVQpZJ9/fA=;
 b=VoPU/c2qR6kaasYGmq75epVPaJ7EX1CNYybYsdh1EZdTegUmWKOsLBAQKv7hp6p7aU
 ulB/CtLmA4KHX72RDM+ppAU1bq9rQr9aqgmhYCavrPhj3B0nrQ0t0HLkW+a0aKTdqmWd
 Ot9Os80PYnd6NTDwshKerDa9nsLLwr9P+eyTda6LWBOXCqLkd6txcB8VjCgiJGm5h2V2
 IbgTmoNcN1B78SzcOKwSUaeCe6ue9Ly/NBeqD0nrKgHG8mnBQm7ZhJZ6oS/SbY2D0XX4
 /7AxTN6barEYBGFroWlHEEndwZrCbn1udU55wkNcInSwI3UlOkFym/99parkpzIqmchB
 exgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=0AyjPmU7cn4BL2KfMfomHiNoXCghCD471CVQpZJ9/fA=;
 b=K8V74CqoXpGxptBOhewBXtKE1qnYbm4MAFHcE8Tt3Zc/GUU/TGQwuU2vrR6gPMaOVi
 h+wxfmLnLITLQqxmA5ElNwy97w03KTU2eEu7dH2tg0BaeV6qWD0V4kq+lmDwJ9JegKO9
 PftAgX5TP45D0YPN4dRf+XI73VAQgUeOZlmufkbivYq/7sPKXN4pFMQFGHN9gvlg1uop
 nadRZCokfkYQfynvSFPymbDxqX3gjF0PhQRWTZ0WiLmw63eFdAtGkP3yIVrXjEppmlni
 zszCX9BJWQRVdNXcmayPzHhA70+QhTyOp2OHmNTc9C2gUojX6J2Zp3yygQ35E03aS/7N
 H5tQ==
X-Gm-Message-State: AOAM530QSS7MRD5BzvirI9hPD66GHTbAkag3dCyETxw757kolCxMWU8J
 BjNhee2ECReHcdC8rWyZApY=
X-Google-Smtp-Source: ABdhPJxmyYroaExtRfpqTEZIzCVhUi16AUhZ0f52+ranCiNyS1GYl1IwuOIihO9UzZuRtWlWB9vIiQ==
X-Received: by 2002:ac2:57cd:: with SMTP id k13mr7748654lfo.104.1589114494913; 
 Sun, 10 May 2020 05:41:34 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id m11sm7136611lfo.55.2020.05.10.05.41.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 May 2020 05:41:34 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v8 0/3] arm64: dts: meson: add dts/bindings for SmartLabs
 SML-5442TW
Date: Sun, 10 May 2020 12:41:26 +0000
Message-Id: <20200510124129.31575-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_054139_461607_C9A8B195 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds new bindings and a device-tree file for the Smartlabs
SML-5442TW set-top box which is based on the P231 reference design.

As requested, I have reworked the device-tree on the p23x-q20x dtsi. I
have also re-added the BT device with new bindings that have now  been
merged in bluetooth-next for inclusion in Linux 5.8. See [1].

v8 - reworked on p23x-q20x dtsi
   - add BT module

v7 - update gpio-led nodes
   - remove gpio-hog for BT enable
   - add bindings acks from Rob

v6 - removed audio nodes again

v5 - typo in card name

v4 - typos/corrections from Andreas
   - convert to yaml bindings
   - add sound node back
   - confirmed gpio-hog is necessary

v3 - change to Smartlabs LLC
   - removed sound node

v2 - removed audio nodes
   - changes soundcard name to "meson-gx-audio"
   - added missing uart-has-rtscts;

[1] https://patchwork.kernel.org/cover/11504823/

Christian Hewitt (3):
  dt-bindings: add vendor prefix for Smartlabs LLC
  dt-bindings: arm: amlogic: add support for the Smartlabs SML-5442TW
  arm64: dts: meson: add support for the Smartlabs SML-5442TW

 .../devicetree/bindings/arm/amlogic.yaml      |  1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 arch/arm64/boot/dts/amlogic/Makefile          |  1 +
 .../dts/amlogic/meson-gxl-s905d-sml5442tw.dts | 80 +++++++++++++++++++
 4 files changed, 84 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
