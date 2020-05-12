Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 331DB1D014F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 23:52:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b7yyeVACM2CY6JG2+AIY3Q3GZ5usz3xgR1RbAJ43lQY=; b=kJKIHDAj3MFkwq
	8nGgfxvBf5v1XOl2RTV9qndC8ypYpyXVTWbvZZvRxZK4yQUbP7kS0cm6c+q1Q4giFmKiZkBemv73R
	mVI35Yoa4CiWbPrcvvrNRjFi5ZV79hUNlL2KI3L+AfmYXLataA7/ncwrWeE78jsCH38rAZVFxb8zl
	R50kuEIOwQ1633ilsLnaA0S3pzDSFjNmf+rCXxcgwjGq1/iFbyo3xIeC6eMdZYUOsAnjFgd2x1asW
	0Xgn7ENycB7BUnxy8h/SapP1DTGujaUam1APur0RykaLGQeEMotVS7IPmpFxwkB28CL0in5pAR+4C
	1asZ/+wwDcPY3dVOXzUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYcpO-0007vf-7f; Tue, 12 May 2020 21:52:42 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYcoh-0007Nf-Qw; Tue, 12 May 2020 21:52:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id w7so17917451wre.13;
 Tue, 12 May 2020 14:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6CrrHw2+5KWDhy3iiVXXbeJ0AsJcDeTot0gYMePzQBM=;
 b=UMQdEEEnDl8gTCVzl+ax4sDJdZbejUYeFdm0NXpvGzq7TPcWLqKL4wwxVSMNDy2K0J
 lqcgQLDp3O8W+5koPS9FNU0VNuz+P2dCb/xLkljphQyq41BwKPQUXrrG11m/uOWaN2ye
 r1WgJP1ieZJ8jcvGNI8hK2HSTAf3U2kAwycdiHV8foPiJ1sbpD8CGPNRbCCaGuAJd4Mx
 kYbBI+4uDB0rTzrGAgqK4Jjk7l0NtWVAS4TU64hwZaqve2C6fTBPtSE+8ssXrq3s5IlC
 QKmsym87IKL+ZaeP5M6tfIjowxKhLqn5+ChRsuEu5OUZj/f0QhCPu3DYYZKQgXpLW24r
 j5yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6CrrHw2+5KWDhy3iiVXXbeJ0AsJcDeTot0gYMePzQBM=;
 b=GAiiSrxT9bNKwiSgwbwD2ensMhF3eEVvnB7hPML1HozSITFBHu4StmeLG+RIlK1QVY
 QUpuYtova4wVqlm95ZaJ88KVnkMatUlRCPrADA6pnTe6u0bt+631Y+EiMm3HpCuiHH6b
 BF2KaHgumQApiVw0ASIIhMKAZe8gHSrYGxEfrBi1bPrAIRMb7MEQGJzIJDQXl0+k5ZLb
 9GkAIKxV1O4o1fUOKlz/9WbAB3/i9u+sCPrX/WigXd7XMLqRFNI1z4OFWWrKf0MvR+2S
 MrCBWTBA4ihKukJZC3wfelYRWQJYjC4Dr2YkglulVWT8l8W1QhGHA2JomAXBZV2jZACc
 5O9g==
X-Gm-Message-State: AGi0PuaEXcRkjzp0HLVGSeTAdEXMmax4ZWR977bViNXVULtrSF68YK+s
 efOeUoSjy9uN8XdWsgvRW5lh0HC5
X-Google-Smtp-Source: APiQypKNwrLxB/fB1Wzqappr40dMluVL/cCeENBj+MZBO20q6ZX7Q1C1L7w9YtBXmRqWpfe/dQ1kvA==
X-Received: by 2002:a5d:5710:: with SMTP id a16mr18085669wrv.209.1589320316098; 
 Tue, 12 May 2020 14:51:56 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id d9sm9154234wmd.10.2020.05.12.14.51.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 14:51:55 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 0/2] ARM: dts: meson8b/m2: RGMII improvements
Date: Tue, 12 May 2020 23:51:46 +0200
Message-Id: <20200512215148.540322-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_145159_879866_388BBC4A 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>, andrew@lunn.ch,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kevin,

the fist patch in this series connects FCLK_DIV2 to the PRG_ETH
"additional" registers for the dwmac Ethernet controller.
Now that we know how RGMII and FCLK_DIV2 are connected we can
add this dependency to get rid of CLK_IS_CRITICAL for FCLK_DIV2
at some point.

The second patch fixes the RX and TX delay. The 4ns TX delay which
we have used so far is incorrect and only worked because we were
using an unsupported clock divider in the PRG_ETH registers. That
divider has been fixed with commit bd6f48546b9c ("net: stmmac:
dwmac-meson8b: Fix the RGMII TX delay on Meson8b/8m2 SoCs").
Instead of "just" fixing the TX delay we can even do better and
switch to phy-mode = "rgmii-id" to let the PHY generate the RX
and TX delay. However, previously we didn't know that there was
an RX delay applied by the MAC on these boards. Only the additional
information from Jianxin in the other series [0] made us aware
of this. Without the other series there will be a 4ns RX delay
(2ns from the MAC and additional 2ns from the PHY). Due to this
dependency I did not add a Fixes tag, because backporting these
.dts patches without their runtime dependency will break stable
kernels.

TL;DR:
Ethernet TX throughput on my Odroid-C1 improved from <200Mbit/s
to >700Mbit/s (measured with iperf3)


Dependencies:
This series has a runtime dependency on v7 of the series called
"dwmac-meson8b Ethernet RX delay configuration" [0]


[0] https://patchwork.kernel.org/cover/11543997/


Martin Blumenstingl (2):
  ARM: dts: meson: Add the Ethernet "timing-adjustment" clock
  ARM: dts: meson: Switch existing boards with RGMII PHY to "rgmii-id"

 arch/arm/boot/dts/meson8b-odroidc1.dts    | 3 +--
 arch/arm/boot/dts/meson8b.dtsi            | 5 +++--
 arch/arm/boot/dts/meson8m2-mxiii-plus.dts | 4 +---
 arch/arm/boot/dts/meson8m2.dtsi           | 5 +++--
 4 files changed, 8 insertions(+), 9 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
