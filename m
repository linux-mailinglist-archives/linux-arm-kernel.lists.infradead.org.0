Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 279FC46FA9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 12:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xHcQgEKpYpzpakU3pIqN4gC0CoDR6BCfvOnNU5NZdFM=; b=jseZybSE9mlMEm
	Btk/qWswlj8FTAWfnrC5DbIXKi268lohw18dw9OZF/IO+FImQx4ooqGYSprBudKLhZ1fTNaAE3BD2
	LrD0b2kakrs2XnIkq4pegAmWLGsl2EoOyYhXUXPnpfe83tltFmtL3GhwgjpUVU0G3PZzUyj6bwi1b
	IN2ZaVqCRHImIfyrgaxmQ3leiKNkyOc6W6yzkrH77RRaP3PcVVSdEdv1dVK/aUJH6XjbnIEVnKFW5
	M3Szi2X3YWcrluVZ1rLWJ/htORVIau5inLc5+PydqVOwwol9iD1hKq56kWlnJhYc1AKqFarX1+mXB
	Wg2mSwXZgYSaiwX10kbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc6AU-0002th-1n; Sat, 15 Jun 2019 10:44:18 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc6AG-0002rf-Ia; Sat, 15 Jun 2019 10:44:06 +0000
Received: by mail-wm1-x342.google.com with SMTP id w9so1090974wmd.1;
 Sat, 15 Jun 2019 03:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S3R0LLQ//2yFv2nqx2NreLb9B1XIfmWQYrxaoZNL4Ck=;
 b=MQf6ojqwu7MV9sf8fWDTviQXFdJqej3YOwrHVJ+F2m/68WDUtAtHzkCB+lHcPCixmr
 tSPH088SJOIAnbJnhxw07fTgiTIR6IhLmQnSdZzn6wksWy2e7G6GV9bDJje8cGjKCNqx
 hckzo6Wi7Xqm1e/a9kQluxyJZvxro9poTdi0DxOUixNPONqjEw9F46KwWbNmfroOpL4M
 ena0Vl2y+0I6wjtMRDT3jTzeubVPcV1U6aRkDe4V0XZgBJ0vWmmUzULR12vdFglChv6j
 FC+7sdl91L888HeoKuNYjFAZwj16J89kS0AfAF+T4jmTDu7Z6BDg4yADViHkRzPsx3BN
 cdKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=S3R0LLQ//2yFv2nqx2NreLb9B1XIfmWQYrxaoZNL4Ck=;
 b=DhDpZn832rput+rka38bDxW2c3kkt7NL7PJ05a6YCVUdxe7TeDbqPNxRupSy9rh6fh
 3Jxbi2YLCVBvHddicqLEOURm3Ro9Yejv9WeZPvTGm+8syd6Ci4cw86Y5xLH9hM1SLYAS
 2nT+ubv59s6rHfUTreFRx9WAOTpCdjOwuYaLkrQfCUIT8lSnOZCngZnxQh/7Um3eRYhc
 Q87YtayGzuSH1iFD05Yfs2n4mmHX1JJ95goibhxNTSphZASLys+bIKQ7gdVjA7s8I2sd
 LQHaIqiRlRyUEE0YTwXFMdLBppr+ugUHrnubkLVvs0ED8UkLAjIGObZv4cPkn/Qt+qL5
 x39A==
X-Gm-Message-State: APjAAAWnRlPaNRaj5mxS3vuRUKnTcS34Jn4JU6zYJj81LdFoLhoy8Smo
 p2RHc3ovkv7MAkc227Mif2sXPfmGjwo=
X-Google-Smtp-Source: APXvYqz3AGrVhz452+J/j0VdwEw70KSPpUUFJPajmLt/Zzo9mouiFNZ8nzMbqMSyjVK6NYISxyrFng==
X-Received: by 2002:a1c:e709:: with SMTP id e9mr6283589wmh.144.1560595442668; 
 Sat, 15 Jun 2019 03:44:02 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C20E00A9A405DFDBBC0790.dip0.t-ipconnect.de.
 [2003:f1:33c2:e00:a9a4:5df:dbbc:790])
 by smtp.googlemail.com with ESMTPSA id l12sm16761120wrb.81.2019.06.15.03.44.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 15 Jun 2019 03:44:01 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH v2 0/2] arm64: dts: g12a/g12b: add the Ethernet PHY GPIO IRQs
Date: Sat, 15 Jun 2019 12:43:49 +0200
Message-Id: <20190615104351.6844-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_034404_612588_B13CB654 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Avoid polling of the PHY status by passing the Ethernet PHY's GPIO
interrupt line to the PHY node.

I tested this successfully on my X96 Max, but I don't have an Odroid-N2
to test it there. The reset and interrupt GPIO part of the schematics
seems to be identical for both boards (and probably other "reference
design" based boards as well).

This depends on my other series "Ethernet PHY reset GPIO updates for
Amlogic SoCs" from [0]


Changes since v1 at [1]:
- added Neil's Tested/Acked-by (thank you!)
- rebased on top of v3 of my other series
- updated cover-letter since the GPIO interrupt controller support
  is now merged so it's not a dependency anymore


[0] https://patchwork.kernel.org/cover/10997069/
[1] https://patchwork.kernel.org/cover/10985175/


Martin Blumenstingl (2):
  arm64: dts: meson: g12b: odroid-n2: add the Ethernet PHY interrupt
    line
  arm64: dts: meson: g12a: x96-max: add the Ethernet PHY interrupt line

 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts   | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 4 ++++
 2 files changed, 8 insertions(+)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
