Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F35595AD23
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 21:33:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jJwH9PblhcxBlU3lHqI/JaLcY8FDH8Tyh+3bQxr2rzg=; b=afp114UsYgElPdLpnjWCOLVaEA
	dUynwOlUjVc7YeydBjk82RV/uLWohCXtdPYUm4X9Lmk9qb2cs0XgxNkpmrM3NxE9FwJt9hJ1+ya/q
	VRRQsGnAXH30LUZQMHNcxv95O0PcyA///xklZ02/3FxtXP/GKKlmZZM1mefo60+2UvsUh6pNPn5j6
	eShCizw73H/ovJgo3tgkbLepUtZh/rzC5Bq7D3vGdShIhSof/ZCzyp6hhC0nbzgg3isl+tWgvSv2j
	TPYe392Mzsz3cQenjg5U3be3j8eqm4CSpLBlFc0tgS9WzBguSvi8fNT4hWOjylSSJcY9oR4wHudQg
	1mzTiqog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhJ6h-0007a1-Q2; Sat, 29 Jun 2019 19:33:55 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhJ5k-0006uq-AV; Sat, 29 Jun 2019 19:32:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561836762;
 bh=EseqlfgzCuf/2Cl1h+E1XvwMILq15RJLvE3ijWYQ0lI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=FrJzy+5QBjbS3NLcmnI7cYCPjjhIKL0hWeZZ7tToTp1vlJ9zwD5t7XnaVVr9F2Nbi
 SBb1VZI7azq0qiE7jiQUNbPYbBWx6sueV4Mkxwf5b7wn8NDcEgajVSIex2qzqULDPo
 PD4JDSKI+5jqPcAh8mxQW7iKvtXAEqHCW9Z+r0t0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx003 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0MLfLH-1hgU8n1SuB-000x6C; Sat, 29 Jun 2019 21:32:42 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 26/29] staging: bcm2835-camera: Fix stride on RGB3/BGR3
 formats
Date: Sat, 29 Jun 2019 21:31:40 +0200
Message-Id: <1561836703-2528-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561836703-2528-1-git-send-email-wahrenst@gmx.net>
References: <1561836703-2528-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:TYN5LMuAfpARE6vm8oAc8tSbskTP/sKRht8r6aUhwmgX2tUX6c1
 kfyokFTyrx6gBhZ7CbbZ2IcA8S4pFgWx/f4VAI+k9C0KB2GeZTGMgnk32f/G7Gm8mtFd6x7
 J1/SIis+6+YDvfNOWf4a7J/+nwUm9CmWf9UqCj3o33y0EGGfB+m7JRxErn2xP079uqLRMgI
 z4vtQQavPspjw5KNZphZw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:52dxJ0fYAuI=:bSuUagRayxJ0o+uKxC1jME
 0HU9BtwjJCXXO4BM6AtbYFqDaMi6V09fDjcO1s/JYaD2zitKu9csOegGZwqeMCZTbhmE2M/19
 tYUK0WglmxI7b0PJRyEHaI2jCloQQd0hlW86IhMcs/alSlQrQar6W5G63KydQCJ9SWrP1oXNr
 k9B/l1Z3xd/d1RTFfyxrjZC1GD2ZVcmPvynZlrqcElCptg2RFSJM+dTHvMjjeLbAi9b2buOvv
 XMcdIwEJ+hEFw+drq10Q2bpfDDbf/Q99I5jCtWJF9vmLhcntTQrRNqZeN5cV+QOAWtTjkS/gU
 B+xZFkFIIp8KaxJW9Z+cWm7GJxHuI6j8tDUWjkv/NEGSUmZGbM8oDAzMtj0cjgrqUaTEak/Fj
 d5JVT1Xnft2U0KsTp8BQ/dg3KS8hlewh3oNaU2zIP4ooZFMsxbmkLXpnbk2xrGScyU+GG+9AK
 /CjRFptToH5ZaVyi2srGVzjmucAG0BkltfGSNl97KODjht4Vjet2/TIA5rgDhcd4it5pEaTG3
 rrbh2P8U6VcF1EZZo0gv5cpu69InMkhbT7DBWMoDVOoqc52urMju+rRXnFgU+Chdk+ymzF5B5
 fynDK4Yj0HkFVBTBBRrjs1pHMLL5p60uHWi18eLAFi3Y5bb2Si2OE1rI1tj3mQJdKepiTC1g9
 YtDhE+8Ob5XVZPn64r8K3PiGpFejwfAk3BK/RwzG8820zk1oeOx3B3O85DZ+K8B+bZokgA99b
 017NvElpjIuPDk1A9dUSrT3Y10WMZ4ZQFSZGEIYq4qvXHEuDUO2D18nqYlE7rJrfRYkkVk0od
 dKhvohD09LtSVkoBMkdUmqSI0WlfRgJOo9HL7uwg+a8Ge+9ZwIHwmsn/Jz+lsO8Xn2n+itnFB
 LfiXSZ1JvopsXBz68gQnkXnulippL5MmnocXlsY9L8JYP7FZhKMcHSxbnCPaM/lynZnMEXOtP
 Tb9NGyLEPkTNsWuUFrIexdtar3lIfyEiSBxwpS4tNtberAAkkoEVAvNb7126iilzDDj7SqdH0
 qJ/fJb7UOKyMJJjG2XlQgT1T3GN24GjxUa73yn2WMTL3YK1sEZg8sXacpwkO1TptXYyXhVxDT
 WaWxnxZgxt5kpE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_123256_676308_5E59F21B 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
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

RGB3/BGR3 end up being 3 bytes per pixel, which meant that
the alignment code ended up trying to align using bitmasking
with a mask of 96.
That doesn't work, so switch to an arithmetic alignment for
those formats.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 26 +++++++++++++++++-----
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 1aaae57..1ad65dd 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -960,13 +960,27 @@ static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
 			      1, 0);
 	f->fmt.pix.bytesperline = f->fmt.pix.width * mfmt->ybbp;
 	if (!mfmt->remove_padding) {
-		int align_mask = ((32 * mfmt->depth) >> 3) - 1;
-		/* GPU isn't removing padding, so stride is aligned to 32 */
-		f->fmt.pix.bytesperline =
-			(f->fmt.pix.bytesperline + align_mask) & ~align_mask;
+		if (mfmt->depth == 24) {
+			/*
+			 * 24bpp is a pain as we can't use simple masking.
+			 * Min stride is width aligned to 16, times 24bpp.
+			 */
+			f->fmt.pix.bytesperline =
+				((f->fmt.pix.width + 15) & ~15) * 3;
+		} else {
+			/*
+			 * GPU isn't removing padding, so stride is aligned to
+			 * 32
+			 */
+			int align_mask = ((32 * mfmt->depth) >> 3) - 1;
+
+			f->fmt.pix.bytesperline =
+				(f->fmt.pix.bytesperline + align_mask) &
+							~align_mask;
+		}
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
-			 "Not removing padding, so bytes/line = %d, (align_mask %d)\n",
-			 f->fmt.pix.bytesperline, align_mask);
+			 "Not removing padding, so bytes/line = %d\n",
+			 f->fmt.pix.bytesperline);
 	}

 	/* Image buffer has to be padded to allow for alignment, even though
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
