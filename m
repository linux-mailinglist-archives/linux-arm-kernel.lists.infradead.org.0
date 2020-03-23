Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E951E18F444
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:16:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIOmLx1uiuFhRjH+zvlLdzX5MeNbWdj/BN9U7sY9b2w=; b=mn6N7AxO5LeE8w
	7QaRWhiVuW0jYL+vZvDGIzxbCJW39f6HwiIvRP0MtoL/QIR8msK7WteuG8cPN50QoKsCbf890PA65
	+VD94ILRIE5YnYpANqAe9/Tk/udU3BwLM7NmV3shfzNglS2lgkhdlC1bI+RrJxis/1FJ/oj9/8h5w
	FqJXuxZ14Gozpi6UgeKSTGvREKFFHRRdtHJvmhAK1t7dzkBZjof72cHhOozS34v+swqVf/lXYkhU/
	QMcDRTpP1+CrPcZr4YM9AvhU8Phmaw1ZlJAhck6mbFYxYtWtT8AZLDsJz4odk1rSo6v7Dy2JFtlkG
	jPT+4wzciD9pSKQmff4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGM0D-00076Y-U3; Mon, 23 Mar 2020 12:16:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGLzf-0006oU-Pl; Mon, 23 Mar 2020 12:15:49 +0000
X-UUID: 39c0cdbfd99e499f8bec9a809d2759fc-20200323
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Syxtl64f/oiHmFDozNPlTQ/y9hPgVybUbznOPaoIJLs=; 
 b=WVq7BLBFAVRGwysc2XISyaUEeWklgVbg4nAC5J1+72gq0s9hqfPeGmaRE22VMMS1//scEXCwM/w2NiRmYfM1w/gCV5GHYrM61lrM1uMi3Gk54jHUdmXeeOw+ppDb1tFtb4mqWae3A6+n1zBecWPV5UL3zXJfOayjRB7PA1wGfMU=;
X-UUID: 39c0cdbfd99e499f8bec9a809d2759fc-20200323
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1296781111; Mon, 23 Mar 2020 04:15:42 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 23 Mar 2020 05:15:40 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 23 Mar 2020 20:15:38 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 23 Mar 2020 20:15:38 +0800
From: Michael Kao <michael.kao@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui
 <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <hsinyi@chromium.org>, <linux-pm@vger.kernel.org>,
 <srv_heupstream@mediatek.com>, <michael.kao@mediatek.com>
