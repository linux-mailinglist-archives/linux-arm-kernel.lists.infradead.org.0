Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000DE16004B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 20:44:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qkk0dfmLAfkly0kZOyylwC5yu6h1IZvQ2YZYrpCe43g=; b=JnmegdBSFPl6AZkbKmXNKw0vKp
	PwBSJ/Mh+WpPB2kKfVYrOuXRR+iLRcSEwQ2NB+EoXisTFnK1sS8PQhh3aKZ9vzDYdgSRNTL2ivnwz
	Olwx396oT0d6OppjQyKKNQlk/6aGEkL9F2BdHJEHuny0V/AVe5fPLdOCR7aPMNKPqU//zJb0mTmK5
	r+AQtcKg52yjLdjYNdPbJkX8/gHe6Hl4Hwin2L24bGlvIoUZyueRlKe0FBSDH03zPOdLNZNaJqnjb
	ZvDXNNiR6dvetinLo1yePJyNw+vbsRcOwRxTRXpIEHVhknoTeCbM0r3qC8VPYY56Hdhg51/qBSwiq
	+qP8iAMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j33Mg-0001jY-95; Sat, 15 Feb 2020 19:44:34 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j33Kr-00009n-5x
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 19:42:47 +0000
Received: by mail-pj1-x1042.google.com with SMTP id q39so5500541pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Feb 2020 11:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WaBGbAVLvbw1Oa8PBijA4rVNFNBvvrFDnIgEYRds3L8=;
 b=jmZpkjWsbaobRG1GO0fyalos/nZWZE80HVu13ABf0t7B0ahTcSHiWCChAHZuZiBurG
 b57uODg71jswZRofJSWEa22pIiXiJfsimHlu+cdxpuvye67KXdorOhPsJJKPmK1AIPOD
 G/K7RLOTsPMM03LJifKz3uhbRvnz45jpuCH19Tlc+9o1b52xj5pFK+qmFxRqn1H3vw8/
 4yL09zC4e1YwJnSezJS/M6CM+kAy/t3/T1BmzVN9SxbGMhY6p26MyzAkq1ruMUE+M5r7
 GVT03WQol/jICxoaUmRBiTu2K71nTj3KGgo6z/IBIUZT2CmLoZsZhRhwgbK9WXZyPgiV
 I9yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WaBGbAVLvbw1Oa8PBijA4rVNFNBvvrFDnIgEYRds3L8=;
 b=k3Y8dvm51htRhb998hFt/soBP2Ci+DzQAh/joxTznbcNvURI0KAJf2Hq1JQCNq6DNW
 mjpyF+nHiSay6DByS5AiceyhYGlpP7HZIMGiTQGgK0BjEGTPpT1jg9Rz4vksXUvgeVtO
 89QEZReV1S/MO5Qwv9D2eOFpnF88Lq46lj1pGo7EzFoGolKrWHRDokGwwA+V8j1ltpiB
 DITJ+8GCNrrTZZlKC1gLkxzakNojvHKN/8hD2sTWBtSq1bRl5QLQEADlQsvi1GBYm+Y+
 ybgsxnv+CtWI4VP9na8nZ+bpJ1U6nLXEqwd2SRzCCd9zXLdKCpwYH1/0kQu7lVPqIDn8
 9nCg==
X-Gm-Message-State: APjAAAVDtge4D35ZjLq54Wb0Q/R2Vbjng9YHf3RoUlj4ElhWEzxFiNM8
 aCJ0tfJxanl0cPRZEyzFT8I=
X-Google-Smtp-Source: APXvYqyieLo6TkLDnsQ1I1ozugLJM2j6uZo5Kq0sitsB01Xv44YmxnyulZiU7C4+ngGeqMUn+Oprtw==
X-Received: by 2002:a17:902:b70e:: with SMTP id
 d14mr9221633pls.295.1581795759976; 
 Sat, 15 Feb 2020 11:42:39 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.42.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:42:39 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 12/17] media: imx: csi: Add missing notifier
 unregister/cleanup
Date: Sat, 15 Feb 2020 11:41:31 -0800
Message-Id: <20200215194136.10131-13-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200215194136.10131-1-slongerbeam@gmail.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_114241_331568_823B66F0 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [slongerbeam[at]gmail.com]
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the missing calls to unregister and cleanup the subdev notifier in
imx_csi_remove().

Fixes: c893500a16baf ("media: imx: csi: Register a subdev notifier")
Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 3e2afdd59276..bea6a70cc353 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -2030,6 +2030,8 @@ static int imx_csi_remove(struct platform_device *pdev)
 
 	v4l2_ctrl_handler_free(&priv->ctrl_hdlr);
 	mutex_destroy(&priv->lock);
+	v4l2_async_notifier_unregister(&priv->notifier);
+	v4l2_async_notifier_cleanup(&priv->notifier);
 	v4l2_async_unregister_subdev(sd);
 	media_entity_cleanup(&sd->entity);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
