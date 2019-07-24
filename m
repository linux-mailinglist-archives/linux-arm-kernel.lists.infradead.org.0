Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8409872E70
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 14:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PoQ9DJ+MX6q9Jjs7IJ1WVC3s5f4RjCt1pIvDHV7qZhI=; b=Ihi7QABPEMvG21
	gVXG+vC1F6qMogwCwXgrUj4ukKRJBzekEuQTHsBHI7a0Ca/leUj9FkF1JSmzzn4VaZW+YbdAsna/J
	jGlzraNTWZO8/KjiFrfI49kYuUqA618Q8ZqVu2JeZpln9zLsXcPghT15Jq7yC0AFzWsKFDFtweKRv
	1G0hEXlkOhRgcpc9NGEZDimWGkR2Bc/cOS7GiDFclRJUIO81fjz/OTvMHkKGLBbeZn/w+pWUrGK3E
	VAzpXl2fMPsjQRn1ZoV240upJWSGZ66upHGrfGoLju+8IgDU2Ey2Qf1SucmiFCb7kanPTvfzIX5K8
	JBUaC9e1YB6sTXLlg5TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqG3E-0007Lp-8i; Wed, 24 Jul 2019 12:07:20 +0000
Received: from 5.mo68.mail-out.ovh.net ([46.105.62.179])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqG2r-0007CP-Bj
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 12:06:59 +0000
Received: from player793.ha.ovh.net (unknown [10.109.160.46])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id C85BA133C9A
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 14:06:53 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player793.ha.ovh.net (Postfix) with ESMTPSA id 266D9855C700;
 Wed, 24 Jul 2019 12:06:42 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 2/2] dt-bindings: arm: Document Armadeus SoM and Dev boards
 devicetree binding
