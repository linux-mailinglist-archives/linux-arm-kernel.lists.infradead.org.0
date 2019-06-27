Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A7A58C82
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 23:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5rMDfZCXr0/UufvdrnPttFSKKCyTcHzsvJDXAs15ybg=; b=iZ9tRfABu9zxyzbge9cRv9L1+w
	0nIWP7Raa4849JVv9D4Q7/Det7n+rGE8JVN+sGsQF0GlHuccgM/H2Wp1DaC0squKGeXhjAVMp6IuU
	3qMW6zDAzMxm9f0J/5dlgKsOQRmQLbMtA7JB9DE3yKv6un9E+qLzEedvadXWW/SsoJjRVXelKGUSp
	a0HqDvUMXexxJylVJCNDNpeAIfEr9qApMONapUCABMELw1OMF3sshp3HVryHAB+suAQbuKX6o3l4p
	K1E2AHeJzHibW/pFCgnNE6AF9A7+pyHSC26YF5mycqej/CGkWyDPdtwzhAp+ZIfhzdxLHbgBXD6Ea
	VymtqRMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgbet-0000jA-Fe; Thu, 27 Jun 2019 21:10:19 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgbed-0008UM-Sq; Thu, 27 Jun 2019 21:10:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561669791;
 bh=xdTAATWF8qX6yvXCOv29YdhPGUUPpJi7l7udO3XOz3o=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=eh0rZ0J45FuY/n5E4be49hyEsA37PoCc2+4E/PHiBSK7lCRrDptyda4gD0kWyuAvz
 PrOHIo7Hqi//pKQ18kN0WOjudFUFGK2gr0+EQdgTr9RdRg9IBnNUqKLJruf7eSrrWB
 I8JCo/Mn3sr1PHZeRf5bp+yiLM4y7lZscxCeIglc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1M2f9h-1hhztI1mox-0049H6; Thu, 27 Jun 2019 23:09:51 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 30/31] staging: bcm2835-camera: Set the field value within ach
 buffer
Date: Thu, 27 Jun 2019 23:09:28 +0200
Message-Id: <1561669769-2498-4-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561669769-2498-1-git-send-email-wahrenst@gmx.net>
References: <1561669769-2498-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:4p9yOIhIrBTeY/wdnhkFhlYsxDf8BdSb0lYlxYcw2+9Vz6In7NX
 4cP0I6lDzSRKKuBytlRDRK0xrHTB7ACIcOl9DieNvK1jFc+ufRd0rReoLe2iX3gpZ8PhbQz
 IASrz/oLgKDRk4lCN59DFHobxwqGHwe80LwpVTgDO/JZOVGiyzW3H2P2mGHxIHpihVV0PfL
 /na5UGu+9jWfsJLE27D8A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rQHcc4g8hC8=:AAy4aEqkn1m0W9xIIDySBU
 oh3Evqj4xbse6o61KfZlJjpfmCbdXi/IUkoHmfQ1Rv8a/xeGWBjXW6PDb4kZZ30UFuz4alRXU
 FNmdbIQI0ZdCzNliyM8ykBo++fxfFjRkJMrWF1uNh2/E+bQwwKzoZY2funCkntAx/WE8noVED
 datZfkE6SmuBDtf3j8iiZzDjBYasIqjrobqeOLe96mno6Jf7dcU4bmzHYp7IQPN0j7nLHL7i9
 41+BrxhqK6GfVHP28S+vMw5JCRN2xc3rOQzrYZlLs+AfLDYqqCTTtoKSlHbtn+xHhZJbznu0M
 JGT9Xe/eUDYaqW3ETycs9m2VcIXIrdIyOXdS19CUYcAPDsyNhYqlHM5055tXb6A3pRaHcRHWW
 zS9ceVypNhvPaBJs+Hotc9FM0JSapYnSl1rHpbZIBzrracNUmEtsqzOqXZxDz7Xf+rpgarLS7
 dX09UdQLL96dM9zj2dl6LPwXe00WWcYMVvxS3lEHQD63rh3CaW537dGxE1En1waseKp4okXz/
 Ula4r5ISnjzlsB2t97+XGdbHq1nK2KcTFR+XNM+AycurOsQptl/mqJOw2Fd7TzwqH5pGLqDKV
 PlCSzaEEYI8Rirz+EZSDxD3rJyLZkNALUYKePiVdVF1ZHvky9PLL362CMBo72RpDJ5Fr81pQG
 3aPbhV3LNsh2Crmh6VArK7iLVyNWhB3zum62eNr4+4OC5cpy/tmtkxcPnzPhpuuPsaX8PnmqR
 /eMlUO6NhvH7sSM3xlxCKLAuiiC/qBT1gP7QETXvzkr/p3+RDic3bbyM4yBZpMCCNLLRonuSh
 f6DXaF6xwXZwFa1HeFg6hwzOmXpMKemml7vWehVlv/P9LZFlbq4O9ABQLEcoVjGymzS8EdL3Q
 lwLjn2yRHeIiiYfuWfPiQc8FW1pR6Y01yivUlm+0tRpFhxF8Eemm/WjlHFUcjisspAvdrDHBD
 klSGgb6XbBibS9FotkMUpBB0QyuwJ4gCdjlS6bPlqQjWQp4aODB6qa8Q+g+OGJ5Mo1REeu7rq
 qugNDIHRdNRtdtfE8uGDvNBJzZVOfrmhHbF19JOnUZ21BxpXBY9iRx1yeBeiVJA1Hmb4Wrizw
 79+xRaH+Zb0x5c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_141004_296309_909FF693 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
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

Fixes a v4l2-compliance failure
v4l2-test-buffers.cpp(415): g_field() == V4L2_FIELD_ANY

The driver only ever produces progresive frames, so field should
always be set to V4L2_FIELD_NONE.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 705644c..78d5bca 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -420,6 +420,7 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 	}
 	dev->capture.last_timestamp = buf->vb.vb2_buf.timestamp;
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
