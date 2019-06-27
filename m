Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B12C58AC5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 21:09:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=78Qvly8bRtijGNwzmYilhcweslhqcyTZhto66Rm/eR0=; b=W3dtNNyizmfZ7YaztxHiQJrqXk
	/ATP8aZlA/AwlmuICck7yRP6XrAoH+lUV8Mb+b2A5vddOIvWE1vqOdw+aUAgKsG7uR93K7SL9Qe9F
	YKTY5p6Cz8I5XYmiJ5jeJw0OUt5q4ejGhdhOvO0AZZ8vo6k0LE/yMGAsQZ+mKwP9XW99UzMfa+TpQ
	x3H9E+XW2jNSmNyCIy6JeUSY2EeVA8hQgi7EHEo2O/jlJeYcrGvkqiO2TlxKnaSCqapfhTy5DdLgl
	NVWbp3FF1h7Tf0rf9IWwi2OV/qc41Ct7/Ntuu7bosYsRZHz3UZT93K9LApX+w6VuPK6Y6i6+yl2Pw
	kacY2oNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZmK-0005Rf-0M; Thu, 27 Jun 2019 19:09:52 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZjg-0003Z1-HX; Thu, 27 Jun 2019 19:07:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561662412;
 bh=jDTS8viFYqrDbHal1MRfayty/onAySUVJktCMM7U9LA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=boyR1b1cVnoKHMYAWqz5F14XVnOO+5f+PR5CnjctNVZzad1WK3Vy7CadjSAX0ljbH
 O6Pk7QST70wbzg6ci6XpQ7XmQsQeBk2s1EDQ7PIn9caoY/6l/g8chMvCYxfyYKa1Qe
 nXUBRA9lg6F9vG3GD28ROjT+q8WtCG8Ph6IZqkdM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0M6730-1iVuty1hPe-00y91P; Thu, 27 Jun 2019 21:06:52 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 21/31] staging: bcm2835-camera: Unify header inclusion defines
Date: Thu, 27 Jun 2019 21:06:16 +0200
Message-Id: <1561662386-23045-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
References: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:u2byLpeY81owIOe0u0m7dsEbi1BMOnsvUw8J/3/4FrRXeaW/irC
 LoXykJgzLFToxCJLBQfNgDO3MuvZJ78slALKTqVjV5Ln8lJCa+ONkMb4KLK03VBpkYLIPqV
 waJKxhxujuJXV29xe7NALB9W7esBFPD46qUJ2wo6/K35MUpWRSo0Lub26e+9NpeIWqsv6ax
 klNVgSeMRmS0FU3LTlYSg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Dz6jkUEmH98=:d5Jk/boCMg8s1Sc0nJL9K3
 7TrzZunCtfiu8SMe6z4qS/qwMuGih7CpkVhHJEYspFnnOmcpIlWUAuYXbR8M7zMyCWqo3om+D
 FLmBcTKDSiLvqdrGhi/X4Xvjtsd0xS3w07bPiN1ozjF/f0n5yE6eVPOJid1U6wAASNavjUpj/
 CR7YbVBNyMp42Hqf8XKIUiTXFS/4VE0m1pfaCq1XavTj5VLhuzafPwXV9hJmR2E2OAy52MhlA
 fZzg65dtHyahvFzYW6ynkl7XLJmYNw89JjC04300NJ6AwBuqAik6r9gdPctofRfU42x7K5cz1
 j88PIsx4Is56WQhjskTfBlRnt/ZnQFrUkw0gAqtgWj29NrF5zHd2HLA40dWxfeUV5T31lG4OT
 pWR+YpzY3FNQoiK6H0BfxOabM9p+9/OtZRIgG74EPRKFPSYX5NhPDZw4SHzTbLbdXANiNsb45
 g2IJjijr72WX48pUWcK0M0Y0XaaH983wsXm+pCn0u5SYwy0CbyAL0aykZNF7AeA8M58U+ExTz
 o0yb0VzKrqtVwqVz5Nmo4y7S1+eCUSo/UTAJA/RptPhfpm1RgUB0mIbDWEvaG6tvUAm7xBxjM
 akVIGlzgI1KD2hJj9LHsJWSLDvgyvFh7Fsg85s2zluAYQgvJbNPmr5u0Ak+w1yQPvkknhB4u6
 49QoIoKiEhWJR0XzH+0htR3i24EvPG69+hfVug1pi1k5BL2sRhxMaaKYg7OYf0qS4xmfPHCKw
 WvuCZfVTQ8nzaB3ehfiYDN71MjwY+RMy2qNEro8DUzpiE0rEd72vIP/N7HPrKFEYlpGgFoqA/
 7XFd8EGLrdyj3rfLN5AOrM+3xmBNWCCbrbFW6vWyoqcZ/jJ2CwmXyzjdSR2jcZSsT7h0UuwAe
 KVj2bo5C9c/igB4fv5EtOgXYhBSCOMOu+J+7ozqGdxKhIuXZsbSs9B2Nr3EYmxpi/VUKH14Zm
 wEXAcUsuIx83vHacAWD+pKiXNBTRi0LF7TPGZ9vFnNyZz3lhMf/BtSeyBJsAlOFruHPzPlDB4
 kIPrfg1P/18XBzQzRvJ5RiZunT0pBQp9wdfskaK/GcKwvvTZX4zyedAsaksY+9veSBjYXxO7/
 KSQppR5fjlZh00=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_120708_894275_9D19CB44 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

Most of the headers use ifndef FOO_H, whilst mmal-parameters.h
used ifndef __FOO_H.

Revise mmal-parameters.h to drop the underscores and make the
headers all consistent.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
index 6d21594..da21ec5 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
@@ -19,8 +19,8 @@
  * @{
  */

-#ifndef __MMAL_PARAMETERS_H
-#define __MMAL_PARAMETERS_H
+#ifndef MMAL_PARAMETERS_H
+#define MMAL_PARAMETERS_H

 /** Common parameter ID group, used with many types of component. */
 #define MMAL_PARAMETER_GROUP_COMMON            (0 << 16)
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
