Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1784F16110E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 12:21:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPWCtAOTWSzJAlKFaVf8ehKafIruGgr0hqdOabNGG/0=; b=ZfS5CDmx7gINgh
	vOjDspRMfg948DNg6u+aw3TX823yOMevOi+yTCOY+mFEIFbVAX66nDQFzV86dXPwgvp2+tU5Ofgvm
	dMEKj1svYITw+tqQAAdPFGSR4k18IEKlrNmVEfp6uCsPNNh0dkigsxXkJv+i1iuzXl3GpKpB08GCU
	u/LkxS0JahsfnQyiWcaVgKg3pFj8CczAFuRIdUIAb1Egn5DEZbH+fO9bnsZ/gRDb9EE+Q6zAP+zDt
	hEDL11nsf5L3EcIu1IG+Zu/0SDzF1oSbbBCXtskzjCMzOK+0KAa3g3qQZZzVHx04Cs8QvFYWH+26I
	HE0r2lmcoRAv9pmjo1sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3eSH-0002PI-G8; Mon, 17 Feb 2020 11:20:49 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3eR4-00008V-6U
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 11:19:35 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 02ED41A2CCC;
 Mon, 17 Feb 2020 12:19:33 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4B4851A1592;
 Mon, 17 Feb 2020 12:19:27 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 364E3402E6;
 Mon, 17 Feb 2020 19:19:20 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, u.kleine-koenig@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3 RESEND 5/7] ARM: dts: imx6sx-sdb: Use new pin names with
 DCE/DTE for UART pins
Date: Mon, 17 Feb 2020 19:13:39 +0800
Message-Id: <1581938021-16259-5-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581938021-16259-1-git-send-email-Anson.Huang@nxp.com>
References: <1581938021-16259-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_031934_389491_09AD1046 
X-CRM114-Status: UNSURE (   7.70  )
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
LQpObyBjaGFuZ2UuCi0tLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LXNkYi5kdHNpIHwgMTIg
KysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZzeC1zZGIuZHRzaSBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL2lteDZzeC1zZGIuZHRzaQppbmRleCBmNjk3MmRlLi4zZTVmYjcyIDEw
MDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg2c3gtc2RiLmR0c2kKKysrIGIvYXJjaC9h
cm0vYm9vdC9kdHMvaW14NnN4LXNkYi5kdHNpCkBAIC01NjQsMTcgKzU2NCwxNyBAQAogCiAJCXBp
bmN0cmxfdWFydDE6IHVhcnQxZ3JwIHsKIAkJCWZzbCxwaW5zID0gPAotCQkJCU1YNlNYX1BBRF9H
UElPMV9JTzA0X19VQVJUMV9UWAkJMHgxYjBiMQotCQkJCU1YNlNYX1BBRF9HUElPMV9JTzA1X19V
QVJUMV9SWAkJMHgxYjBiMQorCQkJCU1YNlNYX1BBRF9HUElPMV9JTzA0X19VQVJUMV9EQ0VfVFgJ
MHgxYjBiMQorCQkJCU1YNlNYX1BBRF9HUElPMV9JTzA1X19VQVJUMV9EQ0VfUlgJMHgxYjBiMQog
CQkJPjsKIAkJfTsKIAogCQlwaW5jdHJsX3VhcnQ1OiB1YXJ0NWdycCB7CiAJCQlmc2wscGlucyA9
IDwKLQkJCQlNWDZTWF9QQURfS0VZX1JPVzNfX1VBUlQ1X1JYCQkweDFiMGIxCi0JCQkJTVg2U1hf
UEFEX0tFWV9DT0wzX19VQVJUNV9UWAkJMHgxYjBiMQotCQkJCU1YNlNYX1BBRF9LRVlfUk9XMl9f
VUFSVDVfQ1RTX0IJCTB4MWIwYjEKLQkJCQlNWDZTWF9QQURfS0VZX0NPTDJfX1VBUlQ1X1JUU19C
CQkweDFiMGIxCisJCQkJTVg2U1hfUEFEX0tFWV9ST1czX19VQVJUNV9EQ0VfUlgJMHgxYjBiMQor
CQkJCU1YNlNYX1BBRF9LRVlfQ09MM19fVUFSVDVfRENFX1RYCTB4MWIwYjEKKwkJCQlNWDZTWF9Q
QURfS0VZX1JPVzJfX1VBUlQ1X0RDRV9DVFMJMHgxYjBiMQorCQkJCU1YNlNYX1BBRF9LRVlfQ09M
Ml9fVUFSVDVfRENFX1JUUwkweDFiMGIxCiAJCQk+OwogCQl9OwogCi0tIAoyLjcuNAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
