Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D0815B770
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 04:00:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=chXJ9fmzxdl4eRWZpLrdP0C4usSeY/uv/CusrlpZgfo=; b=l7OqoRIkwFQlHw
	4R8B4RG3gLlHwm1+7kccuZoHepC88f8mkEOAdFaAFJdGBAWBQ9/mCUM37rn3AaVtE2qJcxLtUbPHO
	HhOzXeVs5fR8CXiTfwm7+VgiqPhcnws2ahF32fJ/azbpcuTqwLhGIeBnN8qD5BmPFbjKv9igvpoLA
	8kZUu0N8ak1G7EjmsFCJo5p6kTUO9nDXiHHo47Vwr4qoMjICxcSRlEQmWI3uNrmkxSv0uZBUPoFws
	HatQgUK0Yzk2NXps/fVxmlRAifccgrxPpjYygcrKAVyZi6iaS7Fgpt5MEPCDw0TvM/aWQB0HnRVe3
	6Ptj3fh1fuY5K4aw97lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j24jN-0002Iy-2m; Thu, 13 Feb 2020 02:59:57 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j24jA-0002Ey-AU
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 02:59:45 +0000
Received: by mail-pf1-x443.google.com with SMTP id s1so2245883pfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 18:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EMqWCu/u8fAYYp7TtyU/fjTB445DYU069x8bI/Oq0Zg=;
 b=twrJNR34IPBlGalnU5Q52YnLdupQZkfEwe0uaVoLaN6r4c2PsX88QgCj94Du6QR3v9
 zWvbwZi1zK6YUR2y6oXz/pRthxJcDK0MhpTlxEiZLhBtvu8EnWVH7dvPWM8RIJQC1XyJ
 PPyHqzcQKIb89W+ieGEGosUrsDsDyXAj/qhf1jonavRKUKLJ51aygQnQcy7TdF/uPja9
 xm3/qSqur6xuTNVWABGBtU5Dls/AwVyo97EI6ylo82Nizglf3jJV0CKjatXm/PbwIG7O
 B0U2dGb1riq294KmUlXdr/qsDoJPdn3gZ4hhfatpJt6tfT2fC/BncL0sGHxeQaB1yqJg
 tQVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EMqWCu/u8fAYYp7TtyU/fjTB445DYU069x8bI/Oq0Zg=;
 b=DF73BzXQS65icRa+Md9PYEecrTegkP1bzXYW7z4QCFg/XB5lbTSqSO7nRp5EkVZniD
 59Z7dEVoIqFIa+eF5nLYM598ASEj2XbtrwXJ5lmxME6oGK/sb7R9ddL5tpf9ZOlFhu0R
 wB5dvu/4z89KoqW1cFlzBK3IUrsBw78r8EJmytnGvuE/on0E3H8aUrwE0us3wniN+aSn
 BODTlW+JoA+rKtnap9Z7tZhlQPwYvLggwstWLQjybq65g1oYrQqwDeNIgPSXVAfr70ri
 FpoVpttsPQUJW99mvhEdn6XQ6ZInUh3RtdaX9o9/asHi+bVi1vKYZ6MUbTwM9UDBTxAz
 CfAg==
X-Gm-Message-State: APjAAAWsJrlztUyNRhWilVhP9gSs0q82SnqJSyUaE2y8Xvgsny1kecam
 Fg6Nh/uOYyTOtbB/v/kdBds=
X-Google-Smtp-Source: APXvYqwfRLPbJj1XCkk9zW4lToole8BO75rcB3EUWEwDHaxO6U1oC1lDB/SeSCgM5EHX3VkDbKaALA==
X-Received: by 2002:a63:a019:: with SMTP id r25mr11678998pge.3.1581562783322; 
 Wed, 12 Feb 2020 18:59:43 -0800 (PST)
Received: from localhost.localdomain ([125.130.116.2])
 by smtp.gmail.com with ESMTPSA id 64sm602643pfd.48.2020.02.12.18.59.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Feb 2020 18:59:42 -0800 (PST)
From: Jaedon Shin <jaedon.shin@gmail.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 0/3] PCI: brcmstb: Add Broadcom STB support
Date: Thu, 13 Feb 2020 11:59:27 +0900
Message-Id: <20200213025930.27943-1-jaedon.shin@gmail.com>
X-Mailer: git-send-email 2.21.0 (Apple Git-122)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_185944_424884_F1E878C1 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jaedon.shin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-gpio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Jaedon Shin <jaedon.shin@gmail.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series enables the ARM based Broadcom STB SoCs and supports GPIO
based regulators for its power supplies. and this has an improvement on
devm_ APIS.

Jaedon Shin (3):
  PCI: brcmstb: Enable ARCH_BRCMSTB
  PCI: brcmstb: Add regulator support
  PCI: brcmstb: Drop clk_put when probe fails and remove

 .../bindings/pci/brcm,stb-pcie.yaml           |  8 +-
 drivers/gpio/gpio-brcmstb.c                   | 13 +++-
 drivers/pci/controller/Kconfig                |  2 +-
 drivers/pci/controller/pcie-brcmstb.c         | 78 ++++++++++++++++++-
 4 files changed, 97 insertions(+), 4 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
