Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C6916BD5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:34:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qjADuuQZrcCTUWUDw3e90DdeVGtOaNclEOPRAAwyRgU=; b=GC1GAyD/WmFFV0
	WB6Lse7A8ZqdwKUk06mWjusnInslwXMIQjZQdzDef2/086t1T92XAJdjUIEd0q0lxVcLwSxZDqavV
	sAKv4/vF0eKlblGDZukdokO/ojJivyXzUC/IWDnbSW0e7E5nc2x059+Ben7Bl2mWHA3EIrXbA2i3e
	rJniyvF7EWtJc1wfKKD/y3H7NpIIjPA4+QW49Vl9dq+7wRpz5GdYTVCxxpLxPLMSZwd00LCNGboPF
	SvbtM5uAVLevruYI4r8nUxXLX5yxISc0mrkYbzoEoZ0Y9R6hfDgZyu5BIbM2jImrfjWEx6bAvYUbB
	2WkVkhm5I8kFzGKTQ2DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Wbo-0003Np-8f; Tue, 25 Feb 2020 09:34:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6WbZ-0003M4-5l; Tue, 25 Feb 2020 09:34:20 +0000
X-UUID: aed5df1548404bfca0bfb866c1cd1a11-20200225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=JeEC5O8xipDZ9SuDmxbr6QlkFs0WLiFE6a28FBx3yAs=; 
 b=qA3mC2yxMB6SygcRlzRMOunid/h/msgFn7q9EfYybwvsnVddVA8e/5Rbyl1ce8dsm12BVGf+sRYd0ZbMOdyKcFPjpckHBJ6fvrLIzPK5yPZA6jAc9TTdDGcO28Dby0/kRPvndC1UvYweYUztVghzl7LFWLknyV7m4Zox3zI02SU=;
X-UUID: aed5df1548404bfca0bfb866c1cd1a11-20200225
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 46452812; Tue, 25 Feb 2020 01:34:09 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 01:35:11 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 17:33:14 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 25 Feb 2020 17:31:51 +0800
Message-ID: <1582623246.27539.3.camel@mtksdccf07>
Subject: Re: [PATCH v3,4/8] arm64: dts: mt8183: Configure CPU cooling
From: Michael Kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>
Date: Tue, 25 Feb 2020 17:34:06 +0800
In-Reply-To: <20200103064407.19861-5-michael.kao@mediatek.com>
References: <20200103064407.19861-1-michael.kao@mediatek.com>
 <20200103064407.19861-5-michael.kao@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_013417_227155_F33CFA51 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDIwLTAxLTAzIGF0IDE0OjQ0ICswODAwLCBNaWNoYWVsIEthbyB3cm90ZToNCj4g
