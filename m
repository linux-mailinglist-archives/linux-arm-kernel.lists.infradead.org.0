Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0564D9C194
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 06:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9bMgRmPwV49gARYvPZyERVzF+N7EooYnxyP50bf2VWc=; b=I+8SqjqHiYAvTEOrYbshV6ckyP
	WFJ2OVRs+Hf/4aTreCCrl7Mc6sNnOVXvHHSOcTH1nbjWRkjBJrKjqYNM5fxryS+dxPGD9+6TcdLSs
	YRm8IkwuSeEWHB4v2ErN18u3KxTjYOjDWlyLrFoBm9NCWLyDExpHfsz+GwMjBgYN+ScFDBIJ2y/GW
	YWDiUeYLdf7He9DBWLYtLw3RiMGA6Z6/oEt7FIR8s7UDe+Jy/gtbd3a63CZNhfwBMS8wsRCj7tI7g
	vqLymX8S8zUSG+dSWr4u+nfya1HHn04i3Ww/YgpysZFekV2t0dtbce/nn4CDg0uiWqoVppfkw8umT
	shee3UPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1jlW-00072F-BO; Sun, 25 Aug 2019 04:04:30 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1jjd-0005l1-7n; Sun, 25 Aug 2019 04:02:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id u16so12130560wrr.0;
 Sat, 24 Aug 2019 21:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nS5ZdwaXnWLnup1daWCQzgoGPiOKricQ3p0EiljFPek=;
 b=YsFhtGysGFaBx0FpoKJiH+kDHGWWH2ZTZCvrxYciZu6TGElkD8hmOBYdl1IrsqJw1H
 bVnOr8TKC6t2jdWvfxVtI60Hi+53O1WRnEjXDkHQjfQzZzMtC74DMR423jRtUF7UL/BQ
 Gpdf15fJoQmY/1H/t0NN78HNREdCRlionQg3jCc8sqaJJkobwfX8woxGfE3WM7DILeeL
 QRB7hguPsEUlBLcBjt9+xflN7mdD1O5llbV+XFbR6aAWko9FKtgXZQSs0AxvaZm1Mx+k
 RxA0OO+p4sFltJtp+7Fg/3YlopTfKhUaF1s8vgoFKN5v2mvFn/mI5vSFhnnCPTCBCfio
 Telw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nS5ZdwaXnWLnup1daWCQzgoGPiOKricQ3p0EiljFPek=;
 b=tpk2XVKMN9W7fM0PildrMkuAAupQlcICoJKZl5AdqFlBpSo52bu7duModBdhzdeTVc
 lL81NDoKjLI0Rm1+pmf7LsRetmyNS1ukfDf/VUNJ22UODd7DqxWRyovB1ifXaC9uuqJZ
 vI2cDyYbzN5daSxurx9XtXnHNv3Kw/KMIbYUf40zINGfxALB1nFaX8T+SihdQOtAWAAW
 9/mMC5doECvjyM2MCS3rCXpHzrPcltUsjPFuXF4wX3CJRWdrUeuUJFG35VNJk5/zoLhL
 Oid3uADmMOoQ2iRumG6zBYZH0cOj6ZuiyUH2wZk+zmVUZNSdII+W7I66MsJDH2R/gN5b
 z8fw==
X-Gm-Message-State: APjAAAWUEBtrBk9w/Or/BxYbYfmS4LceM3x5/CBZELI/YhAbQ8ulIcW8
 D8F4oWTFC26WXgGV8+y8rgA=
X-Google-Smtp-Source: APXvYqzpbvks94RUaUaHxbIcLp4EI33cVGxO4/18OYAgWCn3juOpT/w3h/KFPUXwRVDgDJmS/myrJA==
X-Received: by 2002:a5d:63d1:: with SMTP id c17mr10502168wrw.3.1566705751398; 
 Sat, 24 Aug 2019 21:02:31 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id a6sm6820985wmj.15.2019.08.24.21.02.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 24 Aug 2019 21:02:30 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 5/7] arm64: dts: meson-gxl-s905x-khadas-vim: use rc-khadas
 keymap
Date: Sun, 25 Aug 2019 08:01:26 +0400
Message-Id: <1566705688-18442-6-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com>
References: <1566705688-18442-1-git-send-email-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_210233_670737_CEB0B8EA 
X-CRM114-Status: GOOD (  11.98  )
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
Cc: Chrisitian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Swap to the rc-khadas keymap that maps the mouse button to KEY_MUTE.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
index 5499e8d..2a5cd30 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
@@ -110,7 +110,7 @@
 };
 
 &ir {
-	linux,rc-map-name = "rc-geekbox";
+	linux,rc-map-name = "rc-khadas";
 };
 
 &gpio_ao {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
