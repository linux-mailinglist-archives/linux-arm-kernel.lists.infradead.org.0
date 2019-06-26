Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E443A5710A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 20:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8eE7Hl7zmblmKwrYuNqprKQyEZROjoGTMuqFhjpv0tA=; b=Qfp
	llU4bqx5D1UOmboz8W3gaDeoR5qqoi31P0/eyi5vYJz7zavQlQGYtwoqYC3linkpJl/cUPDiXTBVX
	6UzcqKBOA2BC/D32euszJTHcwKNPAR2TBdbHgxodF/yFYVkrisO995vWT+NBxHO7fFfXYDVfKALiY
	F/2JL9sZyJl835ZML8x7Q9AB8T/K/yzoWNE17oKxA/CtKMfpj/TfDGVI0bUsk5KPnV/rqY/vbVrKx
	h4U8WzAziaBkyXRmj7Z7RQERl2YroDxnsfBqv0g71Isl1r6QwFDSqhTQQIJ4uY7He84ycx0zxIPe3
	vsGxKO1KL5Gf9o0Vd1Zv19FI9kgb9eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgD2Q-0002AL-5l; Wed, 26 Jun 2019 18:52:58 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgD21-00029u-Ql
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 18:52:35 +0000
Received: by mail-pl1-x644.google.com with SMTP id e5so1903395pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 11:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=jFUQd1a4KGSPHNAxPDeMNjxKEsd1P+Yd6RvsJx/5uQc=;
 b=HOxVhJOTySx9Jybho1j8q1uMX5VGq6y0o6AXMcSjfoJ4/KBSXdAUO16s5x0IuDodcO
 grpU9pElitmixZ3CWDWnBW34hExdqbMGOIBmLULt8SxkdS7SHtwoeMrvIIsirzIJQL+M
 MVjzeShwpTCRnidbpUMiW37SwtuG3qMzyJTVzVBvdyLnMAzoox8jwmGyhUYkU0iLci5f
 f9bOC2N6QrgG+yce5wqxaj9+uFqgB5PgfkKSkWlgHFNuunEPchYWVrNOdNoiK+43MdJQ
 McYZFt03ftsZVRUmw9XVX2hQrWE+GZdrkeKSVoXr693OkHZAo/VQdoau2YyfuPBgtseg
 2fpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jFUQd1a4KGSPHNAxPDeMNjxKEsd1P+Yd6RvsJx/5uQc=;
 b=PiqqtWELmQXHxfoWc+4eFwL9kgnlaiYHqW/LCTTs/xrPIM/FkQM93p25yXoOFbQyLS
 NUljQuJ1ZVv2tn+KzPZvDbg5NfdyAupBFC3MralRYNoaAO04IY4Yg8TtlfgFlNuZIYB8
 u6IckO/pSTFD2FJejhkHztb0MOSakxWih2xlP8PCKgxFn/+fxxmaKViaqqX5uAzMMkTe
 uyPAEvDziD49F/nXJhnidbGzPKs1xqTF4iUmo9hT6uFYixCNw4N64mvxyU/Ck2hYEyeD
 QGFOeAs6+LwMrWWVx3Kstk7MnQr2wDKIcpXYdCYqOgBOWfVO0vVAztD8SobBNZB0nojL
 SEpw==
X-Gm-Message-State: APjAAAVulKMwtfqBGJS1HYUrKnzyx0AfRioOwG6PnXiCJKrl6O6AjjUD
 iLt5C3JxNMrjypHP7EmAITk=
X-Google-Smtp-Source: APXvYqx8xcuzPF+3Q1H4Ucd6o7WTHj8KA2X/LjdtxpnaqkwN20/DS8zjhdwPiDFcZDkNITcE2JX/jg==
X-Received: by 2002:a17:902:934a:: with SMTP id
 g10mr7349836plp.18.1561575153144; 
 Wed, 26 Jun 2019 11:52:33 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id y16sm24891832pff.89.2019.06.26.11.52.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 11:52:32 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] media: staging/imx: Fix NULL deref in find_pipeline_entity()
Date: Wed, 26 Jun 2019 11:52:25 -0700
Message-Id: <20190626185225.11992-1-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_115233_873161_0E598077 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix a cut&paste error in find_pipeline_entity(). The start entity must be
passed to media_entity_to_video_device() in find_pipeline_entity(), not
pad->entity. The pad is only put to use later, after determining the start
entity is not the entity being searched for.

Fixes: 3ef46bc97ca2 ("media: staging/imx: Improve pipeline searching")

Reported-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-utils.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
index b5b8a3b7730a..6fb88c22ee27 100644
--- a/drivers/staging/media/imx/imx-media-utils.c
+++ b/drivers/staging/media/imx/imx-media-utils.c
@@ -842,7 +842,7 @@ find_pipeline_entity(struct media_entity *start, u32 grp_id,
 		if (sd->grp_id & grp_id)
 			return &sd->entity;
 	} else if (buftype && is_media_entity_v4l2_video_device(start)) {
-		vfd = media_entity_to_video_device(pad->entity);
+		vfd = media_entity_to_video_device(start);
 		if (buftype == vfd->queue->type)
 			return &vfd->entity;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
