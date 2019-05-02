Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF37211774
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 12:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zY7YcBC/m4gPO3ddOSAZSyIeMzXOGJKWNEjj46B4uFU=; b=oifjQ33L3cwKhZ
	bN6z3KAfYHW492V4G9hwyl/uyQqX2/gA46I5bcdFeY7DBelmVgEBDl68rqC+Q+EgV7hwDyq3AZ8dA
	MlvpA9Niae/az02Zn3oMDQTVxWIdf4C105W7gbJ9wTjjIQfA7dddRXZs3+lsToJ527oLYqimWvYrv
	OH6TiO04BYQL1dh4qGUYx2H/EfI/h1Dlbt1gftIuN7O0BsfXJtQt13Zoydb0DXo5/1HI3WC7GuSD9
	8Bfxe9ae1wx69/zp4MLMgQnuVeytU0QpG7kxfoItj0j6DWH24duWiUN+hAiAuR9v/8t1DZgjepAtv
	RroXogozpFYPtMzOsGVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9CN-00015L-5G; Thu, 02 May 2019 10:44:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9BY-0008Vo-FQ; Thu, 02 May 2019 10:43:31 +0000
X-UUID: a999b1e3e7d04c08b9a32d49de3a128b-20190502
X-UUID: a999b1e3e7d04c08b9a32d49de3a128b-20190502
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2136538285; Thu, 02 May 2019 02:43:22 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 May 2019 03:43:21 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 May 2019 18:43:18 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 2 May 2019 18:43:19 +0800
From: michael.kao <michael.kao@mediatek.com>
To: <michael.kao@mediatek.com>, <fan.chen@mediatek.com>,
 <jamesjj.liao@mediatek.com>, <dawei.chien@mediatek.com>,
 <louis.yu@mediatek.com>, <roger.lu@mediatek.com>, Zhang Rui
 <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 4/8] arm64: dts: mt8183: Configure CPU cooling
Date: Thu, 2 May 2019 18:43:11 +0800
Message-ID: <1556793795-25204-5-git-send-email-michael.kao@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: DCB88114CDD3C68FDEA27613F4C557B7FED064DD00A56F9A132A6DD1A974AC492000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_034328_815029_C104FA91 
X-CRM114-Status: UNSURE (   7.54  )
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
cmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE4My5kdHNpCmluZGV4IDk1ZjFkN2IuLjBi
MzI5NGIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLmR0
c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxODMuZHRzaQpAQCAtMzc1
LDYgKzM3NSw2MSBAQAogCiAJCQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0aGVybWFsIDA+OwogCQkJ
CXN1c3RhaW5hYmxlLXBvd2VyID0gPDE1MDA+OworCisJCQkJdHJpcHMgeworCQkJCQl0aHJlc2hv
bGQ6IHRyaXAtcG9pbnRAMCB7CisJCQkJCQl0ZW1wZXJhdHVyZSA9IDw2ODAwMD47CisJCQkJCQlo
eXN0ZXJlc2lzID0gPDIwMDA+OworCQkJCQkJdHlwZSA9ICJwYXNzaXZlIjsKKwkJCQkJfTsKKwor
CQkJCQl0YXJnZXQ6IHRyaXAtcG9pbnRAMSB7CisJCQkJCQl0ZW1wZXJhdHVyZSA9IDw4NTAwMD47
CisJCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+OworCQkJCQkJdHlwZSA9ICJwYXNzaXZlIjsKKwkJ
CQkJfTsKKworCQkJCQljcHVfY3JpdDogY3B1LWNyaXQgeworCQkJCQkJdGVtcGVyYXR1cmUgPSA8
MTE1MDAwPjsKKwkJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47CisJCQkJCQl0eXBlID0gImNyaXRp
Y2FsIjsKKwkJCQkJfTsKKwkJCQl9OworCisJCQkJY29vbGluZy1tYXBzIHsKKwkJCQkJbWFwMCB7
CisJCQkJCQl0cmlwID0gPCZ0YXJnZXQ+OworCQkJCQkJY29vbGluZy1kZXZpY2UgPSA8JmNwdTAK
KwkJCQkJCQlUSEVSTUFMX05PX0xJTUlUCisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVD4sCisJCQkJ
CQkJCSA8JmNwdTEKKwkJCQkJCQlUSEVSTUFMX05PX0xJTUlUCisJCQkJCQkJVEhFUk1BTF9OT19M
SU1JVD4sCisJCQkJCQkJCSA8JmNwdTIKKwkJCQkJCQlUSEVSTUFMX05PX0xJTUlUCisJCQkJCQkJ
VEhFUk1BTF9OT19MSU1JVD4sCisJCQkJCQkJCSA8JmNwdTMKKwkJCQkJCQlUSEVSTUFMX05PX0xJ
TUlUCisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVD47CisJCQkJCQljb250cmlidXRpb24gPSA8MzA3
Mj47CisJCQkJCX07CisJCQkJCW1hcDEgeworCQkJCQkJdHJpcCA9IDwmdGFyZ2V0PjsKKwkJCQkJ
CWNvb2xpbmctZGV2aWNlID0gPCZjcHU0CisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVAorCQkJCQkJ
CVRIRVJNQUxfTk9fTElNSVQ+LAorCQkJCQkJCQkgPCZjcHU1CisJCQkJCQkJVEhFUk1BTF9OT19M
SU1JVAorCQkJCQkJCVRIRVJNQUxfTk9fTElNSVQ+LAorCQkJCQkJCQkgPCZjcHU2CisJCQkJCQkJ
VEhFUk1BTF9OT19MSU1JVAorCQkJCQkJCVRIRVJNQUxfTk9fTElNSVQ+LAorCQkJCQkJCQkgPCZj
cHU3CisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVAorCQkJCQkJCVRIRVJNQUxfTk9fTElNSVQ+Owor
CQkJCQkJY29udHJpYnV0aW9uID0gPDEwMjQ+OworCQkJCQl9OworCQkJCX07CiAJCQl9OwogCiAJ
CQl0enRzMTogdHp0czEgewotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
