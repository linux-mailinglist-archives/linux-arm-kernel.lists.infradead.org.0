Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AA5142329
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 07:20:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dQC23HvaSkfJX0bEROEVSYJ0+0Qrg/hx4e0VR4WOWNU=; b=eELsokH2SLt2Cc
	zKtp78dMd3NwEuxJOFK0fWF1WO1zGgMJgHFagKmMJozBk0SuyE0ufttIplwHdCpRXOBbIsSHGGgwK
	pX2NZxKeE6Zl9v3nwTpyZQhtNcd6vRxPzEv9pRwcGGSRDQU5ShbIlAfm+N0MsQVZK+e3v5gI3/A2Y
	CDnm4Y0nCQF362Nig9Z1GPMvhvwB9egT2+tjW48EO+Qi9R6rqQRwA9HVPTTWoG81N/SE7j3MdBWg1
	RNCi25GxpFOLYpDrmnY+ZIzfRP7BvJyuErit35t6LPSx71zD8oF9XCzoh/bKN6K3IFLZC79sqfGr5
	HtmI38yvV47CfyIDyn8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itQQS-00089Y-KH; Mon, 20 Jan 2020 06:20:40 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itQQH-00088u-Sl
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 06:20:34 +0000
Received: by mail-qk1-x743.google.com with SMTP id x129so29060562qke.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Jan 2020 22:20:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=veSRAwdL+IkKpSiX9FZ7exJpiVjqG9c6YRouRhwRQyI=;
 b=hDz2Guv4huWbV10bTxAhdHNZHTAnETlxVsVQgjVVlEqUMQNhd0I1wv55UY1GgvXKN2
 IZsXsl0DLfYv/WUss1b2qQvDtyj5ddUgm/d+F25m99NqW8pwUdY46MjBCyy4W/K9+TR2
 4cyvUWf89UyjcPK11wBxBt9eYxNkPAgdl6Pk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=veSRAwdL+IkKpSiX9FZ7exJpiVjqG9c6YRouRhwRQyI=;
 b=rVZBO5UGGlBKXjbml3HNNK1oqEssqz+0CxW4Cv2gwpLrcYKiR/dFBGpwbbk7G5rtd9
 K5fVTnlr6QXsMPBqlHsRvOYaDhGLZrWGQ41BaI+lKU3Z8m/FJ2Zq5nO2dtQ/wX4gSRQR
 30jvn0hhAIpncr8RLAUgy2bkDraoIX7na7tdXWhjQs0TVYC/O1JzdNaodKrAMgLuQHP2
 7pkE9qXB+Uz/f5AQgbRBh6360I8UoqjwtYU5dkOVGO6Asojd/vfDKq7l/bnDrI9FYDp2
 b/NyPwE5yArCWw/4somWmaWnJ4ddYUXY/R4qbFKcpF2+SZNTlMzDz812td5HATEOlirC
 Jxfw==
X-Gm-Message-State: APjAAAXCYAt8vXSvwkIlqt7riYE2Lq3bfk70zOdqENDD5753L5icQEPm
 JYGLKPa6FFtPY8MKH+p0zaZPBEftERwtXDcaVbDcNCJR
X-Google-Smtp-Source: APXvYqwPCfCAIvg/mW/SSEIZrnSmxvGUEbfDpPmWZdUa4dkQmqF8uTDXkIP+CoYpNqJjR8RsTpVfMGixNz16+gAi79E=
X-Received: by 2002:a05:620a:849:: with SMTP id
 u9mr50338653qku.414.1579501227792; 
 Sun, 19 Jan 2020 22:20:27 -0800 (PST)
MIME-Version: 1.0
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 20 Jan 2020 06:20:16 +0000
Message-ID: <CACPK8XepSy6D4CNWjSWDDK0p7Dx_rneWne4t4uyy=di5nx3zmA@mail.gmail.com>
Subject: [GIT PULL] ARM: aspeed: devicetree changes for 5.6
To: arm <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_222030_099587_2AF99B18 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Jeffery <andrew@aj.id.au>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello ARM maintainers,

Sorry for sending this one is a bit late, I was off at linux.conf.au last week.

The following changes since commit 39be9e84f65be599919c7069bdad24dc2d9cd65d:

  ARM: dts: aspeed: rainier: Add UCD90320 power sequencer (2020-01-20
15:50:57 +1000)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git
tags/aspeed-5.6-devicetree

for you to fetch changes up to 39be9e84f65be599919c7069bdad24dc2d9cd65d:

  ARM: dts: aspeed: rainier: Add UCD90320 power sequencer (2020-01-20
15:50:57 +1000)

----------------------------------------------------------------
ASPEED device tree updates for 5.6

 - Cleanups for dtc warnings

 - Ethernet hardware checksum cleanups. A bug in the driver was fixed so
 machines don't need to specify this anymore.

 - Misc improvements

----------------------------------------------------------------

Andrew Jeffery (13):
      dt-bindings: pinctrl: aspeed: Add reg property as a hint
      dt-bindings: misc: Document reg for aspeed, p2a-ctrl nodes
      ARM: dts: aspeed-g5: Move EDAC node to APB
      ARM: dts: aspeed-g5: Use recommended generic node name for SDMC
      ARM: dts: vesnin: Add unit address for memory node
      ARM: dts: fp5280g2: Cleanup gpio-keys-polled properties
      ARM: dts: swift: Cleanup gpio-keys-polled properties
      ARM: dts: witherspoon: Cleanup gpio-keys-polled properties
      ARM: dts: aspeed: Cleanup lpc-ctrl and snoop regs
      ARM: dts: aspeed: Add reg hints to syscon children
      ARM: dts: aspeed-g5: Sort LPC child nodes by unit address
      ARM: dts: aspeed-g6: Cleanup watchdog unit address
      ARM: dts: ibm-power9-dual: Add a unit address for OCC nodes

Eddie James (1):
      ARM: dts: aspeed: rainier: Switch PSUs to unknown version

Ivan Mikhaylov (1):
      ARM: dts: aspeed: Add SD card for Vesnin

Jim Wright (1):
      ARM: dts: aspeed: rainier: Add UCD90320 power sequencer

Joel Stanley (1):
      ARM: dts: aspeed: AST2400 disables hw checksum

Tao Ren (2):
      ARM: dts: aspeed: netbmc: Delete no-hw-checksum
      ARM: dts: aspeed: yamp: Delete no-hw-checksum

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
