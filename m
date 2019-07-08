Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D17A62749
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 19:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T0skeN+6F8TvBCMpyPBm/oMLuPBzNhS0Ci8k2CptqNQ=; b=pNqT3WWkXMJmlz
	hEbCiZZYbf+3W0O9dekp8kyIjKUHX/G0yh0LfS3NrZkHM1WN3vYk1E3dX9xp0FiamRNYCRiE70ycy
	L2jZwkdacN1ViIfIFH1+muMrvSKWBj8I7Eo3TK1rgaym7E2vUEbIFfQl/+zIaHa/tbD6pbmeM4qeZ
	T2q03FNv/EZ9bILE0g17ps/j3upAZXIFex8nNRCEOMLeXfNEeziVh7XxKj/QyfLMS61p0TySObYjv
	amCHXduBDDsrIMl+rKPAni5FDVjdu1XsJrgfjB9TkcL7tmY45kHZtahUhv0JfKMhN2Yt8PB0ks1ib
	fsJajPEUOtDPiGbL9XWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkXWm-0004O9-MV; Mon, 08 Jul 2019 17:34:12 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkXWR-0004L8-9x; Mon, 08 Jul 2019 17:33:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id r1so11726551wrl.7;
 Mon, 08 Jul 2019 10:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Q4VeygN0Abg7eEmu02zPFKG/LiENvzvS9nqQqihkBL4=;
 b=Ms9u75JBvQ3ZWj+BbPa8CjoX1faSTZB5rIGp8XdgdD+Ph+4ylCuVHXHEpV83vhU0Nl
 0g1hzGyVSMzgFBNeszzX20XxoFoIr6vaBzjTKkesBzJXV6zZUxeEAH7kMoRL39cV2U8p
 hcqgM2xqn1LqHZly3XYgYNyxgoyvGu0dUp04G5jpcB3Icoqf7YT1nghZXcI2H0G+48/S
 N8U2riQAIlEyNF790SnBjFDHoQ2BQ6ZLL3bjbpefR1jXwbCc9fOnh/UbFiSZFe0IB6OD
 awZv2tPTY599CabMhLP82xSrw97aV6CgqeJex86/nMA50+nWzu3LLiSYJjxaUXOSrSOG
 YO6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Q4VeygN0Abg7eEmu02zPFKG/LiENvzvS9nqQqihkBL4=;
 b=AeoMf3qbS1XeUIXnVUwv6AucWmf2jv1eo3Km4pspqmfNTR+/t+m+/dlSAPYmk1e6jQ
 QmXvIhGAJArB0JVo3IeqO59bBMgjFQ24YAF1k3EeaaM1w5Ri04pDIw5Xzu1udiR+eJgT
 FDa7jtb9HgaJEJW6nFd6VKuIVWtIRY+3pw8lE+lLR4ZfSeWiVHAw8+tHJ9MI7qgNyNFn
 XmTQLMu/WkaSAPoCSkX3QSN024PpOlliLgRm9WyI9919ew419N0aazwCHSX8O874/Hg2
 iBB+bu7haxfHhPDen4TYj6tQW+fC53S/sz9FsT6Mg86XRjuMPqKXCKmkItRgMfymgDUW
 MBjw==
X-Gm-Message-State: APjAAAVji9ZxsjW4/1qFC+UZOGwXmJP3McclnULARmJk5BJqwgJmEpCf
 UZKQVkxatokfpEss+TZnbI+4ZnFt
X-Google-Smtp-Source: APXvYqzfDOsaXbuIlIodiPzCSM9B4fMT2fL+R7nHm6g6q58Rvjk/xi/cA3+25XYz89sPIVOalja1uw==
X-Received: by 2002:a5d:46cf:: with SMTP id g15mr1029573wrs.93.1562607225190; 
 Mon, 08 Jul 2019 10:33:45 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133D62000D8A33B20A298F2F2.dip0.t-ipconnect.de.
 [2003:f1:33d6:2000:d8a3:3b20:a298:f2f2])
 by smtp.googlemail.com with ESMTPSA id s3sm222975wmh.27.2019.07.08.10.33.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 10:33:44 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 linux-mmc@vger.kernel.org, robh+dt@kernel.org, ulf.hansson@linaro.org,
 jianxin.pan@amlogic.com
Subject: [PATCH RFC v1 0/2] Amlogic 32-bit Meson SDHC MMC controller driver
Date: Mon,  8 Jul 2019 19:33:28 +0200
Message-Id: <20190708173330.13217-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_103351_345753_29518EB1 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

this is RFC v1 of the attempt to upstream the driver for the "SDHC" MMC
controller found on Meson6, Meson8, Meson8b and Meson8m2 SoCs.

The public S805 (Meson8b) datasheet has some documentation starting on
page 74: [0]

The goal of this RFC v1 is to:
- find out how to set up the MMC clock correctly with Jianxin's help (see
  the description of patch #2 with questions)
- get feedback from the MMC maintainers to see which bits need changing


[0] https://dn.odroid.com/S805/Datasheet/S805_Datasheet%20V0.8%2020150126.pdf


Martin Blumenstingl (2):
  dt-bindings: mmc: Document the Amlogic Meson SDHC MMC host controller
  mmc: host: meson-mx-sdhc: new driver for the Amlogic Meson SDHC host

 .../bindings/mmc/amlogic,meson-mx-sdhc.txt    |   34 +
 drivers/mmc/host/Kconfig                      |   14 +
 drivers/mmc/host/Makefile                     |    1 +
 drivers/mmc/host/meson-mx-sdhc.c              | 1161 +++++++++++++++++
 4 files changed, 1210 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.txt
 create mode 100644 drivers/mmc/host/meson-mx-sdhc.c

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
