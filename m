Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C24172BFC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 00:07:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yJ76wXpXFIfOpQAhrIHpijvFWu0HQNG3hXGNvKNOeY4=; b=iyrp90x8AA8RcttR4bKtXGRDN2
	RQLylICVnYLtnE0lno/KTwDZB99b565XeSc+M4cHtYca9PYd92oOXUL18j+fXwcQ1p/iXh++DsorJ
	lVPBuG5Fp8BngoRzxj/NLuze1kuWjdn/Wo3n3oQfExoY7Bs7Gh3M+7t4Jw8RJQQd5Vd7kx5RWqNMc
	xh8CMqVuOEhYIA1KUgulUUg5LznJugZp91D38BmIXopQpgKnSZCHd/e6ORfZbsZ4eJdhiRwwbSNEM
	RfdRqC+R1E22btf1OeAiYQA44dXso7BaarTzmf+xds5V5h6nZcllvYpChtmPcwfimk7DuSRINFEa5
	SdM3JIPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7SFU-0000XS-El; Thu, 27 Feb 2020 23:07:20 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7SDe-0007VI-LG
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 23:05:28 +0000
Received: by mail-pj1-x1043.google.com with SMTP id gv17so433922pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 15:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VMrpm+GBoFpUrGbFK1mApjxlqzffVTj/tMTENO9WLbo=;
 b=QutkKvm5robSH6hAa5Xt7Hj7Zcy6P3FiZ8FYe/QIWDo9zihshyynnmsHT6Ca9ZjOeU
 tfEh1iXGgwjmh4B6z5ThkuglNDNVJ0wI9KIq3xBN+7khYZeNQEYc5Jrd4PYyRkVI7cWM
 ZhOJsUe+OPCchh4fSbR4W34FjpAjhLi2zLyDHSIj3CxkGIcVyndH5XaGZmd2zPUZ1Vwo
 StJ2lR1GEtrJPUVx4q5L02E7Zf2s+/r2bIh+TbVi5Ca9jd+bxX/xWPxQJy2pHMaLdzxv
 DySMOwi3yIoDNH/PexCONhd6epK6+wuuve6KfXhJ/oHdEEyM7O8Oi45laz/JXO19Nh1J
 Jfkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VMrpm+GBoFpUrGbFK1mApjxlqzffVTj/tMTENO9WLbo=;
 b=C3BzC9beS92Lz5tiBOtg1qTS3pdw+R+MZf91gLbRziw2Hjs8+glx0026eCzQX4rIbu
 tc3T05jOYboz5u9LBHB8GszWE0GVMkAX86Tp2rPvat4wmTkHSjLvPF+/lAmnCzLdjror
 /OymlNnaC7cqLlJsho2aYVauUAyeeEeZeHq66IBdwXQQ/yQC7Bdkwscl4RAUoT8ZFeGC
 STdlF42b2y5dwtmpOaHzMDPf8iI/3N/CFFrNcLnCZVvsfusbzdyYs49OQCiiOx8FKcD+
 gWocPAHP/OwzOiRC0yUh7N5Rlu9QIpvU/Aa3EarJEPpoZBr0b3lBccM1FIfzZYAfLyYi
 1B2Q==
X-Gm-Message-State: APjAAAVcSEBs5n3cN6U8WVJM5DSSHhwyAd/6Ivv6yivn0rXpgG+AbZn0
 wVO2qahFZtMF0vkDTo6l62w=
X-Google-Smtp-Source: APXvYqwgWS/gVih7kVY03mopBRkpenOgLxxgiUgs0jIPy2qu7PEK3PIFGXT2xwolufGS4P55SEUsgA==
X-Received: by 2002:a17:90a:5d18:: with SMTP id
 s24mr1244304pji.141.1582844725992; 
 Thu, 27 Feb 2020 15:05:25 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id w2sm8275975pfw.43.2020.02.27.15.05.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 15:05:25 -0800 (PST)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v5 6/7] ARM: dts: aspeed-g4: add vhub port and endpoint
 properties
Date: Thu, 27 Feb 2020 15:05:06 -0800
Message-Id: <20200227230507.8682-7-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227230507.8682-1-rentao.bupt@gmail.com>
References: <20200227230507.8682-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_150526_727623_53E2196F 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

Add "aspeed,vhub-downstream-ports" and "aspeed,vhub-generic-endpoints"
properties to describe supported number of vhub ports and endpoints.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
 No change in v2/v3/v4/v5.
   - It's given v5 to align with the version of the patch series.

 arch/arm/boot/dts/aspeed-g4.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
index 807a0fc20670..8e04303e8514 100644
--- a/arch/arm/boot/dts/aspeed-g4.dtsi
+++ b/arch/arm/boot/dts/aspeed-g4.dtsi
@@ -164,6 +164,8 @@
 			reg = <0x1e6a0000 0x300>;
 			interrupts = <5>;
 			clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
+			aspeed,vhub-downstream-ports = <5>;
+			aspeed,vhub-generic-endpoints = <15>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&pinctrl_usb2d_default>;
 			status = "disabled";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
