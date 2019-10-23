Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE79E23FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zloeTiyILFGBEQl4KdHwWVXdknFaUem5pVP11uwWQZM=; b=oWGRMZL/lWyZdp
	hSeGo1f+o8OEaHr1EKJbKJEDRxD5m11w6NywISZ7JhED6LUkx6BgZxVHQJNcx9FPMJHvctwXPMUz0
	lNdehSqOjxeIEb6D/jrzzCnpwKaSpVybE7n2eiw75AieIZidRdeGsB78MALiF8sbkjKk88QKQtFDQ
	ac5Y8DoS2y4TbWv19t2fFpCetlxDeMFpmmh87tlozAIWWy/SwJMojCav+TaenJyYOmFHyjNuc01J/
	t+LrgUiFeTnb0SFvxPA0pRLeK/O254r4M2991tTMnFGmiV4zGWCw/bmYahiw2MXnpDYtGASDayfZH
	Z0lY9N5qwz7R32ryyYrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMum-0002wc-FJ; Wed, 23 Oct 2019 20:07:28 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMss-00018M-0B
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:05:31 +0000
Received: by mail-wr1-x444.google.com with SMTP id z11so83261wro.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BlSNEKakkPz3qSacpRbF5fymVNSJO3OQiWGq/ZKj+yQ=;
 b=AuWzuW+AYZImfZjow+rRGRgANqzxjgatKAUOk+Fli9w1R5po/O0rM1MeeDL5QzfvX+
 ibph7gyBzHehtYoC6CJQIDXI9PkWyDkP/QqlFkGAk4VYSO6dZ/JgoxYlVef/lBD0pOOt
 8+oVhFlVop0jjj2xQ15hw7c5UNK3Sk1Q38oy0I4YVKhf3uq1UVLAoCp2S42Q+3DwgbN4
 bvNGp9cGZ659TbJo7aoxHYecZ8tb5lBgSdMiIwxtQX2Ku58wpxMVfupz3cFqjHGoFfvF
 n0Jt3cQqP17n1kk2+7tNeVDHJnJhvrKJg37V33baV4RAJ05Uwy3XKcACpXB8zhUFANrM
 0RZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BlSNEKakkPz3qSacpRbF5fymVNSJO3OQiWGq/ZKj+yQ=;
 b=CRCoT2iSeF+rS4XzHb9zJxAkMaXhaTbdf8VtcvllHHtU2zbTqInHx8lk5joEh1C3KH
 efIK48u7AtuSPX5Guk2ytPR+TTURsUULFPC54e1tB0jZggKZ3MNa5o7IqNxEVwLLfjCS
 JCH+00lkBcLqcJSXkGeENRueq5XNFnnDwtQmIfsiJaZAncywlhTObC9RHAURb8FRe0zL
 +xWrMcon+7qMmdiPJVCnP9FnhUi2MLK6Cfeu83zjcME2z3fZfpqKmU11VZ+aKwMGHNGZ
 s2Zax7SJZT7EFLKLKgJRjtXgUJXCmB+Mp5HV/otoI2VNLQ6gmr0sWQPUy/1iA5ppb5mC
 XTUA==
X-Gm-Message-State: APjAAAUcbqz6xZ6U6ZjrEd5/e+tU4F0QpYAo/IHLCKvmWjlUehXKrY0z
 SFZF4kxNlEgIluhmCvhnjYM=
X-Google-Smtp-Source: APXvYqwLysC/MtENiSF/dJeLC/uB17rc5+AT6O4lC1VhVMGyAdQ07ZFNS7iWoKPM4JwdZspWKhhvdQ==
X-Received: by 2002:adf:f447:: with SMTP id f7mr422943wrp.210.1571861128757;
 Wed, 23 Oct 2019 13:05:28 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id b5sm177555wmj.18.2019.10.23.13.05.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:05:28 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v6 07/11] ARM64: dts: allwinner: sun50i: Add crypto engine
 node on H5
Date: Wed, 23 Oct 2019 22:05:09 +0200
Message-Id: <20191023200513.22630-8-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
References: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_130530_078178_52B27369 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Crypto Engine is a hardware cryptographic accelerator that supports
many algorithms.
It could be found on most Allwinner SoCs.

This patch enables the Crypto Engine on the Allwinner H5 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
index f002a496d7cb..e92c4de5bf3b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
@@ -127,6 +127,15 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun50i-h5-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CE>;
+		};
+
 		mali: gpu@1e80000 {
 			compatible = "allwinner,sun50i-h5-mali", "arm,mali-450";
 			reg = <0x01e80000 0x30000>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
