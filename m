Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F814202558
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 18:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sWhOttObr4oP1TGlw4cqbQFtGh5xwwXjGYPgqnJjPxA=; b=SroMk3o0PLCuL8
	NnxYTbua+tYqEIEmdJq5eCzZ2sLoB2P2zOkprE2Ao6ABW3V8xlMRjqQs/ryNExVs2S7xTcFpjdZYR
	ITA7bt9UaVGNG1WUL2TZTJugYNeUy0DFycaTE861UGK3bxtj+b4kJzHwBhKE0ajM606TO3sNBjbpq
	zstkrFW8lGf7nyDtikVNg1SshQZhAlYi+UtwCIusdKN89699xAzcFP7Cu+3esb/YZBSVZOSfP54OW
	5N/XWDyAqcRsMx4Kp+DIAw1AyuFUrFFaVycsOaXdX/a3nIU+GsuK000eAoLYqwXrBe+70IEO8bOrk
	0JvSPEOuq8uFC9/OPdIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmgUZ-00086Q-2M; Sat, 20 Jun 2020 16:37:19 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmgUK-00084b-6C; Sat, 20 Jun 2020 16:37:05 +0000
Received: by mail-ej1-x642.google.com with SMTP id p20so13540334ejd.13;
 Sat, 20 Jun 2020 09:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=j8AX8R3imm5kx+XT7/W2Ts6hqcoJrB3CcjQBEmxPQ64=;
 b=L782xA9SU2KpF1LK1w+gYtX+Znhse4rPvuuUsFUWseG/ssPmDzHViftMSSWAng6WMH
 i/uElNUm27fnXfL3hbJ3lkVADEYHKMtL5H0C4CmjKju1TI9cTAUjih9BmAfOePTZdC1Y
 stoPUS3Vxw3RVZNYM6quNTVAck3MuwCI/6V1LC2Sq2uQ2ZWGXSCo4k+xVQrkRWo8QZR5
 RF3502jufoSzJ5L+jMCJgxyIlbqPabIbFAbZslW0BZa9UJDP2J19EXh+6d1cKLa5hm8e
 XF1gn1YeJk+iBUM7Vpfn6oqpp47WaQdymYr0248D3Vd++0ET5JEBMcPm0Yfy6HuHyPpn
 0Qew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=j8AX8R3imm5kx+XT7/W2Ts6hqcoJrB3CcjQBEmxPQ64=;
 b=qIZz2pg+VjAosuF9INjubNotivNOZWw7vsTD0y8jmFM1spPU1JzXzfOr5mj44I5mFe
 U/YR3ME0XHHKO3xHNoVjdgDDmVQBRg/PXRk5JoIUaGbY08F4O9LHpa/HN78yZbi7lrgJ
 f0RAHS8FUigykiMCh1aYMCEqafOMx6XQDq+uVAJGQDO9h//NtJdQWvg8k6hRvQ+YsiXq
 53O9utf00T99qan+aNTUGOP32wpPvB5KGYCIBxN5ixkFFZKyAPTgIkHNjoICH/hkRWya
 +7zFZ94N9uLTTlfEYVGwTYc8k+OH4Sve7E4JDfrvEO37t1VUl1x2ORghUEivNtfJZpBs
 Y3fQ==
X-Gm-Message-State: AOAM531K1PAAMTzcXkUhxji3xnflBdTPtg21TTlhjH8pZXHwpLLzb5oW
 4fsJULXJoLBDNb5PJ/N7qar9CA0J
X-Google-Smtp-Source: ABdhPJytB0RQ7vP5S1NwhmU5+oyqtM1RLkmVXh+LR/PgeZMXEThswjoXXPc5XI92SlLqVC3pS4MTYw==
X-Received: by 2002:a17:906:3590:: with SMTP id
 o16mr8358243ejb.506.1592671022449; 
 Sat, 20 Jun 2020 09:37:02 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f1371df700428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:371d:f700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id o90sm7839442edb.60.2020.06.20.09.37.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 09:37:01 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 0/3] ARM: dts: use the SDHC MMC controller for eMMC
Date: Sat, 20 Jun 2020 18:36:51 +0200
Message-Id: <20200620163654.37207-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_093704_245589_AF71AF57 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Amlogic Meson6/8/8b/8m2 SoCs have two built-in MMC controllers:
- SDIO (which is supported on mainline for a long time now but is
  limited to ~40MHz bus frequency)
- SDHC (which supports up to HS-200 modes at ~100MHz bus frequency but
  for which we didn't have a driver)

Boards with NAND flash will now be able to use the SDIO controller for
SDIO based wifi cards and the SDHC controller for the SD card slot.
Boards with eMMC, SD card and SDIO wifi can only use two out of three
MMC based devices for now until the MMC core and Meson SDIO driver gain
support for multiple "mmc-slots" per controller.

Now that we have a driver for it, add the SDHC controller to meson.dtsi
and wire up the eMMC connection on the Endless Mini EC-100 and the
Odroid-C1.


Martin Blumenstingl (3):
  ARM: dts: meson: add the SDHC MMC controller
  ARM: dts: meson8b: ec100: enable the SDHC controller
  ARM: dts: meson8b: odroidc1: enable the SDHC controller

 arch/arm/boot/dts/meson.dtsi           |  7 +++++++
 arch/arm/boot/dts/meson8.dtsi          | 19 +++++++++++++++++++
 arch/arm/boot/dts/meson8b-ec100.dts    | 25 +++++++++++++++++++++++++
 arch/arm/boot/dts/meson8b-odroidc1.dts | 26 ++++++++++++++++++++++++++
 arch/arm/boot/dts/meson8b.dtsi         | 20 ++++++++++++++++++++
 arch/arm/boot/dts/meson8m2.dtsi        |  4 ++++
 6 files changed, 101 insertions(+)

-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
