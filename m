Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E9458A9E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 21:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gQ8DlXyrVCTt4Gjf9lnrqyh/5EnT3uKklJunqaot0dc=; b=XxFJFT5Zmvp/dWXRnXzr9luenZ
	kmiCiCRAZTi5qL2AQpovA6X7Gpaxwv0zSqI0P7+K05KR6nloAFGBF+Grt4FmfoawsgLwftjsuWSev
	pWvQnQ65nJsQLI7njajH0W8tKAShAXa+2jEqlLbBFuqqeUWLcCYDPx0s0cvwMlSlIyuc6VZs3H6S7
	WWLpGmpKhR2xN8Dx/8lbeURm+y5Ma1S6aOsqny9Tz4NEOP7C9xjECtaZyNCJSw0nHnBR49XWgtwei
	iiGuWkt3e7xv9qAOB76ej4KxNW7MzZ5QBHQiemGCmXEvu0S9WzbqSZsk53oDRyteMmdYPyTd5OBQ0
	qx7MY6jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZhF-0000iT-R4; Thu, 27 Jun 2019 19:04:37 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZa2-0002Yg-V3; Thu, 27 Jun 2019 18:57:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UlYEAB94tKg1JSkMFxMmT5mwl4Oe1E4VAwgAuTYl0Zk=; b=1MrfI8EKGXvNfNKg5h4nb7wNDp
 61cS2yUUUDPDfGVRJgKkqd29PmJn3XrymrM5sGYFZ+YC8D0K9qDFYebd8I/29rW+oXCFLBxmEaoPK
 ozK5A7tvj8MNjYgUH671fY2ChXa9jPe7paiQgsaexX+aL7L3ofVfqRJkDc4GfbT7zvhyw066R6ZLZ
 R9bI9G9pRy3NMVL8lPd6XMKQ4q/jVegvGar+a5uhdBZxeOdoOPpT2avjApfmklY0FMLu7cto7n4wC
 bINH5yzXNhkLwee0YUv+ubw5Xm64K1se5CZTMDCac6beKYfnXtT3ORwVbZVVcfS6GJSgsDdK/KDLo
 SuqyHjlg==;
Received: from mout.gmx.net ([212.227.15.19])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZZz-0002cG-K3; Thu, 27 Jun 2019 18:57:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661815;
 bh=8zy/CF8eq6vCciU1LYPKVRt1nppxuwPwBxjk8BgMHCI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=OiMdz/sG7vnUhoMUouJV7XUASaR917O5b29ggMTZrpM+aNhu4zax4rINDSp1y5TAz
 i73CVq6TdG04Vx5YZSOzXzYS2SsMH5lDzBi7z046mTd0HStJHXmvlGxnvoc+3rmmyv
 qsF0nftIgZhok+qENMZFTeZ8EdX9Qze76+0MUf4o=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0LqQzp-1iBDQV3k81-00e1fu; Thu, 27 Jun 2019 20:56:55 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 16/31] staging: bcm2835-camera: Remove check of the number of
 buffers supplied
Date: Thu, 27 Jun 2019 20:56:13 +0200
Message-Id: <1561661788-22744-17-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:B9slWFuCxy+02ZPi3VQFLXOYRQyTHeed6m6D9LbksOSlspD/mcl
 lUiQc25qvasefDg65qcaQ4JyNgnfNb6utBdEqNMz5Kzd/Q5lZzxp737BxT27weFFSOXQH8K
 H3kBji/p3t46KVOYuclYZ/FXqCcavbNEGml1l++aU24MR314GHcc/gKlgd4dKOxCIB9uDTA
 LlfQvA2olDokT3FAdW8Bg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5Pe78/5ZErA=:j2IiReNY+mN7+vbsSSS1nD
 W0M8UFWxE99aSvM1mQtYylv0ZqO8Bhhs7ASsoNj8EdRZrV09dgGG5/YsHtS5DFJKTQom41q3t
 wzShstS/BBmS4GuVEZ5G91nVVpHSzHbhwmKCaHYE9czAPaUYT2GOs8SeOyBZiptZA2liOecuu
 A7rWaOg7aGGpWmC1bRq4A9Z2rw0n0AsrJQHW+l7/Ove6FFA+yIiuzqgCSydbylxx98k+9JZYI
 MB/3jFzOGm/Y8gegBJGRC1Qix5QxO+y3+9ouQeK7/BBsoUJbTtqUpWAj5en15m0myHxj7gyIT
 yQbOfSSZ6afFE84vnpzepG+7hFOos65n7HC+lBM3bbI4bRAnT4i7w4graVTpfxEaFYlie4IlA
 iRZU9X/eoWJrSt9CLjWf0CDRBi7EaI8PtNFoHmPwNUduFgPaN6wRcvOxGE3iUeXkQA01gb/rk
 dsiUKzI7DrULjuDwCynjpk7KtoXuFakpeRS5eN3R6fOKISyG0kd7MTyYEF+Mho/zd8w8nI7Er
 ioMyD7GyIzLdj1yXeZFeDbbIZI64BZI/jfxtQDMEuScxjptD7ZNl5qpIRlI+gMtPWguRprbvB
 F+UG9mPl62t3FXSUBna7JNbBUZTltuSrxY5vEynldZW7UewjaIwxwBwZZXxq7KJqDskDNdwYZ
 t7O2cCrOcAOROHIAG4LeUcfTu+P2RvqHKcrnIXpREj4EnX+UnpaOmwrp9Wt4epgtsS7VZ5onk
 KZFrf1n/A4bNlpW58xTMhx1fd1TYB1e9lKYUbr7f2eHpAeNxcc9fYeiqbjcp+IntRAhh5f5oL
 hLD1+ub2aJxtBIFoCmQVXgYLclnLrxFXPEUaeajF4B+OvS7OCabTflKlJZWehemcz0iiBjIy6
 FgjJ4b3oliDcmKb5nnelSUgzMWYyP0Vcu487X6qho+2aHIIh9x/7dRwvT7dqvdp+IUwy0HEL4
 ZIckcSqwQgbKofrC6zcjZtyjkXG65ijIkHFriSxhcVifpieV/WO5nPT6a4aQnsVTWZe8u8j+m
 fNKO9fqRzU/w4ew3oTmJkcSk0hsSLyfhIH49Pza4kLDBki5IBrCUC8tWATdTh8Na3Ff+TcUq7
 7YoYkTGzEldgU8=
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

Before commit "staging: bcm2835-camera: Remove V4L2/MMAL buffer remapping"
there was a need to ensure that there were sufficient buffers supplied from
the user to cover those being sent to the VPU (always 1).

Now the buffers are linked 1:1 between MMAL and V4L2,
therefore there is no need for that check, and indeed it is wrong
as there is no need to submit all the buffers before starting streaming.

Fixes: 938416707071 ("staging: bcm2835-camera: Remove V4L2/MMAL buffer remapping")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 4d63176..59eb812 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -1338,16 +1338,6 @@ static int port_enable(struct vchiq_mmal_instance *instance,
 	if (port->enabled)
 		return 0;

-	/* ensure there are enough buffers queued to cover the buffer headers */
-	if (port->buffer_cb) {
-		hdr_count = 0;
-		list_for_each(buf_head, &port->buffers) {
-			hdr_count++;
-		}
-		if (hdr_count < port->current_buffer.num)
-			return -ENOSPC;
-	}
-
 	ret = port_action_port(instance, port,
 			       MMAL_MSG_PORT_ACTION_TYPE_ENABLE);
 	if (ret)
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
