Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C49CC9BAD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 12:06:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTfpCIHzpQsnVRUZgR/7GjnJBPsDsRvHDF9LHPGwd6s=; b=u+BELp70uwieBV
	9g6cNDImfBn9/SErMVBPuo0dTD/j7+cl2BdaRXn7/feqEXJ3GWti77pcvsKYk819bE5h42iNU4dzU
	SglNeiQTtx0QblkfhXBSQo/hF+GFgQWnbkgaEuo8O/cMWIMRxpYc19VctkxaxWSyMMA2WUuSjrJ20
	n8wmOHsYn69nVdPWCPUsvZMFga5fIUJKVoZEI2CkvieDr/i/n4zL5Ov6AhiSqPrq5Q2tu1eu18oUL
	uklsQLMFcVhKcz+xehntJGVyNJkgCEB/JWxIqiJaKzzyJdaKgMMnbmRSd1KX++DR3nvSo3kDpL6gU
	zylFi1QhbO5qZEZXl5Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFxzn-0007ga-DP; Thu, 03 Oct 2019 10:06:03 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFxzg-0007f6-JI
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 10:05:58 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x93A1X0C005362; Thu, 3 Oct 2019 12:05:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=/wp1iPbxskdZoxALyqazsiyERNct5sj1Muer0F1tD74=;
 b=fnDbHZBC7gucaOq1OwiWvpk9mi5otnSna/X8G/DRKg97jhqQR+ap1O2bayscHekH9JBM
 z0qOfV6rZfg7gci5/bRttu8mkYRScTYbXp09AJid7ej1V8bXYpIaxxBaH5dwE5GtW59h
 Rhqztw09BN6gGMpoJirZh0XhjZpM9oN+Al2N46HtdrO5zA21+68yPBIQBww2wgmOiKMt
 o1f+9hgtzWQOai55THnJxEHM6yt9N/xEPLYxZXyeTaYDcNVN+ECzv3xp2ztZRwgODHQh
 MlcquGFHPBEpEUkdcqDZ+TqY/thYM37QSxZAiX2PMfbzYEmvupvHrNlsFBv2svFyRT/5 +g== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vcem38t31-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 03 Oct 2019 12:05:51 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 931DA4D;
 Thu,  3 Oct 2019 10:05:47 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4AF6C2B5CAA;
 Thu,  3 Oct 2019 12:05:47 +0200 (CEST)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 3 Oct
 2019 12:05:46 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1473.003; Thu, 3 Oct 2019 12:05:47 +0200
From: Gerald BAEZA <gerald.baeza@st.com>
To: Alexandre TORGUE <alexandre.torgue@st.com>, Jonathan Corbet
 <corbet@lwn.net>
Subject: RE: [PATCH] Documentation: add link to stm32mp157 docs
Thread-Topic: [PATCH] Documentation: add link to stm32mp157 docs
Thread-Index: AQHVXNGu+WgWi0gJwE+sfJwWkTflzacPHSFxgDnL12A=
Date: Thu, 3 Oct 2019 10:05:46 +0000
Message-ID: <8d097a0486e94257952600bf6d20975d@SFHDAG5NODE1.st.com>
References: <1566908347-92201-1-git-send-email-gerald.baeza@st.com>
 <20190827074825.64a28e88@lwn.net>
 <5257eff7-418b-8e94-1ced-30718dd3f5dc@st.com>
