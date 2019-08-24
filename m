Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DF49BC83
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 10:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oiUVnEg8H8qVmOffrPouBYjlKMtc+G7s2dHBN2Koysk=; b=DQI
	gbnpu8Jtviht7lVmMlJ8xvBdsI8ShHH/HDfw+WD8jz1eugJCmRjVP1fG76iMXlCkAyJ3DO82U7fjo
	c4ZNrOqXl5d6sdcnar1cLlIFWPMossHsngdPZb8eOr1pfaz07aSjPISRymAgYr9PVxYmKKh3lrYWf
	0pxkuDWEW86Q9PTRpLih6zVEd21TW/39Bd/3smWOflWa15NzwJjqOX8gS1Y0pk/jZ+MAdGU+/3kTG
	PUj+HsYU3emBXA4dKsAwe96mfXWBFvYlwurbUmrcxORegM58xWFb+1kwLQPBcahMT+HKHd9ohjmlu
	gj8YvVM76prFskl00Or0Cp88HSzz6Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1R31-0001Q0-Re; Sat, 24 Aug 2019 08:05:19 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1R2k-000100-6U; Sat, 24 Aug 2019 08:05:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id g17so10612882wrr.5;
 Sat, 24 Aug 2019 01:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=QxuDzkK00aaOAlXF/Oj/CO+qrmGUaqzzWbuNX1BI4gs=;
 b=p+deEbblvZep63OJ0tg1ZKNocoHPtca5rUFwIcNYqjzJQ6fz3J4MFZx1TfRKM9Zquo
 puHSAqkeniym3CgmDQJk+r12Tz8UNQL3FWo/qhM9DEHEfb1UDSyvVOcnczXcMEt5KOLf
 ByK6/vbFyNUoGTF7qjLR0fwX2f3oAgmxLhqeP69pGoFB/49Oq/GVgNzJ8aeV1PyjeiQ1
 KbBySZ7q6CLmlCHrfsnW1tIBF1PgjAtRBb4pvOPlvY/jrjbin6F303vdKv2wYHb1GaNU
 v42PuoVnuVo3fA6TG5+fNl3ocDAjOGiVPgyqXVUCS71tZX63lshDW1iGT0pnDUPXV8Bv
 52xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QxuDzkK00aaOAlXF/Oj/CO+qrmGUaqzzWbuNX1BI4gs=;
 b=agR+hcuW+sl0rG/cEV3nj6e1ceNN5c5FttFt3P+VJCMGD/xgSiabgwI/VqhdoCgvTC
 6GXJsUnPRNLxRqLObjG/AbL/E143napMj1r5xiRMIyDgOb+zN39q78qgKILsfSk3w7PP
 eU7PuGcgrxT1Y1FFttNKpNfHfGS1VU7z5piOZxcMNfi6sxxehnudTqSMQWski5kr7fMd
 DhdC0ZfDQC05hjWnbwp5+GSDP4Zhz974SemyMy2ibPFMlK0bN5+OVGZrnJbGPr/ugViQ
 BPEbk5+OKO65giLf95jar+HkE6jkHxdhrVbDt3yVV6NrjP/RDvK7x6RY36yHojMeE3lm
 67SQ==
X-Gm-Message-State: APjAAAXY9NghEWND0T57Cm+UkI8E9ZJhGjiu6IOqFnlkSiSlyseStOf3
 znWdDoVQk3j0Nae/ZHp1uy8=
X-Google-Smtp-Source: APXvYqwWknuBhaNc3FSges1Tbji5oWqWhpZ+K1p772146QPQkalYEinGlEhMb/GbaP5Fuxtfph/2+w==
X-Received: by 2002:adf:ecc3:: with SMTP id s3mr9944795wro.302.1566633900177; 
 Sat, 24 Aug 2019 01:05:00 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id w8sm16615656wmc.1.2019.08.24.01.04.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 24 Aug 2019 01:04:59 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2,0/3] arm64: meson-g12b: Add support for the Ugoos AM6
Date: Sat, 24 Aug 2019 12:04:07 +0400
Message-Id: <1566633850-9421-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_010502_265173_A82E93B7 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Oleg Ivanov <balbes-150@yandex.ru>,
 Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds support for the Ugoos AM6, an Android STB based on
the Amlogic W400 reference design with the S922X chipset.

v2: correction of minor nits

Christian Hewitt (3):
  dt-bindings: arm: amlogic: Add support for the Ugoos AM6
  dt-bindings: Add vendor prefix for Ugoos
  arm64: dts: meson-g12b-ugoos-am6: add initial device-tree

 Documentation/devicetree/bindings/arm/amlogic.yaml |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/amlogic/Makefile               |   1 +
 .../boot/dts/amlogic/meson-g12b-ugoos-am6.dts      | 567 +++++++++++++++++++++
 4 files changed, 571 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
