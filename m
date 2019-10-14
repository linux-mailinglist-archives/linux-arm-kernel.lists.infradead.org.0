Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EA9D597E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 04:10:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LioSg4Mw3Y4LAiYssYTcaZQ2sicRtQ/l6cOCPlc2QTs=; b=t9qRL+TNgUtEAk
	z654mN8dZyjZC1160zbnyXVqiUlhp7Y1Z5ZoDbXqrVTPEqgoIItUEYOd6XkSnagVoMw9KYh8mfJfc
	di1KoPJ3kZuvLgODLw01nUYxCNRaahUqn0RrrLqYO0fsJVxDzxSZDVCmVcTdzm9LUrY4COcE9LBU2
	6QBqjwI8pxDp0YpDvNlKvuAKKnQTx9REVAJkfqV0+lfk/EjdgLsQ5JcJ3KZjHgmbYsfEBsfVSEfo6
	wGGiunH+Osuj0ppSYZOyHTF/FJV51cZj6z2L+MhuQlsfCsynKyEZU4ukQFB4rulR6lFRDNzhLblaP
	yAhO+o3noAs+E08hPRHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJpoO-0004Yy-Q9; Mon, 14 Oct 2019 02:10:16 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJpo8-0004HO-9t
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 02:10:02 +0000
Received: by mail-pg1-x541.google.com with SMTP id i76so9158318pgc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 19:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JkHBk/oYXM6517BAgEL0tKLuS2H0cul0uF9oC7gkoSI=;
 b=g0CNjKkzhyTA61CsKBL3iHOy8nLVAGAa3cJ5rCVNL1BN+SBG/vzrLhjUGkRWjlW/W0
 JYqfPxA6SiW5JscfbYjjGHVZCvtO2L2VsjMdTxS4Dsl4DjKC8ayzmiJQWoTbhBT7D8WE
 1nvvRVtDYtCHKCeL8BGlrTZLFtoh3u5sueL5Vl/vNPFo/McUdpIRVF4gCoIpllmVEvJU
 HRaocmIeVyO8KOnVOBLQcUxlioZMDUmElvLXCmb9oPSEQxijkgkLsFfvDZ9jazraowWd
 3/+Y2aSR5tO2k5Gk4bDv5iiQwuCl8swt9p+GtEtxsxJ+oiySHwRe6POlJwI6CIiyuq9X
 nAMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JkHBk/oYXM6517BAgEL0tKLuS2H0cul0uF9oC7gkoSI=;
 b=OgD+yFIewxT4cgX65KPNfBEM0lWanQfY88VeY0mEYhbpxkPw50Y1DOR1CLOEMrUCvt
 EUiVtpwthmpuLZc0NqxyCIHgB0lWacWXixJPnMHrn9AbHbrQFOmAVOSstWgRdhi68jaO
 MOUr86vwJUvJ8D108HLeBl/Dr0CisBBIYRddGQTm4uaXS8XVLLLqOyHS6o13BMi2EiLN
 +HZNsituhPOxtyBFDopReMdZYzV7+xXZwEsWvesqcmIRasbPF2bmv1dNDJXgg7RrSFAP
 9CGv15Vixzgh5TuDwjIyxiBEJIH1iOq7IH6SxJd4J9tgJstsaGZE4K8KmOaeG3ecJ2xG
 gKVw==
X-Gm-Message-State: APjAAAVGoPq+NXWtgIzx8lR4eJSNeVeRrQIcxvJj4mp8Bd4pd7s/wiXg
 EjCRpIc3bfebRB3dgF7AnyI=
X-Google-Smtp-Source: APXvYqyHAW0ZGrxC+x3fqBgDGqyUuLIvlW9MkiUlzXZSZrs3uS94Jw7zBKKzmWK2wSSKmIEzfOXIOw==
X-Received: by 2002:a17:90a:be09:: with SMTP id a9mr8687157pjs.5.1571018996018; 
 Sun, 13 Oct 2019 19:09:56 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id q128sm16589880pga.24.2019.10.13.19.09.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 19:09:55 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] media: imx7-mipi-csis: Add a check for devm_regulator_get
Date: Mon, 14 Oct 2019 10:08:48 +0800
Message-Id: <20191014020847.9203-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_191000_346063_C86B84A8 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: devel@driverdev.osuosl.org, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_regulator_get may return an error but mipi_csis_phy_init misses
a check for it.
This may lead to problems when regulator_set_voltage uses the unchecked
pointer.
This patch adds a check for devm_regulator_get to avoid potential risk.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 73d8354e618c..9a07b54c4ab1 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -350,6 +350,8 @@ static void mipi_csis_sw_reset(struct csi_state *state)
 static int mipi_csis_phy_init(struct csi_state *state)
 {
 	state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");
+	if (IS_ERR(state->mipi_phy_regulator))
+		return PTR_ERR(state->mipi_phy_regulator);
 
 	return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
 				     1000000);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
