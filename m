Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F92B9591F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 10:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uM2YmEmmTTSlZFGIvWTYvPjFPQUKV8EmNVj3hqaAVck=; b=R3HVFL/wZF3HdC
	LL+lDFO9ugvcly8uGm+87d3gHEBiAXMe3wVCPTYTkYGZwlHwMY/Yp49tnMWBZSPseWjt2t3cuzZ3D
	vb5rhFhPNMEmNbEJ9rNL81DXUJS1onzIUs6d1bXHpevz+uquXYSBgybUkAEvo62g1uYTkveB7U9wc
	vs6tj3uZMZPZU7vsdniBGmk1s375cj4iL6lg8fAfA3Zf7z5mYRD0kOAc83qJamDZXcWZUqpEkkCkW
	7tw/WZSac67kibp6gJwdl1vCectCzEeUk71VGw9T9D0BBZIwMoEBbA6ffaUh50oGRvkq/AprH/l7L
	umV3KvVsTsh1BMzDFCYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzzDs-0007oi-5T; Tue, 20 Aug 2019 08:10:32 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzDf-0007nc-1o
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 08:10:20 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7K87JE1032130; Tue, 20 Aug 2019 10:10:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=8T98DWxrHvJW0ljd24C3M5usmxTT+jRYLcAUdJHXif0=;
 b=OgGKWo5mxugXtpsbwOngyCCJe5b0icMidtAcdZvBcWrAP71xWAeABX/iIDxHtDDOJC18
 x0MMmkXFuZR9BO+HHR55YPiB0+PUa8Tqct17K4F1x5rJkU6vsCUFmXkm9LAz3q6Rjhqw
 tZtU24G2pPq29fR8EFbOaeLDelEteBVL3F2I5Iy3+Ik6atmUbZuPxap4IPmcud40jThA
 aAgkrwBy5iFdbZ7qR1eVnEwG5bSmVcveaVjVQTqvpF7/rjNZlrDDQ1uQHW3OLZ2lPjvC
 SQbe0O9n3bPq5lHEkKjsHiXaV5wL0bejsiPSW3O6FzUbdDCGRrcnP8XnTSz3+ssLhE35 1Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2ue8fgq6rm-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 20 Aug 2019 10:10:02 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D10BE3A;
 Tue, 20 Aug 2019 08:09:58 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9C8FC2BC42F;
 Tue, 20 Aug 2019 10:09:58 +0200 (CEST)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 20 Aug
 2019 10:09:58 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1473.003; Tue, 20 Aug 2019 10:09:58 +0200
From: Hugues FRUCHET <hugues.fruchet@st.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Alexandre TORGUE
 <alexandre.torgue@st.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "Sakari Ailus" <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH v7 0/4] DCMI bridge support
Thread-Topic: [PATCH v7 0/4] DCMI bridge support
Thread-Index: AQHVVmonZD9iAGFT80+FGsi2F1VjYqcCDlyAgAGAl4A=
Date: Tue, 20 Aug 2019 08:09:58 +0000
Message-ID: <228dfbae-1e73-2a9c-f6f0-799a07cd31bc@st.com>
References: <1566204081-19051-1-git-send-email-hugues.fruchet@st.com>
 <0cd073d9-3d25-9e22-f243-f72e395e9e96@xs4all.nl>
 <5d36f437-0de5-1aa0-09bf-51d3a415ad2f@st.com>
