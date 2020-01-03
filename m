Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B44C12F4C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 07:53:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLnQLntm54ZvKndxIc6WkGAkL8s8Qqa9wzUhyXRh3WU=; b=ao1FX99ebeRqNS
	D/5zIl0NDWgGGsUsqSZcitTjq3cbQlOwo4XcqU4hOAjsPCWw4mxP0Yo6b2Qh0GARuZq53g/tN8M/O
	kFu50tghwAsiU6g4MZUSgybysv5D3AYisoYRD+NJr4J1HQcDFPZVNHvdW3l0t2kUkC8WCV31wALNY
	nn1aTTM18xBztNz+XkR4EzGWWuWz85/hwefYc0BNbfazeBkKj58yZ3r8yPBPKV0GZl1elVcT9UMXL
	/5KyNMf5K4X85iCmYt7XpWvXzzu1m17g7PKmPsG1GTaSnOG8sFu2nZeivjYOz1krdDeq5+TwaBMUD
	q88b6lJfPFQ7gvAMmWAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inGpm-0000zO-Nk; Fri, 03 Jan 2020 06:53:22 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inGp1-0000Tm-F0; Fri, 03 Jan 2020 06:52:38 +0000
X-UUID: 54604a20a0eb4e07bb366da70921b34c-20200102
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=xwzG4NnajscOhRyiURwp7AqLOfckk5nRtMtZCjbQoco=; 
 b=uQSWzAcNSZJnr4p2tLpG7G3wcZl7QOwus/yp0QLQYtqRnQzP7IA35pgfyEjAFw7RKan4n5Z5EDahwz6HGzzXD2exvxFWhvGhubrM5pFyCc06S12YbioD39FFS23PMYJOUgn7TEzfiyl/Ff+WBOw+KtBpkVxKDNrwaVMhmNvRU5U=;
X-UUID: 54604a20a0eb4e07bb366da70921b34c-20200102
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 998554716; Thu, 02 Jan 2020 22:52:32 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 22:44:14 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Jan 2020 14:43:47 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 3 Jan 2020 14:44:08 +0800
From: Michael Kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>, <linux-pm@vger.kernel.org>,
 <srv_heupstream@mediatek.com>
