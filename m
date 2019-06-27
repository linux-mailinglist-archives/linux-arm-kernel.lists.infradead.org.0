Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BC658A72
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 20:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SpGtSfRSO94nuWVnWkfegr4JP2HgrE3ac/n4wR8hgX4=; b=c5IqqFNypoUQG2dmVkDC9Xnyw+
	ShFePHLv3Tuyt1SWtzgZdaSM1ZRiQYaMABedIH+u749oqJSKBjrnOFIrtcrfE/gOd7L+7WPloTbA3
	/qPwplhY+QmneklPvszDOdGefxckdMe9/dE6U5x/uElBYRLmfIxsVLdTfIQvgMN2LpRjnlmSCslcn
	u4r2dvqWMQsCkq5dKni9u1VtREaEekxsguKeTN0yfLJwwbYh/30QtXQn3tTPinzpLdrFI6RFYCDWs
	NdRnrjS2K3Ot2ZexqgBgcmM1t/cAybjW+TV7VrlcPDmpZhAgU8BooGpDZ2dwWEp2ABaB+eBAfiXmp
	3wfNmg/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZbD-0003BV-3g; Thu, 27 Jun 2019 18:58:23 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZZu-0002Ru-6l; Thu, 27 Jun 2019 18:57:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661810;
 bh=oLnjN52EnE2DOibkkrUsKEoboTm6occkriot7kdGOWc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=RKnMp8hZU20lqiGxc90wHuETi2g7AFvuAAL5zIuDEPG/xvXcauzV4BWngTwdUBrhi
 2ttIZA9hw6yppVjT2JG3TZ6Iu21B+AFb9ZuFs7mfUR6RIlhMfbeD9BRsrsm1yGOjsR
 1HMbqjQIbe5RyNDaTVFamsu+SeiBK0RqPZZrV2cI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0LnwxU-1iDhT01mrA-00fwPr; Thu, 27 Jun 2019 20:56:50 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 05/31] staging: bcm2835-camera: Correctly denote key frames in
 encoded data
Date: Thu, 27 Jun 2019 20:56:02 +0200
Message-Id: <1561661788-22744-6-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:yZ1iRnEdO/zCVfwT0Jup2xWKW1hJcfyIxLMQ6raD3e/K42260gg
 sJpGrJ9+VGPSRXyTOiZV/d6DuJ4Wf/px0uBMNMxghtmP3CuyqrlKknImVks1Uj/B1hc+vW5
 Y0H4pBYw972XKbYWN+acwiqOMebVNZuqnakrfrU5q4IpA0DaKZsOtA320Pef0MDCGSj4PT5
 eNUCvM/AZzIoFeXkTllXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:E9CXXj22YFg=:npWE8aj9lMTYCPhz1hA5Io
 LX0cFJTv2+agRUQfFUqMJEsx2bNaMgp8eGLcRj4ByUfpm3RtOwmfiwUrAfOQg5E14cA4w5lxL
 rvkkjvv1aT9R0wR7r37gMgTMTK+8SKFu7Lml1T+mba3A9ReUmfh35g8uo9hRhlA+SkzwvCpec
 WCIcaCPiCvyv6fbxJ+UT7UcZ5OqCiWUvO9Eh8z5LakYDwdLB1s0u7wivt7/+RpvVHTguVlArI
 qHtAwyVapFpmwpON74e31ClJIZyiYzDWVh2Tgixkbz/R2s6oEOKnji0nTPIYKxNoTShRrhFz1
 3xZLANtdfI0kff3F5qrt/Tqp61WmPW7N2R+KDPD48b9PpGRBKttVgQs/1GvAf0jYFMpvVl9Um
 rfKGHBXXPi3fIC7Q/Xg/dOIUkOSleSfVCARvmU4Vbcxiz8OdGSUM9Okqc+cGa4vAMV+A9zgG+
 aYsZVJCDh7IzwqDozUyh0ZkgoWG9YyJ8QaxfmI5fjmFUs418vtSG5eUrJliXZ0QSsk0cTOzO8
 2WvnxR4N3XrankAlMpa6Lep8BbGAN/MUyL+Co1dsjG0C/+akbITiLrAo6ozCjvWaMJE458ppP
 nf5kYjSvf6BQ8J5d7WAsu6isrmrphaRKn/ZJU//IKgJnnkWOsqZVUY5ha/kPTJR/p4VvLGOvq
 I30ljE6IGwk7710rOPqU92Sdz6WNVID5ieILU+YU4PY8LjwNZqDxh6K0Qs0Ezhav++K7oLKhI
 AM/2AxEubOPp3eECQlSkllQ7hYDGCM3A3QJK40Y/qfKYY2Y+IBziEY0AXn8tYxK86r92wWN/e
 ZY1Jcpy8Xfr+tE3uA3hlwmRSzHzY554vX8MunfkpXMuLXEuXsoz66n0QFiKKLx1l3M9JsQ4sG
 TW0S3L/uOp3P8J97IJuAeBkzg5zYtNYR6ejQJBJvHtPKpMbuxdoCIcPIA94esWW1G53CmUXR9
 A1gPI1yqXZPrXFepimiLXJ7paDr3hq2ICSOEwJoPi9T1laDLMIhN6jHBzgNimUg5i1mtz4iZE
 Owy4H6DzwYUS9H4m8WBTP+jg1iD3dbzHZeHY7wsFwkZ3oAY9e0bN+T20/FMCs4aZCkwdAD+DL
 ziEj/D0cdINm34=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_115702_550309_9110BA39 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
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

Forward MMAL key frame flags to the V4L2 buffers.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 0c04815..456b686 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -385,6 +385,9 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 			dev->capture.last_timestamp = buf->vb.vb2_buf.timestamp;

 			vb2_set_plane_payload(&buf->vb.vb2_buf, 0, length);
+			if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME)
+				buf->vb.flags |= V4L2_BUF_FLAG_KEYFRAME;
+
 			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);

 			if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_EOS &&
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
