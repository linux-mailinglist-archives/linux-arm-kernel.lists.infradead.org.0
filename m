Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F008D059
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k4Qghd3vUUcMyt+MjrLsZ2YJGKq5FP1ekPMuZRlCwzc=; b=CcIyApBeA1KCCJ
	V14VJo/DbBNQYvMgVCcMF9ZlSOMykqsd4G7X4UH3QAV0joGnrgoL82TTrIR8L8M8f/7PLDhOzIUFD
	EeFjso3iDFi+wxb4w3hIqoWJvGWzflgd5kOSwubjLefdOrL950m0x3qxa/xYosv5SIkCgjXWA6J6F
	BkdZyHIa9x8qlzow8gzQ7UyV8k0z7T+MYzy3sy9FL0Zs9BhPpM5v8HgX5MviVJFrYH/E6nBDHm/Uy
	THFxs/lzTb7+DDqtHFOeCJH8qTipiQwwzEEj64YtIdJ4TcSe8ot16Nl8oEADz2hrMe2neTbEpCiXb
	7NmsyVQ/2sZP1K4iXpag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqCn-0004Gi-BN; Wed, 14 Aug 2019 10:08:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqBR-0003RD-MR; Wed, 14 Aug 2019 10:07:11 +0000
X-UUID: ec27697b165b4a28b92d6deec9671b54-20190814
X-UUID: ec27697b165b4a28b92d6deec9671b54-20190814
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 172618623; Wed, 14 Aug 2019 02:06:55 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 14 Aug 2019 03:06:56 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 14 Aug 2019 18:06:53 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 14 Aug 2019 18:06:53 +0800
From: Michael Kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>
Subject: [PATCH 4/4] arm64: dts: mt8183: Configure CPU cooling
Date: Wed, 14 Aug 2019 18:06:49 +0800
Message-ID: <1565777209-21869-5-git-send-email-michael.kao@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1565777209-21869-1-git-send-email-michael.kao@mediatek.com>
References: <1565777209-21869-1-git-send-email-michael.kao@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6B35072D115418BD62FDFB3A8FCC7BF1CA3916877D76B820D34241335E752A382000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_030709_946390_8FD605B1 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Michael Kao <michael.kao@mediatek.com>,
 Matthias Kaehlcke <mka@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWF0dGhpYXMgS2FlaGxja2UgPG1rYUBjaHJvbWl1bS5vcmc+CgpBZGQgU29DIHRlbXBl
cmF0dXJlIHRocmVzaG9sZCBhdCA2OMKwQyBhbmQgdGFyZ2V0IGF0IDgwwrBDLgpBZGQgdHJpcCBw
b2ludHMgYW5kIGNvb2xpbmcgbWFwcyBmb3IgYmlnIGFuZCBsaXR0ZXIgY2x1c3RlcnMuCgpTaWdu
ZWQtb2ZmLWJ5OiBNYXR0aGlhcyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4KU2lnbmVkLW9m
Zi1ieTogTWljaGFlbCBLYW8gPG1pY2hhZWwua2FvQG1lZGlhdGVrLmNvbT4KLS0tCiBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE4My5kdHNpIHwgNTUgKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxODMuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLmR0c2kKaW5kZXggYmM0MmI4Mi4uNjYxMWQyOSAx
MDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxODMuZHRzaQorKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE4My5kdHNpCkBAIC00MTEsNiArNDEx
LDYxIEBACiAJCQkJcG9sbGluZy1kZWxheSA9IDw1MDA+OwogCQkJCXRoZXJtYWwtc2Vuc29ycyA9
IDwmdGhlcm1hbCAwPjsKIAkJCQlzdXN0YWluYWJsZS1wb3dlciA9IDw0NTAwPjsKKworCQkJCXRy
aXBzIHsKKwkJCQkJdGhyZXNob2xkOiB0cmlwLXBvaW50QDAgeworCQkJCQkJdGVtcGVyYXR1cmUg
PSA8NjgwMDA+OworCQkJCQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsKKwkJCQkJCXR5cGUgPSAicGFz
c2l2ZSI7CisJCQkJCX07CisKKwkJCQkJdGFyZ2V0OiB0cmlwLXBvaW50QDEgeworCQkJCQkJdGVt
cGVyYXR1cmUgPSA8ODAwMDA+OworCQkJCQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsKKwkJCQkJCXR5
cGUgPSAicGFzc2l2ZSI7CisJCQkJCX07CisKKwkJCQkJY3B1X2NyaXQ6IGNwdS1jcml0IHsKKwkJ
CQkJCXRlbXBlcmF0dXJlID0gPDExNTAwMD47CisJCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owor
CQkJCQkJdHlwZSA9ICJjcml0aWNhbCI7CisJCQkJCX07CisJCQkJfTsKKworCQkJCWNvb2xpbmct
bWFwcyB7CisJCQkJCW1hcDAgeworCQkJCQkJdHJpcCA9IDwmdGFyZ2V0PjsKKwkJCQkJCWNvb2xp
bmctZGV2aWNlID0gPCZjcHUwCisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVAorCQkJCQkJCVRIRVJN
QUxfTk9fTElNSVQ+LAorCQkJCQkJCQkgPCZjcHUxCisJCQkJCQkJVEhFUk1BTF9OT19MSU1JVAor
CQkJCQkJCVRIRVJNQUxfTk9fTElNSVQ+LAorCQkJCQkJCQkgPCZjcHUyCisJCQkJCQkJVEhFUk1B
TF9OT19MSU1JVAorCQkJCQkJCVRIRVJNQUxfTk9fTElNSVQ+LAorCQkJCQkJCQkgPCZjcHUzCisJ
CQkJCQkJVEhFUk1BTF9OT19MSU1JVAorCQkJCQkJCVRIRVJNQUxfTk9fTElNSVQ+OworCQkJCQkJ
Y29udHJpYnV0aW9uID0gPDMwNzI+OworCQkJCQl9OworCQkJCQltYXAxIHsKKwkJCQkJCXRyaXAg
PSA8JnRhcmdldD47CisJCQkJCQljb29saW5nLWRldmljZSA9IDwmY3B1NAorCQkJCQkJCVRIRVJN
QUxfTk9fTElNSVQKKwkJCQkJCQkxND4sCisJCQkJCQkJCSA8JmNwdTUKKwkJCQkJCQlUSEVSTUFM
X05PX0xJTUlUCisJCQkJCQkJMTQ+LAorCQkJCQkJCQkgPCZjcHU2CisJCQkJCQkJVEhFUk1BTF9O
T19MSU1JVAorCQkJCQkJCTE0PiwKKwkJCQkJCQkJIDwmY3B1NworCQkJCQkJCVRIRVJNQUxfTk9f
TElNSVQKKwkJCQkJCQkxND47CisJCQkJCQljb250cmlidXRpb24gPSA8MTAyND47CisJCQkJCX07
CisJCQkJfTsKIAkJCX07CiAKIAkJCS8qIFRoZSB0enRzMSB+IHR6dHM2IGRvbid0IG5lZWQgdG8g
cG9sbGluZyAqLwotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
