Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE8B3C495
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 08:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rtP4srln5IJzYnnaW5Y7PYualw5kOr7G2/CUP2ya2dc=; b=Ugc
	4z7A2kRL5qK6JVZ1GiGFxf0cnrKuh87E4vd+nLQvHKjsI8utNQ/Mje9HEBrGDLv6ktxCY28pkL3yL
	5s7D7jiUvYNrp/R91YEmXLPQPoQQZidHZpG8QS1hvA/sXFCY29Felt8qqYSb5bRYfw8ayvctewX+n
	UbPkryVxQmQ4XA/pX08tfXLFCD2HQBCKz7pIzWDhC+THaIbL4JQ/DgtFcwxFG99lVQakit+itLRXv
	cfurw9BIMC9d0pUXlUxgEzG2Aw8yWLZ6k1fXSX2zj8ALsJWidWACHw1lCDPD/f7ozuK5JB0fPzmwZ
	D+d0KpegthG3VgM5yxcHclLbm0Xa08g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haajX-0005mz-1N; Tue, 11 Jun 2019 06:58:15 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haajA-0005mY-Cu
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 06:57:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id 22so1556671wmg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 23:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=KJ/d5w9c/HXeeYUZHkN6hWB+RneeD4rivtNwjYdhiiI=;
 b=YgF3oK2tbFls1fnPASO0AsGvoJZ6/XzrKZQQcuvr1tooHq99ncAIRahhvKbhEhSJ+s
 ZNI5gK5QRnrRNwln9+9pJAOWuGaqk1koj37fyt5Wn2oxz/eRcbvjUf7H7r9+47sTwCVG
 jvBU/W0lWNk7hSN6lNQfgJvn3Cmv2Rw0UPpMdSYMVl1jaRM6GMuFDIdLsb1sscpZTT04
 cGpGeQKFDRzbHC1w4h/jBABPsGDY7ExQQhFwbWPbZ4Ho1nMPrgp+48UxHtMJcwntdPG/
 ZNwYS209DEAWLeowNeaLDF49AyNZxOGPq1fACm8xalrvbzNEZ2sn8jYhmgnyqCg6a3Mk
 MqRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KJ/d5w9c/HXeeYUZHkN6hWB+RneeD4rivtNwjYdhiiI=;
 b=GZiFP1WW0LzuF1VyqUhQSSnGeN8k/U1C4o8bkXAM9F01r8xB/iis24WcitbIo80ytf
 S92MOxshIXO9j9inddKYlWawO8sHMq+Is7LASeQFcqrlvXPX95G4fs90vDud2EKjmxj/
 p6r1igMA0HmQtQOFP0810YsTtQSt3OVzohBbm0j4RgI1tdde9tisK2RVfO+y/M7BR+Vo
 WzLuFW5b9H9Y6YnKTf+vf7IeE4ktFfSYFWWS7UrCBsHfr+KgwmJVI37KO6u/qQTVrkus
 Qpw3Ck49UKqQynCiE8LHiTr68KDjxqnWZGmoeDUji483eMwImwoxmQKfaYSGu6rX6f68
 LItg==
X-Gm-Message-State: APjAAAU8Bvv2wDC9s6CKUUJY8KK9eHpuBuqM6UUm47sHGiN4gBYdJlJE
 Hj5e9au24U+jzaT6+hFWiec=
X-Google-Smtp-Source: APXvYqxAcg2C5KvGZp1y+sWdt0YDMenF1gjiiZ1jb+Z9Gks/VABBlPnMntLZgLkYBilYx0JW+amngQ==
X-Received: by 2002:a7b:c5d1:: with SMTP id n17mr16676335wmk.84.1560236270227; 
 Mon, 10 Jun 2019 23:57:50 -0700 (PDT)
Received: from localhost.localdomain ([86.121.174.24])
 by smtp.gmail.com with ESMTPSA id r3sm16566696wrr.61.2019.06.10.23.57.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 23:57:49 -0700 (PDT)
From: Daniel Baluta <daniel.baluta@gmail.com>
X-Google-Original-From: Daniel Baluta <daniel.baluta@nxp.com>
To: jassisinghbrar@gmail.com,
	shawnguo@kernel.org
Subject: [PATCH v2] mailbox: imx: Clear GIEn bit at shutdown
Date: Tue, 11 Jun 2019 09:57:31 +0300
Message-Id: <20190611065731.5581-1-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_235752_670499_0405BCF1 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, o.rempel@pengutronix.de, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, shengjiu.wang@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

GIEn is enabled at startup for RX doorbell mailboxes so
we need to clear the bit at shutdown in order to avoid
leaving the interrupt line enabled.

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
Changes since v1:
	- no changes since v1 just sent it as a separate patch from RFC 
	series https://lkml.org/lkml/2019/6/10/465

 drivers/mailbox/imx-mailbox.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
index 25be8bb5e371..9f74dee1a58c 100644
--- a/drivers/mailbox/imx-mailbox.c
+++ b/drivers/mailbox/imx-mailbox.c
@@ -217,8 +217,8 @@ static void imx_mu_shutdown(struct mbox_chan *chan)
 	if (cp->type == IMX_MU_TYPE_TXDB)
 		tasklet_kill(&cp->txdb_tasklet);
 
-	imx_mu_xcr_rmw(priv, 0,
-		   IMX_MU_xCR_TIEn(cp->idx) | IMX_MU_xCR_RIEn(cp->idx));
+	imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx) |
+		       IMX_MU_xCR_RIEn(cp->idx) | IMX_MU_xCR_GIEn(cp->idx));
 
 	free_irq(priv->irq, chan);
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
