Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6982B1D5AAB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 22:25:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=afgyKeJz5KrRa3hzoDvqq3q/8SsH4Am5AHWPxnrlcN0=; b=GjCWDQ5479wthq
	VSJmrBjorLl0YIy41FaN4f2Q0bTuzzUamLB0RQgvfnZGvi/Yv47rqBkOr/SfJP2U+tkSKpy53BZ4E
	RNJeDmHAReMYH1J15ONX1TgxiaJqsph91M+Y5N6W+A4U8rcXONG6dR+RAe0+4Wl1JgLVe4/s5xy1c
	B6WAQBKonKR5ODNoZ+uBnIzwbt+eY9oZxgoOl8gS3bCxA9ZSYbmQX9K4dWLmsBT1qq+E4YO0naePT
	YfpvoUmO2BwiwX/6RWfgQGh7dAnKVSbj7zTbGs7t8MNo2Ls2L31KSyzCiF8NM825JPCPD23b/Uknv
	UI1R6dcM7zZ+ByK1yiFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZgts-0002LF-Pm; Fri, 15 May 2020 20:25:44 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZgtg-0002Je-Ie; Fri, 15 May 2020 20:25:36 +0000
Received: by mail-wr1-x444.google.com with SMTP id y3so4983790wrt.1;
 Fri, 15 May 2020 13:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=u1+JLSREPICjU1AOf1yt9AUIk3xHHHjpOMeSnKLRdJk=;
 b=fdlLKeJmZHoBAKiRGldp8Wkgofrx2uoYboDia9Xn8EGJxP8Zt8ttN6yRL3vqfRxYLl
 LmVueoQjqABOiOFfkj7IGCDifjyw3oQoeAry3A5HT89sHJ54krJC+IJCjDu/d6UeQzBd
 RsUhWnOawCVhCziDYl8+gTHv8EcbC4AcuJaoW3zLpsRpN3HrS/vDgMoHaL5yD0BTV8YU
 ImcGQwuMUTcUdit16kSpD9obPkd91hWYNVj+LCrpyb+L/Q5gylnqxzD9P0OYlbh1Lhxz
 qBfeZnwiD/QFxLdTLbNZmklEhSya5Jp8xwgs5mCRELWuXTVp4fn+2QJjpAElew7KivkN
 EdOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=u1+JLSREPICjU1AOf1yt9AUIk3xHHHjpOMeSnKLRdJk=;
 b=IIMw2ZGtFFmryttkQyq/T1vJ/E01sI8MC486NtW4M62+0V8uoIJZq0iisIwANm8wu8
 FnB8xS+t8pA2YHEPMA0MpbrRNY6+GERezs3ZM9bvk6L5v+GA4/SJn1A+XRLoqdzbQq+R
 RhcqoYUxBS8qzqmRRrW7qofPC0mZu1Oh3ykfbcgKPNucRwXRjZpZ+G3c1uL+TBle0hMe
 yUJADEpMBApKkSIZGFaY+wgk30VBJVJ/vudKdEbMb3+gULXZBVECefzJub2khUQy1Alo
 AqaQKrPgxMLWiRDBG9AjgKDzyL1MQU42CKeGchImaOPH8DXCjnZQLCxQw9m33Y8zz4/+
 NTDw==
X-Gm-Message-State: AOAM531pPKaSc+kSG3B3zkmCqXt7vcswVGci6y9oGblGro4YsQhY5vlp
 hCK4z+LxIseAXs0111EdroI=
X-Google-Smtp-Source: ABdhPJywobO3is2E0W6Xkrzdw3Fq6CgAgv1LL4PeVN3GVH4Iv4kv3Q42vuiepsp5lpdHcHdKYXym5Q==
X-Received: by 2002:adf:9166:: with SMTP id j93mr5775356wrj.289.1589574326432; 
 Fri, 15 May 2020 13:25:26 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id v20sm6231074wrd.9.2020.05.15.13.25.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 13:25:25 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: khilman@baylibre.com,
	linux-amlogic@lists.infradead.org
Subject: [PATCH for-5.8 v1 1/1] ARM: dts: meson8m2: Use the Meson8m2 specific
 USB2 PHY compatible
Date: Fri, 15 May 2020 22:25:20 +0200
Message-Id: <20200515202520.1487514-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_132532_912073_D458AA28 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the Meson8m2 specific USB2 PHY compatible string. The 3.10 vendor
kernel has at least one known difference between Meson8 and Meson8m2:
Meson8m2 sets the ACA_ENABLE bit while Meson8 doesn't.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
This has a runtime dependency on the meson8b-usb2 PHY series from [0].
That one is queued for v5.8 so it would be great if this could make it
into v5.8 as well.

This patch is meant to apply on top of my other series titled "ARM:
dts: meson8b/m2: RGMII improvements" from [1]


[0] https://patchwork.kernel.org/cover/11544233/
[1] https://patchwork.kernel.org/cover/11544215/


 arch/arm/boot/dts/meson8m2.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/meson8m2.dtsi b/arch/arm/boot/dts/meson8m2.dtsi
index 96b37d5e9afd..2397ba06d608 100644
--- a/arch/arm/boot/dts/meson8m2.dtsi
+++ b/arch/arm/boot/dts/meson8m2.dtsi
@@ -65,6 +65,14 @@ &saradc {
 	compatible = "amlogic,meson8m2-saradc", "amlogic,meson-saradc";
 };
 
+&usb0_phy {
+	compatible = "amlogic,meson8m2-usb2-phy", "amlogic,meson-mx-usb2-phy";
+};
+
+&usb1_phy {
+	compatible = "amlogic,meson8m2-usb2-phy", "amlogic,meson-mx-usb2-phy";
+};
+
 &wdt {
 	compatible = "amlogic,meson8m2-wdt", "amlogic,meson8b-wdt";
 };
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
