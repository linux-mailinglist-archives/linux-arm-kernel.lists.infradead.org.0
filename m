Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF91191366
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:39:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0Wd9F86AfRhriWtaHKNLEbonHaiNGrhqk4PQxVTKJc=; b=ZxJOwbhHNjbsLC
	6JWNMEjkcbGau7K4iq2XJvis5J7U9STPBXkDZzrEbqZlR8sQRYrzMS6EOLXkpjSxhPtkcJRgEi9lw
	E6jPigYjsoJEc9sxYNSrPMKh/mSU9sQpqF93MCXiXyBXSVHrTeGZBsbbykPT7GBETB7o9k/GYVZxF
	UXI+VfILSv7kUd78KiAeUylx+0G4I+g2dYJP4EKBcgZuajW/cu/uWgrS4TCStZXeWOy1KWd/vY1BJ
	HNIcDqxdGCWzFPgCIiTtKb8piw5Yuvpa9hHYCryGcMj0f2WKXGY94QYglDEmtbnPA39PRfBCgJE/+
	0n732QcZk2H4uIygqNJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkiC-0008PZ-Gs; Tue, 24 Mar 2020 14:39:24 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGki4-0008P9-5I
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 14:39:17 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02OEcB7h016856; Tue, 24 Mar 2020 15:39:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=kRzE8Z9Ot2C1TxmUx6qJ78m1De9KC/+dd3UadNqDNkM=;
 b=Bqq92K9vGhW7IVuaUO9DdT/u5hvTxj/RWLXbuJjvGjg5EZ07Q80oilTRvc0SB+lrDd6p
 hUT/MrbZgg+Ru1buckoBXgqoK7xRogRshlvcWlB9YXN2KO2Ln06BFNGkQXDhpFKs63+m
 cmexXy+zIEy1GoyAqo1Go1kmimynBgPozyxR6Cy/KFOFBxyGdt8+p/FLSCZ8DUDceSY8
 Uo7i93XrLGTK2myXYkt4MKoOF26a+qqsmYNCVd9hLCRecGqSWAj3EHA2QrjFV09Mxf1y
 lQGWkIOgVSSFl68Yj2LQ82oU1w6DvTTHcPEqJvInjWpkYlqz+hH+e/em+V+APwazvV2Q 2w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw8xe06g9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 24 Mar 2020 15:39:13 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BF45610003A;
 Tue, 24 Mar 2020 15:39:08 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B30482B0D7A;
 Tue, 24 Mar 2020 15:39:08 +0100 (CET)
Received: from SFHDAG3NODE2.st.com (10.75.127.8) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 24 Mar
 2020 15:39:08 +0100
Received: from SFHDAG3NODE2.st.com ([fe80::b82f:1ce:8854:5b96]) by
 SFHDAG3NODE2.st.com ([fe80::b82f:1ce:8854:5b96%20]) with mapi id
 15.00.1347.000; Tue, 24 Mar 2020 15:39:07 +0100
From: Alexandre TORGUE <alexandre.torgue@st.com>
To: Marek Vasut <marex@denx.de>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] [RFC] ARM: dts: stm32: Add DTs for STM32MP15x variants of
 the DH SOM and PDK2
Thread-Topic: [PATCH] [RFC] ARM: dts: stm32: Add DTs for STM32MP15x variants
 of the DH SOM and PDK2
Thread-Index: AQHWALs2LfG69gpjqEmAIxoy3YOcfahXuCeA///0JYCAAB1UgP//8W4AgAAUcwD///ANgAACP4/w
Date: Tue, 24 Mar 2020 14:39:07 +0000
Message-ID: <9492207e929c4185bda5a709ad879c15@SFHDAG3NODE2.st.com>
References: <20200323023145.3345133-1-marex@denx.de>
 <7f76ea73-122f-3761-a97b-57bdb99dc4fa@st.com>
 <4ffd8b7c-eb7d-83a4-3f6e-e156d3600532@denx.de>
 <c26637b2-7cf6-b7e2-3301-fafbbfde508e@st.com>
 <028556ba-f088-bf04-4473-a69569157411@denx.de>
 <792e11db-d345-03d4-6d8f-3f9b8ed40576@st.com>
 <c399c8bb-3035-70e0-7499-71974f7c30f6@denx.de>
In-Reply-To: <c399c8bb-3035-70e0-7499-71974f7c30f6@denx.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.46]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-24_05:2020-03-23,
 2020-03-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_073916_501347_110B9AA6 
