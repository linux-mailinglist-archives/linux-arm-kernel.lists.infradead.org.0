Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09CE1646C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 15:19:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uB0a2Q7W8uwfS3Ps77sZPp2GejFW2Xzh2yFE9Y0vAVk=; b=hAsacNRJpUX+IT
	2tbmKYMawTRmbIeW13ugYbsar6cdKPeiDZLLBOBpHh9NTTS9g37GK8YvtY3pTRUHDXhD2Ydoew6aR
	kniBAeSlZvdnK6SgzX+eLkOFg4QZwF4QgYCPUjy1WA5A3fWto0iJo+hX815pWesdbg3TyaYmLmOTQ
	DsrNzV4VbDYtN31tLexYES5dAOdxWRdtlJ2fBE+09Qtv4g9CYWvdDQvp7P4vd8fQkT9Uwi186DwwO
	p21FiaDvsAxFWAvINTZUnW8IgvAsyqH0G3i9KQADfw1kR1OCVp03TSqFUEObBGxZovH11BNs7GDxY
	SJFjPsnKX/QxQ3GP4fEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4QCB-0002dr-52; Wed, 19 Feb 2020 14:19:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4QBF-0001q8-OI
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 14:18:28 +0000
Received: by mail-wr1-x444.google.com with SMTP id r11so707172wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 06:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m6wyWMfpOh6h06xGncQF4ABfwmrzTVZCtOS7mfMUTXc=;
 b=rGhtHgzFPVIvyePVL2F0QQtaCcH4EzshdF9w0AcP3bP+qg/nXW7c5fAKfs2P25yueG
 4bb6aNJhWh1zKuAPO102lIhF21/Lk9yOH3MX0kFyPZ2ReASa6Gs/10VKmhL/tG0KbYEh
 V4tOeMBent5Wu+nTrWZnOdVbFCTOxyq6LUCKI4o6dd/3hK++uzi0Fz6LFdDxifACcNfz
 W3N1tAbaKECcJn2uP1zKP2rDFnKHqfNJiSXUbiYwU2wa5N1YgTK4+qqYwES9U4cY/8N5
 Bexd5TZ/Wl5Q+y2ALcLJ7B7rqTyJ6pDoXlq72g/HgWCnZ7oO0rP9QTxGCTkkLpFT+9mf
 a/fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m6wyWMfpOh6h06xGncQF4ABfwmrzTVZCtOS7mfMUTXc=;
 b=lSi4I4gyYG/tJilB46I/SkN9eMYrN2Cj+nrkz1jUQsF/FrK5L2Bh5kaFBefSPSFbBo
 tji4i1Y2Ex8D0N7yG1ivBFpx1YxsStMSLeyJsi5DnzaqeGUKbnGLWOA51m2+acIV1m6/
 oHfAOORerKZMSO+HOur+6e2tzkAT+IhDNVP6CPAbrBPgYoFbZ1u1AbBeMDDbgYZnxVfv
 +X11pf7eDbgLSedaRN1Hn8+OsymMl7VaeDjzaVYz3skyfuWyca5RXK50uwPyCmwHmcfS
 EEs7dZ7qQd8oS8p+7UKQIBE1tVL52GB3sVH1rsVhZKsNMj94FiQzGPFJEyq4TCq8vLnX
 jm1A==
X-Gm-Message-State: APjAAAW4rTYmhrE9lc5tgJecQqcu/mjPecUuHBfHRbZnyBz70WRLF8lv
 9hOZUZ8wgMxcdN0wBYWacQV08g==
X-Google-Smtp-Source: APXvYqxeF5cOXe12PQNqxlBBpiCnT3qQh/DDAtJr/M+esSQV0pKaEEHHxg3jUK5q+JMyj65o7WMEsA==
X-Received: by 2002:adf:db84:: with SMTP id u4mr36849595wri.317.1582121904379; 
 Wed, 19 Feb 2020 06:18:24 -0800 (PST)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:510e:e29a:93ab:74c3])
 by smtp.gmail.com with ESMTPSA id b11sm3337772wrx.89.2020.02.19.06.18.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 06:18:23 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: balbi@kernel.org,
	khilman@baylibre.com
Subject: [PATCH v3 3/3] arm64: dts: g12-common: add parkmode_disable_ss_quirk
 on DWC3 controller
Date: Wed, 19 Feb 2020 15:18:17 +0100
Message-Id: <20200219141817.24521-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200219141817.24521-1-narmstrong@baylibre.com>
References: <20200219141817.24521-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_061825_845126_733AA9B2 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tim <elatllat@gmail.com>,
 Dongjin Kim <tobetter@gmail.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When high load on the DWC3 SuperSpeed port, the controller crashes with:
[  221.141621] xhci-hcd xhci-hcd.0.auto: xHCI host not responding to stop endpoint command.
[  221.157631] xhci-hcd xhci-hcd.0.auto: Host halt failed, -110
[  221.157635] xhci-hcd xhci-hcd.0.auto: xHCI host controller not responding, assume dead
[  221.159901] xhci-hcd xhci-hcd.0.auto: xHCI host not responding to stop endpoint command.
[  221.159961] hub 2-1.1:1.0: hub_ext_port_status failed (err = -22)
[  221.160076] xhci-hcd xhci-hcd.0.auto: HC died; cleaning up
[  221.165946] usb 2-1.1-port1: cannot reset (err = -22)

Setting the parkmode_disable_ss_quirk quirk fixes the issue.

CC: Dongjin Kim <tobetter@gmail.com>
Cc: Jianxin Pan <jianxin.pan@amlogic.com>
Reported-by: Tim <elatllat@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index abe04f4ad7d8..87b9a47a51b9 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2220,6 +2220,7 @@
 				dr_mode = "host";
 				snps,dis_u2_susphy_quirk;
 				snps,quirk-frame-length-adjustment;
+				snps,parkmode-disable-ss-quirk;
 			};
 		};
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
