Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 290E310CB44
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:04:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WDcJpJjBJNsAtbf3eOei961KDmv4aSFu7t6CwzJauiA=; b=lqZtrMVDxgXSH3
	T92obaYgrHLKSXzALoDira8BQb/owo+OO54XprMnVT2GlzoMl103higWQoT6F6assJLf3lJKTLjwh
	IQ6MATfFvw7KQTzSDh9Q1ydtzHq/iUxfwQ40jVvM9PtoQUtrA8bjvraNxxd9QtnAZLTP7kq+OYAWu
	8H86ch/LtDiUYf0hy9GjtjXe6j+DHdAEHhABAdeZavse8jN/ylUGi98hY3ARUfW83tyFvazFqF0Yk
	eQZmntEaMz9kIc3eRCvJOuSUMkDRCoEzpmUCADZdYNMVOxH1oWsG2xVJ9nf9l4d5i8Yi3l1UwG+mN
	a56xfC0oLalpLYxCbHRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLLc-0006YF-Fn; Thu, 28 Nov 2019 15:04:48 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEt-0000zC-2B
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:02 +0000
Received: by mail-lj1-x242.google.com with SMTP id c19so1822284lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QBhz5rvCw4g2Ox9AwtLP/2ydNw3vwlfo4gXSav3FB44=;
 b=Fs4SgS4/1psPKfkuhI4Ny+x/2oJrTK7HBfKE4/RCaNwwy+uA8dMiNwd3beo5/zLTHw
 62oVxo+n4p+sA9/H9nbzmMU2pfSe0i3IY9PDEKXtA5Y16gW6pwQTd4R0Uiu6nNqFDpUH
 SzXhTou8vQGjVBBwFvDic+ydbfn1zpUpRjhKA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QBhz5rvCw4g2Ox9AwtLP/2ydNw3vwlfo4gXSav3FB44=;
 b=NmjOP6eCorZ7qr5nl2KcjDSmniwUPJipTpdoO04DXTYcH86932YSbOoa2XtQpP8NSc
 DQZl43nogB/3dDDqn95XIGEErpCwihedWTtNJ18AWSGjwNDzJGtj73h1TZklZaUPm+Dy
 1Ek8JTwmKZd+bVDJL9RkocB57gr2yF5U8Md483lhjtSBTbm/bl7cTLljxjLSsqhBhev6
 c+sSY4Y7Qg1nDEEW5zXdDhXMbgILl3ZFZTZOD0oaZmby9LTgdHGto+GpaEfihi71furx
 /fDZ18RvV88JAEM1kGy3wFx7vaSB6UgrK8YbAq6ThV6EhK/83AFV8SAio4wniNvT86+K
 Rzzw==
X-Gm-Message-State: APjAAAWDtTX7JiGcaqmKQdj4RqUQibBKfEHZihvsJV7z55OLu7Rl9ymW
 4njBMLo8M+ojnksavj/JJE9P5Q==
X-Google-Smtp-Source: APXvYqx99pjU5nTC/rq9MmsMvdS7IjR/57AJ+W7tuU3iN95pO3rx6CAJcCzrdDDJbnd7jwEkPdc8CQ==
X-Received: by 2002:a2e:888b:: with SMTP id k11mr10315128lji.87.1574953068992; 
 Thu, 28 Nov 2019 06:57:48 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:48 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 33/49] serial: ucc_uart: limit brg-frequency workaround to
 PPC32
Date: Thu, 28 Nov 2019 15:55:38 +0100
Message-Id: <20191128145554.1297-34-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065751_131148_46C703CB 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linux-serial@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to Timur Tabi

    This bug in older U-Boots is definitely PowerPC-specific

So before allowing this driver to be built for platforms other than
PPC32, make sure that we don't accept malformed device trees on those
other platforms.

Suggested-by: Timur Tabi <timur@kernel.org>
Reviewed-by: Timur Tabi <timur@kernel.org>
Acked-by: Timur Tabi <timur@kernel.org>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/tty/serial/ucc_uart.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/tty/serial/ucc_uart.c b/drivers/tty/serial/ucc_uart.c
index c055abf4c919..9436b93d5cfa 100644
--- a/drivers/tty/serial/ucc_uart.c
+++ b/drivers/tty/serial/ucc_uart.c
@@ -1392,6 +1392,13 @@ static int ucc_uart_probe(struct platform_device *ofdev)
 	if (val)
 		qe_port->port.uartclk = val;
 	else {
+		if (!IS_ENABLED(CONFIG_PPC32)) {
+			dev_err(&ofdev->dev,
+				"invalid brg-frequency in device tree\n");
+			ret = -EINVAL;
+			goto out_np;
+		}
+
 		/*
 		 * Older versions of U-Boot do not initialize the brg-frequency
 		 * property, so in this case we assume the BRG frequency is
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