In-Reply-To: <5d36f437-0de5-1aa0-09bf-51d3a415ad2f@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
Content-ID: <954DBE3CD9A5444C89ECF19C5CD1E0B4@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-20_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_011019_460310_F1A49224 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mickael GUENE <mickael.guene@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe CORNU <philippe.cornu@st.com>, Yannick FERTRE <yannick.fertre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2FrYXJpLCBIYW5zLA0KDQpzdC1taXBpZDAyIGNoYW5nZXMgYXJlIGFscmVhZHkgbWVyZ2Vk
LCB0aGFua3MgU2FrYXJpIGFuZCBzb3JyeSBmb3IgDQpkaXN0dXJiYW5jZS4NCg0KU3RpbGwgcmVt
YWluIHRoZSBWNEwyX0NJRF9MSU5LX0ZSRVEgZm9yIE9WNTY0MC4NCg0KDQpPbiA4LzE5LzE5IDEx
OjEzIEFNLCBIdWd1ZXMgRlJVQ0hFVCB3cm90ZToNCj4gSGkgSGFucywgU2FrYXJpLA0KPiANCj4g
T0sgdG8gcHVzaCBzZXBhcmF0ZWx5IHRoZSA4MCBjaGFyIGZpeC4NCj4gDQo+IFRoZXJlIHdhcyBw
ZW5kaW5nIHJlbGF0ZWQgY2hhbmdlcyBvbiBzdC1taXBpZDAyIGFuZCBvdjU2NDAgKGxpc3RlZCAN
Cj4gYmVsb3cpLCBkbyB5b3UgdGhpbmsgaXQncyBwb3NzaWJsZSB0byB0YWtlIHRoZW0gYWxzbyA/
DQo+IA0KPiANCj4gbWVkaWE6IHN0LW1pcGlkMDI6IGFkZCBzdXBwb3J0IG9mIFY0TDJfQ0lEX0xJ
TktfRlJFUSANCj4gaHR0cHM6Ly9wYXRjaHdvcmsubGludXh0di5vcmcvcGF0Y2gvNTY5NjkvDQo+
IFN0YXRlwqDCoMKgIEFjY2VwdGVkDQo+IA0KPiBbdjIsMS8zXSBtZWRpYTogc3QtbWlwaWQwMjog
YWRkIHN1cHBvcnQgb2YgUkdCNTY1DQo+IGh0dHBzOi8vcGF0Y2h3b3JrLmxpbnV4dHYub3JnL3Bh
dGNoLzU2OTcwLw0KPiBTdGF0ZcKgwqDCoCBBY2NlcHRlZA0KPiANCj4gW3YyLDIvM10gbWVkaWE6
IHN0LW1pcGlkMDI6IGFkZCBzdXBwb3J0IG9mIFlVWVY4IGFuZCBVWVZZOA0KPiBodHRwczovL3Bh
dGNod29yay5saW51eHR2Lm9yZy9wYXRjaC81Njk3MS8NCj4gU3RhdGXCoMKgwqAgQWNjZXB0ZWQN
Cj4gDQo+IFt2MiwzLzNdIG1lZGlhOiBzdC1taXBpZDAyOiBhZGQgc3VwcG9ydCBvZiBKUEVHIA0K
PiBodHRwczovL3BhdGNod29yay5saW51eHR2Lm9yZy9wYXRjaC81Njk3My8NCj4gU3RhdGXCoMKg
wqAgQWNjZXB0ZWQNCj4gDQo+IA0KPiBbdjJdIG1lZGlhOiBvdjU2NDA6IGFkZCBzdXBwb3J0IG9m
IFY0TDJfQ0lEX0xJTktfRlJFUQ0KPiBodHRwczovL3BhdGNod29yay5saW51eHR2Lm9yZy9wYXRj
aC81NzIxNS8NCj4gU3RhdGXCoMKgwqAgQ2hhbmdlcyBSZXF1ZXN0ZWQNCj4gPT4gVGhpcyBjaGFu
Z2UgaXMgbmVlZGVkIHRvIG1ha2UgaXQgd29yayB0aGUgd2hvbGUgc2V0dXAuDQo+ID0+IEkgZG9u
J3Qga25vdyB3aGF0IHRvIGNoYW5nZSBoZXJlLCBldmVuIGlmIHRoaXMgMzg0TUh6IGZpeGVkIHZh
bHVlIA0KPiBzZWVtcyBzdHJhbmdlLCBpdCB3b3JrcyBmaW5lIG9uIG15IHNldHVwLCBvbiBteSBv
cGluaW9uIGl0J3MgYmV0dGVyIHRoYW4gDQo+IG5vdGhpbmcuIFdlIGNvdWxkIGNvbWUgYmFjayBv
biB0aGlzIGxhdGVyIG9uIHdoZW4gb3RoZXIgT1Y1NjQwIENTSSANCj4gaW50ZXJmYWNlcyB3aWxs
IHJlcXVpcmUgVjRMMl9DSURfTElOS19GUkVRIHZhbHVlLg0KPiANCj4gU2FrYXJpLCB3aGF0IGRv
IHlvdSB0aGluayBhYm91dCB0aGlzID8NCj4gDQo+IA0KPiBCUiwNCj4gSHVndWVzLg0KDQpCUiwN
Ckh1Z3Vlcy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
