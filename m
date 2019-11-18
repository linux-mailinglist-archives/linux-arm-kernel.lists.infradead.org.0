Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59190100446
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:34:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z3/iMm2Iflm0pGL7ZMQTtuQLA8CcNNlhyyMPy39t3WU=; b=i2RY1GzkLgBqMg
	fMgiJJi9jwxVbDLk119DDQ11UATvZlaXWtFfh9HSYyxGz2AMSFNhBw4x6yy1Rkvwqbb06O2XCJf9E
	qdA88psZ+yBzG1m8T6xTTa2iW+u3I/JMGvoL2+igcO+03YzFRrLMfmP4dDOOoLTGJaC2RD3w9VIAl
	erW1VCqR8oYYq1Vk/Bmb7bTjGnvdqumL+iLLPYtvREPMNYocry6J1QI4T34TIW47usLnqKVkTemfU
	Iy/uvZ+gdw8LmmSLnGldY7JpuONCmpmG9sD7vjv43QtnrhERA74IVEOqdd1r50et0Y3DL7bLilJHb
	BTymWmcpJ3aJI4rRTDsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfIz-0003b8-LQ; Mon, 18 Nov 2019 11:34:53 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWf8i-0001Uk-KT
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:24:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id q15so6187207wrw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u8f4zkDbM2vRjhOU8bSiNRa1yRbCbXojjY2BLWPzI+4=;
 b=CcHL/wr1MdHVku5NXqYEh205MsV8nNbDhvOTjyrzGp7E05+OZTj+AZ65Mq6w5E7fC4
 QUUsnYvwWfYNPoDOFKaiWLBxE8orb1Uaokk6+Yh/3Va8yKkEh4CwI3Bvmo4RGmqS5LuR
 7JMzpGl4mSsJFAgOgGnawmUsoJc5NQxoI5Jzs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u8f4zkDbM2vRjhOU8bSiNRa1yRbCbXojjY2BLWPzI+4=;
 b=D8kP0h5ZbBeV5sL9eIoMImWv6SwK/e24bNwvcXTPg4W7sDYH78jp1EU1FoW0/+Ha98
 olM9l9gxiOctE/uZrmw5+ShI9cBJYaGbCULm9oDLytBJR+DKbFksjYcwBPZHWPOpJCqg
 cI0rflcSJfmLQSCQdYDBSRB7vCMhlitTwuMrJ3637pM7xpXdZriHOgujrZM+N5DbV06d
 LtLiHicibsiiULsqZrg1X5A2Pi7CrfuQDyvyYaR/xAORMudF3Sd5Xf+oS7t+oDabMnwm
 Yp9+9faOjPY28MSX4ZNZlg+u4NZDOGee0tG+JbR5MJ11a+KJl8/hA6iEf3gcKjB7WHk7
 d3vw==
X-Gm-Message-State: APjAAAXFLb9wLOk2yusWdE4mj9hMjqfolaAZzvBeYTC8MAXd3Bm4riue
 y2eXs+yx4Fdp1y2iKjLmPkf8VJV+0cO4vg==
X-Google-Smtp-Source: APXvYqxiVIfcvMPElvIDiGYFueIrSfkJiIqk8i4Ft8HAmwqiGb21aiYg0hu8lk7xe2G5zIrvZe7G8Q==
X-Received: by 2002:a5d:4e89:: with SMTP id e9mr31691608wru.342.1574076255340; 
 Mon, 18 Nov 2019 03:24:15 -0800 (PST)
Received: from prevas-ravi.prevas.se (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id y2sm21140815wmy.2.2019.11.18.03.24.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:24:14 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v5 33/48] serial: ucc_uart: limit brg-frequency workaround to
 PPC32
Date: Mon, 18 Nov 2019 12:23:09 +0100
Message-Id: <20191118112324.22725-34-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
References: <20191118112324.22725-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_032416_752424_BDDE6DEF 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [5.186.115.54 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
