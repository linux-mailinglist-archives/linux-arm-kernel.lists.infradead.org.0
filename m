Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A46855AD21
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 21:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QiT73aO3loChEORmUhq3d5mcpUFlfS2bL4H7NIL4Vbc=; b=NpgpduHLwb036SLcNchFJY9/Te
	HdNEdiNpMnih1MuSHTmOsgcAAjlUQqC1GhtEmtVJvqcp1uMdIktEDRTW8yE4obxOwf0pzlapKo6ej
	PQhRBNnQFVl/aV6Lc8dr5WD7fsAgey64/79hET6wBp0V65L2zJ4+R0N6OyPzfKEWECUBzOote9VCO
	8iTIwVVIYVqEQOy0Oy/MJw7vL1lz3BnRShLKzK4TSB292X3OIezuGLo5e6MpuzIXhS23lnlbNRvjO
	kSCdIbCP5LhjRzJ6RKuH1bD2V529syKDQQE+qA5lUrcM6AHzekVKkK2UvODEx673uCRfcea4212i4
	ZN1mARhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhJ6G-00073u-Eh; Sat, 29 Jun 2019 19:33:28 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhJ5j-0006ur-Mj; Sat, 29 Jun 2019 19:32:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561836763;
 bh=zM+3HVUOU7axycZk2m6O4/q65gGOHHHUn7GEz8V5JCE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=BlG7aSlG1zrMbeZbB4z/5cVTRhToCwcVyUJVekuQYLhk4RPqWoxpjhOFEV7hIerrk
 VWDxQQk7lQvAr+ajhSWNVOFZIqUWSXX6+UTKx3/AIOmGxe7hbR5guIzc+gMMCi6cDj
 cDF8GujlaPH7Tmwm2OzS9h1Vwmx6yCUVPJTpJwTg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx003 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0M8ehf-1iSnMm0i0Z-00wCUO; Sat, 29 Jun 2019 21:32:43 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 28/29] staging: bcm2835-camera: Set the field value within
 each buffer
Date: Sat, 29 Jun 2019 21:31:42 +0200
Message-Id: <1561836703-2528-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561836703-2528-1-git-send-email-wahrenst@gmx.net>
References: <1561836703-2528-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:t7r6ePgTJYKgQBXCyGGec452vrCZX+OEPLiqr/kONdcqUHDM1fX
 88fDGseAFHq3+AqTkexP08kd0jMdbwYwmDYo6mjqjXFVrVP6aL6PHhlRclbTwkp3hCjLpC5
 VpUxpgUSJH7IBDe8GpDn+a84WsH0/WuYKXhYad/Kpq1aZPV8qj4fJMFnTMVYWCM9mbDn8N7
 HXAwV5tBRCW29nsdgk3kw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:g0lNzahIomE=:bMs9Ruj4BrOptRA2+kNd9d
 5GWRTt0RbfOpO4g3vXZKT//2wfTIXMP26DmgFQ2sRz5QJYIZ7mVraxLU+wPc5CyWg4NBprG2O
 OK3HsUdiN6kdp4jTB5LMzndkmY6hOY6VPqaqqcvbqFpzISvZGqkR1GBwJvBRKC36O6ur1iUud
 U2mA6B+OCPALw3NYFuriCa8m+MxO8UHxRsD4X0R6mnzrTxV0j0Wq5XTJQqy897prL6hFA0pLs
 34LpEM7QQJma5MPUeZMlggX0euF8g1eGM5N4aNw/hLEoHvMQKejfftpW+FzE5CeYC2XtI514A
 ScFXHa7tp7HxstlRYixWLrBCACRzlu+C7oXPl0tpvnLq6Hx7kmTYPZUqUI8h6869r03Jok7Xs
 4UtD8uh89v6rTOd2EktWDQQw0xkhGVbUMoUF0RzKI4OGBOEK5BcPxUIOjVvWiW8W9jRhytE+S
 lj/VyUHCgsdgUEzpy38QVyK051y9Sas/q03UZ0ihkKgMFjh8U56V3s5jRD7GZIVxEzJ8FkzV8
 dErHSy2smmln0po6A4GlCdgvPoAmwNnRnOi/QNipVNMnauR5CQwuERinjwi6eny+OoggxkBBE
 DX/KL50ysrY5+fRLs1gSLoyMHLSnCxFuwH5AnPkus2CL57CEfqFH2dAjQeEQOTGxcG7eGyi9S
 h+E1AoSe4EyxX3PUKCcBH/cvxyAfnFUqzf2DXztCYyK4boc00mWoAavTzM4q8kaVlPkkKxooH
 eNNVOQlJ3QS35DdSna45GxiIiguIZ9vtuMZjpBsTZFz9eXq4y1IA2g1d3V5Z7gB5Fi0TcjjwL
 G35yAlP7jG+X8aA72j3i17Qp7tqZo/VksWCE7uZZkXnlHcsJpFQYW+RZNBsZZVpuktn4Sh6V3
 QRN/9TaAcItbSGhyO8VZPckE0xSopaHAQxu5PThiBrEh0Zi4qIQFHoKmEBoxufQAviCdrp6GB
 9z3jN88Ir5IDKUmh+adV2+B2127QmXeBAfzCObmdAyZbgR53PXLExSulCYkVaqJnHoJogVB0c
 DxsVbTj/lQR0ZnYzVKkm+pdxtknmgKjb8HhJW3keLiVH2SmsXvFFHhMGlWDtiRrjQVBkB0mgb
 kt1ZJYPS0CJ14M=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_123256_083020_15B96BB6 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
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

Fixes a v4l2-compliance failure
v4l2-test-buffers.cpp(415): g_field() == V4L2_FIELD_ANY

The driver only ever produces progresive frames, so field should
always be set to V4L2_FIELD_NONE.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 9c90d9b..ea54cc2 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -405,6 +405,7 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 		buf->vb.vb2_buf.timestamp = ktime_get_ns();
 	}
 	buf->vb.sequence = dev->capture.sequence++;
+	buf->vb.field = V4L2_FIELD_NONE;

 	vb2_set_plane_payload(&buf->vb.vb2_buf, 0, length);
 	if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME)
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
