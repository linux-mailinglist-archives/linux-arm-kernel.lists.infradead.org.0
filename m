Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77588890DD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 11:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5WoWmKIzR3J9hxFxxma72yrXIMThOueIl/qziODYRY4=; b=kN8
	Zn11bbRC7rHZVJd0F1v2oQ973Rh7GMme2GFsUuidB6SoGr5lgmi+0vOQhrj/td7FIvUJGlKyWprl3
	eduy31WEPVToGJJ9e1SnmKMemaBVZSEe3zkn2ymazb6ZVscHfyeaCOMcegfVC6iHp2E//HjsmL2md
	h3KALKbiR5k+s7JN2sOaTYf8V8pDaBUaXdnPKKCdZLaOY6NtT2IjcDTBILAQ1I90CDoJPq4YVrnMJ
	jRNZK7h8AiQqL+LMInrKIQR3pO/lweg2tH+PWR1TyLlb8ZTs8HVSDIZPoa03fHvpnDUWM1xhO7L5J
	rgHaVlkTzI+/lslgSJAereVkdJs7uXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwjnI-0006eI-J4; Sun, 11 Aug 2019 09:05:41 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwjmv-0006dG-Jj
 for linux-arm-kernel@lists.infradead.org; Sun, 11 Aug 2019 09:05:19 +0000
Received: by mail-pf1-f195.google.com with SMTP id b13so48275996pfo.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 02:05:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=IcaO688fqJ9Hhcivif+YH1kMxvlYAd9l9NqrayDjxq0=;
 b=B4M42uVra5LiVmhJOvhhTjPxFA43R8rGeo3mzIKy7TitfKONG+ADx7ttHSXTIxkp0y
 4sGkuqIRyHij+FFfqfqayxLcHHaabinzEP2XZk4X8v4y53EraR8jX3XUJ6pPJC+XqcyV
 vM1aH+2ObUob7H5PExS3ro74QDalKIUjFTcTlt5SFvAjBSDCzDs38WEKkhhLkReqpW7M
 Bt8ROa3I9Mhn2YsWeV22f3m3SUjCBN/NIgDnl5m/fQfCDCktqh4IMRsYJTet096GNaPg
 qajFZu5o5s8xWMg2ti5Ph2Vrauix5s6K1hiqiQMSARpsr1v3jy34s0uIwgKZ5FnUZrEC
 dPNQ==
X-Gm-Message-State: APjAAAUuTP4+cpXoFjtaK5DSzbemQM/nH1geks8ASctzFKxsHpZ8uXTZ
 Bmc1kgn3f0D/FkUIAzljNeU=
X-Google-Smtp-Source: APXvYqx2blkLw/V4FEJpl8ZqPLTs9eoghw79426vNrE77wukLP1oTnruHW4TTYpJjIaWDZC5dITeDA==
X-Received: by 2002:a62:e801:: with SMTP id c1mr30719946pfi.41.1565514315923; 
 Sun, 11 Aug 2019 02:05:15 -0700 (PDT)
Received: from archbox.localdomain ([203.88.145.156])
 by smtp.gmail.com with ESMTPSA id q63sm134447761pfb.81.2019.08.11.02.05.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 11 Aug 2019 02:05:15 -0700 (PDT)
From: Bhushan Shah <bshah@kde.org>
To: Icenowy Zheng <icenowy@aosc.io>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Enable the I2C nodes for Allwinner H6 CPU
Date: Sun, 11 Aug 2019 14:35:01 +0530
Message-Id: <20190811090503.32396-1-bshah@kde.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_020517_865717_0D82887B 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (bhush94[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bhush94[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Bhushan Shah <bshah@kde.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds device-tree nodes for i2c nodes in the H6 dtsi,
and enables it for the Pine H64.

Bhushan Shah (2):
  arm64: allwinner: h6: add I2C nodes
  arm64: allwinner: h6: enable i2c0 in PineH64

 .../boot/dts/allwinner/sun50i-h6-pine-h64.dts |  4 ++
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 54 +++++++++++++++++++
 2 files changed, 58 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
