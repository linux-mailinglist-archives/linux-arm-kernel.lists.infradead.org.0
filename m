Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C741CBE46
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 08:58:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=i3qaWGu67wvX4QMoLPKm6sEojzcF5u7Vva5KSdsl4tg=; b=Y7p
	io5TUyujBueBa7jm4U9CnFi4VMg/74kDva87cdFn4jZicUYAu8JVb2b0LcIGzb8KG9+1UaCcGcTKq
	d1x+ktoKFgvu1RzXcM8nvrfX2iJ6n72Rz1Eno235hJooYgrwcz5cx8lKuI9CrjBf+STBNcoyTpkfu
	u0xnhG0anKgAa+VYLgsfFSrIRpC06KqpCMMI3+nVdllrozKMcikHOo5M7yA5/tUcUiC9P1jErglAL
	F4fL3GiEu4qt7xn/IzqdhOcVi1cMyoUJM6lIxDPVKMXTsgkBgyiEppLJz2IltRctd1QaWQgLSt+OM
	NVmAIFNkQ8VxgIdqRuvPagUGOSQdxDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXJRZ-0000Kg-0e; Sat, 09 May 2020 06:58:41 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXJRQ-0000Js-EN
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 06:58:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id s20so1715010plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 23:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=N1XFUN54hBaoHoMSJaUUq6Q1IPBGgMS/vAMXMj1l0PA=;
 b=V65Vusn384Pmmz/0XBFGNr9uPszlOINvkAcu4/LApGat2SGIwwG/jL0M2kqQcHSdda
 m4z/u+rvsRrQAduhbxUBtw4nfEyLLqIlSUXZPMplgw578oBsUs0IO0hrusxqSRJBhNHx
 CgmAHNOoiyoP83f9cnbG+icrlTT3egq2IvLV14G/pr3veaVGh9p941naMItqscEIrKFZ
 Dew+AVyGB+kHtlc9e5Fcq2AbzEJvXx2/S6NmpKAgfhn1051N1RNNWuql3OAbhcFsc6dN
 GYQEKnVST/zODUJhHA0FmMywXIkTy4lKjlNMhW04OkgFdXzFbEGO6bM3CMPUXSyGM3cv
 eSsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=N1XFUN54hBaoHoMSJaUUq6Q1IPBGgMS/vAMXMj1l0PA=;
 b=XoaYTe+L3hDR5I8j2Rx2QWkXS5bTIEmzNrsyqmnGQSQkeisfgCdCxuB1T4MP65w+l7
 1BptjaehyjkzNisNAMfHqcvzl3U5bHWg+HVEd9hZcFJoE3HXMg8tsIoR5eP+hUvcL+aa
 tKP039gG/3VKa/a3PCq8i1qeZXu9XPFQLCnz0pHC0glXZFzgPPZzS3cZDIYksIogaqKA
 dnh9pdPurvn6cC23oNsMZmaIClIHm2qJ1rx1iEcoDYPX4yr6xTDpMJ1EBCdP73coqOHb
 YSTp7epDAjO+cdgaACWxyFgh3a0SmMiZSCPmicLg2PMSoOniy5G4h+1kaVosFpRymRhG
 /BnQ==
X-Gm-Message-State: AGi0Pub5lwWJrH+hvSWlf0dGICFNP0GbeqebMfClnDiZLIB3RDng6BIx
 YdNIJCax2PsJPlcTOeyJxxxfPe1zk4A=
X-Google-Smtp-Source: APiQypIGGgi4Y9M4smu76bcyFb/AGERt/4tIhOrijyH+H1PZ/GAjppEWMMv3hPG7Q+ZrsRCkwTJbfQ==
X-Received: by 2002:a17:90a:a78f:: with SMTP id
 f15mr9977822pjq.120.1589007508826; 
 Fri, 08 May 2020 23:58:28 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id w192sm3811572pff.126.2020.05.08.23.58.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 08 May 2020 23:58:28 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 broonie@kernel.org, p.zabel@pengutronix.de
Subject: [PATCH 0/3] Enable l3gd20 on stm32f429-disco board
Date: Sat,  9 May 2020 14:58:20 +0800
Message-Id: <1589007503-9523-1-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_235832_482385_3C24AA6F 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 dillon min <dillon.minfei@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

This patchset is for enable l3gd20 on stm32f429-disco board
has following changes:

1, enable spi5 controller on stm32f429-disco (dts)
2, add spi5 pinmap for stm32f429-disco	(dts)
3, add SPI_SIMPLEX_RX, SPI_3WIRE_RX support for stm32f4


dillon min (3):
  ARM: dts: stm32: Add pin map for spi5 on stm32f429-disco board
  ARM: dts: stm32: enable l3gd20 on stm32429-disco board
  spi: stm32: Add SPI_SIMPLEX_RX, SPI_3WIRE_RX support for stm32f4

 arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 17 +++++++++++++++++
 arch/arm/boot/dts/stm32f429-disco.dts  | 24 ++++++++++++++++++++++++
 drivers/spi/spi-stm32.c                | 29 +++++++++++++++++++++++++----
 3 files changed, 66 insertions(+), 4 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
