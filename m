Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D303F2BC7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:05:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QPMCCEzQ7b677FlbexGkz8WXPmsdYSvLjr3guzcKev0=; b=ohm
	Lt1WSpT7baORu0V4ngjzNzjVln3G0J4WLM6gZqz40jmgWWFjtsvGydRBL++I4brGqO6E3aysDkq8N
	DJdcG5re0BMvWB+TB8dh+rDn8xl9wli2oFSOFFL2UY3q/ik3AQBLHc3KcOfd6yMw3ax2T1cndCR/J
	qVYx3gb3NkYbpjNaxalZ/ZoAiUB/7Eh5pQt7qwyLQQ64IGg8S+lC8fNIwHrrOyOuGEKfj9M1nIRih
	l1t7B1uEn0ktmhbTLVhri8inaxdXz2URqgQ+C3XPaSAiqWER7FPKp1RD5A5ZtwvejH1twtrohxtRv
	JTkjpjy1CmLruu0NCPS3rEa6IpTUC0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSef4-0000KX-FT; Thu, 07 Nov 2019 10:05:06 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSeep-0000Jm-Bt
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 10:04:53 +0000
Received: by mail-wr1-x431.google.com with SMTP id r10so2317578wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 02:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=0KKvV7CdQbaeYiSyH6SeEe8jcbCg2d1K80EhNck9ZXI=;
 b=f/GDtEfhLpZzF1inf6jp2vgdpp/tZFLyUxpeaDhi8anKs/vv3kl88dsC+J6JXcCESD
 uQwreZdQ3wCLkYF1Yayoij/qUPmVYy7U+OveZWzvKGFBgKPDdXjPRYiQwIjXOjG40jep
 J9YkIA8ZW37YXKpPhO7MI7rUkh2iJHCeIeN4tvX8NvmAyIMw1Bt75VZyJPOrgF+xIvgt
 b/EQSPSnyz03fJ6vfkRNTKw7tY81f6DV5UpH12vjTAViuSfRNfNgIzpgON6Wm4enTEWS
 +oSuN3DIdLG1C0VDsyRf5o0nqNjkcQDgwaD2zo5wXxi7HQ+fDQqLsxACQlWf2s1NY33y
 L7FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=0KKvV7CdQbaeYiSyH6SeEe8jcbCg2d1K80EhNck9ZXI=;
 b=rL8siqP7pXLRzbzUqLcshQLtPYBszAjj6OttCJtrdrBn0cq0Jqu3a9HPu4CSZ5HxbH
 BYTFpZdQx7QNiSJQgHC3QLGYsnjh9oA7OwnK9a2pTTzyvHJ1XCDCmez9hCAHm8V/y6lz
 AA9d4pkwGm77/eucwSTcfAEo+gERT8Y2G3FpZkM35PzMGdKnYnQUC7CiGwx9PV56zAbj
 PJC3FPxagGN7hSR35n1cQSINwBKy/Kee0wURHDgU+v3eobMqCo6ea4u+o7QkIQu6l8Zu
 uhIzgM/fEnHeyoozdV0uNeM3qUoT5OY3WmmVm7JFVxmqTNynwolD3culKwlm8Da+86RV
 uGSQ==
X-Gm-Message-State: APjAAAWwZ1yEQ/XHT0uyonjNCxpm7pVDahP7TOu6XhP/S+LbFBaYVK8v
 5nCM5QxtjxGsjJqCwWzqfQiOY46/
X-Google-Smtp-Source: APXvYqxGcoKytFm8PfZUw2fa7iJiotd6fkJ4fjzPZKidu9Y1CdXS/FNNndKF09MY0Vh2UbIYumjFUA==
X-Received: by 2002:a5d:4f88:: with SMTP id d8mr1557279wru.138.1573121089239; 
 Thu, 07 Nov 2019 02:04:49 -0800 (PST)
Received: from mars.home
 (HSI-KBW-109-192-080-035.hsi6.kabel-badenwuerttemberg.de. [109.192.80.35])
 by smtp.googlemail.com with ESMTPSA id v184sm2225860wme.31.2019.11.07.02.04.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 07 Nov 2019 02:04:48 -0800 (PST)
From: Christoph Fritz <chf.fritz@googlemail.com>
To: Fabio Estevam <festevam@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 0/4] regulator da9062: support setting buck modes
Date: Thu,  7 Nov 2019 11:04:06 +0100
Message-Id: <1573121050-4728-1-git-send-email-chf.fritz@googlemail.com>
X-Mailer: git-send-email 2.1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_020451_439992_44A366A7 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chf.fritz[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds of_map_mode support to regulator da9062, documents its
bindings and makes use of it in dts phycore-imx6 so that buck modes
get configured explicitly for this hardware.

Christoph Fritz (4):
  regulator: da9062: refactor buck modes into header
  regulator: da9062: add of_map_mode support for bucks
  dt-bindings: regulator: describe da906x buck regulator modes
  ARM: dts: phycore-imx6: set buck regulator modes explicitly

 Documentation/devicetree/bindings/mfd/da9062.txt   |  4 ++
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi  |  5 +++
 drivers/regulator/da9062-regulator.c               | 49 ++++++++++++++--------
 .../dt-bindings/regulator/dlg,da906x-regulator.h   | 16 +++++++
 4 files changed, 56 insertions(+), 18 deletions(-)
 create mode 100644 include/dt-bindings/regulator/dlg,da906x-regulator.h

-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