Subject: [PATCH v3,4/8] arm64: dts: mt8183: Configure CPU cooling
Date: Fri, 3 Jan 2020 14:44:03 +0800
Message-ID: <20200103064407.19861-5-michael.kao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200103064407.19861-1-michael.kao@mediatek.com>
References: <20200103064407.19861-1-michael.kao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_225235_503307_F7604B23 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Michael Kao <michael.kao@mediatek.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWF0dGhpYXMgS2FlaGxja2UgPG1rYUBjaHJvbWl1bS5vcmc+DQoNCkFkZCB0d28gcGFz
c2l2ZSB0cmlwIHBvaW50cyBhdCA2OMKwQyBhbmQgODXCsEMgZm9yIHRoZSBDUFUgdGVtcGVyYXR1
cmUuDQoNClNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEthZWhsY2tlIDxta2FAY2hyb21pdW0ub3Jn
Pg0KU2lnbmVkLW9mZi1ieTogTWljaGFlbCBLYW8gPG1pY2hhZWwua2FvQG1lZGlhdGVrLmNvbT4N
Ci0tLQ0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLmR0c2kgfCA1NSArKysr
KysrKysrKysrKysrKysrKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgNTUgaW5zZXJ0aW9ucygrKQ0K
DQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxODMuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLmR0c2kNCmluZGV4IDYzMzc4YWUx
NGExNi4uNzg1NzVjMzE4M2E0IDEwMDY0NA0KLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRp
YXRlay9tdDgxODMuZHRzaQ0KKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgx
ODMuZHRzaQ0KQEAgLTYwOSw2ICs2MDksNjEgQEANCiAJCQkJcG9sbGluZy1kZWxheSA9IDwxMDAw
PjsNCiAJCQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0aGVybWFsIDA+Ow0KIAkJCQlzdXN0YWluYWJs
ZS1wb3dlciA9IDw1MDAwPjsNCisNCisJCQkJdHJpcHMgew0KKwkJCQkJdGhyZXNob2xkOiB0cmlw
LXBvaW50QDAgew0KKwkJCQkJCXRlbXBlcmF0dXJlID0gPDY4MDAwPjsNCisJCQkJCQloeXN0ZXJl
c2lzID0gPDIwMDA+Ow0KKwkJCQkJCXR5cGUgPSAicGFzc2l2ZSI7DQorCQkJCQl9Ow0KKw0KKwkJ
CQkJdGFyZ2V0OiB0cmlwLXBvaW50QDEgew0KKwkJCQkJCXRlbXBlcmF0dXJlID0gPDg1MDAwPjsN
CisJCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Ow0KKwkJCQkJCXR5cGUgPSAicGFzc2l2ZSI7DQor
CQkJCQl9Ow0KKw0KKwkJCQkJY3B1X2NyaXQ6IGNwdS1jcml0IHsNCisJCQkJCQl0ZW1wZXJhdHVy
ZSA9IDwxMTUwMDA+Ow0KKwkJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47DQorCQkJCQkJdHlwZSA9
ICJjcml0aWNhbCI7DQorCQkJCQl9Ow0KKwkJCQl9Ow0KKw0KKwkJCQljb29saW5nLW1hcHMgew0K
KwkJCQkJbWFwMCB7DQorCQkJCQkJdHJpcCA9IDwmdGFyZ2V0PjsNCisJCQkJCQljb29saW5nLWRl
dmljZSA9IDwmY3B1MA0KKwkJCQkJCQlUSEVSTUFMX05PX0xJTUlUDQorCQkJCQkJCVRIRVJNQUxf
Tk9fTElNSVQ+LA0KKwkJCQkJCQkJIDwmY3B1MQ0KKwkJCQkJCQlUSEVSTUFMX05PX0xJTUlUDQor
CQkJCQkJCVRIRVJNQUxfTk9fTElNSVQ+LA0KKwkJCQkJCQkJIDwmY3B1Mg0KKwkJCQkJCQlUSEVS
TUFMX05PX0xJTUlUDQorCQkJCQkJCVRIRVJNQUxfTk9fTElNSVQ+LA0KKwkJCQkJCQkJIDwmY3B1
Mw0KKwkJCQkJCQlUSEVSTUFMX05PX0xJTUlUDQorCQkJCQkJCVRIRVJNQUxfTk9fTElNSVQ+Ow0K
KwkJCQkJCWNvbnRyaWJ1dGlvbiA9IDwzMDcyPjsNCisJCQkJCX07DQorCQkJCQltYXAxIHsNCisJ
CQkJCQl0cmlwID0gPCZ0YXJnZXQ+Ow0KKwkJCQkJCWNvb2xpbmctZGV2aWNlID0gPCZjcHU0DQor
CQkJCQkJCVRIRVJNQUxfTk9fTElNSVQNCisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVD4sDQorCQkJ
CQkJCQkgPCZjcHU1DQorCQkJCQkJCVRIRVJNQUxfTk9fTElNSVQNCisJCQkJCQkJVEhFUk1BTF9O
T19MSU1JVD4sDQorCQkJCQkJCQkgPCZjcHU2DQorCQkJCQkJCVRIRVJNQUxfTk9fTElNSVQNCisJ
CQkJCQkJVEhFUk1BTF9OT19MSU1JVD4sDQorCQkJCQkJCQkgPCZjcHU3DQorCQkJCQkJCVRIRVJN
QUxfTk9fTElNSVQNCisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVD47DQorCQkJCQkJY29udHJpYnV0
aW9uID0gPDEwMjQ+Ow0KKwkJCQkJfTsNCisJCQkJfTsNCiAJCQl9Ow0KIA0KIAkJCS8qIFRoZSB0
enRzMSB+IHR6dHM2IGRvbid0IG5lZWQgdG8gcG9sbGluZyAqLw0KLS0gDQoyLjE4LjANCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