Subject: [v4,4/7] arm64: dts: mt8183: Configure CPU cooling
Date: Mon, 23 Mar 2020 20:15:34 +0800
Message-ID: <20200323121537.22697-5-michael.kao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200323121537.22697-1-michael.kao@mediatek.com>
References: <20200323121537.22697-1-michael.kao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_051547_837041_830AE7ED 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWF0dGhpYXMgS2FlaGxja2UgPG1rYUBjaHJvbWl1bS5vcmc+DQoNCkFkZCB0d28gcGFz
c2l2ZSB0cmlwIHBvaW50cyBhdCA2OMKwQyBhbmQgODDCsEMgZm9yIHRoZSBDUFUgdGVtcGVyYXR1
cmUuDQoNClNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEthZWhsY2tlIDxta2FAY2hyb21pdW0ub3Jn
Pg0KU2lnbmVkLW9mZi1ieTogTWljaGFlbCBLYW8gPG1pY2hhZWwua2FvQG1lZGlhdGVrLmNvbT4N
Ci0tLQ0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLmR0c2kgfCA1NSArKysr
KysrKysrKysrKysrKysrKysrKysNCiAxIGZpbGUgY2hhbmdlZCwgNTUgaW5zZXJ0aW9ucygrKQ0K
DQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxODMuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLmR0c2kNCmluZGV4IDE4MmZhNjI2
NGUwZC4uNTlhYjI5NTdkODVkIDEwMDY0NA0KLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRp
YXRlay9tdDgxODMuZHRzaQ0KKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgx
ODMuZHRzaQ0KQEAgLTY3NSw2ICs2NzUsNjEgQEANCiAJCQkJcG9sbGluZy1kZWxheSA9IDw1MDA+
Ow0KIAkJCQl0aGVybWFsLXNlbnNvcnMgPSA8JnRoZXJtYWwgMD47DQogCQkJCXN1c3RhaW5hYmxl
LXBvd2VyID0gPDUwMDA+Ow0KKw0KKwkJCQl0cmlwcyB7DQorCQkJCQl0aHJlc2hvbGQ6IHRyaXAt
cG9pbnRAMCB7DQorCQkJCQkJdGVtcGVyYXR1cmUgPSA8NjgwMDA+Ow0KKwkJCQkJCWh5c3RlcmVz
aXMgPSA8MjAwMD47DQorCQkJCQkJdHlwZSA9ICJwYXNzaXZlIjsNCisJCQkJCX07DQorDQorCQkJ
CQl0YXJnZXQ6IHRyaXAtcG9pbnRAMSB7DQorCQkJCQkJdGVtcGVyYXR1cmUgPSA8ODAwMDA+Ow0K
KwkJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47DQorCQkJCQkJdHlwZSA9ICJwYXNzaXZlIjsNCisJ
CQkJCX07DQorDQorCQkJCQljcHVfY3JpdDogY3B1LWNyaXQgew0KKwkJCQkJCXRlbXBlcmF0dXJl
ID0gPDExNTAwMD47DQorCQkJCQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsNCisJCQkJCQl0eXBlID0g
ImNyaXRpY2FsIjsNCisJCQkJCX07DQorCQkJCX07DQorDQorCQkJCWNvb2xpbmctbWFwcyB7DQor
CQkJCQltYXAwIHsNCisJCQkJCQl0cmlwID0gPCZ0YXJnZXQ+Ow0KKwkJCQkJCWNvb2xpbmctZGV2
aWNlID0gPCZjcHUwDQorCQkJCQkJCVRIRVJNQUxfTk9fTElNSVQNCisJCQkJCQkJVEhFUk1BTF9O
T19MSU1JVD4sDQorCQkJCQkJCQkgPCZjcHUxDQorCQkJCQkJCVRIRVJNQUxfTk9fTElNSVQNCisJ
CQkJCQkJVEhFUk1BTF9OT19MSU1JVD4sDQorCQkJCQkJCQkgPCZjcHUyDQorCQkJCQkJCVRIRVJN
QUxfTk9fTElNSVQNCisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVD4sDQorCQkJCQkJCQkgPCZjcHUz
DQorCQkJCQkJCVRIRVJNQUxfTk9fTElNSVQNCisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVD47DQor
CQkJCQkJY29udHJpYnV0aW9uID0gPDMwNzI+Ow0KKwkJCQkJfTsNCisJCQkJCW1hcDEgew0KKwkJ
CQkJCXRyaXAgPSA8JnRhcmdldD47DQorCQkJCQkJY29vbGluZy1kZXZpY2UgPSA8JmNwdTQNCisJ
CQkJCQkJVEhFUk1BTF9OT19MSU1JVA0KKwkJCQkJCQlUSEVSTUFMX05PX0xJTUlUPiwNCisJCQkJ
CQkJCSA8JmNwdTUNCisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVA0KKwkJCQkJCQlUSEVSTUFMX05P
X0xJTUlUPiwNCisJCQkJCQkJCSA8JmNwdTYNCisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVA0KKwkJ
CQkJCQlUSEVSTUFMX05PX0xJTUlUPiwNCisJCQkJCQkJCSA8JmNwdTcNCisJCQkJCQkJVEhFUk1B
TF9OT19MSU1JVA0KKwkJCQkJCQlUSEVSTUFMX05PX0xJTUlUPjsNCisJCQkJCQljb250cmlidXRp
b24gPSA8MTAyND47DQorCQkJCQl9Ow0KKwkJCQl9Ow0KIAkJCX07DQogDQogCQkJLyogVGhlIHR6
dHMxIH4gdHp0czYgZG9uJ3QgbmVlZCB0byBwb2xsaW5nICovDQotLSANCjIuMTguMA0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
