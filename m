Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 652D575455
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:42:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=n/v0FyoHHcA/4jet+uyuMo0ziqMTle5VBUb90mVuhDE=; b=e5Y
	Ik4DCjlNft6b539sIqxv1bA4I13jnDrYchoQEx/ddi1Tm4ZIHOUTfyDpTAvpZNPqa6nSm5DX+uUqp
	2zEhT7gUMbXHKk6miNU+FivAbZ5A1BU7eqPl5v3WQ9UboWPlxI+aZurDwJmtIhejMV+Ni7LiN+NQj
	JmysHje9zDdFtijXIlwY0nUwOO7S1wyL1fhAfW5iMiUuG4Y6KKknTGaAKeEL//qB23yVt5cLO+seK
	me+nMd9B99zN2ZHcJlaqFPB+7tAAlfB7mbOsOPImj6981RUTHs8sjsbDOH0FRfsuwMZOcFjtTY1kF
	N6TftlX316YqlfwmYV/oMz1/hwqD3MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgoe-0003Hl-L2; Thu, 25 Jul 2019 16:42:04 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgoL-0003GK-RQ
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:41:47 +0000
Received: by mail-wr1-x42a.google.com with SMTP id n4so51563734wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=k3owj89F9XfdBkrf47dCANR14zVA50NeVSBAUPPeOPs=;
 b=umW0sPsijyVEs9DewxFfVmBnd2sgqpy2A5TDYly45YOZVg+e6lcZGkAsggcArbEi1o
 he4Cg9YBfldmG3hxvat9Naz2uLBE/pRRenuCA6Kddum/X3DPqXkdn999wFqDb0gQ8mnN
 1nQQ12cfttNg0NMX4LGYQ3ejD4bJj67nWPOE9qXxn9eF5otUBqDmqJCFRCxrHQWl7Ufw
 xkRiVOQGhCkI0hiOWyMYBbxltt2IuBW1XihVA42EoN0IcVTYgBAo9qoOydRjP3QvUT9E
 p8mGmfrJ931/M+hbgxFfqwEdwflDVYx7cH1S9yqiydezGJxgIv7bLVg961Cd+y8BySES
 k3pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=k3owj89F9XfdBkrf47dCANR14zVA50NeVSBAUPPeOPs=;
 b=Ehcrx05E0yoKV0zbPP20eMpjUGSpG7WESl2sEdiijnA1vbDYMkzPpUnZIKriPgoKBP
 BHmfICKLACoSdfQ+z1ADUdeCTNeQlgOzfhOdDXYgdLl8LTQfHNGbQUBRXNiW/XQcaH+l
 /l1RDVNNAz8O2hC0laehOk1yUFFfFW1Lg85wIVVmAHLpYjM9hm6kI66h10z5kTrSStj9
 QouImQltBFe+26wb/9h4LImkCpNmH3u5/0OO4/EgAGUsbKy4sYirCUYazvaMar45xV3t
 FTZvpJuN+AKiahWHdEMAU/g7L5zaIYYgu6330vyS9uV/oJfBfTsiCICjcm9IYbUTu0vD
 kK6A==
X-Gm-Message-State: APjAAAUL4UnT/UrHS4TxesIWex/keLNEwUFqiHFSypVlv+o4UEcXB/Wi
 13OlYKJog2fS0bFOVyZiPVPngA==
X-Google-Smtp-Source: APXvYqz7o0o69gasiQIG+rfUkpDkVoXb5hycjwGXWhYjF6LgNk/JI9765FCz1bEwLJOV1/QXnPsxmQ==
X-Received: by 2002:a5d:5448:: with SMTP id w8mr95321121wrv.180.1564072904380; 
 Thu, 25 Jul 2019 09:41:44 -0700 (PDT)
Received: from pop-os.baylibre.local ([2a01:e35:8ad2:2cb0:2dbb:fac9:5ec0:e3ef])
 by smtp.googlemail.com with ESMTPSA id
 y16sm102488858wrg.85.2019.07.25.09.41.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:41:43 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH v2 0/4] clk: meson: ao: use the new parent description method
Date: Thu, 25 Jul 2019 18:41:22 +0200
Message-Id: <20190725164126.27919-1-amergnat@baylibre.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_094145_887232_F42EAE78 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: narmstrong@baylibre.com, sboyd@kernel.org, khilman@baylibre.com,
 Alexandre Mergnat <amergnat@baylibre.com>, linux-kernel@vger.kernel.org,
 baylibre-upstreaming@groups.io, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Meson SoCs clock controllers use the string comparison method to describe
parent relation between the clocks, which is not optimized.

Its also use bypass clock made from device-tree clock to provide an input
clock which can be access through global name, but it still not optimal.

A recent patch [0] allows parents to be directly specified with
device-tree clock name or without string names from localy declared clocks.

This patchset replaces clock string names by clock pointers (as possible),
removes bypass clocks and uses directly device-tree clock names in parent
assignment.

Tested on GXL, GXBB, Meson8b, AXG SoCs by comparing the clock summary
(orphan too) before and after migration.

[0] commit fc0c209c147f ("clk: Allow parents to be specified without string names")

Change since v1:
- Improve clock parent assignment for "fixme" using name instead of fw_name.

Alexandre Mergnat (4):
  clk: meson: g12a-aoclk: migrate to the new parent description method
  clk: meson: gxbb-aoclk: migrate to the new parent description method
  clk: meson: axg-aoclk: migrate to the new parent description method
  clk: meson: remove ao input bypass clocks

 drivers/clk/meson/Kconfig       |  1 -
 drivers/clk/meson/axg-aoclk.c   | 63 ++++++++++++++-----------
 drivers/clk/meson/g12a-aoclk.c  | 81 ++++++++++++++++++++-------------
 drivers/clk/meson/gxbb-aoclk.c  | 55 +++++++++++-----------
 drivers/clk/meson/meson-aoclk.c | 37 ---------------
 drivers/clk/meson/meson-aoclk.h |  8 ----
 6 files changed, 114 insertions(+), 131 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
