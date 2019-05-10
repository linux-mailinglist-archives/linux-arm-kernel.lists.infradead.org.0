Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E57719E2C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 15:29:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r1N9CejIDP8G9MU4TvvnmmgYNr3RB4iskZe9y1bbP2g=; b=S2O3GPNSJxRkMd
	NmKYSypugvLiVwAq65YV8Dku+YbdqKRxGSeSIlAZpshUyAnJ+q7aDuMHCyLpsmJzCDQljfaR7pDMA
	4RdljYLnCR9T1uSpKnx8v+MEZi9TDrB6yUUxoJYKFIPqwk1XgGX9oYPDpLBHH2sXDdqJ4mrkRUc8b
	eVy3rE3MnC/p3aaMnVlvAqrBcYwrktpacaTaD7IIaY2zqicrO9aFpKhcQwwg+DqtYeUNWEmtsI6lc
	WxUt444I6F0uGfMGRbDi1TEjSPBqQ/xNu7ndMJ3DXNH2eTmj0fA/DW+FqDGWpWx8B2h2QDmQpNced
	fdYROWPSm4zzNUAEbFXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5a6-0003XI-UG; Fri, 10 May 2019 13:28:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5YS-0001dB-MW; Fri, 10 May 2019 13:27:20 +0000
X-UUID: 4cd89c691c9145d3b511a75f4fee6ed1-20190510
X-UUID: 4cd89c691c9145d3b511a75f4fee6ed1-20190510
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1002084881; Fri, 10 May 2019 05:27:13 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 06:27:12 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 21:27:10 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 10 May 2019 21:27:10 +0800
From: michael.kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>
Subject: [PATCH v2 4/8] arm64: dts: mt8183: Configure CPU cooling
Date: Fri, 10 May 2019 21:27:02 +0800
Message-ID: <1557494826-6044-5-git-send-email-michael.kao@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
References: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2520C034CBC41554F88F741CA7C0757D572A3B445141B423EE9FE748D25258A92000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_062717_025118_B55D3491 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWF0dGhpYXMgS2FlaGxja2UgPG1rYUBjaHJvbWl1bS5vcmc+CgpBZGQgdHdvIHBhc3Np
dmUgdHJpcCBwb2ludHMgYXQgNjjCsEMgYW5kIDg1wrBDIGZvciB0aGUgQ1BVIHRlbXBlcmF0dXJl
LgoKU2lnbmVkLW9mZi1ieTogTWF0dGhpYXMgS2FlaGxja2UgPG1rYUBjaHJvbWl1bS5vcmc+ClNp
Z25lZC1vZmYtYnk6IE1pY2hhZWwgS2FvIDxtaWNoYWVsLmthb0BtZWRpYXRlay5jb20+Ci0tLQog
YXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxODMuZHRzaSB8IDU1ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNTUgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLmR0c2kgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE4My5kdHNpCmluZGV4IGJmOGIwYTguLjI5
YWQ2NjAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLmR0
c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxODMuZHRzaQpAQCAtMzc0
LDYgKzM3NCw2MSBAQAogCQkJCXBvbGxpbmctZGVsYXkgPSA8MTAwMD47CiAJCQkJdGhlcm1hbC1z
ZW5zb3JzID0gPCZ0aGVybWFsIDA+OwogCQkJCXN1c3RhaW5hYmxlLXBvd2VyID0gPDE1MDA+Owor
CisJCQkJdHJpcHMgeworCQkJCQl0aHJlc2hvbGQ6IHRyaXAtcG9pbnRAMCB7CisJCQkJCQl0ZW1w
ZXJhdHVyZSA9IDw2ODAwMD47CisJCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+OworCQkJCQkJdHlw
ZSA9ICJwYXNzaXZlIjsKKwkJCQkJfTsKKworCQkJCQl0YXJnZXQ6IHRyaXAtcG9pbnRAMSB7CisJ
CQkJCQl0ZW1wZXJhdHVyZSA9IDw4NTAwMD47CisJCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owor
CQkJCQkJdHlwZSA9ICJwYXNzaXZlIjsKKwkJCQkJfTsKKworCQkJCQljcHVfY3JpdDogY3B1LWNy
aXQgeworCQkJCQkJdGVtcGVyYXR1cmUgPSA8MTE1MDAwPjsKKwkJCQkJCWh5c3RlcmVzaXMgPSA8
MjAwMD47CisJCQkJCQl0eXBlID0gImNyaXRpY2FsIjsKKwkJCQkJfTsKKwkJCQl9OworCisJCQkJ
Y29vbGluZy1tYXBzIHsKKwkJCQkJbWFwMCB7CisJCQkJCQl0cmlwID0gPCZ0YXJnZXQ+OworCQkJ
CQkJY29vbGluZy1kZXZpY2UgPSA8JmNwdTAKKwkJCQkJCQlUSEVSTUFMX05PX0xJTUlUCisJCQkJ
CQkJVEhFUk1BTF9OT19MSU1JVD4sCisJCQkJCQkJCSA8JmNwdTEKKwkJCQkJCQlUSEVSTUFMX05P
X0xJTUlUCisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVD4sCisJCQkJCQkJCSA8JmNwdTIKKwkJCQkJ
CQlUSEVSTUFMX05PX0xJTUlUCisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVD4sCisJCQkJCQkJCSA8
JmNwdTMKKwkJCQkJCQlUSEVSTUFMX05PX0xJTUlUCisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVD47
CisJCQkJCQljb250cmlidXRpb24gPSA8MzA3Mj47CisJCQkJCX07CisJCQkJCW1hcDEgeworCQkJ
CQkJdHJpcCA9IDwmdGFyZ2V0PjsKKwkJCQkJCWNvb2xpbmctZGV2aWNlID0gPCZjcHU0CisJCQkJ
CQkJVEhFUk1BTF9OT19MSU1JVAorCQkJCQkJCVRIRVJNQUxfTk9fTElNSVQ+LAorCQkJCQkJCQkg
PCZjcHU1CisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVAorCQkJCQkJCVRIRVJNQUxfTk9fTElNSVQ+
LAorCQkJCQkJCQkgPCZjcHU2CisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVAorCQkJCQkJCVRIRVJN
QUxfTk9fTElNSVQ+LAorCQkJCQkJCQkgPCZjcHU3CisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVAor
CQkJCQkJCVRIRVJNQUxfTk9fTElNSVQ+OworCQkJCQkJY29udHJpYnV0aW9uID0gPDEwMjQ+Owor
CQkJCQl9OworCQkJCX07CiAJCQl9OwogCiAJCQkvKiBUaGUgdHp0czEgfiB0enRzNiBkb24ndCBu
ZWVkIHRvIHBvbGxpbmcgKi8KLS0gCjIuNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
