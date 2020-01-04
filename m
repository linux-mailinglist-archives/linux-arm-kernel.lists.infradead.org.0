Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB14613034D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 16:34:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LY6J6Owvx6SJMtyq0fkc9h21gJhQa2BnRNj2GQjBK0Q=; b=cvk3UqoPtbMAq0
	r6uMvxk8m8HmC/SsPZHc1hy1RnP7N4KpqKNn9SU6DRvrD3y/IJq58jED7VKxWadOoElu1Hcw70MMO
	Q168RZQonV/3sNnJSHwo7ZStbp4o8eJ/JufCW/WpD9tTTq7JW1i6lTmtpm2f00WQVoehvgv9x+viD
	oCFRIvoXT3ly0SUhkruhDgcUJRbIZ0P77hh6FcsciDSgEcgxzqyeziJ+c68owh3kqmJJiLzcUQPi5
	uk83Jd+srPi/m8BT0AJxi8lljp1XZzHGSizl4dvrAyS1W5cUil6z1p29pR/lB1+ywfTNKJM1OcMsv
	y4xSGbtdoXPhk2198aSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inlRK-0008IW-FX; Sat, 04 Jan 2020 15:34:10 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inlR3-0008DD-Kv; Sat, 04 Jan 2020 15:33:55 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1inlQn-0000ox-Gq; Sat, 04 Jan 2020 16:33:37 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from roc-pc (p508F384D.dip0.t-ipconnect.de [80.143.56.77])
 (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 004FXass009220
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 4 Jan 2020 16:33:36 +0100
From: Markus Reichl <m.reichl@fivetechno.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 0/5] regulator: mp8859: add driver for DC/DC converter used on
 rk3399-roc-pc board
Date: Sat,  4 Jan 2020 16:32:44 +0100
Message-Id: <20200104153321.6584-1-m.reichl@fivetechno.de>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1578152033;
 4d7df217; 
X-HE-SMSGID: 1inlQn-0000ox-Gq
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_073353_827105_83553D9D 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Stephan Gerhold <stephan@gerhold.net>, Rob Herring <robh@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Markus Reichl <m.reichl@fivetechno.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On rk3399-roc-pc board a voltage regulator MP8859 from Monolithic Power Systems
is used to supply the 12V power line. This delivers 5V as a default value after
boot. The voltage is controllable via I2C.
Add a basic driver to set and get the voltage of the MP8859 and add a matching
node with fixed 12V in the DT of the board. 

Markus Reichl (5):
  regulator: mp8859: add driver
  regulator: mp8859: add config option and build entry
  dt-bindings: add vendor Monolithic Power Systems
  dt-bindings: regulator: add MPS mp8859 voltage regulator
  arm64: dts: rockchip: Enable mp8859 regulator on rk3399-roc-pc

 .../devicetree/bindings/regulator/mp8859.txt  |  22 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |  32 ++--
 drivers/regulator/Kconfig                     |  11 ++
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/mp8859.c                    | 156 ++++++++++++++++++
 6 files changed, 210 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/mp8859.txt
 create mode 100644 drivers/regulator/mp8859.c

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
