Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EC81746D0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 13:26:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=v0qpqsCsi9f/fTuVHS+qSe7Bht7JyJVMlz0yFpMbZ24=; b=TIH
	Bq0P3YvqjWg/EBak0DFEV4GVSJbw8Q5bq+6lLfvToDubZMwcCpEhyL2XLPEJWYrrO1WPJFyjgm+aF
	aU5jIi+21Qxk2FIpSIrYvgNhHf48jAKBa+/FWxbM067FUk4cAXTnUlHIJZRtR5OSEq4FKLqkSCUgR
	ovKZ9aqqZQQLwryIMtZf+/75FWh20ybFUj9RhJZeAe3qZCz9cQXPD8IkpWZnysYGB7JH5zlzSxW0m
	DvRRIvuxerBlDES1R+2RYEtee0NxOlOCphukmB55lqjfMule+D0DfBQt9oVYtLt17GDCYxXSDjYlU
	mK2fCq5I/0qzktaoTNuJFPBpwVff89g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j81CT-0000rk-DM; Sat, 29 Feb 2020 12:26:33 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j81CD-0000r4-54; Sat, 29 Feb 2020 12:26:18 +0000
Received: by mail-lj1-x241.google.com with SMTP id q8so6360291ljj.11;
 Sat, 29 Feb 2020 04:26:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=G4M7No0W7MlL6TGtf4siKf2g8xY+Dklf+axbxbiJtTM=;
 b=B8Mzf5jH+dGcmmB32lLf6PcfY7xrq2dnjVslNctEFHFHtid9N3MIcmvzITB/HW4V9w
 ZSo+BneUIKjF2w3ojjf4IAi7GWZjbp760ajBn+xK6oKhQxSr5LEmWRs+9dHnjGe4ppLC
 /Bw+2q29meF0WzIj2aLgpBMKnO0qZN54Nn2vlLUp2/6mCUQFXd171mjswBuGHNFxtuA6
 lod978M/F9lY1lGGFDOtz4o+m18pXbpF3VUDYcoYTGuITrmmF0pkgga8U0VX9apwMSOk
 0eC5YlwG/yh1LdDiLCs47zpAOPGNgItWZ7SsGbvZniAOFWOq9HuEjjyOFO15GLe4K/uF
 3FCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=G4M7No0W7MlL6TGtf4siKf2g8xY+Dklf+axbxbiJtTM=;
 b=k/ESmyD92r57UfqOKCYoP5Oq91uiom+SqCGPqgx3RW1BexTgO8/3I1Hfonwo93r6+n
 aczDXYqxzZ4//soYQUpCkJfgIKqCNLF+nvyfW9XifOIBuQiYWS3FFqLhZ58TKJwexk3a
 BCjun68I5XuBSB2IQxmXWUzJVOPnp5us4EP37x4xRYcCKybdEw2BEJyDfwD1PhWvrR+s
 bSOtSyT8t/gQirw7xlJ46PLhruc1kR8X516Xcy8UnAE3p4l4lZGG3Vn5v0Kzv/ia3EHp
 8WY0LDwb4GwBvqa9ysVgvudDTOepHpnPHGd7zpEauP4kgV5OMfLgOcsk0/JKEDEFqR4o
 nguA==
X-Gm-Message-State: ANhLgQ30rbDp9DO91C3ILO407QJ3tegh+s/EH4qvFwF8WP/uJaLAji/Q
 KNAGo1xmA9/6Ax3f81bpRRM=
X-Google-Smtp-Source: ADFU+vsYAIbCafT2eJws1CSvVzOBOCk8/7EjzjX/TM+KJJihzuOclMzduIzohsc0yHhQSxT1+d9IMg==
X-Received: by 2002:a2e:6a12:: with SMTP id f18mr6049058ljc.71.1582979175387; 
 Sat, 29 Feb 2020 04:26:15 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id r10sm8950775ljk.9.2020.02.29.04.26.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 29 Feb 2020 04:26:14 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/3] arm64: dts: meson: add dts/bindings for SmartLabs
 SML-5442TW
Date: Sat, 29 Feb 2020 16:25:21 +0400
Message-Id: <1582979124-82363-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_042617_218730_7C18600B 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 =?UTF-8?q?Jer=C3=B4me=20Brunet?= <jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds new bindings and a device-tree file for the Smartlabs
SML-5442TW set-top box. The previous v3 attempt [1] was 15-months ago
but nothing has really changed apart from a change to yaml bindings. I
have checked and the hci_qca driver does not provide QCA9377 bindings
so there is no alernative to the gpio-hog for enabling BT support.

It would be good if Jerome would check the audio card config. It looks
correct from dmesg output but the driver is new and there's currently
no upstream prior-art to copy. I've cribbed node details from his WIP
gitlab branches.

v5 - typo in card name

v4 - typos/corrections from Andreas
   - add sound node back
   - confirmed gpio-hog is necessary

v3 - change to Smartlabs LLC
   - removed sound node

v2 - removed audio nodes
   - changes soundcard name to "meson-gx-audio"
   - added missing uart-has-rtscts;

[1] https://patchwork.kernel.org/cover/10674939/

Christian Hewitt (3):
  dt-bindings: add vendor prefix for SmartLabs LLC
  dt-bindings: arm: amlogic: add support for the SmartLabs SML-5442TW
  arm64: dts: meson: add support for the SmartLabs SML-5442TW

 Documentation/devicetree/bindings/arm/amlogic.yaml |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/amlogic/Makefile               |   1 +
 .../boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts | 386 +++++++++++++++++++++
 4 files changed, 390 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
