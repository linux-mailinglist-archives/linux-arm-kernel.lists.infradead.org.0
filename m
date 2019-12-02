Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A80210EABE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 14:22:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iEjeJpijd2arP/T6mvIQC4pajpQdN6djxX2TYz6wKsk=; b=u7fdPVSWVpdtKi
	Hs/Op89LNF8xYUiTt5HXn5YpZxASUcwRlzF1AjMyJyzDWr42yAuL/xW2R4e7yAvOhrBxkUa2tfJ1B
	wduD3nxlmEWAe2iRNrD+5ZCGgd8Gs39ObUkctU3EuIW0hdgZGfiW643eKkmemROWweToE0doE5Fo0
	VmryPN8nsfBAhuxJB6+n8gtyW0/8ImWo46kPda+lMEVzfrHAMmvdRUlpdNsCHHfsB9FDnNV6wgz4l
	4uI5j4kxUnOxhR8A95X7F82bUdMXb5wp0myRV6Y2NFsfeTnURCzofaexmNCuGEgho4s2UHImJfjqY
	lp0JDEMpOqlzc7P+e0Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iblf2-0004Vc-8f; Mon, 02 Dec 2019 13:22:44 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibleu-0004Uf-VE
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 13:22:38 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB2DCk8P026461; Mon, 2 Dec 2019 14:22:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=e/Togba5U9ys+8oqJTXGaZUdpDWn0rAPQUQJmgN0SO0=;
 b=xjiDFUmNL8x0aNlPPh4I+U6OGwFIwBLTXy6g0AQPbagKm2qGswk+2ggHTZ2a8UsUtb2X
 nAwm5FaCrwh03iIfMRdTlMS+fKf56ZAGPa8pmTSlv7f0P5Ky74GRGah5on0gmZ6vkJaG
 YNzx7Pu0ZPcI5XBoyZIfU6vFtAMwT2du5F9PP6n2K6wBNjYrYLhruXTtK29hn1eRnYlI
 OOHhzEoCQQyzQF96dDgN8NZhdt4kb4PqggrM+TmjmefeL1rhydNdHGZHnsyx24umUg3y
 iacc5eHs9dIUDtYBNshxOjf6Gx9b3o+1ADV1BOgFYlzdK/fHZ3oqLNFsT83KvgjOLISk fg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wkg6k9qtd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 02 Dec 2019 14:22:15 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1F43A100039;
 Mon,  2 Dec 2019 14:22:15 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0BEF42C9D9B;
 Mon,  2 Dec 2019 14:22:15 +0100 (CET)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 2 Dec
 2019 14:22:14 +0100
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Mon, 2 Dec 2019 14:22:14 +0100
From: Fabien DESSENNE <fabien.dessenne@st.com>
To: Marc Zyngier <maz@kernel.org>, Daode Huang <huangdaode@hisilicon.com>
Subject: Re: [PATCH] irqchip/stm32: Fix "WARNING: invalid free of devm_
 allocated
Thread-Topic: [PATCH] irqchip/stm32: Fix "WARNING: invalid free of devm_
 allocated
Thread-Index: AQHVqRODxV7lpFAqyU+rnFWM+DebYg==
Date: Mon, 2 Dec 2019 13:22:14 +0000
Message-ID: <d7a90e49-b847-7fad-d11c-5969050e8d12@st.com>
References: <1574931880-168682-1-git-send-email-huangdaode@hisilicon.com>
 <8acaa494701c91b8a8acd60a2390d810@www.loen.fr>
 <028744c349410eb1f74b7e2b18590c75@www.loen.fr>
