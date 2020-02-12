Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D3815B331
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 22:57:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1wa5V5qtMcjv+vBE6xiqVFGCUPiioyFhtQHiqHweRKg=; b=AJb
	XdnlBrcQwnR/JOQqYCyMp9JkBuo1q2tABq32lLYXLZlEbXxL6KbCh3IU7BnrYbwmmSXujTGL0gNLg
	fm/XURpLY9ooQwYA9i4Eljg0Ib6uWS4GO+dUpD76P/z0AFl1Pjk3Cc7/1flz8UvvpuQFe88dZEGyc
	FGte/cPnIKsv/OOYW9IxeXGFS7v/bJj7hCZMdoGf9vpdmCCcL5S+5r8qAg9ureaVhGUrXG71qf92b
	4VoJgyvV2RFHityxyQFOtlI7jw9BICGAaroTp9bbZb1GFJCUHrNEU27TYaNJQB8i8DJZiYkkeyHPA
	3/PEmVYk38UvH7XnEe795ciNuqykBJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j200n-0007fs-NR; Wed, 12 Feb 2020 21:57:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j200d-0007fF-4i
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 21:57:28 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay11so1477705plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 13:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=fnUhPBKcSJIh4dSE9ZDVA1HmaYlN0KtrojiReV2ykb0=;
 b=cu2HVdgFsneUjNAodwp0mnQFtoeN6mjv2Ze87w4aV7ChgNbJ8jExut24J2vW66PS6T
 koVG7aLqf7ULojlqtp726KnUimqivbcuoUV9NtssprL5ko3YprdPY5xvqnlkTdPaIU/r
 8sM5Sd0Qpm6pjQxOwAl9BQbYkjdRX7X68XoEgg8aDvvtGHrTBoVcR05S8hcmY3wT23FZ
 T4Q3nCX9mPO7fNbwnOSAJqdM8mt/maw+2dkLhWpkNJSgWQaOGZTea+Jlfky6SrNUIQ4k
 1gqChzMwo5bt8sp/VLS/L4gnilV6Mhufl+oV3miS3u82WSBHBCTpb3KSoBpHxOn28S+A
 2UwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=fnUhPBKcSJIh4dSE9ZDVA1HmaYlN0KtrojiReV2ykb0=;
 b=eiDaCoZUHbmEaXJ3Xxq7V71wG37iJ4OR07FlAr3MtaI8T6ZOyQHH/NwksjdB5Q9cqz
 w9ZFtsaWGbn7heAUDgBDt7VK/PTVZ2tR+0nx8iHWLjCnSnuBWD9OUB8Tivuq6ypJfTgk
 3m/ur9EXiDmhXWMICRgqXWiUic4Jfzy5gBteyN9ngj77UuMHSa35Cmxi3P/affdm0nUF
 oaNPNArE0FS+Td9+WDDXcflP2cokCCimuymb7H6iB/o7b0MMymHEZ0Poel87/t3wRR3s
 MLJu8jJl+V3UQrWIPKHfP1fpu8N0EbEVQlzxMam/pTd3gsR/Rm6V6ZC5rrpl6jZKYY24
 xO/w==
X-Gm-Message-State: APjAAAX3zab5yP28syPhdhwuC1Y2AV94MBsGAiCtUhwGOVlucn9TZl3k
 5cGHdXzrOHzQOImu6jVeWno=
X-Google-Smtp-Source: APXvYqyH1U4B5ayiip+FCyTBRMApO8id3his1NPhWKEoZ9RMaWpVNfNcOs6FCRURmy4EYX2Y/41kVw==
X-Received: by 2002:a17:90a:fe02:: with SMTP id
 ck2mr1313325pjb.10.1581544646327; 
 Wed, 12 Feb 2020 13:57:26 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:200::3:533f])
 by smtp.gmail.com with ESMTPSA id r6sm214431pfh.91.2020.02.12.13.57.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 13:57:25 -0800 (PST)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v2 0/5] aspeed-g6: enable usb support
Date: Wed, 12 Feb 2020 13:57:12 -0800
Message-Id: <20200212215717.9474-1-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_135727_215039_2D5022B4 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

The patch series aims at enabling USB Host and Gadget support on AST2600
platforms.

Patch #1 replaces hardcoded vhub port/endpoint number with device tree
properties, so that it's more convenient to add support for ast2600-vhub
which provides more downstream ports and endpoints.

Patch #2 and #3 add vhub port/endpoint properties into aspeed-g4 and
aspeed-g5 dtsi.

Patch #4 enables ast2600 support in aspeed-vhub usb gadget driver.

Patch #5 adds USB devices and according pin groups in aspeed-g6 dtsi.

The patch series is sanity tested on AST2520 (Yamp) BMC and AST2600-A0
eval board:
  - AST2520: created 5 gadget devices with 15 endpoints, and all of them
    can be enumerated from usb-host side.
  - AST2600: created 7 gadget devices with 20 endpoints, and all of them
    can be enumerated from usb-host side.

Tao Ren (5):
  usb: gadget: aspeed: read vhub properties from device tree
  ARM: dts: aspeed-g4: add vhub port and endpoint properties
  ARM: dts: aspeed-g5: add vhub port and endpoint properties
  usb: gadget: aspeed: add ast2600 vhub support
  ARM: dts: aspeed-g6: add usb functions

 arch/arm/boot/dts/aspeed-g4.dtsi           |  2 +
 arch/arm/boot/dts/aspeed-g5.dtsi           |  2 +
 arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi   | 25 ++++++++
 arch/arm/boot/dts/aspeed-g6.dtsi           | 45 ++++++++++++++
 drivers/usb/gadget/udc/aspeed-vhub/Kconfig |  4 +-
 drivers/usb/gadget/udc/aspeed-vhub/core.c  | 71 ++++++++++++++--------
 drivers/usb/gadget/udc/aspeed-vhub/dev.c   | 30 ++++++---
 drivers/usb/gadget/udc/aspeed-vhub/epn.c   |  4 +-
 drivers/usb/gadget/udc/aspeed-vhub/hub.c   | 26 +++++---
 drivers/usb/gadget/udc/aspeed-vhub/vhub.h  | 23 +++----
 10 files changed, 170 insertions(+), 62 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
