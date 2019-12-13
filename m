Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F07311E4A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 14:30:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NXLrn8mn5udT/6jKsyufUCqug4rNs2Cb2Zyn+8B+nGA=; b=UcQ
	7QyGRh5LLDg8+TqH4spIBY1JDwGqUDhn3z6b9tiwx93GqkGwLAG4LxWNGuHP+zyo8+WTluhf36RKc
	XBC2QT4xlSgd959wrGWuvIVG3MCc1dLYEVPZugDujGKZE8ldjymQrfYoYYlo6NELkMOZiKgzQ7w9I
	Avr6KZzJh6QGdVy8yITrXx0gS67cUeYXu6Xt6L+4npLLnkUiL4V9tVMGfb75BhqYCOf/y6csmurpS
	ADyiwECfQBTna/jNmvlWjGr/C4W1IcgB1q7UCaCy6F7RV6+OGW6P6Bwujuv2P47fhK34kp38QbsqD
	geJ9lD2/i5JqpW1z1hOa0OJHjcQ8O7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifl1T-0006tN-SG; Fri, 13 Dec 2019 13:30:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifl15-0006qN-Se
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 13:30:01 +0000
Received: by mail-wr1-x444.google.com with SMTP id q6so6618354wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 05:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=CcxRGFcCrtkq/Fa7c3EWJk3tVffr+ohpXoBBbiHwCUs=;
 b=cjQ0OZb/t830fsiw1m+88Q5m3W6dN8tb2EKys48brHEsYFriumeCBYH1gzs1T6XiNa
 KhtuxYzXEWvJPJ27bZlxSWvgp7VYtFnP2QlusXGZlXlPvJbKt2yi2FynYUxkpECpAjNm
 TG8sHRSnfxO2OIzRCaJjOpo0Puq/OiXDeuxQOxVouZaPxq1TPv8BC4HTqVZXsDFgTMVE
 gnT14QHP3ipUClIjCClxZu9mh6ubayg9egpQUtNgDdiDOctC5rkkQwl2TY0lewF4war9
 O5/PVU/RtFElEAoU45X82nuswfcKwyuaX0qqBIdLUPqb3f+GeNmBT6XkHKCD5RFxZOnw
 20Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CcxRGFcCrtkq/Fa7c3EWJk3tVffr+ohpXoBBbiHwCUs=;
 b=rFgzhxTTBzTW3cRtDkDpR7/bDjIHEStRR08oYGWxIhfw5VbHOTB2DLaJYHCANEINb3
 951YYvlawTPs2m3BZfE8ItFZIUyiO7zo4PZUgjyy9ZWVtS6EbWvoppmyBRv7HoJE3HGE
 4zOu9vCbKjzmP3/hRmcccpQwexFuVlSKKCVc8tOh8GPF2BozLv5yGT9Aa20wC/olzVfn
 ryUNe3ZZFswUZY6RX5FGCaHdZ3T43AFqgkrIOwMih2/UKYyR+k+gKb4rUHXHlNbt1EHL
 UuYeLpHCNA8W4SMeJJpfDI5nUUHmynjY3emA6ZTpp4koaM5/702JoECZ7ugwOj+MImBz
 GtTw==
X-Gm-Message-State: APjAAAUPVj1XNbnhK9IYXF9dTDFowt+2oF6XaZZiWZ8H5LnG/Xqonkf2
 I498YNOG6oSGczxy9s48WqOU+w==
X-Google-Smtp-Source: APXvYqz43qjGSJwCgT1Fuw9onIXmdIlL82ZNT9dug1PH1gM72NKtNtBBRiNR6mykRXSa3xxRxVS7Ig==
X-Received: by 2002:a5d:65cf:: with SMTP id e15mr13144184wrw.126.1576243798663; 
 Fri, 13 Dec 2019 05:29:58 -0800 (PST)
Received: from localhost.localdomain ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
 by smtp.gmail.com with ESMTPSA id n3sm10540543wmc.27.2019.12.13.05.29.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 05:29:58 -0800 (PST)
From: Guillaume La Roque <glaroque@baylibre.com>
To: narmstrong@baylibre.com, mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 khilman@baylibre.com, devicetree@vger.kernel.org
Subject: [PATCH v2 0/3] Add support of CEC wakeup on Amlogic G12 and SM1 SoCs
Date: Fri, 13 Dec 2019 14:29:53 +0100
Message-Id: <20191213132956.11074-1-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_052959_928226_179E6B21 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

this patchset add support of CEC wakeup.
We need to set logical address and activate some options in registers before going in suspend.
Registers address and options values come from amlogic driver.

Changes since v1:
- fix bad mask variable use to set logical address.
- use FIELD_PREP instead of shift value.

Guillaume La Roque (3):
  media: dt-bindings: media: meson-ao-cec: Add support of ao-sysctrl
    syscon
  arm64: dts: meson-g12g12: add syscon phandle in cec node
  media: platform: meson-ao-cec-g12a: add wakeup support

 .../media/amlogic,meson-gx-ao-cec.yaml        |  4 +++
 .../boot/dts/amlogic/meson-g12-common.dtsi    |  1 +
 drivers/media/platform/meson/ao-cec-g12a.c    | 33 +++++++++++++++++++
 3 files changed, 38 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
