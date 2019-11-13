Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B6EFB193
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:41:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HR3BKwtYQ07hpE/EkBXt1NhmoUkhRmlrF4z0S0O/EBY=; b=iuI
	atDeEH6jEtuhErEhKofb17R/7Oq/rET+rItrhJFV9QRxcgA4t1INRn6zRiKaZ+zAe+to/PHHahVZm
	85cMnVPPXhHR/JUK5tTYS1gaz3LtD9YRFSpNbYlqZCXt8pKYpQOycy/m3Va+wMOvVzjZnZOxuJlMH
	LV27LWFT2S/Od/6nqJNLnX54mFG+BOFu6g17sRog+3wmLyXr99y1ypEpp4HeYvtC7to/Dkdqhq8cL
	hbUUjxFNQTAv3q1EgJ3Iv2xnA5BGnu22X/Q2NplO/WJAGaxlPO/TDJ+naK0ZBvgQ7nI9aqoiKiKa1
	65bTHlwVKvgY4lKO63Tgx07lt4L8Ztg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUstb-0001lU-MO; Wed, 13 Nov 2019 13:41:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUstM-0001k2-8h
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:41:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id b17so2055824wmj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 05:41:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=g9xxtnX7rcqQy4gHg8hcN4Gj7X4KIMRju+j/MHBoV8A=;
 b=hadli0Xo/McEOF/RELW9EA3FZsSOhl60Te50mTlkYDOo1DL4ofrH39xvKPYpWpDTlM
 hB/ld2RA/dUwevAa2DSY1ddG32okY5PiZUZ32X9YGTKPg/OQB9SXyL64oAyk2BhQ1yBm
 kV24X6LAVZCvgRN2TPfznZ41vebvCsbC/ReMy621H2hPCkFWaq7qfFS22BxlKObg2U49
 a4qXeETGc6jHl6q5WkF4bpkSTQtV/h9U5apXI6Rxfeco+4cfOENhguBY1BJ/+XSQDlDb
 jmgzbbdotXMtIPdwwpLCoUSgzt9ZlaqXAqzxKVBkCwR6gAaNB87EATeuofH3sf+CJhI2
 yJJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=g9xxtnX7rcqQy4gHg8hcN4Gj7X4KIMRju+j/MHBoV8A=;
 b=DsVml/VtVbJuGqvjjEGYMERWvgTwBScJyr1/YPXHJ4TqPqzBt33ATnO2X8R4pS4nMn
 1A8MR0zc4ExlltWOUkd7eMlIIkHQboJ808ph8JF4DdigPA7e6BKzRFT2fo3y+pp7mx5h
 KRw/tol1tFp7SHxZrJdmX8ISsJdfexz/+G0cLEy3h2lC3t5RAF3AdOQwt3CW/6YOCt4g
 wjKUx+drSvkk94KE0nqnP4HHFEDD1ae1XqabjOxn3e/1tB/pwDJFDZGnzw876RIPOzNO
 D2vvuS9WPLeXOxhQzJhoWltEBODSsd+VQA/oOTwAmuBFFy0YYJWe/kx2+eBLGcndsYQz
 TzXQ==
X-Gm-Message-State: APjAAAWk3XIMeIzuGbQGt1TCaGaLZF142uDD2jgOT/IaXIDOBkez582k
 vqZQPAJaB7Gr6G4PN5lNk/Q=
X-Google-Smtp-Source: APXvYqwHB+Hi2YgtPl6gmGovtL5SEbLpwPTj9L7TLx7IIjPGWokO8dIh6umYiPftip08O4ohNJe1WQ==
X-Received: by 2002:a1c:23c1:: with SMTP id j184mr2757804wmj.83.1573652462581; 
 Wed, 13 Nov 2019 05:41:02 -0800 (PST)
Received: from mars.home
 (HSI-KBW-109-192-080-035.hsi6.kabel-badenwuerttemberg.de. [109.192.80.35])
 by smtp.googlemail.com with ESMTPSA id r15sm4195831wrc.5.2019.11.13.05.41.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 13 Nov 2019 05:41:01 -0800 (PST)
From: Christoph Fritz <chf.fritz@googlemail.com>
To: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Mark Brown <broonie@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 0/4] regulator da9062: support setting buck modes
Date: Wed, 13 Nov 2019 14:40:12 +0100
Message-Id: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
X-Mailer: git-send-email 2.1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_054104_332691_17A85E09 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chf.fritz[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds of_map_mode support to regulator da9062, documents
its bindings and makes use of it in dts phycore-imx6 so that buck modes
get configured explicitly for this hardware.

Changes in v2:
 - rename defines (and header filename) from 906X to 9063
 - explain usage of name da9063 in changelog
 - rename da906x_map_buck_mode() to da9062_map_buck_mode()
 - rebase patchset on top of next-20191113
 - adapt subject line of dt-bindings patch to reflect changes
   in mfd sub-system

Christoph Fritz (4):
  regulator: da9062: refactor buck modes into header
  regulator: da9062: add of_map_mode support for bucks
  dt-bindings: mfd: da9062: describe buck modes
  ARM: dts: phycore-imx6: set buck regulator modes explicitly

 Documentation/devicetree/bindings/mfd/da9062.txt   |  4 ++
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi  |  5 +++
 drivers/regulator/da9062-regulator.c               | 49 ++++++++++++++--------
 .../dt-bindings/regulator/dlg,da9063-regulator.h   | 16 +++++++
 4 files changed, 56 insertions(+), 18 deletions(-)
 create mode 100644 include/dt-bindings/regulator/dlg,da9063-regulator.h

-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