X-CRM114-Status: GOOD (  26.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Patrick DELAUNAY <patrick.delaunay@st.com>,
 Patrice CHOTARD <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFyZWsgVmFzdXQgPG1h
cmV4QGRlbnguZGU+DQo+IFNlbnQ6IG1hcmRpIDI0IG1hcnMgMjAyMCAxNTozMQ0KPiBUbzogQWxl
eGFuZHJlIFRPUkdVRSA8YWxleGFuZHJlLnRvcmd1ZUBzdC5jb20+OyBsaW51eC1hcm0tDQo+IGtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+IENjOiBNYXhpbWUgQ29xdWVsaW4gPG1jb3F1ZWxp
bi5zdG0zMkBnbWFpbC5jb20+OyBQYXRyaWNlIENIT1RBUkQNCj4gPHBhdHJpY2UuY2hvdGFyZEBz
dC5jb20+OyBQYXRyaWNrIERFTEFVTkFZIDxwYXRyaWNrLmRlbGF1bmF5QHN0LmNvbT47IGxpbnV4
LQ0KPiBzdG0zMkBzdC1tZC1tYWlsbWFuLnN0b3JtcmVwbHkuY29tDQo+IFN1YmplY3Q6IFJlOiBb
UEFUQ0hdIFtSRkNdIEFSTTogZHRzOiBzdG0zMjogQWRkIERUcyBmb3IgU1RNMzJNUDE1eCB2YXJp
YW50cw0KPiBvZiB0aGUgREggU09NIGFuZCBQREsyDQo+IA0KPiBPbiAzLzI0LzIwIDM6MjggUE0s
IEFsZXhhbmRyZSBUb3JndWUgd3JvdGU6DQo+ID4NCj4gPg0KPiA+IE9uIDMvMjQvMjAgMzoxNSBQ
TSwgTWFyZWsgVmFzdXQgd3JvdGU6DQo+ID4+IE9uIDMvMjQvMjAgMzowNyBQTSwgQWxleGFuZHJl
IFRvcmd1ZSB3cm90ZToNCj4gPj4+DQo+ID4+Pg0KPiA+Pj4gT24gMy8yNC8yMCAyOjIyIFBNLCBN
YXJlayBWYXN1dCB3cm90ZToNCj4gPj4+PiBPbiAzLzI0LzIwIDI6MDQgUE0sIEFsZXhhbmRyZSBU
b3JndWUgd3JvdGU6DQo+ID4+Pj4+DQo+ID4+Pj4+DQo+ID4+Pj4+IE9uIDMvMjMvMjAgMzozMSBB
TSwgTWFyZWsgVmFzdXQgd3JvdGU6DQo+ID4+Pj4+PiBUaGUgREggUERLMiBjYW4gYmUgcG9wdWxh
dGVkIHdpdGggU29NIHdpdGggYW55IFNUTTMyTVAxNXggdmFyaWFudC4NCj4gPj4+Pj4+IEFkZCB0
aGUgRFRzIGRlc2NyaWJpbmcgdGhlIHJlbWFpbmluZyBjb21iaW5hdGlvbnMuDQo+ID4+Pj4+Pg0K
PiA+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+DQo+ID4+
Pj4+PiBDYzogQWxleGFuZHJlIFRvcmd1ZSA8YWxleGFuZHJlLnRvcmd1ZUBzdC5jb20+DQo+ID4+
Pj4+PiBDYzogTWF4aW1lIENvcXVlbGluIDxtY29xdWVsaW4uc3RtMzJAZ21haWwuY29tPg0KPiA+
Pj4+Pj4gQ2M6IFBhdHJpY2UgQ2hvdGFyZCA8cGF0cmljZS5jaG90YXJkQHN0LmNvbT4NCj4gPj4+
Pj4+IENjOiBQYXRyaWNrIERlbGF1bmF5IDxwYXRyaWNrLmRlbGF1bmF5QHN0LmNvbT4NCj4gPj4+
Pj4+IENjOiBsaW51eC1zdG0zMkBzdC1tZC1tYWlsbWFuLnN0b3JtcmVwbHkuY29tDQo+ID4+Pj4+
PiBUbzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+ID4+Pj4+PiAtLS0N
Cj4gPj4+Pj4+IE5PVEU6IElzIHRoZXJlIGEgYmV0dGVyIHdheSB0byBkbyB0aGlzIHRoYW4gdG8g
aGF2ZSB0aGlzIGtpbmQgb2YNCj4gPj4+Pj4+IGENCj4gPj4+Pj4+IMKgwqDCoMKgwqDCoGNvbWJp
bmF0b3JpYWwgZXhwbG9zaW9uIG9mIERUcyA/DQo+ID4+Pj4+DQo+ID4+Pj4+IEkgaGF2ZSBubyBi
ZXR0ZXIgaWRlYS4gUXVlc3Rpb24gd2FzIHRoZSBzYW1lIGZvciBzdG0zMiBib2FyZHMsIGFuZA0K
PiA+Pj4+PiBJIGNob3NlIHRvIHRha2UgdGhpcyBvcHRpb24uDQo+ID4+Pj4NCj4gPj4+PiBPbmUg
b3B0aW9uIHdvdWxkIGJlIHRvIGp1c3QgaGF2ZSBEVCBmb3IgdGhlIG1vc3QgZmVhdHVyZS1jb21w
bGV0ZQ0KPiA+Pj4+IG9wdGlvbg0KPiA+Pj4+ICgxNTcpIGFuZCB0aGVuIGhhdmUgVS1Cb290IHJl
bW92ZSB0aGUgbm9kZXMgZm9yIEhXIHdoaWNoIGlzIG5vdA0KPiA+Pj4+IHByZXNlbnQgb24gdGhl
IHBhcnRpY3VsYXIgU29DIG9wdGlvbiBpZiBpdCdzIG9uZSBvZiB0aGUgbW9yZQ0KPiA+Pj4+IGxp
bWl0ZWQgb25lcyAoMTUzLCAxNTEpLg0KPiA+Pj4+DQo+ID4+Pg0KPiA+Pj4gWWVzIGl0IHdhcyBh
IHBvc3NpYmlsaXR5IHRoYXQgSSBkaXNjdXNzZWQgd2l0aCBrZXZpbiBILiBhdCB0aGUNCj4gPj4+
IGxhdGVzdCBFTENFIGJ1dCBhdCB0aGUgZW5kIHRoZSBiZXN0IHdheSB0byBmb2xsb3cgd2FzIHRv
IGVuaGFuY2UNCj4gPj4+IG51bWJlciBvZiBkdHMgZmlsZXMuIFRoZSBiZXN0IHdvdWxkIGJlIHRv
IGhhdmUgZGVkaWNhdGVkIGZvbGRlcnMgYnV0DQo+ID4+PiBpdCBpcyBhbm90aGVyIHN0b3J5Lg0K
PiA+Pg0KPiA+PiBPciB1c2UgRFQgb3ZlcmxheXMgc29tZWhvdyA/IFUtQm9vdCBjYW4gYXBwbHkg
RFRPcyBvbnRvIERUIGJlZm9yZQ0KPiA+PiBib290aW5nIExpbnV4Lg0KPiA+Pg0KPiA+PiBIYXZp
bmcgdG9ucyBvZiBEVHMgb24gYSBzeXN0ZW0gaXMgYSBsb3Qgb2YgZHVwbGljYXRpb24sIEkgZG9u
J3QNCj4gPj4gcmVhbGx5IGxpa2UgdGhhdC4NCj4gPg0KPiA+IEkgYWdyZWUgdGhhdCB0byBtYWlu
dGFpbiBpdCdzIGEgbmlnaHRtYXJlLCBidXQgaXQncyBhIHdheSB0byBoZWxwIERUIHVzZXJzLg0K
PiA+DQo+ID4+DQo+ID4+IEJ1dCBmb3Igc3RhcnRlcnMsIGZlZWwgZnJlZSB0byByZXZpZXcgdGhp
cyBwYXRjaC4NCj4gPj4NCj4gPg0KPiA+IFlvdXIgcGF0Y2ggc291bmRzIGdvb2QuDQo+IA0KPiBU
aGVuIGZlZWwgZnJlZSB0byBhcHBseSBpdCwgdGhhbmtzLg0KPiANCj4gYnR3IGRvbid0IHlvdSBo
YXZlIGEgIm5leHQiIHRyZWUgc29tZXdoZXJlIHdpdGggYWxsIHRoZSBwYXRjaGVzIHF1ZXVlZCB1
cCBmb3INCj4gbmV4dCByZWxlYXNlID8gSWYgSSByZWJhc2Ugb24gbGludXggbmV4dCwgSSBzdGls
bCBoYXZlIHF1aXRlIGEgZmV3IHN0bTMybXAxIERUDQo+IHBhdGNoZXMgaW4gbXkgdHJlZSB3aGlj
aCBhcmUgcHJlc3VtYWJseSBhcHBsaWVkLCBidXQgSSBkb24ndCBzZWUgdGhlbSBpbiBsaW51eCBu
ZXh0Lg0KDQoNClllcyBidXQgaXQgaXMgbm90IG1lcmdlZCBpbnRvIExpbnV4LW5leHQuIFNlZTog
Z2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2F0b3JndWUvc3Rt
MzIuZ2l0DQoNCkJyYW5jaCBzdG0zMi1uZXh0DQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
