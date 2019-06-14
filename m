Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542DA45C43
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:12:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WzN40TZKf8XgFV3imCpsxKONMmjs0kNc4Va2KPKs9zk=; b=SReVaBfR9J0Cx5iYKFx8OFjrwm
	4Wu0bnYTAWqtwaoKhJT7GEQfObRy+u//W+tKWMskOVs0/Eun9goUaqHs5P9jFmHWlyO22BRsYaMCq
	kgtffCW1dLJ+92rpUhPX/2U/rho49q9JyBCSDm2fErW2z81WgyAWuNGkIv9/dNSAYrSXG1KqQfEaw
	qLwEMMIutzPxK7kavUqWyfbLOzz66U+g2KW4+QGgiG5EE6WYfdElCU8KraEwjM2y4JMlH1aKg6tnS
	R0vRsXc/OIpn0ZzbB7khuz/inV+906WSslP3tvDBt9QtXMnfCSvhpMAx1sZdcygbfiVEeHTrZcHbG
	7WWHGAhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbl3r-0002my-GC; Fri, 14 Jun 2019 12:12:03 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl3g-0002m2-NL
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:11:53 +0000
Received: by mail-lj1-x241.google.com with SMTP id s21so2142875lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 05:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KAIoL/2xQexpZm/Cnc+ChufT79edLx8XlNo6sI2uttA=;
 b=Q2ObjG3Sfe7OqoICYZqCx3s+htycwitu478+JM5YcIB7+HVMZAzHAQzYI+zKwVcGaa
 deIsef7Va6FD4N2vt7gsDHyy3pQGDWk4OMv6tcWzSm6bJSRjvVShb29qIjOnsYkjAVTo
 0mEl5LsUIDF9iTwqxawJ+/dG9/1w0963RUc8mIhvJ7GlJ9TiiaojbSPzHLW348zzHxIF
 DVuKH9PsQtdDcawd8AJNiNf7B/K/gtBxyaOAdNhlfPI35gipTPjoyHDRecDN0R3wg4iw
 1tt73WtrHzBwKbPVc7p9XJiGp7DEPLlO/S4K2KRmfcYoKzpghNs3yL4LqHJ/xvDvQob5
 uv4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KAIoL/2xQexpZm/Cnc+ChufT79edLx8XlNo6sI2uttA=;
 b=MdVz8lMPdnDNphPbfEzHt+fqH5yjiz6tNcWgViqn4qd1Bc6lamZrpHsYZNOIYz/akY
 ogWVejXxQqUcfm4NPB4lFKx/nxR+MVuaZSYMRJ9UyinTZapzT5aJKejBgdR8n1MvobFA
 JmPASrA+uIseM9oVK04ULe6OJVUcBvsM7+sxoIcmKHskBPiQhKzxznNEbw6ZQk4J53qQ
 kkiFhvE3tr6RowPoTKIbJhi/odwIFC28sndUUMLv58AbkcNm5LJNR7s3tdFPvF2IujNk
 vHkSiSPkxsjAFJ7/9bTkpfflHX5Wv0gYACgUEG9bOQNqcDWFuwoy1PYkn/6EIYxvUgQf
 jXuw==
X-Gm-Message-State: APjAAAX+gwJy9IJc+QlNgr6xBpGipniJ25QVNvHg2XRJJost4MIHskbD
 xGjoworfesVbrz86F+dLhr8=
X-Google-Smtp-Source: APXvYqyrqJN7FoWGNCrX2uCsCtNC7FthgP3Vanzx9r8KGxWqdMRrUPgSCZxhUEbHHSo3EzI4wm8oqw==
X-Received: by 2002:a2e:9d4e:: with SMTP id y14mr22449268ljj.199.1560514310517; 
 Fri, 14 Jun 2019 05:11:50 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id p27sm459683lfh.8.2019.06.14.05.11.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 14 Jun 2019 05:11:49 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH RFC 0/7] serial: imx: fix RTS and RTS/CTS handling
Date: Fri, 14 Jun 2019 15:11:27 +0300
Message-Id: <1560514294-29111-1-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20190614072801.3187-1-s.hauer@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051152_785097_17ACE159 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Sascha,

I think these patches deliver simpler end result and are more complete
than what you just posted. In particular, the

  serial: imx: set_mctrl(): correctly restore autoRTS state

addresses exactly the issue your patch is about, but in a slightly
simpler manner.

The patches are not tested yet, so I've put RFC in the header. Just my
2 cents. I can obviously re-roll them on top of your work later, if
required.

Sergey Organov (7):
  serial: imx: fix locking in set_termios()
  serial: imx: set_termios(): factor-out 'ucr2' initial value
  serial: imx: set_termios(): clarify RTS/CTS bits calculation
  serial: imx: set_termios(): do not enable autoRTS if RTS is unset
  serial: imx: set_termios(): preserve RTS state
  serial: imx: set_mctrl(): correctly restore autoRTS state
  serial: imx: get rid of imx_uart_rts_auto()

 drivers/tty/serial/imx.c | 93 ++++++++++++++++++++++++------------------------
 1 file changed, 47 insertions(+), 46 deletions(-)

-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
