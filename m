Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BE71F249E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:24:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z92Q0sqN1ZXe/nE7VgcwVVMxwDkdpVim9Lkx8erGGtw=; b=bo82Is7K/ssQww
	fWu0bR9ecx/k0k0ad+ILwxOszxy52E73iFyYr7rv4fKS+nOQmwFxm8WFmVaefbOp4s2YYSnsRe5Ex
	Fpttr/ipN/sb94VytzjTXdVDtYJRQMcb8pO45Og9OemQ3eHyu8JZGlV+xzHuuI22cjSds6vvepbBx
	UgjugKIYfctxPaA5vgto8NZL8eafHFTiy4Q+1w/QnuuvkkOGtEHe+nPeXjVp0bYJEUO7W+i3ZrAT8
	FQa2M230KxBBWDLIs3DziVxAHpDtB3TqwTHmOtxXwmCk6vgyU4p2QaJcnq5+273es6a/xucSzC1eZ
	wV6n631Wo6mRSt1xYxRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiR7T-0002qA-BL; Mon, 08 Jun 2020 23:23:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQx3-0006Vl-PM; Mon, 08 Jun 2020 23:13:13 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F1C820897;
 Mon,  8 Jun 2020 23:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657989;
 bh=kmJ5BQn3b7/Tj0a78WgwZwTGYE27MlHWgm1yPvfpigU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ItI77MPtEp+Sm4XiSrpxJmrEpqBKIfIFIC+Obv0bYcLeGEObzAbnYktKuWuJD8i8F
 sre6XUYBQFpQ0/LGlKFW9rirOSMZfDB5To0FXV+tCs6XoeuuQLR5mEzvLPEvHbFcGS
 kDNlHkNkfy4uI0sU6T+9VfRzm5s86c7HdNbHOwQE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 048/606] arm64: dts: meson-g12b-ugoos-am6: fix usb
 vbus-supply
Date: Mon,  8 Jun 2020 19:02:53 -0400
Message-Id: <20200608231211.3363633-48-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161309_963666_AD1ED243 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Neil Armstrong <narmstrong@baylibre.com>

commit 4e025fd91ba32a16ed8131158aa63cd37d141cbb upstream.

The USB supply used the wrong property, fixing:
meson-g12b-ugoos-am6.dt.yaml: usb@ffe09000: 'vbus-regulator' does not match any of the regexes: '^usb@[0-9a-f]+$', 'pinctrl-[0-9]+'

Fixes: 2cd2310fca4c ("arm64: dts: meson-g12b-ugoos-am6: add initial device-tree")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Kevin Hilman <khilman@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Link: https://lore.kernel.org/r/20200326160857.11929-2-narmstrong@baylibre.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
index ccd0bced01e8..2e66d6418a59 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
@@ -545,7 +545,7 @@ &uart_AO {
 &usb {
 	status = "okay";
 	dr_mode = "host";
-	vbus-regulator = <&usb_pwr_en>;
+	vbus-supply = <&usb_pwr_en>;
 };
 
 &usb2_phy0 {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
