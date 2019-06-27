Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2DF58AB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 21:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=B5uMWUdoUUw4TfzGnoqjzO+J0CIOGh0WQTCCZnRF+Ns=; b=Nig
	iLY57yWZTXKOxl8haJJo68dya+Ol0j/SIBVpPXIRQSObEq7b1weLxq9dc/kDuATrSpBrUNj0w5AlP
	hz6XcABIzNswRNS49oVjsg7V0FbJIlWhbMB3rTUBni9NXq79EpEXnagXkIvaj9h8ROKBbHOGHdod9
	VSRb06nZFfHjHlxUvpmN1YrQ0FkOxGKFsVd1EVracQwAnGTHrdJnV4wRyynCDUXSvTdSQC+HgBewj
	9Ja1kWxvC2p2797X+A0qk9KFZSqEq112PU0lCQ/QGBuROe+XD1rCqm2jWaMl1WiFK7VQ6egHJmhGn
	NqFug/h7vahbguE+lMRQJBEsMxonVFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZks-0004A7-2G; Thu, 27 Jun 2019 19:08:22 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZjg-0003Yz-4B; Thu, 27 Jun 2019 19:07:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561662412;
 bh=yqq7RYAhnRBUGET7ItFqghQOuPnMkR/UpSH+qOl5n+4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=WaGhzEXjY+wqWa7PSn38NDpZqD2AYifWeLC0inYxETkj86n+jvJmZBYUnui7iau0O
 Izac6ZjuS85XersZNOwLyZ1mAOxzKoIo2k1pTP1Qqf/ni7My29ZSZ1hZk3/CjuS3DD
 zpPKIQv53GfbLvl0lj2OvpHvBtdL/6FC/+gt9mNg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MLB89-1hgIcH02nR-000Nai; Thu, 27 Jun 2019 21:06:52 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 20/31] staging: bcm2835-camera: Add multiple inclusion
 protection to headers
Date: Thu, 27 Jun 2019 21:06:15 +0200
Message-Id: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:PJBl2hs3AQ4EP3SFhfIA7tzboj8+7feJbCUjaXtAD2tI8TZP5y9
 1TrfJ6IoFS1cuG0qC/ACSo6Yg0KbMmTpsBDdMqRqUJrk2T6xPwzgqauR+TpXpxcPPci+YT0
 SS8nCvs59R6vzUhi/unJzHscK0EpHIwyNaXcqrQvUVSGvY9HnDFQhwM2Nlo3CrXmXKDalNb
 i3QClroEqRxyqkwUVDhPg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YaI4J7jV4gw=:wHXzSVjhJlBreliQ4fwn1i
 40EHq13B/jmrNcobHNiF0yCsv/7CQJKTaWzXabibvyZEqQ8kdAP/RdlfpioOh0pPDbApM77ke
 mHa7hOSq+VvO+Xo9gEsIoUiL2+eWEtDSE+1BUiC39TAmc0VvTORtCt/GxmShVpWLGVX0hB6oE
 eT83LuuKi6vlocfC0WkdGzm6QzgSXbQ7TdR1yFN1+MFvFodBhYEiuuDFgVuV1Upaqw/o1Wero
 qA/d35DZR4tPRJHYnG5mdHxhESljsYZeVoByETCU9p0X+shFB3+BrQdDy7qvie2n0etFdT58h
 BnrQJhrRH54S03dZqVIc8hAFdjK9YaUaoB5KFQpKLEB3dC8k2f/RmLyynXtL2Alm2x8Dzul9r
 gJq9OWaW75ReGrcwtKeSEC5HblUPbwjcr+Whkk77iIp1OOv/27snJswgj3ZvsRFJp6g8d6Xvx
 j9q4EGR3FRiJME1IzXeiEev8naCBKnzeBcd+f5nrO7ih6UrObHm5RiwWS0xdL1bOlFCBD7SnC
 yi9y2XdANio9qUJaZST1y+HLGKjtDOHZLMM9xhieWRicVOTJWFSYc2zOHO6Z8QNKYXviUgJAn
 /+yv+dM6IyMD807i+UYWcpKL3RrEdY+Cs0qB+/r7NcKvf6pYGBwpft1yFqFtLhUPICiPNriqk
 /SGCkeD66NsxaGpjgOrinX3LqHS6F6wiz5+6DlBVfAX8sAm7VS2kHLhyJGQrZmOjvUP43JOJW
 2Pi3Mi5qrmgelpJj7cq2DL3nxHV1cuwk8NfkvKfNV6kVpKUvHEt5TzjW4HCQnQYRtiKttIb0I
 pbu0n4sCRMSO8zbRtb7fBOZCIs/0j0N3CtFk06tLXJLEn3dZu2+Url7q7hG7+JcqCxsPhrdkI
 ZafdHiIk4PVWJNt6KkPPnYFICMABjPIPRG9TfNgdUbv+7c25ojYqfA0xzxnBx1xlxUy5JT1z5
 rCJuZdWUQsf7MFP5G0UO2FNxDWnz/p6q0jSRYWkYSYLdhO4zhX89GZPzJwlRAF7kdw28pZ6us
 Kr6Z2lOIuTbqyI0Kob+ZcEyDoiKQdHu5o+HFm4cwhTifYcisKkMOTO3gIqYei/zOZRo9u9/R0
 y4XqR5IYgYt3Gg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_120708_465521_479310C6 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
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

mmal-common.h and mmal-msg.h didn't have the normal
ifndef FOO / define FOO / endif protection to stop it being
included multiple times. Add it.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-common.h | 3 +++
 drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h    | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h
index 858bdcd..6f56c51 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-common.h
@@ -13,6 +13,8 @@
  * MMAL structures
  *
  */
+#ifndef MMAL_COMMON_H
+#define MMAL_COMMON_H

 #define MMAL_FOURCC(a, b, c, d) ((a) | (b << 8) | (c << 16) | (d << 24))
 #define MMAL_MAGIC MMAL_FOURCC('m', 'm', 'a', 'l')
@@ -56,3 +58,4 @@ struct mmal_colourfx {
 	u32 u;
 	u32 v;
 };
+#endif
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
index 8e0aee8..43cc593 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
@@ -23,6 +23,8 @@
  * implementation uses fixed size types and not the enums (though the
  * comments have the actual enum type
  */
+#ifndef MMAL_MSG_H
+#define MMAL_MSG_H

 #define VC_MMAL_VER 15
 #define VC_MMAL_MIN_VER 10
@@ -401,3 +403,4 @@ struct mmal_msg {
 		u8 payload[MMAL_MSG_MAX_PAYLOAD];
 	} u;
 };
+#endif
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
