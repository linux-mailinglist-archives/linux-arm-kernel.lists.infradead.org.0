Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C82ED25292
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 16:47:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=80bHftH9tAWdAwk9pe/NjJMCa4BQp7uDtvHuHGE1ZZE=; b=O5N
	14UzLZzet6499WQc2HBtcPGBvRISrQQ9po9Pa5an7wuklpXy/2nGTtltpIfrq0DblZk0G89DYPTpK
	QUYUsv9bT+bbmDfhZpCTPKrZFiCXQvzCjezYEdjshiZOLIR+E8xZxjit4WNsVGU4ZTs0kvqdIVfe4
	6qytpp4RlJdJD/vXmArJJWPnZ6nSCczSwHddMJp1/dj3K3TKRVDIRZmtG5KT+YSreipUQjSvOh85W
	+uB7K3JVbr+ZE4wUHkY4WbZbyYk6ZPeEXtqXlZuZRqSVZ8+rzlHvkVXY6du1Ws0ik/nybk5bfxDen
	omvyVRDkYC3j2M8eJhy3m2jMIPFX8qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT63X-0000hp-W4; Tue, 21 May 2019 14:47:56 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT63R-0000h5-7Z
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 14:47:50 +0000
Received: by mail-pg1-x542.google.com with SMTP id a3so8721306pgb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 07:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=vWapel5oQFRL5IS9nITnTDS1CiQKS+fkgwKTVcUkRi8=;
 b=J+wfUmDSL7gurwPNzxB20Y9csHlDX+J2lMuxHU1BjO7Ee4cmiTK3EE9XkA8tMMn42W
 tpNPg1ZAjRJesMpVd8tltQp5G3UdZSkYd7s2iUQZnoF4ZHlXjn1NwcMWf0p+gms2GcSW
 uOK0LiORxiKO8x2i6QVei6lCzwf/Opm9dLSkMSuxG6bWc+lYkLbmpcV9askG7wkwCGeZ
 p+qPqk66IZYb5VzlNCh1Llg/fKpj/4lGWf/W63jm8IekkNnB+EVElP15Ay/Iz57W50SU
 8VulXzLuTttSDYpHHb9B4whok/Yqx9b5E1gk68sEd01REGO192+SgL/PDwIKH8M1JkcA
 k7gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vWapel5oQFRL5IS9nITnTDS1CiQKS+fkgwKTVcUkRi8=;
 b=KP8A+kbtPLu7awuCY18eY3eKKCTa05P7YU3t/XUH1dZkYewoQWFbmDcW0vauYl+NWK
 Mne3/n0cdckfzRjfp0ps5M7aoGi3XVWILfcKE49Q9HfF+J/uR55vP/TFTJGlzJj4GfmY
 7dcpcvprepHIF7rWRI6Gct/LHO4ohOfD2i4uNl0NBxRN62eiIP0IU9llECHwZKc2hvow
 u9P4KpAzkmYb8ss/dbWSnlcmMZ+MkD+vOyXLW89axfqN6kte2ZVAwP+lKO++bEhqH8LT
 0lbdaZds0ybjczyQKJTpi7hdzoa6ik/jP7m6tR/ALVh7HESvmrHH9Lv0MiqUEeuvlvFH
 rEXQ==
X-Gm-Message-State: APjAAAVcjDHorleWXrspbFsXAU+jLtyjSTC6iJkoYIdg9hDfJ1wEExIE
 UI5oqAKeWHo/RKVy+Xc3C7I=
X-Google-Smtp-Source: APXvYqzLKro+yl9TmaN24S/pQj0fpek+/qhlfX1j1ZWZnpe6kEvnbtW9El8eBXcB5losLDhepUyYKA==
X-Received: by 2002:a62:304:: with SMTP id 4mr70248166pfd.186.1558450067108;
 Tue, 21 May 2019 07:47:47 -0700 (PDT)
Received: from localhost ([43.224.245.181])
 by smtp.gmail.com with ESMTPSA id a7sm40112206pgj.42.2019.05.21.07.47.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 07:47:46 -0700 (PDT)
From: houweitao <houweitaoo@gmail.com>
X-Google-Original-From: houweitao <houweitao@xiaomi.com>
To: linus.walleij@linaro.org, yamada.masahiro@socionext.com,
 a.zummo@towertech.it, alexandre.belloni@bootlin.com, baohua@kernel.org,
 gregkh@linuxfoundation.org, jslaby@suse.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, davem@davemloft.net, rostedt@goodmis.org,
 mingo@redhat.com
