Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC109714F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 06:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+yMpYpD4MCYX7qiwZyuUgS7aYfnqj2vYsVjWDSGWyow=; b=cuHEOW1vRUQlRD
	Bw7C9pRRw22VhH2QNI/JMa/Yg0BUKWJSaWgWMnlRQAV/BopvQCAJD9YQlX/QFxSfqB+EeusQGSTzc
	jrKQ77oflO84HmEFh7DOqspZ1rrrj1i7pzPwuEWXevHGNpXrSJGMTVrV+y519EZQwt2niSJPDl8vp
	klg0siHKgmxiZ4zrP9pcv4+myV4U22BVVe09pcCspsORFlSeeScwxv/PTPQMrbDL+D2I+S4e0T5zO
	9YMoDF5vE9DW78+AdoSRPtMUyRGByQ/PxXA5Iula/dtv5/Eg64Ai6ZPOvKCqMNoaVT311LXWWHHb8
	B7ZGBv78Sgl9tuBF/5uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0IgP-0005ei-1b; Wed, 21 Aug 2019 04:57:17 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0IgE-0005e7-VJ
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 04:57:08 +0000
Received: by mail-pg1-x544.google.com with SMTP id w10so587552pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 21:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F3L4II85eG5+Ju0PiHDYgaOg83dmrN2U4zsjrFTvtVk=;
 b=kML78E9Z1HY+LqS0ocE+R+cMN1dL8FMwBoo6lyCPnO9Z8D3Vqpq3umvLjFElQSBX1v
 AYAwJhVbDwa25PuCimdjnsdS5F1lmRkJXeCxFei+Xxhz/TrP2PJR9uqmL5b4Gb4ZTmCk
 Muxur/MJCO3cRCQuZBH8aZvAZ4n65gNk2uXUTfGFWIBHISVH5fsXguZMxuiFzI6m75+F
 ogQ/QXu9tj0aFF4lIxy8tvIF7r4r5OzIXgUtUTbc3nP0wd9PWeod4szuBj/Une4ahb2J
 M4gxvM0CweUIKFRiG3yr3pg837YWTKOCxx6zasTO7tcd0b8xXnKfqTZ7NFp92IqMbflB
 nc3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=F3L4II85eG5+Ju0PiHDYgaOg83dmrN2U4zsjrFTvtVk=;
 b=Iz689lEf22aR4kqH01PozmKfRalogyFFht0Kl4LTtz4ZVWyBufp09JGbcudaeREhPT
 tspf9xvmTdF5hQRGnhhxLwRZXxcjaRMHw7BhUBos1TD0CYzNEk8qokelCqWdK6RQ7m6K
 /7el1oDq19ggWbGKOE3bl5bo9/ugkVyTTwS/rpZR+fmASYMkUWOcZhv5sHp+7+d+fc/M
 Ng3QBz8TBN+nSd62P3XkWdBxJacSB/4ZFLmInA5/cz4VD0uYLiXEBN5cH+aw08aCmP5d
 13EmvXK2eNfnQbmIwatp/acC+H5xmBMdHWM/RUDKG9F2HKht8gSdE533rn7cRb1aBece
 1mgw==
X-Gm-Message-State: APjAAAWNyoGMIcLAt9PJRJ7ML6dUXZUXrpWqUd/MMjBMab1GfUctgCwl
 WJNypB6GaEwwnum/z49I1qA=
X-Google-Smtp-Source: APXvYqzSOY46Y5UrW2/vAhHHp3XzP2p/mtKr9xpqX2YfPZx41r5z1RlkJxKGMekNLx4bEdSyXmD22w==
X-Received: by 2002:aa7:9477:: with SMTP id t23mr34247104pfq.29.1566363423580; 
 Tue, 20 Aug 2019 21:57:03 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id x16sm12279629pff.99.2019.08.20.21.57.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 21:57:03 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Andrew Jeffery <andrew@aj.id.au>,
	Adriana Kobylak <anoo@us.ibm.com>
Subject: [PATCH] ARM: dts: aspeed: swift: Add eMMC device
Date: Wed, 21 Aug 2019 14:26:55 +0930
Message-Id: <20190821045655.21752-1-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_215707_012214_C3F5BF05 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Swift contains an eMMC device attached to the second SDHCI controller.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed-bmc-opp-swift.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts b/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
index f14f745b34ca..25bc0e1bbced 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
@@ -963,4 +963,15 @@
 	status = "okay";
 };
 
+&sdmmc {
+       status = "okay";
+};
+
+&sdhci1 {
+       status = "okay";
+
+       pinctrl-names = "default";
+       pinctrl-0 = <&pinctrl_sd2_default>;
+};
+
 #include "ibm-power9-dual.dtsi"
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
