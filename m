Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3E0160EBD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:37:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WWBcnFnvoLcAmzEtMOtA3dOEWHHyW+KTJZZN89qzeqA=; b=Wwoonvj75Re4SU
	oaX2SIIq9RT0G0UZiAq+XGaHQCGxEeVmJNWKEWBXSHuNB2o3P2kJurIWluRq7nDk9fHMeEMTz0pGR
	I1XuQs9VrFZ3xRBYtekj1BV1v8hT3IpSo9ZfFC4YrQ2gK1cKyX97woIwEGX7G7Ok09NFHR3mLVGmy
	hXm3ARG7pEiMAbXdUoLI/kCAvGlCIkMIAie1uZ26vbhlnP+hFkvm8/Ithb0dqGETnEh4kAiciwMMu
	j/fjDg5di6agR9LlUWGqFV13QtkCfsY9qGmmAKAInGsmxQ1sYNlu6Ew3nVORsu06Dx9K2LVn2YYzK
	du/v+JM5Sh71ztTz290A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cqC-0005we-Rp; Mon, 17 Feb 2020 09:37:24 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cq4-0005vP-Cx
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:37:17 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 13B711A2B32;
 Mon, 17 Feb 2020 10:37:15 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5C71D1A2B1A;
 Mon, 17 Feb 2020 10:37:09 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BF763402FB;
 Mon, 17 Feb 2020 17:37:02 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, u.kleine-koenig@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3 3/7] ARM: dts: imx6sx-nitrogen6sx: Use new pin names with
 DCE/DTE for UART pins
Date: Mon, 17 Feb 2020 17:31:22 +0800
Message-Id: <1581931886-12173-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581931886-12173-1-git-send-email-Anson.Huang@nxp.com>
References: <1581931886-12173-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_013716_582483_21EFD76E 
X-CRM114-Status: UNSURE (   8.92  )
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
Ynk6IFV3ZSBLbGVpbmUtS+aemm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgot
LS0KTm8gY2hhbmdlLgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZzeC1uaXRyb2dlbjZzeC5k
dHMgfCAyMCArKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlv
bnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lt
eDZzeC1uaXRyb2dlbjZzeC5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2c3gtbml0cm9nZW42
c3guZHRzCmluZGV4IDgzMmI1YzUuLmQ4NGVhNjkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3Qv
ZHRzL2lteDZzeC1uaXRyb2dlbjZzeC5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4
LW5pdHJvZ2VuNnN4LmR0cwpAQCAtNDg0LDMxICs0ODQsMzEgQEAKIAogCXBpbmN0cmxfdWFydDE6
IHVhcnQxZ3JwIHsKIAkJZnNsLHBpbnMgPSA8Ci0JCQlNWDZTWF9QQURfR1BJTzFfSU8wNF9fVUFS
VDFfVFgJCTB4MWIwYjEKLQkJCU1YNlNYX1BBRF9HUElPMV9JTzA1X19VQVJUMV9SWAkJMHgxYjBi
MQorCQkJTVg2U1hfUEFEX0dQSU8xX0lPMDRfX1VBUlQxX0RDRV9UWAkJMHgxYjBiMQorCQkJTVg2
U1hfUEFEX0dQSU8xX0lPMDVfX1VBUlQxX0RDRV9SWAkJMHgxYjBiMQogCQk+OwogCX07CiAKIAlw
aW5jdHJsX3VhcnQyOiB1YXJ0MmdycCB7CiAJCWZzbCxwaW5zID0gPAotCQkJTVg2U1hfUEFEX0dQ
SU8xX0lPMDZfX1VBUlQyX1RYCQkweDFiMGIxCi0JCQlNWDZTWF9QQURfR1BJTzFfSU8wN19fVUFS
VDJfUlgJCTB4MWIwYjEKKwkJCU1YNlNYX1BBRF9HUElPMV9JTzA2X19VQVJUMl9EQ0VfVFgJCTB4
MWIwYjEKKwkJCU1YNlNYX1BBRF9HUElPMV9JTzA3X19VQVJUMl9EQ0VfUlgJCTB4MWIwYjEKIAkJ
PjsKIAl9OwogCiAJcGluY3RybF91YXJ0MzogdWFydDNncnAgewogCQlmc2wscGlucyA9IDwKLQkJ
CU1YNlNYX1BBRF9RU1BJMUJfU1MwX0JfX1VBUlQzX1RYCTB4MWIwYjEKLQkJCU1YNlNYX1BBRF9R
U1BJMUJfU0NMS19fVUFSVDNfUlgJCTB4MWIwYjEKKwkJCU1YNlNYX1BBRF9RU1BJMUJfU1MwX0Jf
X1VBUlQzX0RDRV9UWAkJMHgxYjBiMQorCQkJTVg2U1hfUEFEX1FTUEkxQl9TQ0xLX19VQVJUM19E
Q0VfUlgJCTB4MWIwYjEKIAkJPjsKIAl9OwogCiAJcGluY3RybF91YXJ0NTogdWFydDVncnAgewog
CQlmc2wscGlucyA9IDwKLQkJCU1YNlNYX1BBRF9LRVlfQ09MM19fVUFSVDVfVFgJCTB4MWIwYjEK
LQkJCU1YNlNYX1BBRF9LRVlfUk9XM19fVUFSVDVfUlgJCTB4MWIwYjEKLQkJCU1YNlNYX1BBRF9T
RDNfREFUQTZfX1VBUlQzX1JUU19CCTB4MWIwYjEKLQkJCU1YNlNYX1BBRF9TRDNfREFUQTdfX1VB
UlQzX0NUU19CCTB4MWIwYjEKKwkJCU1YNlNYX1BBRF9LRVlfQ09MM19fVUFSVDVfRENFX1RYCQkw
eDFiMGIxCisJCQlNWDZTWF9QQURfS0VZX1JPVzNfX1VBUlQ1X0RDRV9SWAkJMHgxYjBiMQorCQkJ
TVg2U1hfUEFEX1NEM19EQVRBNl9fVUFSVDNfRENFX1JUUwkJMHgxYjBiMQorCQkJTVg2U1hfUEFE
X1NEM19EQVRBN19fVUFSVDNfRENFX0NUUwkJMHgxYjBiMQogCQk+OwogCX07CiAKLS0gCjIuNy40
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
