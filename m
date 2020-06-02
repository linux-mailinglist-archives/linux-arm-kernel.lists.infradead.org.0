Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CB61EBFB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 18:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5a0vclNEPTva+WKiwb7QGxoo2gmZEDKjaVoJOC+7eAk=; b=uhU8BpkzopIlso
	2Ygajg0aPFL+qPXRMMTY/DPFq7xSKtvdvuIJsuS307jzr+QcaRaHaSzxQO1esWmjnXxxhVOoupnET
	1zh4UAPahAAJEj4eNIGXgSRlRHE0I5uiIjWmwLML2RCr352pPa6/d6u20EGCB7JJ7uq21IoALGRsN
	mi506rKJjyxW/5IMsFQCyCPKb6fa9FI4Jw1eIGCpuK4IJTwS3/AYf5TxrU7gfSyPT0UA8D1UZNTh8
	Lhl26JMX16Ekk2/fjw7m2h8ucV1S9yMxOlfkExh6hPmlCs6oyFlSRaiz2yy/WusyEcpnSKqOK2vIs
	s9yCuiBOqm53c2Ogs3GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9Xg-0005Sb-2V; Tue, 02 Jun 2020 16:13:32 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9XX-0005Qj-8y
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 16:13:24 +0000
Received: by mail-wr1-x42b.google.com with SMTP id r7so4018795wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 09:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JGrW/c/JXuiBk8/1uTLfosohyqGpmE68ngouOkkOVGA=;
 b=pm/U5M0pUoU2QZjRE5ZUg8u9Le+vvFJOBE2CI/GZlPuz/pVxVtaPhaim03/Xa6a6Ol
 VkhChYR6KYfZVlApi84hbgeG2f+BKyiT2SYKuuCHOeGjarbgk+YDWrJ9gsFRh1mTQYtZ
 AuyyvrFrpvl3SHP6tRlsT+fBRddfiSuyH8pgZrKCDtOrKl3MjuxqcNK3mRM/ld4OC+Zf
 0g1WqcsH6kAK1vLrAiQKv/upYim57IsNvw7evUOmccguGHpmZCTS4prLmqFjf77a3pod
 76bWfI+FBACglrz62GSgIEx+wrcVUjRW9VVV2xnivP0SOIkXTLKprDlhDj5GavP98VUK
 SLlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JGrW/c/JXuiBk8/1uTLfosohyqGpmE68ngouOkkOVGA=;
 b=SRqGOCCjlUS+2gjkg7bDBEesiMNz8I2nDQg5HOW20bU60tdEv1SL03TJ2rAQl81bNk
 lGIMmwirUWzUiFz/Cgkd/Zud3p4n6G5vP74FGF+F6gr2+kL+RsJh6mJPBWWyqErTHeND
 YxISQm2IsgMpQcCTvHgmpP06/IZD0iqJCS46JwdTiXQnV+QPrhIzzyMOQDfmtwBv+UEV
 axcFfVtSkjvupLTeNIRM1B1UAklxWWzxUlATkwB3tW0XjUOJvXGyjUZ52ihYwZ5DkTlQ
 n33zhg1020ZnumElNRibf8OBedEB9VErL0s2DtEXieAzXk7JvuG1DtNuTg0xLsHK77Uk
 dCBg==
X-Gm-Message-State: AOAM531P1Tklk0ZuA4SKgsvWEkNt1sxl+Co7XBPj9p3cSmEo5NPaAj8b
 HD3n9INXiGHJxbWuX/iafdX7G0rw0fY=
X-Google-Smtp-Source: ABdhPJxQbm67ylfcRZwHdGK3hvPtk+y7Lzk9LzOh6QAB4Prv4mgYS51Mh8G7rvhrur95PzdYI5CiLw==
X-Received: by 2002:a5d:690b:: with SMTP id t11mr29377244wru.213.1591114400809; 
 Tue, 02 Jun 2020 09:13:20 -0700 (PDT)
Received: from cluster5 ([80.76.206.81])
 by smtp.gmail.com with ESMTPSA id p10sm5159726wra.78.2020.06.02.09.13.20
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Tue, 02 Jun 2020 09:13:20 -0700 (PDT)
From: Matthew Hagan <mnhagan88@gmail.com>
To: 
Subject: [PATCH 0/3] ARM: dts: NSP: Add support for Cisco Meraki NSP devices
Date: Tue,  2 Jun 2020 17:11:16 +0100
Message-Id: <cover.1591114003.git.mnhagan88@gmail.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_091323_331066_CF867C29 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [mnhagan88[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mnhagan88[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Matthew Hagan <mnhagan88@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set adds support for the Meraki MX64(W) and MX65(W) security 
devices. There are four devices in total, all using the same basic hardware.

The MX64 series has five ethernet ports connected to the BCM SRAB. The MX65
series has two ports conected to the SRAB, and two QCA8337 switches connected 
by SGMII to SRAB ports 4 and 5, each providing five additional ports.

The W variants of these devices have two BCM43520s on the PCIe bus. On the
non-wireless variants PCIe is inactive, hence separate dts files.

1/3 contains common bindings for both Meraki devices.
2/3 contains MX64 specific bindings.
3/3 contains MX65 specific bindings.

Note that Chris Packham's "[PATCH 2/2] ARM: dts: NSP: avoid unnecessary probe
deferrals" is also necessary.

Thanks,
Matthew

Matthew Hagan (3):
  ARM: dts: NSP: Add common bindings for Meraki MX64/65
  ARM: dts: NSP: Add support for Cisco Meraki MX64(W)
  ARM: dts: NSP: Add support for Cisco Meraki MX65(W)

 arch/arm/boot/dts/bcm958625-mx64.dts         |  15 +
 arch/arm/boot/dts/bcm958625-mx64w.dts        |  23 ++
 arch/arm/boot/dts/bcm958625-mx64x.dtsi       | 136 ++++++++
 arch/arm/boot/dts/bcm958625-mx65.dts         |  15 +
 arch/arm/boot/dts/bcm958625-mx65w.dts        |  23 ++
 arch/arm/boot/dts/bcm958625-mx65x.dtsi       | 321 +++++++++++++++++++
 arch/arm/boot/dts/bcm958625-mx6x-common.dtsi | 172 ++++++++++
 7 files changed, 705 insertions(+)
 create mode 100644 arch/arm/boot/dts/bcm958625-mx64.dts
 create mode 100644 arch/arm/boot/dts/bcm958625-mx64w.dts
 create mode 100644 arch/arm/boot/dts/bcm958625-mx64x.dtsi
 create mode 100644 arch/arm/boot/dts/bcm958625-mx65.dts
 create mode 100644 arch/arm/boot/dts/bcm958625-mx65w.dts
 create mode 100644 arch/arm/boot/dts/bcm958625-mx65x.dtsi
 create mode 100644 arch/arm/boot/dts/bcm958625-mx6x-common.dtsi

-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
