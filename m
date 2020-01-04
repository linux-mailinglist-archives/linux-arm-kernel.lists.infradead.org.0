Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5BE13045D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 21:23:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ydKUInxplfLVIEkqzxRFd9zUPMtWz13QCP4uE4cH9Sg=; b=nWAYjjFgddDFNb
	+mtZ5MFKhZBHS/qgq5BKiQU+UqeTBRujlZzTbP2hI+9ZsGX4CeJauR9je9tpWgM/7er96DkA9qj8j
	8/cpajFnc046MrU6QjMLHQJ3daehLj2o3nwQn+htSxZ9odt6+mWvLSYA5e/KWXXHWBCj7SfuW8PlT
	42dGEl67s9jSHTCGif63v+Kp8mszD1n+UelALsVT3UNBvdU5dQXWv664Inw8qyEQXSQ8tAJVdj1Ca
	OboU9UTCYuLo+tnn7sjfLV/3PAEAw9YUtOLOrwwrJ8Am0umCUavxOuDsFXiH+wm3v2itmWN2Bhbf6
	LnT1W5/OJvz0t/y/7TGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inpxF-0006BO-NS; Sat, 04 Jan 2020 20:23:25 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inpx9-0006Am-Me
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 20:23:21 +0000
Received: by mail-pg1-x541.google.com with SMTP id x7so24957158pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Jan 2020 12:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Ak1ZP2tAeQ2Y7PwIriFfKv0Dvf8KKmq9+RENIFVGY1w=;
 b=hzvNX5+d5/anUwiewELIOCTAcVqVIVLnxoSL1b8FFQviE+oxyRLxqHSR0FD0Y3ZewQ
 MzY44YYmxLRErJ/0Is12RzfnjMSysRWnbGMVdk2Ea8rk/pFKwFNbHrtHd8+Iq/kDJkbc
 BA/spVGI3YNI25ZTgKkCvLx6QBeTpjBJTTIDih2jzavSm+plyihMDSq1gVUXh6OqAH7Y
 CB5hz1Gb42zXLrMKTy3ddpyI+/jc3Rd68pEvrHwpEEtj+mhzZXggHSOrYSNHu5szr4pj
 Fug7rQtkhUXrlOqVambUZhr9N/MYr1X2Q8rLvTjnaASxIclHm7jvo4EB+9td724mAgw7
 sXcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Ak1ZP2tAeQ2Y7PwIriFfKv0Dvf8KKmq9+RENIFVGY1w=;
 b=Eryrjh0lBCwaYoyfsqrtW7iflXcVQSeZF3BFwceZAbk6br7GDrh6kwPNzJlYzOLRTu
 EUqX78TZ9Pgndf1J1Pa3rzzYf0PsJ0cLKqxKzozZQRKADiG1VF1vX00yLdvCk9cikRrS
 moaePa00CUASFC7cA0RqIp2wacaRrtKUQTKR47ymVlw88J0kaQDsFxMDGTE0hka5L8x7
 Z3xjalsiTkLI6thZqvonmuAVvOEeNShfrC0u9qngPlCgKnTXrtXPkel1vUpOvPvMkleG
 hVQ+fh6c4+DvukMQBwGkj6UCoYImOWtX5WSYEOSrrFemDJkpd8dhbgYN5LQp0kl2n/8A
 moog==
X-Gm-Message-State: APjAAAUUIMc5aNZ96M1I3zcIaESdsBynHTTJfFpcTlFuM7xoRBiHUntX
 vGUdv8zECcmfLQPqMH077Ps=
X-Google-Smtp-Source: APXvYqzVkQYHU5NLlzN2zHDwMxx94FyQUPEadRQUR/l/4WEeZDDkirJIVM31SREzm8dxsp+Hc3SniQ==
X-Received: by 2002:a63:dc0d:: with SMTP id s13mr99709717pgg.129.1578169397182; 
 Sat, 04 Jan 2020 12:23:17 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id h126sm48756038pfe.19.2020.01.04.12.23.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 12:23:16 -0800 (PST)
Date: Sat, 4 Jan 2020 12:23:14 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Patrice Chotard <patrice.chotard@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] tty: st-asc: switch to using devm_gpiod_get()
Message-ID: <20200104202314.GA13591@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_122319_767642_48AE4897 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The node pointer in question is not a child node, but the node assigned
to the port device itself, so we should not be using
devm_fwnode_get_gpiod_from_child() [that is going away], but standard
devm_gpiod_get().

To maintain the previous labeling we use gpiod_set_consumer_name() after
we acquire the GPIO.

Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---
 drivers/tty/serial/st-asc.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/tty/serial/st-asc.c b/drivers/tty/serial/st-asc.c
index fb6bbb5e22344..e7048515a79ca 100644
--- a/drivers/tty/serial/st-asc.c
+++ b/drivers/tty/serial/st-asc.c
@@ -504,7 +504,6 @@ static void asc_set_termios(struct uart_port *port, struct ktermios *termios,
 			    struct ktermios *old)
 {
 	struct asc_port *ascport = to_asc_port(port);
-	struct device_node *np = port->dev->of_node;
 	struct gpio_desc *gpiod;
 	unsigned int baud;
 	u32 ctrl_val;
@@ -566,13 +565,12 @@ static void asc_set_termios(struct uart_port *port, struct ktermios *termios,
 			pinctrl_select_state(ascport->pinctrl,
 					     ascport->states[NO_HW_FLOWCTRL]);
 
-			gpiod = devm_fwnode_get_gpiod_from_child(port->dev,
-								 "rts",
-								 &np->fwnode,
-								 GPIOD_OUT_LOW,
-								 np->name);
-			if (!IS_ERR(gpiod))
+			gpiod = devm_gpiod_get(port->dev, "rts", GPIOD_OUT_LOW);
+			if (!IS_ERR(gpiod)) {
+				gpiod_set_consumer_name(gpiod,
+						port->dev->of_node->name);
 				ascport->rts = gpiod;
+			}
 		}
 	}
 
-- 
2.24.1.735.g03f4e72817-goog


-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
