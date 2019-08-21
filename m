Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D72971CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 07:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixLWuEQRZ/DwwwtdIDa0z+QznwHXkcO1pgJy/dAMw5M=; b=uiz6uNe5zfp7Xh
	x0bIAKQGRmynxqxkg3RHCs/yhAQcRkep4ersPxE/Oqw4szPJL+AxXt1CrtkN14bs26OLFAYz08GV2
	NFBQgr56pqJWYWfPDrD74Nibo0DXs5iRUxlzT3mMeu8oq5nynzVlaFFT96atvR1yoRyvxzywi2/Du
	k0AmI1YAYwAg3yZwKStAsUY/ob946qTQAnr4woGM5RRFnJzyucAu9NJkjRoDsEQsXhvd3mbgzited
	JaAvMy/xoSodzaHo7HEzhh0d9jRXIuVpnkZSndILc7TSo9CFzkf1QJ7vUP2F2IZFDrQLXhA6zo+95
	BIJywLCYTQiA4ghyo54Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Jbn-0007d1-LF; Wed, 21 Aug 2019 05:56:35 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0JbE-0007Ib-14
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 05:56:01 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so708123plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 22:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GU/N4Wt9Jhh2lg0lHSh02Sw8UrK6gO1IosLXs9dwpEE=;
 b=hoz2qoe3untu7b0I0pmk4wsv6BKU3ONXOAHIsaHWTD9rlV/P6qVSgSH6ykOljr5Ok2
 5/33JRU9j+tIizRAndWPCv5eJJSg7a0/NjSjtnrreaG/wf5YiePdJdKJJLcc8jDv96Iv
 joWkTQrxYsJEfPr8O8zDzdvO7Pyt7qexU9fkUDvjOrLphRVV6LXVi1FXR0rQCO8YWV5z
 3TEV9k+I6RIcfTj5vfjAvXcM9Ogl6ihYzXvutvBPnDFnOFEdVsbEqJzcX0kCbNqpto48
 nl/EG3gmFE13h4UpL2USBr0aUnM5SvwI7ttsD5YBJOzFfteDkax42w9dgHqipYzdNkW/
 rPag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=GU/N4Wt9Jhh2lg0lHSh02Sw8UrK6gO1IosLXs9dwpEE=;
 b=WtXL/2syCk/y2bwUJeC1JckS42c/09RM1H5Eqs3E3Ww6YHMHwuGG20EdcUBDVUc5Jc
 r/yA71ANUyGZr2JISki5KMtu/QSz+n9dWqd5W/OXwosEni3BvW8U13NBz5TrJP+KJ8OQ
 P8diRG8c9ctvtJ5uWQfL/N4Xn3hvrSIlJON17+zRZvNkwrc3V9/Yx2hZg3fgxiV15J1c
 th+oGWwMoQUov5Bf406UrD0iyEoixLmtEtEjmN0DSuCKnsX8iLEjv46gCByZc18kS8uK
 qoFfVBUpMlRx6/MDloO4ZmKsdUcKR1m7HKzUIBflv+9l0KI+yUDeSZPlnkb/A/v1LdSM
 3G0w==
X-Gm-Message-State: APjAAAVUUoOqTHjSHSaoufWgTiZMZItMPhsA4wUHMo22NfpYA+js0Uar
 4DC6nXw/qmP1f61DVppGexg=
X-Google-Smtp-Source: APXvYqx/+74Ju52rJensxsSB8gavDnVTt9rl9lckMS8tlYydaxstjCH33nxjcMKNuuqbQIFLJXTY0Q==
X-Received: by 2002:a17:902:2ac7:: with SMTP id
 j65mr32562068plb.242.1566366956589; 
 Tue, 20 Aug 2019 22:55:56 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id m9sm26568254pfh.84.2019.08.20.22.55.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 22:55:56 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 1/7] dt-bindings: arm: cpus: Add ASPEED SMP
Date: Wed, 21 Aug 2019 15:25:24 +0930
Message-Id: <20190821055530.8720-2-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190821055530.8720-1-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_225600_328215_4CA55E2B 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AST2600 SoC contains two CPUs and requires the operating system to
bring the second one out of firmware.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 Documentation/devicetree/bindings/arm/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index aa40b074b864..727e0ffc702b 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -175,6 +175,7 @@ properties:
               - amlogic,meson8-smp
               - amlogic,meson8b-smp
               - arm,realview-smp
+              - aspeed,ast2600-smp
               - brcm,bcm11351-cpu-method
               - brcm,bcm23550
               - brcm,bcm2836-smp
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
