Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0953E5AADA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Lpe0C/BmESc+WB8iZAYsB4wnMExEdmx94m0Jf3+hfvA=; b=pYR5dOMZcZBocpJotF5DTncsav
	ZikgTzIsJy2fsGfyHWVvFoKBDfh/7c0xO7up1zDElpNfxOJAx4Z1fJO2IUj/ANelrfYdQ8797Is0d
	7BCjkxGe8Xu9WMzjSX8JDtrrsOJBJJv4EO5EyiclcpZRB68QHNBY4sth2aS+PHJapqRNnWE2FaxTy
	7/c9oR/OMLygf6XnXJx1bj0BR/2veUWHLWRkS7Ew3TSYZh6849OBVpfYrQIY9afS5XqDOCDTSCEZu
	Rl8G/N774doDOn5+QwWm3NmPCMde0I/+0Ny/kRn6jqAq1FbGw+rZ1p0hQtfQkIUEFvOfMTMj1Ha3h
	gIZ8Kq4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCMS-00063P-Kc; Sat, 29 Jun 2019 12:21:44 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCKl-0003hS-Tg
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 12:20:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810794;
 bh=zHE1SAFCsIAD5cnmVInCnyPS/jtZB3P6kyZA/ddYnsY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=BDI+GJbekxyWGNKKAWcTidCwwxCW/7Kf/4cveVRYczowZ2UoQqSXAKvWBnTraptyt
 HOCe7KuRgJTyP0H4c0xxPXEiFFrPyNPk4kp7q0TbHV4bYqWIFJUknTQ2cmqLl75+oP
 1HNvcnYSKXwA9FqMbB1opRal5sPUaSul0R+0Ef5M=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0M5tzh-1iVa2X3c9h-00xsmR; Sat, 29 Jun 2019 14:14:04 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 01/29] staging: bcm2835-camera: Check the error for
 REPEAT_SEQ_HEADER
Date: Sat, 29 Jun 2019 14:13:16 +0200
Message-Id: <1561810410-8829-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:3in6uZLTp+rEkuSmOzoEoeteDWMTZ5q7niOWNVOuFVnkYiqRT21
 JFR1IOWjc1BvnIbOH8H8A0HnTJaqy0lUIT/aTU4QEMpq2aI7UQCTX4KlEn8TawymmXvpb+v
 DP31/Tom34aVSlToKwukFAV61xft+FnZ43DUhIWt5Y2Oz2KaaHR+WiT/Bnp7MiuxiYbbS11
 8QJpg/BtDDTlGy+vvucEQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HpvSNGo3zEo=:PIhR7SFkWqL+i77eu2U79p
 rMhfNvTsOkU3J+8dc09hfxthJXUkxa7nWwi1t9cCyW2SpptMSuPAJUWGfdr9N1toXQe96IsW+
 cx12nvQBlabf3Jlcdb+AiC82cKsGHPE4Ti1T8FeoUYsjAKfsLcYhAm3WfYGELZjRaCq2A7oDg
 ApNORSrkFRsskKEsnCiSl6+xFFpdx5INtHPxHcCeeULtXJL4OKf/GQ67XqYyzmqJHOArID//N
 dASmV8SaUp0y0uEduntJX2TLgvh9refXfw95273Emo8PgUiXcNqOaQtyVsl47c33MIaymDjpf
 QDFL/TtrK7ESudzedzH5hNfkR50dG52XMNhztKjihPIwbDiHapvs0OmfeEHT3E2IPP0qALS1D
 1e9aGggmm3SUxZnR2K10TrjoYU9YzesCMTlb41hC4oQWT/+YxkLTK7EL9OuRICrdJXciIeZw/
 4LCFEzY7lKlfTMRFX4KirGnNGCHeVyGgYRYZaPYunBd4QqzQY3fwQEuuoCyYXF6Ebf0qf4RnA
 5g57T2GBF1Jr/m8XLk7vlZZ1fp0VXCJ0XGiHqJlzDvAljLVQG6vYkrrBp8wZop/E1fx23tfn9
 A9lxx/iA+WlZFYSU7TgTt9o5KTDb/IlXrX4g10oICMBorE0Oh5a6tAb/E5fqFjluHgRl3SUGI
 N22xtzBIOnhUrYBPZw3PhqtALqtYmJMPxirrsqOSYuEaG88oN5tnOghGBDFUZEDnpVwR/fMsk
 y288+cPgAJeIe2pxG+mqd/8G4b93PrvnypRB4mgDAytVfTklrC6RX4NLhDdWNpmWefFcEEWWv
 8N8Q77TvNPlIUuQG3OaJXxBxFSx/VhAOYXY5D3FwVHkdrR+HROfyfxj+hnAUTF9045L5yHVEf
 Hw+jz0NJbVCojSoHe9WCRmokUuSDXY/OEBAHbZoGRUIwoGVyKrKw8ApdwuSnkHYR76RAi3pEF
 ERuB2Rdtcr+WyHAeitNsUefsiqbfhmUiYAuDBoTrd48U6TAzJcGzo8NT2fNTVCZ6EdacLIy2q
 BwuaUdVCAmiGzy5om10ua11A1G2IxbRflP28GRaCjmYGRHKHYsKHbxr7qvcHb1p4NY6WO77bV
 4l70omCue+Q2wQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_052000_255152_5476E2FF 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
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

When handling for V4L2_CID_MPEG_VIDEO_REPEAT_SEQ_HEADER was added
the firmware would reject the setting if H264 hadn't already been
selected. This was fixed in the firmware at that point, but to
enable backwards compatibility the returned error was ignored.

That was Dec 2013, so the chances of having a firmware that still
has that issue is so close to zero that the workaround can be
removed.

Link: https://github.com/raspberrypi/linux/pull/2782/
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index c251164..133aa6e 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -1124,7 +1124,7 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 		0, 1, NULL,
 		MMAL_PARAMETER_VIDEO_ENCODE_INLINE_HEADER,
 		ctrl_set_video_encode_param_output,
-		true	/* Errors ignored as requires latest firmware to work */
+		false
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_H264_PROFILE,
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