Date: Wed, 24 Jul 2019 14:06:23 +0200
Message-Id: <20190724120623.2385-2-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190724120623.2385-1-sebastien.szymanski@armadeus.com>
References: <20190724120623.2385-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
X-Ovh-Tracer-Id: 5322410338636420227
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrkedtgdeggecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_050657_892793_C56F99EE 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.62.179 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG9jdW1lbnQgdGhlIGZvbGxvd2luZyBBcm1hZGV1cyBTb00gYW5kIERldiBib2FyZHMgZGV2aWNl
dHJlZSBiaW5kaW5nCmFscmVhZHkgc3VwcG9ydGVkOgotIGFybWFkZXVzLGlteDI3LWFwZjI3IGFu
ZCBhcm1hZGV1cyxpbXgyNy1hcGYyN2RldgotIGFybWFkZXVzLGlteDI4LWFwZjI4IGFuZCBhcm1h
ZGV1cyxpbXgyOC1hcGYyOGRldgotIGFybWFkZXVzLGlteDUxLWFwZjUxIGFuZCBhcm1hZGV1cyxp
bXg1MS1hcGY1MWRldgotIGFybWFkZXVzLGlteDZ7cSxkbH0tYXBmNiBhbmQgYXJtYWRldXMsaW14
e3EsZGx9LWFwZjZkZXYKLSBhcm1hZGV1cyxpbXg2e3VsLHVsbH0tb3BvczZ1bCBhbmQgYXJtYWRl
dXMsaW14e3VsLHVsbH0tb3BvczZ1bGRldgoKU2lnbmVkLW9mZi1ieTogU8OpYmFzdGllbiBTenlt
YW5za2kgPHNlYmFzdGllbi5zenltYW5za2lAYXJtYWRldXMuY29tPgotLS0KCkNoYW5nZXMgZm9y
IHYyOgotIG5ldyBwYXRjaAoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
ZnNsLnlhbWwgfCAxNSArKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9hcm0vZnNsLnlhbWwKaW5kZXggNzI5NGFjMzZmNGMwLi45YmEzYTNiZTgyZDEgMTAwNjQ0
Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vZnNsLnlhbWwKKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbApAQCAtMzgs
MTIgKzM4LDE2IEBAIHByb3BlcnRpZXM6CiAgICAgICAtIGRlc2NyaXB0aW9uOiBpLk1YMjcgUHJv
ZHVjdCBEZXZlbG9wbWVudCBLaXQKICAgICAgICAgaXRlbXM6CiAgICAgICAgICAgLSBlbnVtOgor
ICAgICAgICAgICAgICAtIGFybWFkZXVzLGlteDI3LWFwZjI3ICAgICAgIyBBUEYyNyBTb00KKyAg
ICAgICAgICAgICAgLSBhcm1hZGV1cyxpbXgyNy1hcGYyN2RldiAgICMgQVBGMjcgU29NIG9uIEFQ
RjI3RGV2IGJvYXJkCiAgICAgICAgICAgICAgIC0gZnNsLGlteDI3LXBkawogICAgICAgICAgIC0g
Y29uc3Q6IGZzbCxpbXgyNwogCiAgICAgICAtIGRlc2NyaXB0aW9uOiBpLk1YMjggYmFzZWQgQm9h
cmRzCiAgICAgICAgIGl0ZW1zOgogICAgICAgICAgIC0gZW51bToKKyAgICAgICAgICAgICAgLSBh
cm1hZGV1cyxpbXgyOC1hcGYyOCAgICAgICMgQVBGMjggU29NCisgICAgICAgICAgICAgIC0gYXJt
YWRldXMsaW14MjgtYXBmMjhkZXYgICAjIEFQRjI4IFNvTSBvbiBBUEYyOERldiBib2FyZAogICAg
ICAgICAgICAgICAtIGZzbCxpbXgyOC1ldmsKICAgICAgICAgICAgICAgLSBpMnNlLGR1Y2tiaWxs
CiAgICAgICAgICAgICAgIC0gaTJzZSxkdWNrYmlsbC0yCkBAIC04Nyw3ICs5MSw4IEBAIHByb3Bl
cnRpZXM6CiAgICAgICAtIGRlc2NyaXB0aW9uOiBpLk1YNTEgQmFiYmFnZSBCb2FyZAogICAgICAg
ICBpdGVtczoKICAgICAgICAgICAtIGVudW06Ci0gICAgICAgICAgICAgIC0gYXJtYWRldXMsaW14
NTEtYXBmNTEKKyAgICAgICAgICAgICAgLSBhcm1hZGV1cyxpbXg1MS1hcGY1MSAgICAjIEFQRjUx
IFNvTQorICAgICAgICAgICAgICAtIGFybWFkZXVzLGlteDUxLWFwZjUxZGV2ICMgQVBGNTEgU29N
IG9uIEFQRjUxRGV2IGJvYXJkCiAgICAgICAgICAgICAgIC0gZnNsLGlteDUxLWJhYmJhZ2UKICAg
ICAgICAgICAgICAgLSB0ZWNobm9sb2dpYyxpbXg1MS10czQ4MDAKICAgICAgICAgICAtIGNvbnN0
OiBmc2wsaW14NTEKQEAgLTEwNiw2ICsxMTEsOCBAQCBwcm9wZXJ0aWVzOgogICAgICAgLSBkZXNj
cmlwdGlvbjogaS5NWDZRIGJhc2VkIEJvYXJkcwogICAgICAgICBpdGVtczoKICAgICAgICAgICAt
IGVudW06CisgICAgICAgICAgICAgIC0gYXJtYWRldXMsaW14NnEtYXBmNiAgICAgICAjIEFQRjYg
KFF1YWQvRHVhbCkgU29NCisgICAgICAgICAgICAgIC0gYXJtYWRldXMsaW14NnEtYXBmNmRldiAg
ICAjIEFQRjYgKFF1YWQvRHVhbCkgU29NIG9uIEFQRjZEZXYgYm9hcmQKICAgICAgICAgICAgICAg
LSBlbXRyaW9uLGVtY29uLW14NiAgICAgICAgICMgZW1DT04tTVg2RCBvciBlbUNPTi1NWDZRIFNv
TQogICAgICAgICAgICAgICAtIGVtdHJpb24sZW1jb24tbXg2LWF2YXJpICAgIyBlbUNPTi1NWDZE
IG9yIGVtQ09OLU1YNlEgU29NIG9uIEF2YXJpIEJhc2UKICAgICAgICAgICAgICAgLSBmc2wsaW14
NnEtYXJtMgpAQCAtMTI2LDYgKzEzMyw4IEBAIHByb3BlcnRpZXM6CiAgICAgICAtIGRlc2NyaXB0
aW9uOiBpLk1YNkRMIGJhc2VkIEJvYXJkcwogICAgICAgICBpdGVtczoKICAgICAgICAgICAtIGVu
dW06CisgICAgICAgICAgICAgIC0gYXJtYWRldXMsaW14NmRsLWFwZjYgICAgICAjIEFQRjYgKFNv
bG8pIFNvTQorICAgICAgICAgICAgICAtIGFybWFkZXVzLGlteDZkbC1hcGY2ZGxkZXYgIyBBUEY2
IChTb2xvKSBTb00gb24gQVBGNkRldiBib2FyZAogICAgICAgICAgICAgICAtIGVja2VsbWFubixp
bXg2ZGwtY2k0eDEwCiAgICAgICAgICAgICAgIC0gZW10cmlvbixlbWNvbi1teDYgICAgICAgICAj
IGVtQ09OLU1YNlMgb3IgZW1DT04tTVg2REwgU29NCiAgICAgICAgICAgICAgIC0gZW10cmlvbixl
bWNvbi1teDYtYXZhcmkgICAjIGVtQ09OLU1YNlMgb3IgZW1DT04tTVg2REwgU29NIG9uIEF2YXJp
IEJhc2UKQEAgLTE2MCwxMiArMTY5LDE2IEBAIHByb3BlcnRpZXM6CiAgICAgICAtIGRlc2NyaXB0
aW9uOiBpLk1YNlVMIGJhc2VkIEJvYXJkcwogICAgICAgICBpdGVtczoKICAgICAgICAgICAtIGVu
dW06CisgICAgICAgICAgICAgIC0gYXJtYWRldXMsaW14NnVsLW9wb3M2dWwgICAgIyBPUE9TNlVM
IChpLk1YNlVMKSBTb00KKyAgICAgICAgICAgICAgLSBhcm1hZGV1cyxpbXg2dWwtb3BvczZ1bGRl
diAjIE9QT1M2VUwgKGkuTVg2VUwpIFNvTSBvbiBPUE9TNlVMRGV2IGJvYXJkCiAgICAgICAgICAg
ICAgIC0gZnNsLGlteDZ1bC0xNHgxNC1ldmsgICAgICAjIGkuTVg2IFVsdHJhTGl0ZSAxNHgxNCBF
VksgQm9hcmQKICAgICAgICAgICAtIGNvbnN0OiBmc2wsaW14NnVsCiAKICAgICAgIC0gZGVzY3Jp
cHRpb246IGkuTVg2VUxMIGJhc2VkIEJvYXJkcwogICAgICAgICBpdGVtczoKICAgICAgICAgICAt
IGVudW06CisgICAgICAgICAgICAgIC0gYXJtYWRldXMsaW14NnVsbC1vcG9zNnVsICAgICMgT1BP
UzZVTCAoaS5NWDZVTEwpIFNvTQorICAgICAgICAgICAgICAtIGFybWFkZXVzLGlteDZ1bGwtb3Bv
czZ1bGRldiAjIE9QT1M2VUwgKGkuTVg2VUxMKSBTb00gb24gT1BPUzZVTERldiBib2FyZAogICAg
ICAgICAgICAgICAtIGZzbCxpbXg2dWxsLTE0eDE0LWV2ayAgICAgIyBpLk1YNiBVbHRyYUxpdGVM
aXRlIDE0eDE0IEVWSyBCb2FyZAogICAgICAgICAgIC0gY29uc3Q6IGZzbCxpbXg2dWxsCiAKLS0g
CjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