RnJvbTogTWF0dGhpYXMgS2FlaGxja2UgPG1rYUBjaHJvbWl1bS5vcmc+DQo+IA0KPiBBZGQgdHdv
IHBhc3NpdmUgdHJpcCBwb2ludHMgYXQgNjjCsEMgYW5kIDg1wrBDIGZvciB0aGUgQ1BVIHRlbXBl
cmF0dXJlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF0dGhpYXMgS2FlaGxja2UgPG1rYUBjaHJv
bWl1bS5vcmc+DQo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgS2FvIDxtaWNoYWVsLmthb0BtZWRp
YXRlay5jb20+DQo+IC0tLQ0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxODMu
ZHRzaSB8IDU1ICsrKysrKysrKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDU1
IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21l
ZGlhdGVrL210ODE4My5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxODMu
ZHRzaQ0KPiBpbmRleCA2MzM3OGFlMTRhMTYuLjc4NTc1YzMxODNhNCAxMDA2NDQNCj4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxODMuZHRzaQ0KPiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE4My5kdHNpDQo+IEBAIC02MDksNiArNjA5LDYxIEBA
DQo+ICAJCQkJcG9sbGluZy1kZWxheSA9IDwxMDAwPjsNCj4gIAkJCQl0aGVybWFsLXNlbnNvcnMg
PSA8JnRoZXJtYWwgMD47DQo+ICAJCQkJc3VzdGFpbmFibGUtcG93ZXIgPSA8NTAwMD47DQo+ICsN
Cj4gKwkJCQl0cmlwcyB7DQo+ICsJCQkJCXRocmVzaG9sZDogdHJpcC1wb2ludEAwIHsNCj4gKwkJ
CQkJCXRlbXBlcmF0dXJlID0gPDY4MDAwPjsNCj4gKwkJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47
DQo+ICsJCQkJCQl0eXBlID0gInBhc3NpdmUiOw0KPiArCQkJCQl9Ow0KPiArDQo+ICsJCQkJCXRh
cmdldDogdHJpcC1wb2ludEAxIHsNCj4gKwkJCQkJCXRlbXBlcmF0dXJlID0gPDg1MDAwPjsNCj4g
KwkJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47DQo+ICsJCQkJCQl0eXBlID0gInBhc3NpdmUiOw0K
PiArCQkJCQl9Ow0KPiArDQo+ICsJCQkJCWNwdV9jcml0OiBjcHUtY3JpdCB7DQo+ICsJCQkJCQl0
ZW1wZXJhdHVyZSA9IDwxMTUwMDA+Ow0KPiArCQkJCQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsNCj4g
KwkJCQkJCXR5cGUgPSAiY3JpdGljYWwiOw0KPiArCQkJCQl9Ow0KPiArCQkJCX07DQo+ICsNCj4g
KwkJCQljb29saW5nLW1hcHMgew0KPiArCQkJCQltYXAwIHsNCj4gKwkJCQkJCXRyaXAgPSA8JnRh
cmdldD47DQo+ICsJCQkJCQljb29saW5nLWRldmljZSA9IDwmY3B1MA0KPiArCQkJCQkJCVRIRVJN
QUxfTk9fTElNSVQNCj4gKwkJCQkJCQlUSEVSTUFMX05PX0xJTUlUPiwNCj4gKwkJCQkJCQkJIDwm
Y3B1MQ0KPiArCQkJCQkJCVRIRVJNQUxfTk9fTElNSVQNCj4gKwkJCQkJCQlUSEVSTUFMX05PX0xJ
TUlUPiwNCj4gKwkJCQkJCQkJIDwmY3B1Mg0KPiArCQkJCQkJCVRIRVJNQUxfTk9fTElNSVQNCj4g
KwkJCQkJCQlUSEVSTUFMX05PX0xJTUlUPiwNCj4gKwkJCQkJCQkJIDwmY3B1Mw0KPiArCQkJCQkJ
CVRIRVJNQUxfTk9fTElNSVQNCj4gKwkJCQkJCQlUSEVSTUFMX05PX0xJTUlUPjsNCj4gKwkJCQkJ
CWNvbnRyaWJ1dGlvbiA9IDwzMDcyPjsNCj4gKwkJCQkJfTsNCj4gKwkJCQkJbWFwMSB7DQo+ICsJ
CQkJCQl0cmlwID0gPCZ0YXJnZXQ+Ow0KPiArCQkJCQkJY29vbGluZy1kZXZpY2UgPSA8JmNwdTQN
Cj4gKwkJCQkJCQlUSEVSTUFMX05PX0xJTUlUDQo+ICsJCQkJCQkJVEhFUk1BTF9OT19MSU1JVD4s
DQo+ICsJCQkJCQkJCSA8JmNwdTUNCj4gKwkJCQkJCQlUSEVSTUFMX05PX0xJTUlUDQo+ICsJCQkJ
CQkJVEhFUk1BTF9OT19MSU1JVD4sDQo+ICsJCQkJCQkJCSA8JmNwdTYNCj4gKwkJCQkJCQlUSEVS
TUFMX05PX0xJTUlUDQo+ICsJCQkJCQkJVEhFUk1BTF9OT19MSU1JVD4sDQo+ICsJCQkJCQkJCSA8
JmNwdTcNCj4gKwkJCQkJCQlUSEVSTUFMX05PX0xJTUlUDQo+ICsJCQkJCQkJVEhFUk1BTF9OT19M
SU1JVD47DQo+ICsJCQkJCQljb250cmlidXRpb24gPSA8MTAyND47DQo+ICsJCQkJCX07DQo+ICsJ
CQkJfTsNCj4gIAkJCX07DQo+ICANCj4gIAkJCS8qIFRoZSB0enRzMSB+IHR6dHM2IGRvbid0IG5l
ZWQgdG8gcG9sbGluZyAqLw0KDQpHZW50YWxseSByZW1pbmQsIGRvIHlvdSBoYXZlIGFueSBjb21t
ZW50cz8NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
