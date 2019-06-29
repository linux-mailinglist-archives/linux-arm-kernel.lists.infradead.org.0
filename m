Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E235AB18
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:50:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M2x+TUXvs5G5MUOdzlz+TM+eM8d9UGAH0Ax9McAgs6o=; b=r9AZuKIT3xLLVtLoDg1i49dp9A
	EQqJ3deRjMAEKVqEWew1oObu/qADe6uTDDfVs2v0guJXoDmCtFMgmhBZBCu2rDQCqC1eOLXCcCtDP
	QcWXs6tR1W+L4ZU3jwcl9A+4ZYHTMpJaAQIE7w21v8A7SxC+Aqk1gjsmPnO27lfnpMhfNNET9Cqnw
	XKs9JRJU+bFNBrXDd7FTdkF+QhpiAl0IF1u9XDEIZx/MjM2r6oI19W7AeBAM+yjKcs/Jdm1cr9jch
	pvhmTV8LyhPhECK1EyJd5kXxePL+JZJyAFd68PMI7rPcHIBGlix9+ZPB627fAQNIbjqp+VMMiJrQ9
	+p3f8qVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCo0-0006mE-6e; Sat, 29 Jun 2019 12:50:12 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCn1-0006Hd-HO; Sat, 29 Jun 2019 12:49:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561812541;
 bh=lyuo9ZZkk8hJypSXF5NF0dOT2zV+ssHAqTqmySO4UcA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=k+6VOKVj2qROcEKKgv0F0RL2/U34jXzpl/hG8pDCJ9jmM3GhremFdcFusLokVI/xC
 Kd8WGmVlZNaWEY/hEfQehD4na8/C3Lxe0rrKOpAh2d79qdS27Q02xoeY4c+jWryxXD
 ygEqijkcAh/4VlyivWqFSUn482fpc/SH4ZwcUmKw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1N0XD2-1iSYAr1vjI-00wZB8; Sat, 29 Jun 2019 14:49:01 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 24/29] staging: bcm2835-camera: Remove/amend some obsolete
 comments
Date: Sat, 29 Jun 2019 14:48:31 +0200
Message-Id: <1561812516-9087-9-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
References: <1561812516-9087-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:FQwLvaiFlhfDTE+wRxT7EaRSvUXaNO4hrSTyFF+HF6ZTQ3nMrUe
 y4dJ8pXcRTY2FOq1XbeOfel3GQ0t4ssrzTQnuIdyzP2NcrkByH1mvayk8XEr+RoYafsXxHI
 WUia9A+96a+QRyhyvTi6Sr6a+xeH5kc4gzDDEjAm2jzSnUXcA4JcYvanIATdv1JItdJ3hDV
 aUMyRjtjW5ct9lWHk1Dhg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BkZiacC8RxI=:CQOgSGO9V1/El+0cq+9QKE
 wF2J6I9eVr2MPJ93qCZBe7DOTp8+4dz37KZNiVLLrfwIvEjtDmh2O9eYVNQ+Uf9Z0koX3wWQC
 oft6r/FTrYVKr5VuxuufOCqBTXrHPUyYvjr62wawDE+9fEKXRRAT2XXmkO1CDA29ZVAHRN2zU
 JXqk3iHwtZxwW4Undw7z2klHLVSUpLqUAWNOn8SnCCR9aHynEOl3JTVYBrG8uYYghLblDSzZb
 76jD3FeFxejY433n5Z2modtnpDkjUAW9HS0wjVxF7m1rXENK42zze4N7uGy2C4Wtofdlb79Al
 qOaWqwrbSiAtfwfNWKg8dbOl2wgKI62bKWW+hGFU+jZdhpC7ubu32CFEMztsmmRxQb6VgT74e
 QO7GNc1s0S+ld54DinMcAqEpwkTTGSe68hzF+bo5+y7rtolkQH5EqJbp2iYGe0XQkZ93pXPwb
 yOzyuSrdl8rH3P3uezRpAuDqEeatTxltARS9COm3VVCApE6YNOzLwNi3XARm5nMuuh/dVXu0E
 Xo/Sc7dBzfttrZCTgy8O3K3sT9kUdDYkCm+KmQlcQZ1HuOCVvsJyjqJu3EJBZcu57vZ9k2Bes
 JHZ5pZ0UTGH5BgK8VJrhzwE4/lEcCrKUN7Drrd2dg5Mh9Dl8BJBEkazz0quiVjqyoo/4fzLCb
 L5r2KANGuzHLdvuucUj41tBJzZeOUciNoQGSWej3v9E7nG01wxeWDWmmOoqAbMVPAdowTm0fy
 nA01RJECgMYWAcBgxqI+qnl6z8rlcWdoF0GjPaB7R0SDINsr6bbciR/rcPJNCPdZCHg4LeQER
 jZ4Lie1F+eDntCmxxS0Iy7CrcrSgaLnqL12JRbvF/ZIEohd/XFyTc/51vOCyukAeH1GRYpY1m
 yD7x6Wr8kYBPb+DnOwvNlnki1P1YzItXlpOQr9SCcDpGpXyMCe+SqN9V5WGE8a6w+fzrc5OhR
 jperBTJktqdJYPImkV3/X33UjkpcyeuULrSI5il7OJK49AIqSprrFYyn0mJPN56tr6tjxW7hm
 sgH4I+qP4i89Qtu2XlvAZYWPRymkJQY8V/dwMs4+7RwF81gzbbazqIBuTL3m520ncCzhPbY7Z
 1gAeaAKlw9R9c4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_054911_895809_AF83425D 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

Remove a todo which has been done.
Remove a template line that was redundant.
Make a comment clearer as to the non-obvious meaning of a field.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index b8aaedd..848b14a 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -971,10 +971,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		ctrl_set_value,
 		false
 	},
-/*	{
- *		0, MMAL_CONTROL_TYPE_CLUSTER, 3, 1, 0, NULL, 0, NULL
- *	},
- */
 	{
 		V4L2_CID_EXPOSURE_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
 		~0x03, V4L2_EXPOSURE_APERTURE_PRIORITY, V4L2_EXPOSURE_AUTO, 0,
@@ -982,11 +978,6 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		ctrl_set_exposure,
 		false
 	},
-/* todo this needs mixing in with set exposure
- *	{
- *		V4L2_CID_SCENE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
- *	},
- */
 	{
 		V4L2_CID_EXPOSURE_ABSOLUTE, MMAL_CONTROL_TYPE_STD,
 		/* Units of 100usecs */
@@ -1152,7 +1143,7 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_SCENE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
-		-1,	/* Min is computed at runtime */
+		-1,	/* Min (mask) is computed at runtime */
 		V4L2_SCENE_MODE_TEXT,
 		V4L2_SCENE_MODE_NONE, 1, NULL,
 		MMAL_PARAMETER_PROFILE,
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
