Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA21133FB6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 11:54:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3QlVEo0JBxD4dPIXa84AzFJt2aReHq1QONxyFXNfVvY=; b=j0wPt1WLh3WwhH
	DtvNnLvldi5WSCoYEnVy4wOjmUGFTk6x8LaLI4XFWP4Bzt41P6EGG8kJq4F67nTz/rX/MZemsgaDi
	46DZ0K2kUToDnUka10BICi6SsXsgMbsD7rth7nT/VJ/kkVXi0uPstsHQE3cxf6x4Hjmq7iTSo40kU
	5+I4CDcjRLyhXhZoi6H0lydZQO2U0I+SNjnXp0qJJOVPEgDPKZDFeA3B0sSsdWmaMjb3yUPf2bctS
	gfpuFKq2dSBPm/Dof9Tmnss81CoWGu9saKav6vaPEnSh1B1HLJh3XswLFo8QL0LCFm30aVyoOpmCf
	OKIcDW3XnFMgJyf5rw0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip8yL-000649-1C; Wed, 08 Jan 2020 10:53:57 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip8yD-00063G-Jo
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 10:53:51 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 008AprGZ021882; Wed, 8 Jan 2020 11:53:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=kQyAI2kGrjAzX+brnj8/2WmK945o0OHDaqbW0tiyk38=;
 b=jG8/vhWu3vI0zQ2/6ljT7lMhTFQRzNNPYHZwHdGzs2Eo5g5lMGGov6ZwJLOfIyariESU
 hORNi1P+EC95M145rQh2UHaCPIW1iML0ztzP/eRKwOfKkQcPFMF3iAmm/sYqpbStnBX5
 JTpBv3ah3Ev23TSN0/BN4mu6MtU5Z2E4xiQyj5Hb7YDoJByEqsx2/bRhCxV6cVnt3kGq
 jU3R9MWJ5k0qEPhPhLFmHAl6xDJ/s8Lv+wuqSgNmjlN3nwh9BxptLWYUotCw2kvfunL/
 UWuuUjEJvEW2qyQ1UKuwKedwt2QO8K/FBEQYCgeVk3ozvCXiWpHXIXqPpJ4pM2QFGXGP DA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakm5keud-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2020 11:53:32 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 32C4E100039;
 Wed,  8 Jan 2020 11:53:28 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1F5312AC7B9;
 Wed,  8 Jan 2020 11:53:28 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 8 Jan
 2020 11:53:27 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Wed, 8 Jan 2020 11:53:27 +0100
From: Patrice CHOTARD <patrice.chotard@st.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH 0/2] ARM: dts: stih410-b2260: Fix ethernet PHY DT node
Thread-Topic: [PATCH 0/2] ARM: dts: stih410-b2260: Fix ethernet PHY DT node
Thread-Index: AQHVxVdeIJqDyaWz6EKL4LSB10p6hafgiEOA
Date: Wed, 8 Jan 2020 10:53:27 +0000
Message-ID: <ac361e0a-e5c8-ba7c-0d31-1f47a6ba4fab@st.com>
References: <20200107123828.6586-1-patrice.chotard@st.com>
In-Reply-To: <20200107123828.6586-1-patrice.chotard@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.45]
Content-ID: <8FA654F671C57D4EA886F312BBD6A0E0@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-08_03:2020-01-08,
 2020-01-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_025350_111237_BF32B312 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkNCg0KVGhpcyBzZXJpZXMgaXMgYWJhbmRvbm5lZDoNCg0KwqDCoCAtIFBhdGNoIDEgaXMgbm8g
bW9yZSBuZWVkZWQgZHVlIHRvIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9s
aW51eC1hcm0ta2VybmVsL2xpc3QvP3Nlcmllcz0yMjQ2MzcNCg0KwqDCoCAtIFBhdGNoIDIgd2ls
bCBiZSByZXNlbmQgYWxvbmUNCg0KVGhhbmtzDQoNClBhdHJpY2UNCg0KDQpPbiAxLzcvMjAgMToz
OCBQTSwgcGF0cmljZS5jaG90YXJkQHN0LmNvbSB3cm90ZToNCj4gRnJvbTogUGF0cmljZSBDaG90
YXJkIDxwYXRyaWNlLmNob3RhcmRAc3QuY29tPg0KPg0KPiBUaGlzIHNlcmllcyBpcyBmaXhpbmcg
YSBrZXJuZWwgT29wcyBhbmQgaXMgcmVtb3ZpbmcgZGVwcmVjYXRlZCBQSFkgcHJvcGVydGllczog
DQo+DQo+ICAtIFNpbmNlIGNvbW1pdCAnZDNlMDE0ZWM3ZDVlICgibmV0OiBzdG1tYWM6IHBsYXRm
b3JtOiBGaXggTURJTyBpbml0IGZvciANCj4gICAgcGxhdGZvcm1zIHdpdGhvdXQgUEhZIiknLCBh
IGtlcm5lbCBPb3BzIG9jY3VycyBhbmQgZXRoZXJuZXQgaXMgbm8gbW9yZQ0KPiAgICBmdW5jdGlv
bmFsLg0KPg0KPiAgLSBTb21lIGRlcHJlY2F0ZWQgU3lub3BzeXMgcGh5IHByb3BlcnRpZXMgd2Fz
IGFsd2F5cyBwcmVzZW50IGluIERULCANCj4gICAgcmVtb3ZlIHRoZW0uDQo+DQo+IFBhdHJpY2Ug
Q2hvdGFyZCAoMik6DQo+ICAgQVJNOiBkdHM6IHN0aWg0MTAtYjIyNjA6IEZpeCBldGhlcm5ldCBw
aHkgRFQgbm9kZQ0KPiAgIEFSTTogZHRzOiBzdGloNDEwLWIyMjYwOiBSZW1vdmUgZGVwcmVjYXRl
ZCBzbnBzIFBIWSBwcm9wZXJ0aWVzDQo+DQo+ICBhcmNoL2FybS9ib290L2R0cy9zdGloNDEwLWIy
MjYwLmR0cyB8IDEzICsrKysrKysrKystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