In-Reply-To: <5257eff7-418b-8e94-1ced-30718dd3f5dc@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-03_04:2019-10-01,2019-10-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_030556_926707_709EF192 
X-CRM114-Status: GOOD (  18.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSm9uYXRoYW4NCg0KPiBGcm9tOiBBbGV4YW5kcmUgVE9SR1VFIDxhbGV4YW5kcmUudG9yZ3Vl
QHN0LmNvbT4NCj4gSGkgSm9uYXRoYW4sDQo+IA0KPiBPbiA4LzI3LzE5IDM6NDggUE0sIEpvbmF0
aGFuIENvcmJldCB3cm90ZToNCj4gPiBPbiBUdWUsIDI3IEF1ZyAyMDE5IDEyOjE5OjMyICswMDAw
DQo+ID4gR2VyYWxkIEJBRVpBIDxnZXJhbGQuYmFlemFAc3QuY29tPiB3cm90ZToNCj4gPg0KPiA+
PiBMaW5rIHRvIHRoZSBvbmxpbmUgc3RtMzJtcDE1NyBkb2N1bWVudGF0aW9uIGFkZGVkIGluIHRo
ZSBvdmVydmlldy4NCj4gPj4NCj4gPj4gU2lnbmVkLW9mZi1ieTogR2VyYWxkIEJhZXphIDxnZXJh
bGQuYmFlemFAc3QuY29tPg0KPiA+PiAtLS0NCj4gPj4gICBEb2N1bWVudGF0aW9uL2FybS9zdG0z
Mi9zdG0zMm1wMTU3LW92ZXJ2aWV3LnJzdCB8IDYgKysrKysrDQo+ID4+ICAgMSBmaWxlIGNoYW5n
ZWQsIDYgaW5zZXJ0aW9ucygrKQ0KPiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9hcm0vc3RtMzIvc3RtMzJtcDE1Ny1vdmVydmlldy5yc3QNCj4gPj4gYi9Eb2N1bWVudGF0aW9u
L2FybS9zdG0zMi9zdG0zMm1wMTU3LW92ZXJ2aWV3LnJzdA0KPiA+PiBpbmRleCBmNjJmZGM4Li44
ZDVhNDc2IDEwMDY0NA0KPiA+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2FybS9zdG0zMi9zdG0zMm1w
MTU3LW92ZXJ2aWV3LnJzdA0KPiA+PiArKysgYi9Eb2N1bWVudGF0aW9uL2FybS9zdG0zMi9zdG0z
Mm1wMTU3LW92ZXJ2aWV3LnJzdA0KPiA+PiBAQCAtMTQsNiArMTQsMTIgQEAgSXQgZmVhdHVyZXM6
DQo+ID4+ICAgLSBTdGFuZGFyZCBjb25uZWN0aXZpdHksIHdpZGVseSBpbmhlcml0ZWQgZnJvbSB0
aGUgU1RNMzIgTUNVIGZhbWlseQ0KPiA+PiAgIC0gQ29tcHJlaGVuc2l2ZSBzZWN1cml0eSBzdXBw
b3J0DQo+ID4+DQo+ID4+ICtSZXNvdXJjZXMNCj4gPj4gKy0tLS0tLS0tLQ0KPiA+PiArDQo+ID4+
ICtEYXRhc2hlZXQgYW5kIHJlZmVyZW5jZSBtYW51YWwgYXJlIHB1YmxpY2x5IGF2YWlsYWJsZSBv
biBTVCB3ZWJzaXRlOg0KPiA+PiArLi4gX1NUTTMyTVAxNTc6DQo+ID4+ICtodHRwczovL3d3dy5z
dC5jb20vZW4vbWljcm9jb250cm9sbGVycy0NCj4gbWljcm9wcm9jZXNzb3JzL3N0bTMybXAxNTcu
aHQNCj4gPj4gK21sDQo+ID4+ICsNCj4gPg0KPiA+IEFkZGluZyB0aGUgVVJMIGlzIGEgZmluZSBp
ZGVhLiAgQnV0IHlvdSBkb24ndCBuZWVkIHRoZSBleHRyYSBzeW50YXggdG8NCj4gPiBjcmVhdGUg
YSBsaW5rIGlmIHlvdSdyZSBub3QgZ29pbmcgdG8gYWN0dWFsbHkgbWFrZSBhIGxpbmsgb3V0IG9m
IGl0Lg0KPiA+IFNvIEknZCB0YWtlIHRoZSAiLi4gX1NUTTMyTVAxNTc6IiBwYXJ0IG91dCBhbmQg
bGlmZSB3aWxsIGJlIGdvb2QuDQo+ID4NCj4gDQo+IFdlIGFsc28gZGlkIGl0IGZvciBvbGRlciBz
dG0zMiBwcm9kdWN0LiBJZGVhIHdhcyB0byBub3QgaGF2ZSB0aGUgImZ1bGwiDQo+IGFkZHJlc3Mg
YnV0IGp1c3QgYSBzaG9ydGN1dCBvZiB0aGUgbGluayB3aGVuIGh0bWwgZmlsZSBpcyByZWFkLiBJ
dCBtYXliZSBtYWtlcw0KPiBubyBzZW5zID8gKGlmIHllcyB3ZSB3aWxsIGhhdmUgdG8gdXBkYXRl
IG9sZGVyIHN0bTMyIG92ZXJ2aWV3IDopKQ0KDQpFeGFtcGxlIGluIGh0dHBzOi8vd3d3Lmtlcm5l
bC5vcmcvZG9jL2h0bWwvbGF0ZXN0L2FybS9zdG0zMi9zdG0zMmg3NDMtb3ZlcnZpZXcuaHRtbA0K
DQpEbyB5b3UgYWdyZWUgdG8gY29udGludWUgbGlrZSB0aGlzID8NCg0KQmVzdCByZWdhcmRzLA0K
DQpHw6lyYWxkDQoNCj4gdGhhbmtzDQo+IEFsZXgNCj4gDQo+IA0KPiA+IFRoYW5rcywNCj4gPg0K
PiA+IGpvbg0KPiA+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
