Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B02AA5AABD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R9ps1KuGcUW7fR6xPwEaZfTiwa8XL1gO3r3++PAH8qo=; b=umzVjMr/8IKm30oNSXFm6oEkEN
	H6/q/RfWsHPCzMWGRWF1iKmiNWbn/YXr+BpBOAQT3gNlQcRfoJlF0fsq9rXjCxRaTQLCBg0QG8AIR
	mw0X8NCy+pjHLXls4+/U9raheVI5mFvGmgq13envDSmV8AG3rKd5SWSEJM72hOOwoeGkSgMQsEnMP
	jneCYlW4VAzR18T8gOsI4t4eClnskCG3M2TRU8TgKKP8tl1+fxOz4f/aBG/1LvppeSD1bHJEF4Yet
	RYuTg1SmIYsdL10N0grP0SFn76xp1+GuCONI9NJRAefQpGcMUCwmlKfv9v8+JU4EBVGMin3OsOHXI
	8HphRnrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCFc-0008EX-Tq; Sat, 29 Jun 2019 12:14:40 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCFL-0008AM-0t; Sat, 29 Jun 2019 12:14:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810450;
 bh=lqb0GYVfx1zv6fO8FMllOzy0xCPuxLT1hKd8sJfD9HU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=A3Ac58GtFkjzDPTsuHI66QgLUsSHx7UXS+Be9ozhe/MTT5ZX+NA8C5n0NLLBRVV9g
 qF014PXESDBFwlKvzH8T6VDJ4UPdEcgV4fTKWEosp6mwkSvR0zTOJy0G5dLXgcAP2K
 T51SfbBpXHmrMuo63ZE0akhEBl1bemQeQzYYTpeI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LfTC1-1iMsrA34qf-00p35n; Sat, 29 Jun 2019 14:14:09 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 12/29] staging: bcm2835-camera: Fix missing lines between
 items
Date: Sat, 29 Jun 2019 14:13:27 +0200
Message-Id: <1561810410-8829-13-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:AouCbZc7Dgcy2VJXo5BzkXG8P6sTu0cIpPoIeko7pitM1iIcSTq
 6J2Sv/bRRNbyszHl1LN0b+FgDjflg311LO0lzMVZyNhPU83CGbIrOXnct+wPzZb9d4nkvbs
 /n1J2GjbM637uSOpIKwUHCKfuZkPhHaO0N79w+se5CTamoz8thAPdxL7VXtFdFVmUi+8gG8
 RVvu+eQlPXbAVlAbG0DgQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O5qRPkUdzdU=:4Ie1ZpOk3U4XKRXkw3H19L
 fhuy7yZLkBAIvZpSNsLhW75FvEu1Lp1zW0TemM7Z37qocomGNkP2wptdFKnBSBSk7yMUugcws
 1NeYqh1lVs7o8NlT6a+sBPfVNex8NdsWrOAkui7LqY1ZCNdb86zioun51QU0PzSWf3b2m2HJn
 q0X2z9g6PCQg707MSL6ugU025dtFGmuUFpLWuHEpiAJLHnm49/7iy9xlSNz/MUb/LjFkXYbv5
 XxD4A8w6eXJSRXUP+ufxisyOUCl6CuijtSdYEZ/iaQpj32dArROu1W7A9N2BPZn2MXOVK/nZ0
 e7xWgPOIr74YdG8b+rVUg4l+e8wBk+LhBUBTkMhHdsehk5mQ43uo6T5sdsc2/nz/WACbe7rnm
 B/2HcniqzXXW3LBAlkSM6nipukleeRieX8zVb/JEF+RlExalbjZ8NPZ/cKHahV0vD8lZEhEVu
 l3A8tKyQHs/Cm/pveWEGYNbKX2l9Gziev5oMOR9pMQaxU606Jyvw8GgdERkh3wW1IBO4+epw0
 0TKIL3bmcxhmz2iK9xYV4Q3+l/k1HvHNNddiEh7GKbDMQGviL7EYN32NM8dO0XRN+IxBpUlm1
 vfY2vRBbA6/M4+F44IxbKpbfQAJW8lmO2HMkzCPA77yv/hDs1zPYq137AJEq4p5MXd9a2D95q
 Q8qWbduO/fSBwP65DToYnt5S4j4On6Vw4Zs+JV19rQ/FO6Ztkc83nLIuSHnMKjnuzTMLnczU7
 gT3bLGmgGCujJcSgBIaa9OPXYbd7D0pocSGqeBFSNNQ9otyPSK6BMQ9KK7ML+WVNJBZZWa+YD
 mJQv27Wmzt4ggpFel2E2njXX5VvDd6x7Irdfer+tOYe/gzK+4VcIqPQwdlgS/F26VCXfjRZtz
 3ZxpP6tNhV0eqDNF62xumX7unnaHOjzyP9oljAwQdOytozkZ0Czza+CZ7iNYrVBDon1w5Zs5b
 zfQcxd2LHYVEHjZfHtNOCitGjNBaY40hO/3FzYrYTHp/Oci6nKkhzzv1Dydzb4SvpfmY8lUJQ
 iPductemKgh8BnWDp4Dng7QT4OgfvViMMjDwh8v4WT2OWYWlQ3uaIXf6v/wi0AlY6B6z/hZ7k
 nWxcwEqAQAhtjM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_051423_412670_EEF41EB6 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
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

Fix checkpatch errors for missing blank lines after variable
or structure declarations.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
index 9bd262d..d9f0411 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
@@ -128,6 +128,7 @@ int set_framerate_params(struct bm2835_mmal_dev *dev);
 		(pix_fmt)->pixelformat, (pix_fmt)->bytesperline,	\
 		(pix_fmt)->sizeimage, (pix_fmt)->colorspace, (pix_fmt)->priv); \
 }
+
 #define v4l2_dump_win_format(level, debug, dev, win_fmt, desc)	\
 {	\
 	v4l2_dbg(level, debug, dev,	\
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
