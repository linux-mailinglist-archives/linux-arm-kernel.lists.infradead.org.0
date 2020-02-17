Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D37D161108
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 12:20:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xM3qxOpraoPAmKS3otkdEmGqpi6bVfqqk8PNxflQkTA=; b=XYUrF4uHhVgrFo
	2n/ht1dFEA072Usll33ssjEs6BwBVpR6VdpedXBa92j0oK+FKrIQb2Hxcl+WdzYDe5ALDyJojx9UJ
	1BV9WnQya1oo49ixaC+SEDFET3oQ3Y467AMM9NI6sRPK8brkH0oiKVDc8cJay6SnCt+bfUpjkbikQ
	ykLlKQdfuPyGqAElKPG1q22G2yoqgZlyzrmuPGVxS/PrbPJVSc9B4ZSXrLqf6WOde+K5+AeOfphBr
	8RzW/ANGyLgP+EDdxs/cFKyQ6DJTa2gtNSXrCJhdUMHuo/PptjUYClLGSgpei9j7bt81tJ+lntj2R
	BoqEU8pdTR20L81CgeUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3eRv-0001TH-Ac; Mon, 17 Feb 2020 11:20:27 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3eR2-00007v-V3
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 11:19:35 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 10ADF1A2CD3;
 Mon, 17 Feb 2020 12:19:31 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4F1B81A2CCC;
 Mon, 17 Feb 2020 12:19:25 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 453A4402E2;
 Mon, 17 Feb 2020 19:19:18 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, u.kleine-koenig@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3 RESEND 3/7] ARM: dts: imx6sx-nitrogen6sx: Use new pin names
 with DCE/DTE for UART pins
Date: Mon, 17 Feb 2020 19:13:37 +0800
Message-Id: <1581938021-16259-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581938021-16259-1-git-send-email-Anson.Huang@nxp.com>
References: <1581938021-16259-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_031933_138441_CED54F40 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXNlIG5ldyBwaW4gbmFtZXMgY29udGFpbmluZyBEQ0UvRFRFIGZvciBVQVJUIFJYL1RYL1JUUy9D
VFMgcGlucywgdGhpcwppcyB0byBkaXN0aW5ndWlzaCB0aGUgRENFL0RURSBmdW5jdGlvbnMuCgpT
aWduZWQtb2ZmLWJ5OiBBbnNvbiBIdWFuZyA8QW5zb24uSHVhbmdAbnhwLmNvbT4KUmV2aWV3ZWQt
Ynk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0t
LQpObyBjaGFuZ2UuCi0tLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LW5pdHJvZ2VuNnN4LmR0
cyB8IDIwICsrKysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9u
cygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14
NnN4LW5pdHJvZ2VuNnN4LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZzeC1uaXRyb2dlbjZz
eC5kdHMKaW5kZXggODMyYjVjNS4uZDg0ZWE2OSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9k
dHMvaW14NnN4LW5pdHJvZ2VuNnN4LmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2c3gt
bml0cm9nZW42c3guZHRzCkBAIC00ODQsMzEgKzQ4NCwzMSBAQAogCiAJcGluY3RybF91YXJ0MTog
dWFydDFncnAgewogCQlmc2wscGlucyA9IDwKLQkJCU1YNlNYX1BBRF9HUElPMV9JTzA0X19VQVJU
MV9UWAkJMHgxYjBiMQotCQkJTVg2U1hfUEFEX0dQSU8xX0lPMDVfX1VBUlQxX1JYCQkweDFiMGIx
CisJCQlNWDZTWF9QQURfR1BJTzFfSU8wNF9fVUFSVDFfRENFX1RYCQkweDFiMGIxCisJCQlNWDZT
WF9QQURfR1BJTzFfSU8wNV9fVUFSVDFfRENFX1JYCQkweDFiMGIxCiAJCT47CiAJfTsKIAogCXBp
bmN0cmxfdWFydDI6IHVhcnQyZ3JwIHsKIAkJZnNsLHBpbnMgPSA8Ci0JCQlNWDZTWF9QQURfR1BJ
TzFfSU8wNl9fVUFSVDJfVFgJCTB4MWIwYjEKLQkJCU1YNlNYX1BBRF9HUElPMV9JTzA3X19VQVJU
Ml9SWAkJMHgxYjBiMQorCQkJTVg2U1hfUEFEX0dQSU8xX0lPMDZfX1VBUlQyX0RDRV9UWAkJMHgx
YjBiMQorCQkJTVg2U1hfUEFEX0dQSU8xX0lPMDdfX1VBUlQyX0RDRV9SWAkJMHgxYjBiMQogCQk+
OwogCX07CiAKIAlwaW5jdHJsX3VhcnQzOiB1YXJ0M2dycCB7CiAJCWZzbCxwaW5zID0gPAotCQkJ
TVg2U1hfUEFEX1FTUEkxQl9TUzBfQl9fVUFSVDNfVFgJMHgxYjBiMQotCQkJTVg2U1hfUEFEX1FT
UEkxQl9TQ0xLX19VQVJUM19SWAkJMHgxYjBiMQorCQkJTVg2U1hfUEFEX1FTUEkxQl9TUzBfQl9f
VUFSVDNfRENFX1RYCQkweDFiMGIxCisJCQlNWDZTWF9QQURfUVNQSTFCX1NDTEtfX1VBUlQzX0RD
RV9SWAkJMHgxYjBiMQogCQk+OwogCX07CiAKIAlwaW5jdHJsX3VhcnQ1OiB1YXJ0NWdycCB7CiAJ
CWZzbCxwaW5zID0gPAotCQkJTVg2U1hfUEFEX0tFWV9DT0wzX19VQVJUNV9UWAkJMHgxYjBiMQot
CQkJTVg2U1hfUEFEX0tFWV9ST1czX19VQVJUNV9SWAkJMHgxYjBiMQotCQkJTVg2U1hfUEFEX1NE
M19EQVRBNl9fVUFSVDNfUlRTX0IJMHgxYjBiMQotCQkJTVg2U1hfUEFEX1NEM19EQVRBN19fVUFS
VDNfQ1RTX0IJMHgxYjBiMQorCQkJTVg2U1hfUEFEX0tFWV9DT0wzX19VQVJUNV9EQ0VfVFgJCTB4
MWIwYjEKKwkJCU1YNlNYX1BBRF9LRVlfUk9XM19fVUFSVDVfRENFX1JYCQkweDFiMGIxCisJCQlN
WDZTWF9QQURfU0QzX0RBVEE2X19VQVJUM19EQ0VfUlRTCQkweDFiMGIxCisJCQlNWDZTWF9QQURf
U0QzX0RBVEE3X19VQVJUM19EQ0VfQ1RTCQkweDFiMGIxCiAJCT47CiAJfTsKIAotLSAKMi43LjQK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
