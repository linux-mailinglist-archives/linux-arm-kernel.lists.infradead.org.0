Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C46C8D5FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:29:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oEPAheu8vqf2uZGL9Rw+XvkxzbrbXqtwKxGbkH109AQ=; b=PKbgiKFAUmyXi+
	HDQmd0ojbEghkjKHvPs8BeUVMBAWoXRdE+UhUr3DY/AU+BY4pCk8/7+7hx9dYDpKtq/zFTEu/7tKD
	KX4dXDf4z58n7PoM3Cqf93iW8hosrNixM+pXFRT/pl95ffUAOsoLP/C68m/Wbb3nAimiWH7qiNiDI
	JqYpxA4vAqP9Cy0bCaxPHKSweg7BWnb+3Rx/Fba/j/FyIkgxcMgi2gBn+aXgK1RnaBE9RM8eyPV9b
	vXB3TIZ/ku3yA7EUNTETjXKpkitSBAFvIUgd/vFo9wTGxcXAhw9tWBDPGTfN4tCS66aKKDnnMV//h
	SSApNLatkDctU4hGoHvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxuHZ-0002b1-3y; Wed, 14 Aug 2019 14:29:45 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxuHE-0002YQ-KA
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:29:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id g17so111306133wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 07:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2IzMeyCw4b+7DKgb/SLhUrPAysAZa9vx3wztCpi4ATU=;
 b=VAPOmbqxGPwOnu/ahhV4JorGqlJkzO90cqNgECVmwc2YqbZP4mROMy3dXJ/1sfFI2J
 jpBnqHM3N6+eifsigJK3AM8SWvVHh4wWhSehha9PO4sAK1anbFSn/RGHNHxq7dvKwqTy
 3waODWYiIhnsP9Qs3ebrS22URajl2LL9ObAK0jz+9ntmB3EaVgVpsMlH3xLqe6dYn/ac
 C5xCtCa6nzJbuFhbESygbFQb8Q8Twmz0CT0wMj7r4ZhgGWS35T2jXiBnmdRZqpIFo5PD
 eXitIImiYDiCADlNI6CfhY4pRc5db7iQCHmxtlXUjG2D1ZCcjZt6OBQlqsBYf9Gd5FU6
 F7eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2IzMeyCw4b+7DKgb/SLhUrPAysAZa9vx3wztCpi4ATU=;
 b=pldFDuYOmJwuTC0WeZCg2Vh9ROXbmapGK1Y83VMDPEwWyRJRKPh4wUEocshKIlM0hR
 45LgXn7yunpGW4lR53loVYxmA1zdevrWODno2SgGWV7ALTFnIwSlZCVXSUskmhzv/ib9
 yzCD8DIKWAwAz8Xv4Js6eqdM1bgNO4hSKIiqvdLjMlOv03gSLWr1IBN3GJa/OFL+Brjt
 Yxe9vhjN/OsWCnpI8bZIfi1QKjKIFMhWAepbEp095dKpI/riAApyZXMTsmdNAkLIgkNQ
 O86lpqWgds35hK8wWtp3d6z2SCyj/SbNn9j32keV7qB38gdlxxxYL1jCPrD3QvOdegPA
 LEtg==
X-Gm-Message-State: APjAAAVyvlNCBjUYAaZRjs5GCH+GJpzMsXgWjKMLAHo/pBisGxjgrSEn
 pOpldca2FykgOBmHDwtGzE1rTA==
X-Google-Smtp-Source: APXvYqytAei+jJQfHJhChYLVNukfzd1vwskFZJVslXGn3U/8AlBoTjX7g3J6RtLDiVTl/Q6LfDLoGw==
X-Received: by 2002:adf:fa42:: with SMTP id y2mr53881666wrr.170.1565792962947; 
 Wed, 14 Aug 2019 07:29:22 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 07:29:22 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 00/14] arm64: dts: meson: fixes following YAML bindings
 schemas conversion
Date: Wed, 14 Aug 2019 16:29:04 +0200
Message-Id: <20190814142918.11636-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_072924_658767_47A26CD2 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the first set of DT fixes following the first YAML bindings conversion
at [1], [2] and [3].

After this set of fixes, the remaining errors are :
meson-axg-s400.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
meson-g12a-sei510.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
meson-g12b-odroid-n2.dt.yaml: usb-hub: gpios:0:0: 20 is not valid under any of the given schemas
meson-g12b-odroid-n2.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
meson-g12a-x96-max.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'

These are only cosmetic changes, and should not break drivers implementation
following the bindings.

Neil Armstrong (14):
  arm64: dts: meson: fix ethernet mac reg format
  arm64: dts: meson-gx: drop the vpu dmc memory cell
  arm64: dts: meson-gx: fix reset controller compatible
  arm64: dts: meson-gx: fix spifc compatible
  arm64: dts: meson-gx: fix watchdog compatible
  arm64: dts: meson-gx: fix mhu compatible
  arm64: dts: meson-gx: fix periphs bus node name
  arm64: dts: meson-gxl: fix internal phy compatible
  arm64: dts: meson-axg: fix MHU compatible
  arm64: dts: meson-g12a: fix reset controller compatible
  arm64: dts: meson-g12a-x96-max: fix compatible
  arm64: dts: meson-gxbb-nanopi-k2: add missing model
  arm64: dts: meson-gxbb-p201: fix snps,reset-delays-us format
  arm64: dts: meson: fix boards regulators states format

 arch/arm64/boot/dts/amlogic/meson-axg.dtsi    |  6 +++---
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   |  2 +-
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  7 +++----
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts |  4 ++--
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi     | 19 +++++++++----------
 .../boot/dts/amlogic/meson-gxbb-nanopi-k2.dts |  1 +
 .../dts/amlogic/meson-gxbb-nexbox-a95x.dts    |  4 ++--
 .../boot/dts/amlogic/meson-gxbb-odroidc2.dts  |  4 ++--
 .../boot/dts/amlogic/meson-gxbb-p201.dts      |  2 +-
 .../boot/dts/amlogic/meson-gxbb-p20x.dtsi     |  4 ++--
 .../meson-gxl-s905x-hwacom-amazetv.dts        |  4 ++--
 .../amlogic/meson-gxl-s905x-nexbox-a95x.dts   |  4 ++--
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    |  5 +----
 13 files changed, 31 insertions(+), 35 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
