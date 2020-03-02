Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1D9175ADF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 13:53:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0z8SSBlzl2MtNHRTxOqmBHbjkMHN5wgU0/+YLCQPe2o=; b=Zo/Z5Nh02KR0/A
	0zp9isfOZxhSKqhc4cqUIcv3/Igul3pfYmulCDNwJEMHU+QgasMSGGsRA72a1EgZaqhbnigCp9Q7b
	FFvYtPjQ8ui8/PsSq8Mlmo6uocmCcevFY1+jDmFktIdc42dd7YuWuGYtoJwYk3Ane4T3EW91LtnZf
	TSeUotubH55fyBU8Pc88j2NGrUQ9/EmA9NP0hO6LbO3NP1XWH5Bcwinl9uVLCgscZWrXRT/qlEBEu
	U27JVqFHeX7AgrMdDeY2tlUFKwMZA958wX6H3jqApkNzeZ4HoU0XreFtnnVX/X2paL2/IXjkQXCRK
	5g1t6TMhIqd/fYs781Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8kZi-0000V3-NC; Mon, 02 Mar 2020 12:53:34 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8kZc-0000Ti-W7; Mon, 02 Mar 2020 12:53:30 +0000
Received: by mail-pj1-x1044.google.com with SMTP id nm14so1663597pjb.0;
 Mon, 02 Mar 2020 04:53:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YVlIC+o1X5elmxMJP01HUn8upQiGdfU1sajDVIWbpjM=;
 b=YWL92tOaLSZeNycLdLFxyiYmZMgQecJvctiYRM5E2vH1K2tV1g9ns3RtWySc7VDcVB
 lu+I4DHw1AQLcMmiYpGfikkJAvWt1qn7EHh6VfvVcRye9+kWerZ7rtCvpfJYCzxl0ADu
 NALgrdqJNF6zkOn8LWHmNdZ2ECtjgynPfqOyiIHkWw2bXXhomNFCHlkdovnPNQgSduZJ
 SODLphzf3FGoIkbY6cygVsPUEHkEsZmf7MQZ5SZqaoxLpeiaS/2jw+KeSAL5PyQgoOe4
 3SGO2mtSja/mE9lUxr/ltkOlX7xW/tpKp0CD22DG2XK9eAYzZ06UbLs5Jx7imW9YdzK9
 LIWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YVlIC+o1X5elmxMJP01HUn8upQiGdfU1sajDVIWbpjM=;
 b=i6902sh++PMlRIIy0/1LD0dj7xNYnL44d7RgX5LIEXvFIuJdjiqQbCzfXAljOJcBB+
 4/DowMV5+GDaca4Z/IMAvK+nGZthGHMqrHawJcxvGK6leQixWA/lCJ4fXZHIfX1tkhD3
 WeayYAKPpaUiXUfjsTTB6ue+GOI0suBakbxbIP6srCkFC6ZIqkfXlthkmiQfumMEzsta
 YPz/wlImPA6jncE2/NbQE/dg10t6APt5K1clSQkMG3rd3CzCV/vdGe6vSzanPbTq7Kk0
 iLvvnU5FFxTfqLn9HbDCL2D6NHvhgTHOt26DMzRXqkhk3ffMSIBuohlmquv2I9tFjvzT
 YVVw==
X-Gm-Message-State: APjAAAV3ncE/D7OD09x5bTCWDKtpRU4g++/qFdbcabSgOmzD917Wvo8M
 xaCCGFi4S4jG/k5/VSxb8x8=
X-Google-Smtp-Source: APXvYqya77N8AIuo7S/nQDOfsridOc39JQclxt2ko2cBQ4x1i6EExyxwGxTkdNnrd8pZDKP8I4C6Hw==
X-Received: by 2002:a17:90b:f06:: with SMTP id
 br6mr20963620pjb.125.1583153605167; 
 Mon, 02 Mar 2020 04:53:25 -0800 (PST)
Received: from localhost.localdomain ([103.51.74.208])
 by smtp.gmail.com with ESMTPSA id p2sm2138238pfb.41.2020.03.02.04.53.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 04:53:24 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCHv2 0/2] Odroid N2 failes to boot using upstream kernel using
 microSD card
Date: Mon,  2 Mar 2020 12:53:07 +0000
Message-Id: <20200302125310.742-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_045329_057732_45293639 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When we try to boot the device from microSD card, the board will
stall in between, on suggestion from Martin, Jerome and Neil it was
narrowed down to clk not getting enable.

Fix the clk driver help booting of the kernel.
Any more suggestion or inputs are welcome.

Changes since PATCHv1:
	[1] https://patchwork.kernel.org/cover/11384523/
            drop the patch as it was not being parsed correctly.
            https://patchwork.kernel.org/patch/11384533/
            fixed the subject and message for core patch.
            https://patchwork.kernel.org/patch/11384537/
Changes since RFCv1:
	[0] https://lore.kernel.org/linux-amlogic/20191007131649.1768-1-linux.amoon@gmail.com/
	 drop some patches and fix the clk driver as suggested by Neil.

-Anand

Anand Moon (2):
  arm64: dts: meson: Add missing regulator linked to VDDAO_3V3 regulator
    to FLASH_VDD
  clk: meson: g12a: set cpub_clk flags to CLK_IS_CRITICAL

 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 1 +
 drivers/clk/meson/g12a.c                             | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
