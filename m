Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F50D9841
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 19:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E0pQm25TrQJbBEEr1zp2XYUNehi+MsKaKuidV0qBICc=; b=AdIH8CKdpgspUNHs2ph8o/U4G1
	AyC5pKr1uciJ9UE0FdefVIJfdewmQARj2LoOw4bablcGdSJ+JS5NVkLURqZLnpiqGr0DLrnbTnW20
	YlYBjVZEpj363KPU7lzZ/no1FVFP8DTsxJ3iKfgGLCYOPaegF8DWiqeOYOhF9SACSQXLXOM5KRO7i
	JQbFh13b7kRQlQjvgR4GZbosKWHEHTA2WkJhC32l7FkUz7kbyzL19KBc1nZble5A/L/i8UnTJ1B41
	zllc1rtaiGbpMOV+x0Rb/78zgkriAzjIq1mtMZDQyE63ymuqgpGEUsfsPyCBSVQRbiC0nhp4DIPlV
	RfuAfkSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmnJ-00046U-FG; Wed, 16 Oct 2019 17:09:05 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmml-0003n0-Aw; Wed, 16 Oct 2019 17:08:32 +0000
Received: by mail-lf1-x144.google.com with SMTP id a19so5219925lfg.12;
 Wed, 16 Oct 2019 10:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FuDtedlY48DcctCZGWagsRf8MsM87uwA3mMuVGQ2AP8=;
 b=j+a1VT2OS4bm7ECykAC43ju60WarYAfWCbRzuFLrL1hxbpgI3Z4j7pRhUEai/49rJ9
 i48Z56uH5ua66STUHM58TXOltWf4jqVt4q70XzNx6Xa/pb+7PaTc9wej5Uc6Wn5/krkQ
 Vb5+qH2HJrsvo4vOpu/boufSBlQMCwGX9+hcTLZy3E696r2y0B23YccJG92eOKxRjjzJ
 fvBSjdk9kz2z5Rin4tvxtefT/UsjzQ9A2Vht8QkBkV33orbNGrGwyM5GMDqwjZP8Jlgj
 qKETLs4Jb5W07NgAbvDu2uVy5YSvJHNegP8luJGJOGZUHoKkAQ9Dvqv6sVk1rmMfwZP/
 zr2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FuDtedlY48DcctCZGWagsRf8MsM87uwA3mMuVGQ2AP8=;
 b=g9kMrnehqXaI2m0LAtbKkII3u2Otbin07CoeAOWamgNN7oSdVKNYCB5QC7LpgSJd1D
 hIw2ZPVH7M9vzwwzMIIDFGDQeau6WMEqRYXhkYmu/WnwgJ9YQkGFkx4iIdII/41x53q5
 96u1Ds+w7soscMafHqyHs9aB2A6V5knHiFopMIXAwjJ/9t8k/9PVhhEvtO5qyft51deU
 k+rrrmPNIjeUEAJgZdXiPt75wpcQ5WpsTvl3NCHbKlmywvEldXDoeWUJi253Te10V3RL
 LNUvULEIK5aAobzfHnw2FL0aaK8Cmb3bNG1i8HDnzfCJif6BkXFjXZaa/2r7GsO0zJuR
 JFbg==
X-Gm-Message-State: APjAAAWUpVmlOhq+ZqMhwKpmC0VKlUSpliE4SEQYC9SiAR1vev51F4su
 Zpv6grIbUGUGyWtVM27bN5w=
X-Google-Smtp-Source: APXvYqybaFGO1u4fZEPYMstx4sfISrbUPkeIsHhbcRYljDhIpvBSINMvFHrAxe5eS+JI8E/hZaMnnA==
X-Received: by 2002:a19:6a08:: with SMTP id u8mr1490535lfu.74.1571245709687;
 Wed, 16 Oct 2019 10:08:29 -0700 (PDT)
Received: from localhost.localdomain ([87.101.228.250])
 by smtp.gmail.com with ESMTPSA id q24sm6299182ljj.6.2019.10.16.10.08.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 16 Oct 2019 10:08:29 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: meson-gxm-vega-s96: set rc-vega-s9x ir keymap
Date: Wed, 16 Oct 2019 21:07:36 +0400
Message-Id: <1571245657-4471-2-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571245657-4471-1-git-send-email-christianshewitt@gmail.com>
References: <1571245657-4471-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_100831_376832_1628D92B 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an IR node to the Vega S96 dts to include the rc-vega-s9x keymap.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxm-vega-s96.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-vega-s96.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-vega-s96.dts
index e2ea675..0bdf51d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-vega-s96.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-vega-s96.dts
@@ -35,3 +35,7 @@
 		reg = <0>;
 	};
 };
+
+&ir {
+	linux,rc-map-name = "rc-vega-s9x";
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
