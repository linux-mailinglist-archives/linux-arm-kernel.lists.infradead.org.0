Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6EB18EE1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 03:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Bc8oF2+6S6ubTZJA02dxllWFvBPD9f5Tm+TvN48dse0=; b=PBD
	8XfIpuMlqYhOBy1Qt/aGe9SyHIm5TZZY3Es9knt5IY9FsfZWcKsVx0qegMQRkGZPmNtcA6KiDcVBZ
	iFytNGHB0E15biYpfhn7aGAwJISPDVJyP60jyimfpFcp2tP4fbNcWOHf0KfJvpCNjt2Cg5mJoBsW4
	dsSz8Yo7DhkURq9i3Lffg1fuF2D+giVH0YC2ZfEBEFHeCN4mJdHQ3aIKU0in0NEWKJIleHv8WihUP
	NasPIleszXM60wUTTz0xffme1xrzl/8MuuGR0AYAqm6dZKHyGPTRoZ1e+2khIAxBp6Rwd5G/Kl9xB
	8Cy6/UML/P+1zj56Tq4IcHBR+ceajWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGDD5-0002vK-88; Mon, 23 Mar 2020 02:53:03 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGDCw-0002v0-St
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 02:52:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id d198so7284789wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Mar 2020 19:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=g3D1T2s8xeCEKJtdQpDKLHeMWk+iIbcT1cUnMDq3oVQ=;
 b=JIMrCeOiFZ+EhAKSq1K/SSfbdjfgF0vCSNezoXk6DxhELrd0FkUhc65olt8IfzLG8I
 wvLQaTt5+cWgAZi+Ofeuyq+UQ6oh2UncHAEP5OjqUESrn3VPZBABbkLfn/EFSDkXvWGS
 Wgf3Yy+KiefUP1Rk0PrZnd45lBLVZApwUPDl11YHEd3u1AhjHiLm0lVOwJUGxJQqm9Ky
 Xeknll7xJ4BhBH7AtrQ/k9fTpVpi5ryPJD1TBDX5CZVss6konQZ4gu0LnCyrPmA0BQIp
 2xPYUz+M60LWCWRlRq+ff6HD68n+/puVRs832L+J9ovulOkIoA3iCzRIdtFj3V6+lQ+f
 W69A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=g3D1T2s8xeCEKJtdQpDKLHeMWk+iIbcT1cUnMDq3oVQ=;
 b=hHq6JX2xeD+Q9rL7FdRhmWqbbSjcnG6Y+qBuvauyuaN1nxaTOeurM46l1lt/kM3A3x
 QFLVnCw3DSZiYBPNnHe8KyXpHocof/9dwwdBVqlLehYyj1pioyK5mhtPZY0g2u9GZoD/
 FnadUBbUsJ3gCSksyM61fwZP6dUwEnB5rzdpDv+pyffm9nmohHTMSAXmEMuOBjCNYO/s
 WkT+k+gcNsKGHkGT09Ej8ZBB2WuaFvglyGYvvHZgF+ODhM0KaGdHArBpZoWcEAL7KyPD
 3VqiM+n/ccUkioJjPwQMF/VdAfOGhANk14ftE+aNyAS6U2Ahba/MRK7IiAdDuyELlQtF
 /FWg==
X-Gm-Message-State: ANhLgQ01OuefbbQCV+li3E+PymuRVG4fNHQZ2jK3ljf758AqB45hjaJ3
 X/DmkpMsXcsahU69izKi4Ms=
X-Google-Smtp-Source: ADFU+vuBWPIbHdxub03wv++q/0horgCPvUd6/8mryS+sGXiTU/JiT1nZuY3pCjFNIFfCKcSrhiXFRg==
X-Received: by 2002:a1c:6043:: with SMTP id u64mr23440931wmb.115.1584931972239; 
 Sun, 22 Mar 2020 19:52:52 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id y5sm19659713wmi.34.2020.03.22.19.52.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Mar 2020 19:52:51 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL part 2 v2] Broadcom devicetree fixes for 5.6
Date: Sun, 22 Mar 2020 19:52:46 -0700
Message-Id: <20200323025246.22713-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_195254_935984_D7D04542 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nick Hudson <skrll@netbsd.org>, Florian Fainelli <f.fainelli@gmail.com>,
 arnd@arndb.de, khilman@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 2c523b344dfa65a3738e7039832044aa133c75fb:

  Linux 5.6-rc5 (2020-03-08 17:44:44 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/devicetree-fixes-part2

for you to fetch changes up to 55c7c0621078bd73e9d4d2a11eb36e61bc6fe998:

  ARM: dts: bcm283x: Fix vc4's firmware bus DMA limitations (2020-03-22 14:45:24 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs Device Tree fixes for
5.6, please pull the following:

- Nick fixes the missing pinctrl-names property for the Raspberry Pi
  Zero Wireless DTS

- Nicolas fixes the VC4 firmware node dma-range property which does not
  have the limitations of the soc's bus node

----------------------------------------------------------------
Nick Hudson (1):
      ARM: bcm2835-rpi-zero-w: Add missing pinctrl name

Nicolas Saenz Julienne (1):
      ARM: dts: bcm283x: Fix vc4's firmware bus DMA limitations

 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts | 1 +
 arch/arm/boot/dts/bcm2835-rpi.dtsi       | 1 +
 2 files changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
