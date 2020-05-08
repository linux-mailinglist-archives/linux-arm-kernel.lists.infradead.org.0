Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E401CA03F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 03:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GUh6oXkos+pTcFJpTJzsXKYkHM+N7PNIcCMQUeUJAZQ=; b=mbQ
	thavDfJTx0hppqqYV0xZJaGnK7JIDgA7aLwuJdI49RcTyKAI2VWFPj3Yx3WYej9//JQJht2JZYj/S
	L6Vo2aF3h+qT1+6u6qdTMtmfCyB3sDlu3Pt8/HAavUxsZXqfdIuw9cuLIuAtj1Op+FN6VPUF+DKd3
	gf5mKb8YYJ/jcYVtGD8F9kw+qihbHSHeAF8Z/6ziqNvfxPTTQKLGztyu9Lhy/FdD12wv42gPbhW6M
	xP4j39kc71cYySV9uojH+qXoJH7QfxUu4lqUvRwKI71fXg1wAWQ89kKhdEqVUGdigwmADvWMux/LH
	CuQa5m7yGgZ9aZyGe+wNqvvdqmt/HQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWs6L-0004Jj-AJ; Fri, 08 May 2020 01:46:57 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWs5y-0004E0-Kk
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 01:46:36 +0000
Received: by mail-pf1-x42d.google.com with SMTP id x77so109352pfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 18:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=alS8Kr7RIS62zN20gJA22RVwlZfBznZKCMd7Fh+rxNs=;
 b=GeSWVtCymiM2pRkZiRajPWrIg9Phe4A4Dum5/RXbulyy2pTFx37DkoJ3vgJQPbq9MW
 mf3uvUdLVFUtj9TWWhRT4xsy8nPUrV4+kNmUbV+M7J5x3KDLwvZrEpcORIanmdZcqaot
 xVrXu8dWMeOmcaGLN/uQNUT78TTuflDHZl2mgS0hD4Fv30ARH5wq6EYUkk7d2cVLE3o1
 VVGDDhKvyXHaYrqSX8RUuNe7an0f+NXBxeHDBAvAekTxjoSMyhjFrFuWV5ms0PxgUn++
 DCWmhcZ0pwc2yf9xKUCbHIMTNVAujIBZ8dFVTgSZ+bE6FWjuSyjf9XidcD1luwSLW9Z4
 hiNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=alS8Kr7RIS62zN20gJA22RVwlZfBznZKCMd7Fh+rxNs=;
 b=qhmZGsVn4VpiTvKoppo4VENsjvLRjvOZI139Irx6DnFKlsOEvXUDSuUZgobbEvBlMm
 MX162NXmH5BxP7SrXpwAlDr+TDJ5WnWADnZ0D+kALaAhEsVXBhPOnJfcETbjobhbkcNE
 g6/d5nQYDxpd4esd1S+TY5GVC5LEntkcECE9+DT/kutsZIZ3oLd/EDNHUm6xP+nYrABg
 +HuxP58obcTRVZ0jQTfzkxyAnrrES4STqeQMSxUa7HXCJ47SP+IOYeFHv6l8j4FH4rbt
 NRiHuECBmTUhltCLE9rxmFh6zzqEKeAQn54PFhjpgZS8lVFZ7L/oKuyRDJCQ2pDTp5Uo
 zvyg==
X-Gm-Message-State: AGi0PubnKg+3CMa3isgnCUe33pMx3CR6GMHEMkda8C8WcSY5w76/765G
 QaSlh2iZO5BHDzMAc/a3+0k=
X-Google-Smtp-Source: APiQypJnSQcMaolrg+UI+/NNrYXp5sdhjMIzzc+8xWsfA0ZYycN3cwtOCSb4v/IJVPkWRFUHNgwBkg==
X-Received: by 2002:a05:6a00:c8:: with SMTP id e8mr275081pfj.206.1588902393523; 
 Thu, 07 May 2020 18:46:33 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id f74sm9270816pje.3.2020.05.07.18.46.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 18:46:33 -0700 (PDT)
From: dillon.minfei@gmail.com
To: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH v3 0/4] Enable stmpe811 touch screen on stm32f429-disco board
Date: Fri,  8 May 2020 09:46:24 +0800
Message-Id: <1588902388-4596-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_184634_721586_0E722AAD 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

This patchset is intend to enable stmpe811 touch screen on stm32f429-disco
board with three dts and one i2c driver changes.

has been validated by ts_print tool

Changes log:

V3: just add change log in [PATCH V3 3/4] below ---

V2: remove id, blocks, irq-trigger from stmpe811 dts

V1:
    ARM: dts: stm32: add I2C3 support on STM32F429 SoC
    ARM: dts: stm32: Add pin map for I2C3 controller on stm32f4
    ARM: dts: stm32: enable stmpe811 on stm32429-disco board
    i2c: stm32f4: Fix stmpe811 get xyz data timeout issue

dillon min (4):
  ARM: dts: stm32: add I2C3 support on STM32F429 SoC
  ARM: dts: stm32: Add pin map for I2C3 controller on stm32f4
  ARM: dts: stm32: enable stmpe811 on stm32429-disco board
  i2c: stm32f4: Fix stmpe811 get xyz data timeout issue

 arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 12 +++++++++
 arch/arm/boot/dts/stm32f429-disco.dts  | 47 ++++++++++++++++++++++++++++++++++
 arch/arm/boot/dts/stm32f429.dtsi       | 12 +++++++++
 drivers/i2c/busses/i2c-stm32f4.c       |  6 ++---
 4 files changed, 74 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
