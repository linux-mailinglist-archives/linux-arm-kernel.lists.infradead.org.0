Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BC65AD22
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 21:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xSxn0VoQy2xor314N4T3AWEKwUkHcmZpCFqleoMQjOs=; b=M946ETtu0+WpY55m/tOKBBi40n
	a46Z848CgehRMTxJfoYh0xTAz8i/6mXKns/uNY1vf875RV1EELwrt6OpWZnkQG0VG3WiJv0rHhjfc
	9SQloINvjYNmGZfNGei8s3CYn+Kw/frRWek4saUcnpZIRmWHza+kGjd5tu2Get+bpkTcUdEBEB+jb
	o1dE1jnb7Hh0WwstXvATrdTxupmkS87AN0j3BY8Ex1ymMm3IphLdpGOERblr3qyaLoQlMFetBfVzI
	/bpR37FKQJxqtuSKVtsJQyKghjLQ23l2ZoghPODbMgM5aD9IUwKBfACdK9EfdvLvqUSIh3MIOIETF
	7nUy5e9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhJ6X-0007OG-CB; Sat, 29 Jun 2019 19:33:45 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhJ5k-0006up-AW; Sat, 29 Jun 2019 19:32:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561836763;
 bh=rK8rvK0E2D7ZbAe4zS7pHvQrYn5x7ohLrrBKZLknkUU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ZsSBlnTDSZMEPKIUQfRD9f8auVzzQnnbvPImq8j0bJvhsuV5RyblYgAsmmpPW5k7+
 +ZGkxNj5aVGN+PveqUip6qftjkiMLIzsFDyYNoTqzu0MBsdrSLWRZ9IzRH6dfAWhuT
 d2Y+rnvlPP6kAO0/3w5fFlRKYakv7x1MQ2Yw2N5U=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx003 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0MLOMM-1hgl7g3DrG-000fz3; Sat, 29 Jun 2019 21:32:42 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 27/29] staging: bcm2835-camera: Add sanity checks for
 queue_setup/CREATE_BUFS
Date: Sat, 29 Jun 2019 21:31:41 +0200
Message-Id: <1561836703-2528-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561836703-2528-1-git-send-email-wahrenst@gmx.net>
References: <1561836703-2528-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:sDOOOORNsaWE+WMzRK4FSnZQ1bYVt3B2/9OPCk1Nghqhx6Vg08C
 whJM09RSK77gyrEeJlCWCiqRQyKzXNEmEVCKKQB9emDR/jrRSNXjUo/R/2dEHlyvnOflWFI
 wrnSRvFYi2nRBRjdTaa8OTpe25ngXRbpFcCSb6vEaDY0p/4jGsQ5AeSdpOQgou1rp3L6S6d
 ilZ9Ie2P9fKd5/JdxxBdA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OBdmlzNyHJE=:V4tpvH6KCtlRVIuQuCx7N4
 uIP4XdWgNZVSM5w4NnwMRBWObJBBy4wA8taWEJTf/rFK/0zPusAOuRT1YHCHQ9WaymbfQPHP1
 dTBYbt8YxklwJYee53uOc5GHTVDExnfhOYSpjNWVnIl3KdgTzQhogP1iummvVnFx7Mw+ssucC
 L4tlohDr83gk5JLPDCoteeJuN18NWBRTZcy54qxKnuKCNkzXgS7XPxU6E810k+KQENeKlDDfd
 j25IgSeBMwC1Bhp0Q//PfSntR/wAzd6ohieB75X9baidQG82LqMNVhUo61P3jCm3gVd3UMncw
 7QgtXgArVmnnXe0BrP3fBtC/oX1XI12QLbZIUGQ6wF7UB7MzT9J0Hsj78IJUazjj1Mxrq2QUW
 rNeSNdlmwMJANCgnMPj1VOLme08DN8LQP4AHyBW6s1m/G/YDB6X+CNAUchEb37iOhjRTdE9gQ
 CpgVha+1npK+WnF27wR8pjuvrG0fX50/E3XwTsA0RI4SnG4ZflfPr13atf4ekraC/IGl51Yxr
 f1qylPOTjfUj3tg7CI3bR3qBWNilmxg5RjdGymRikKseH3iT0QUmcMJuS3GPavBxJQXVLKC6T
 1uazOi/q6fMTsj1OxYqo1f/d7FGK1wYOPkiS7b845pN1OimL+onTEv4nIaDteajuiNgHBlaqD
 Rtl8Ecpyk8gz6zEfxBQMf+1cQSoZTG1i3HhsfQE/g9mNavBiPEaALgvbzIUXazMEht11KNUpd
 Nh7LBHq1iHbdtBBjV1BsqIddHJRA2NnxWOA7kQPM3HRqehQEUPzb+t47mmK00cAbY5ASGPioe
 K/Yvyzf32tvkRpKnrSOfSNS0wd0UgcWOxhUfhTNJgbkgD5zMDgJaoqEW3fOzHljOkCdr2aEaI
 7yLNbZciqNTDAbaCkTGgPqWW+jfMmCPNybpWhkC2HJvwDveP9d+XLcVhPl/HgfJ4y6b4pLbqH
 9XuPmcqi7jd+7mL4jT1rbhhvKW7VUg06BA+VBZE2BzVerzSmFMaHRA2eFg4Iv6KU/EAalN8m4
 ZwbCKOLaTpe4zLkRXOAxZ0hEYaAZQmrwjD59kOx/wam+hg5M5Mdki4ESsvYj7TcB75pMmbKML
 6bYYQ3HS7627i8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_123256_679937_88303759 
X-CRM114-Status: GOOD (  11.92  )
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

Fixes a v4l2-compliance failure when passed a buffer that is
too small.
queue_setup wasn't handling the case where *nplanes != 0, as
used from CREATE_BUFS and requiring the driver to sanity
check the provided buffer parameters. It was assuming that
it was always being used in the REQBUFS case where it provides
the buffer properties.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c        | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 1ad65dd..9c90d9b 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -236,6 +236,22 @@ static int queue_setup(struct vb2_queue *vq,
 		return -EINVAL;
 	}

+	/* Handle CREATE_BUFS situation - *nplanes != 0 */
+	if (*nplanes) {
+		if (*nplanes != 1 ||
+		    sizes[0] < dev->capture.port->current_buffer.size) {
+			v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+				 "%s: dev:%p Invalid buffer request from CREATE_BUFS, size %u < %u, nplanes %u != 1\n",
+				 __func__, dev, sizes[0],
+				 dev->capture.port->current_buffer.size,
+				 *nplanes);
+			return -EINVAL;
+		} else {
+			return 0;
+		}
+	}
+
+	/* Handle REQBUFS situation */
 	size = dev->capture.port->current_buffer.size;
 	if (size == 0) {
 		v4l2_err(&dev->v4l2_dev,
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