In-Reply-To: <028744c349410eb1f74b7e2b18590c75@www.loen.fr>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.45]
Content-ID: <D0A2F87ABFC4674D83462422A4D8618F@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-02_02:2019-11-29,2019-12-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_052237_463419_FAA00EFB 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRGFvZGUsDQoNCg0KSSBjb25maXJtIHRoYXQgdGhpcyBwYXRjaCBpcyBub3QgYSBnb29kIGlk
ZWEsIGhlcmUgYXJlIHNvbWUgZXhwbGFuYXRpb25zLg0KDQppcnEtc3RtMzItZXh0aS5jIGRlYWxz
IHdpdGggdHdvIGRpZmZlcmVudCBwdXJwb3NlczoNCg0KLSBlaXRoZXIgaXQgaXMgdXNlZCB0byBw
cm9iZSB0aGUgInN0LHN0bTMybXAxLWV4dGkiIGNvbXBhdGlibGUgZGV2aWNlLiANCkluIHRoYXQg
Y2FzZSAucHJvYmUoKSBpcyBpbnZva2VkIGFuZCB1c2VzIGRldm1fa3phbGxvYygpIHRvIGdldCBt
ZW1vcnkuIA0KTm8gbmVlZCB0byBmcmVlIG1lbW9yeS4NCg0KLWVpdGhlciBpcyBpdCB1c2VkIGZv
ciBvdGhlciBzdG0zMiBkZXZpY2VzLiBJbiB0aGF0IGNhc2UsIHRoZXJlIGlzIG5vIA0KcHJvYmUg
ZnVuY3Rpb24sIHRoZSBkcml2ZXIgaXMgJ2p1c3QnIGluaXQnZWQuIEluIHRoYXQgY2FzZSwgDQpk
ZXZtX2t6YWxsb2MoKSBpcyBub3QgdXNlZCBhbmQgZXhwbGljaXQgZnJlZSBtZW1vcnkgaXMgcmVx
dWlyZWQuDQoNCkFzIHNhaWQgYnkgTWFyaywgeW91IGhhdmUganVzdCBtaXhlZCB0aGUgdHdvIHBh
dGhzLg0KDQpGYWJpZW4NCg0KDQoNCk9uIDAyLzEyLzIwMTkgMTo0MCBQTSwgTWFyYyBaeW5naWVy
IHdyb3RlOg0KPiBPbiAyMDE5LTEyLTAyIDEyOjI5LCBNYXJjIFp5bmdpZXIgd3JvdGU6DQo+PiBP
biAyMDE5LTExLTI4IDA5OjA0LCBEYW9kZSBIdWFuZyB3cm90ZToNCj4+PiBTaW5jZSBkZXZtXyBh
bGxvY2F0ZWQgZGF0YSBjYW4gYmUgYXV0b21haXRjYWxseSByZWxlYXNlZCwgaXQncyBubw0KPj4+
IG5lZWQgdG8gZnJlZSBpdCBhcHBhcmVudGx5LCBqdXN0IHJlbW92ZSBpdC4NCj4+Pg0KPj4+IEZp
eGVzOiBjZmJmOWU0OTcwOTQgKCJpcnFjaGlwL3N0bTMyOiBVc2UgYSBwbGF0Zm9ybSBkcml2ZXIg
Zm9yDQo+Pj4gc3RtMzJtcDEtZXh0aSBkZXZpY2UiKQ0KPj4+IFNpZ25lZC1vZmYtYnk6IERhb2Rl
IEh1YW5nIDxodWFuZ2Rhb2RlQGhpc2lsaWNvbi5jb20+DQo+Pj4gLS0tDQo+Pj4gwqBkcml2ZXJz
L2lycWNoaXAvaXJxLXN0bTMyLWV4dGkuYyB8IDIgLS0NCj4+PiDCoDEgZmlsZSBjaGFuZ2VkLCAy
IGRlbGV0aW9ucygtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaXJxY2hpcC9pcnEt
c3RtMzItZXh0aS5jDQo+Pj4gYi9kcml2ZXJzL2lycWNoaXAvaXJxLXN0bTMyLWV4dGkuYw0KPj4+
IGluZGV4IGUwMGYyZmEuLjQ2ZWMwYWYgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9pcnFjaGlw
L2lycS1zdG0zMi1leHRpLmMNCj4+PiArKysgYi9kcml2ZXJzL2lycWNoaXAvaXJxLXN0bTMyLWV4
dGkuYw0KPj4+IEBAIC03NzksOCArNzc5LDYgQEAgc3RhdGljIGludCBfX2luaXQgc3RtMzJfZXh0
aV9pbml0KGNvbnN0IHN0cnVjdA0KPj4+IHN0bTMyX2V4dGlfZHJ2X2RhdGEgKmRydl9kYXRhLA0K
Pj4+IMKgwqDCoMKgIGlycV9kb21haW5fcmVtb3ZlKGRvbWFpbik7DQo+Pj4gwqBvdXRfdW5tYXA6
DQo+Pj4gwqDCoMKgwqAgaW91bm1hcChob3N0X2RhdGEtPmJhc2UpOw0KPj4+IC3CoMKgwqAga2Zy
ZWUoaG9zdF9kYXRhLT5jaGlwc19kYXRhKTsNCj4+PiAtwqDCoMKgIGtmcmVlKGhvc3RfZGF0YSk7
DQo+Pj4gwqDCoMKgwqAgcmV0dXJuIHJldDsNCj4+PiDCoH0NCj4+DQo+PiBBcHBsaWVkLCB0aGFu
a3MuDQo+DQo+IFNjcmF0Y2ggdGhhdC4gVGhpcyBwYXRjaCBpcyBqdXN0IHdyb25nLCBhbmQganVz
dCByZWFkaW5nIHRoZSBjb2RlDQo+IG1ha2VzIGl0IG9idmlvdXMuIHN0bTMyX2V4dGlfaW5pdCgp
IGlzIG9ubHkgY2FsbGVkIG9uIHBhdGhzDQo+IHRoYXQgYWxsb2NhdGUgdGhlIG1lbW9yeSB3aXRo
IGttYWxsb2MuDQo+DQo+IENsZWFybHkgeW91IGhhdmVuJ3QgdHJpZWQgdG8gdW5kZXJzdGFuZCB3
aGF0IGlzIGdvaW5nIG9uLg0KPg0KPiDCoMKgwqDCoMKgwqDCoCBNLgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