Subject: [PATCH] tracing: fix typos in code and comments
Date: Tue, 21 May 2019 22:47:40 +0800
Message-Id: <20190521144740.22490-1-houweitao@xiaomi.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_074749_276061_EF2D44AE 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (houweitaoo[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-rtc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-serial@vger.kernel.org,
 sparclinux@vger.kernel.org, houweitao <houweitao@xiaomi.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

fix ingore to ignore in kernel; since there are other
mistakes can be found with "git grep ",fix all

Signed-off-by: houweitao <houweitao@xiaomi.com>
---
 drivers/pinctrl/uniphier/pinctrl-uniphier-core.c | 2 +-
 drivers/rtc/rtc-sirfsoc.c                        | 2 +-
 drivers/tty/serial/mxs-auart.c                   | 2 +-
 drivers/tty/serial/serial_txx9.c                 | 2 +-
 drivers/tty/serial/sunsab.c                      | 2 +-
 kernel/trace/trace.c                             | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/pinctrl/uniphier/pinctrl-uniphier-core.c b/drivers/pinctrl/uniphier/pinctrl-uniphier-core.c
index 57babf31e320..9f56863ed481 100644
--- a/drivers/pinctrl/uniphier/pinctrl-uniphier-core.c
+++ b/drivers/pinctrl/uniphier/pinctrl-uniphier-core.c
@@ -399,7 +399,7 @@ static int uniphier_conf_pin_bias_set(struct pinctrl_dev *pctldev,
 		}
 
 		if (arg == 0)
-			return 0; /* configuration ingored */
+			return 0; /* configuration ignored */
 		break;
 	default:
 		BUG();
diff --git a/drivers/rtc/rtc-sirfsoc.c b/drivers/rtc/rtc-sirfsoc.c
index 9ba28d1ebd87..af1b7ba403fc 100644
--- a/drivers/rtc/rtc-sirfsoc.c
+++ b/drivers/rtc/rtc-sirfsoc.c
@@ -121,7 +121,7 @@ static int sirfsoc_rtc_set_alarm(struct device *dev,
 		rtc_status_reg = sirfsoc_rtc_readl(rtcdrv, RTC_STATUS);
 		if (rtc_status_reg & SIRFSOC_RTC_AL0E) {
 			/*
-			 * An ongoing alarm in progress - ingore it and not
+			 * An ongoing alarm in progress - ignore it and not
 			 * to return EBUSY
 			 */
 			dev_info(dev, "An old alarm was set, will be replaced by a new one\n");
diff --git a/drivers/tty/serial/mxs-auart.c b/drivers/tty/serial/mxs-auart.c
index 4c188f4079b3..9f83a387d6ed 100644
--- a/drivers/tty/serial/mxs-auart.c
+++ b/drivers/tty/serial/mxs-auart.c
@@ -667,7 +667,7 @@ static void mxs_auart_rx_char(struct mxs_auart_port *s)
 	}
 
 	/*
-	 * Mask off conditions which should be ingored.
+	 * Mask off conditions which should be ignored.
 	 */
 	stat &= s->port.read_status_mask;
 
diff --git a/drivers/tty/serial/serial_txx9.c b/drivers/tty/serial/serial_txx9.c
index d22ccb32aa9b..372890e3b896 100644
--- a/drivers/tty/serial/serial_txx9.c
+++ b/drivers/tty/serial/serial_txx9.c
@@ -314,7 +314,7 @@ receive_chars(struct uart_txx9_port *up, unsigned int *status)
 			}
 
 			/*
-			 * Mask off conditions which should be ingored.
+			 * Mask off conditions which should be ignored.
 			 */
 			disr &= up->port.read_status_mask;
 
diff --git a/drivers/tty/serial/sunsab.c b/drivers/tty/serial/sunsab.c
index 72131b5e132e..daae2b0dbe11 100644
--- a/drivers/tty/serial/sunsab.c
+++ b/drivers/tty/serial/sunsab.c
@@ -200,7 +200,7 @@ receive_chars(struct uart_sunsab_port *up,
 				up->port.icount.overrun++;
 
 			/*
-			 * Mask off conditions which should be ingored.
+			 * Mask off conditions which should be ignored.
 			 */
 			stat->sreg.isr0 &= (up->port.read_status_mask & 0xff);
 			stat->sreg.isr1 &= ((up->port.read_status_mask >> 8) & 0xff);
diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
index 2c92b3d9ea30..bfa5ab0663e7 100644
--- a/kernel/trace/trace.c
+++ b/kernel/trace/trace.c
@@ -8554,7 +8554,7 @@ init_tracer_tracefs(struct trace_array *tr, struct dentry *d_tracer)
 	ftrace_init_tracefs(tr, d_tracer);
 }
 
-static struct vfsmount *trace_automount(struct dentry *mntpt, void *ingore)
+static struct vfsmount *trace_automount(struct dentry *mntpt, void *ignore)
 {
 	struct vfsmount *mnt;
 	struct file_system_type *type;
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
