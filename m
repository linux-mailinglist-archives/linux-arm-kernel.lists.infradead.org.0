Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AF0D5ACE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 07:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/JCPxFBWcNkbHCuXS7y4jUuSGPcWHT3Z8uy/goNyrTs=; b=W5U/8tguB3kAVAO/zpbIV2saTQ
	h1Fs5zjcTGtqoTZafdrh1LDuzCq72EBiYlseLDGCPT1mMjCy3R7rzPxJ9po387eUA1TFdKpG7GPH0
	v3SaPzhJ1utStcu/xgAvGiefj5wgPCJRFVnajzbOM3gmfbmHXK/5ilEzuYMAf69gnC59WFbuBQvbM
	vbhziEj9BACEkgPIfDJAbWbi9fbu9ph6HfH8FnLUCbZ9RpBB1naj7mubddWb4CPyJ3VPL17P959Ut
	oyvdLsRm82ZSuoKodyp+ICDHxq8E0kr3/TwJ/5cn/I8Tzp24qnTifoU7ClZnhHelX0eRotMVIYlN4
	29+zAvjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJsyb-0005c9-3G; Mon, 14 Oct 2019 05:33:01 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJsxi-0004zZ-R1
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 05:32:09 +0000
Received: by mail-wr1-x442.google.com with SMTP id j18so18015825wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 22:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aiibnLb4ztqM4McCZf8ivuH47sJDCIoIvUY8u0wjWw8=;
 b=dZWm0bODxvVtd4jc+Sv3HEOR144u2b+ytObS+iiHa0aWE+7M86xnmZ1BQr3dL+y/R5
 I3dg+hkyPrT1CpIWzSYqJpSd2Nma1oDXyroJNgsTMmgMCkg0RNvghA5OatcRKRamhlAR
 ouV7VuiYPwRstXsmzg6/QPxOItKOWp87NucpAz6f83jY+B6Y1eUKdhamcDg77ueQ493/
 0KDj2K41P8eP9KCnV1adMmDtKATMNOaeUgxsv9Jn3QVk63xzvDSADv9g8ZCV1v04pB2p
 XPD1uo4Vb30Uss7PrWno0cArt2kbvguVeN+qqYP/D068ydIxqj7ohAYke5/KQ/WZpbQP
 DImg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aiibnLb4ztqM4McCZf8ivuH47sJDCIoIvUY8u0wjWw8=;
 b=bcfIUP/Vbo8MZexJJQLaTH/eS8dZCCgKu1RIwnU3ODuL17tB8VyZwn/gcZv6KTai5r
 7YYKMqpz8clafVq3aYbKWXNoI3ZJNgqfaIJl38n4G77pVdH0U6gQmQLVvaFNEHRqUhrk
 9BTAKpXUoao7aVJAMyedPXuLHptpOa9Dn2L2Rtn8Cl2TTycEELAYWX1GHJW6v6cfQXPO
 aYzfmNCYeH6LRUN4IuAG50GST7w3OgjaZDjbOYWI9yHAqxpF9wrr2QEgqqVbgT40sqYi
 Mbu/CAM4wc52D/8NQyC4+2khwfhS8fUQMj4kWhnv78QhIGLSZmf9eHTjlyhW0ST43IAV
 BAPw==
X-Gm-Message-State: APjAAAWWd9h1wHFqR/fNoEqUnGf8yuU5mugj8Jv+IhlSo7VgQo2Xa0ns
 JJ8HXVEXMYin6YC5FQnI+hbwJJq5HNE=
X-Google-Smtp-Source: APXvYqzwgYyla5i+WdGDH9uV7L7OrlHDKcef3vSlLkS/1w30Ak08EC3dys/X03T3BQUy1jWogl3vYA==
X-Received: by 2002:a5d:6984:: with SMTP id g4mr9280068wru.43.1571031125748;
 Sun, 13 Oct 2019 22:32:05 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id o18sm44238772wrw.90.2019.10.13.22.32.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 13 Oct 2019 22:32:05 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, khilman@baylibre.com,
 mark.rutland@arm.com, robh+dt@kernel.org,
 martin.blumenstingl@googlemail.com
Subject: [PATCH v2 2/4] MAINTAINERS: Add myself as maintainer of amlogic crypto
Date: Mon, 14 Oct 2019 05:31:42 +0000
Message-Id: <1571031104-6880-3-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571031104-6880-1-git-send-email-clabbe@baylibre.com>
References: <1571031104-6880-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_223206_872511_172802B7 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Corentin Labbe <clabbe@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I will maintain the amlogic crypto driver.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 36c5d6ee01f9..a8487a0999ce 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1477,6 +1477,13 @@ F:	drivers/soc/amlogic/
 F:	drivers/rtc/rtc-meson*
 N:	meson
 
+ARM/Amlogic Meson SoC Crypto Drivers
+M:	Corentin Labbe <clabbe@baylibre.com>
+L:	linux-crypto@vger.kernel.org
+S:	Maintained
+F:	drivers/crypto/amlogic/
+F:	Documentation/devicetree/bindings/crypto/amlogic*
+
 ARM/Amlogic Meson SoC Sound Drivers
 M:	Jerome Brunet <jbrunet@baylibre.com>
 L:	alsa-devel@alsa-project.org (moderated for non-subscribers)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
