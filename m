Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A3C14CB8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 14:40:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20PogaJZKu+M/+f9OdLBm7YZgfVzEEjfA4czxAP9jlY=; b=qVC+g/WSowhAaO
	x+u8wnBpA2ZecZQt86bnLDx7ONWOBDdJraoZ5Iz99hpaNqbCNAoTVKv+HxgAEDV36Y/R1STVPK9EZ
	j/tIaLBDjru8h6HIXxG9M6u0gB6sojlUzLeixeoBrG6sEHw3ENy92HKlrF1mq7Uubxm41ux9NH4cg
	eNVexoi5JeMk3Sn8QO8Ge4U0iTji5eRwXCo+rdlIWfcawmGJhIeas4S7CYiBGVNFy0Yqpo4FTjjYp
	Bw1CMlnTrKflVFM2KsSIWIxjRkdLv4Tf+rJ9sZnddVz1TYtJifMiCUppoeKRgKxaZbXobDQynr/UE
	NB/ZxI4OZOkr8sSIytoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwnZy-0004Az-PR; Wed, 29 Jan 2020 13:40:26 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwnZp-0004Ac-E7
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 13:40:19 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00TDbPIJ020808; Wed, 29 Jan 2020 14:40:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=4SJ07WkQhCjDkgV5mpvt2QuKgcj7uzQOY4rqO06PZzk=;
 b=PE4JwyGP0he4GpKWOKdWgHJ6WFB67N9jFQnnqA75SdVALzXKRsg/cBE4PtROZN43yKSk
 kERGP0wue1sklKK+OjBOiWZs0t+Q3SFC7LGGR+JULyQP07pHns+jDXlEzKcGdmwrB5Fd
 8ztSSue0q3BahHw8pb3P/um+KnFGd85X83WvOUF3LzfeJNO+PZAAitFhjjMOPplQIQcN
 1mD/ED/AAuckokQvUo0SwRlEGBgZOLRxBjDrolZENMksDx4btogjnLFFe5PonAoxu6UV
 ry9RFf/2Gs859VCm+2Lk+fsxEWLFrbwvzwrg7RjGpq3lfIs6tAL3mdgN4UC53f+N7IN2 sQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrbpb3kek-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Jan 2020 14:40:08 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CF50910002A;
 Wed, 29 Jan 2020 14:40:02 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag7node1.st.com [10.75.127.19])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A77A82A96FE;
 Wed, 29 Jan 2020 14:40:02 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG7NODE1.st.com
 (10.75.127.19) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 29 Jan
 2020 14:40:02 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Wed, 29 Jan 2020 14:40:02 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Robin Murphy <robin.murphy@arm.com>, Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v2 0/7] Introduce bus firewall controller framework
Thread-Topic: [PATCH v2 0/7] Introduce bus firewall controller framework
Thread-Index: AQHV1fD3HkoxlN8gBkO/naZ6SuTotagANYcAgAAC24CAAAijAIAALxcAgAAhvgCAAQS1gA==
Date: Wed, 29 Jan 2020 13:40:01 +0000
Message-ID: <c4d5c46a-7f90-ff2b-9496-26102114c5e6@st.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128163628.GB30489@bogus> <7f54ec36-8022-a57a-c634-45257f4c6984@st.com>
 <20200128171639.GA36496@bogus> <26eb1fde-5408-43f0-ccba-f0c81e791f54@st.com>
 <6a6ba7ff-7ed9-e573-63ca-66fca609075b@arm.com>
In-Reply-To: <6a6ba7ff-7ed9-e573-63ca-66fca609075b@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <05F9A8BE92B24F46B47FB1CCF3D34DEF@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-29_03:2020-01-28,
 2020-01-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_054017_938016_BEB0EB12 
X-CRM114-Status: GOOD (  27.42  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, "robh@kernel.org" <robh@kernel.org>,
 Loic PALLARDY <loic.pallardy@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "broonie@kernel.org" <broonie@kernel.org>, "lkml@metux.net" <lkml@metux.net>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpPbiAxLzI4LzIwIDExOjA2IFBNLCBSb2JpbiBNdXJwaHkgd3JvdGU6DQo+IE9uIDIwMjAtMDEt
MjggODowNiBwbSwgQmVuamFtaW4gR0FJR05BUkQgd3JvdGU6DQo+Pg0KPj4gT24gMS8yOC8yMCA2
OjE3IFBNLCBTdWRlZXAgSG9sbGEgd3JvdGU6DQo+Pj4gT24gVHVlLCBKYW4gMjgsIDIwMjAgYXQg
MDQ6NDY6NDFQTSArMDAwMCwgQmVuamFtaW4gR0FJR05BUkQgd3JvdGU6DQo+Pj4+IE9uIDEvMjgv
MjAgNTozNiBQTSwgU3VkZWVwIEhvbGxhIHdyb3RlOg0KPj4+Pj4gT24gVHVlLCBKYW4gMjgsIDIw
MjAgYXQgMDQ6Mzc6NTlQTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6DQo+Pj4+Pj4g
QnVzIGZpcmV3YWxsIGZyYW1ld29yayBhaW1zIHRvIHByb3ZpZGUgYSBrZXJuZWwgQVBJIHRvIHNl
dCB0aGUgDQo+Pj4+Pj4gY29uZmlndXJhdGlvbg0KPj4+Pj4+IG9mIHRoZSBoYXJ3YXJlIGJsb2Nr
cyBpbiBjaGFyZ2Ugb2YgYnVzc2VzIGFjY2VzcyBjb250cm9sLg0KPj4+Pj4+DQo+Pj4+Pj4gRnJh
bWV3b3JrIGFyY2hpdGVjdHVyZSBpcyBpbnNwaXJhdGVkIGJ5IHBpbmN0cmwgZnJhbWV3b3JrOg0K
Pj4+Pj4+IC0gYSBkZWZhdWx0IGNvbmZpZ3VyYXRpb24gY291bGQgYmUgYXBwbGllZCBiZWZvcmUg
YmluZCB0aGUgZHJpdmVyLg0KPj4+Pj4+IMKgwqDCoMKgIElmIGEgY29uZmlndXJhdGlvbiBjb3Vs
ZCBub3QgYmUgYXBwbGllZCB0aGUgZHJpdmVyIGlzIG5vdCBiaW5kDQo+Pj4+Pj4gwqDCoMKgwqAg
dG8gYXZvaWQgZG9pbmcgYWNjZXNzZXMgb24gcHJvaGliaXRlZCByZWdpb25zLg0KPj4+Pj4+IC0g
Y29uZmlndXJhdGlvbnMgY291bGQgYmUgYXBsbGllZCBkeW5hbWljYWxseSBieSBkcml2ZXJzLg0K
Pj4+Pj4+IC0gZGV2aWNlIG5vZGUgcHJvdmlkZXMgdGhlIGJ1cyBmaXJld2FsbCBjb25maWd1cmF0
aW9ucy4NCj4+Pj4+Pg0KPj4+Pj4+IEFuIGV4YW1wbGUgb2YgYnVzIGZpcmV3YWxsIGNvbnRyb2xs
ZXIgaXMgU1RNMzIgRVRaUEMgaGFyZHdhcmUgYmxvY2sNCj4+Pj4+PiB3aGljaCBnb3QgMyBwb3Nz
aWJsZSBjb25maWd1cmF0aW9uczoNCj4+Pj4+PiAtIHRydXN0OiBoYXJkd2FyZSBibG9ja3MgYXJl
IG9ubHkgYWNjZXNzaWJsZSBieSBzb2Z0d2FyZSBydW5uaW5nIA0KPj4+Pj4+IG9uIHRydXN0DQo+
Pj4+Pj4gwqDCoMKgwqAgem9uZSAoaS5lIG9wLXRlZSBmaXJtd2FyZSkuDQo+Pj4+Pj4gLSBub24t
c2VjdXJlOiBoYXJkd2FyZSBibG9ja3MgYXJlIGFjY2Vzc2libGUgYnkgbm9uLXNlY3VyZSANCj4+
Pj4+PiBzb2Z0d2FyZSAoaS5lLg0KPj4+Pj4+IMKgwqDCoMKgIGxpbnV4IGtlcm5lbCkuDQo+Pj4+
Pj4gLSBjb3Byb2Nlc3NvcjogaGFyZHdhcmUgYmxvY2tzIGFyZSBvbmx5IGFjY2Vzc2libGUgYnkg
dGhlIA0KPj4+Pj4+IGNvcHJvY2Vzc29yLg0KPj4+Pj4+IFVwIHRvIDk0IGhhcmR3YXJlIGJsb2Nr
cyBvZiB0aGUgc29jIGNvdWxkIGJlIG1hbmFnZWQgYnkgRVRaUEMuDQo+Pj4+Pj4NCj4+Pj4+IC9t
ZSBjb25mdXNlZC4gSXMgRVRaUEMgYWNjZXNzaWJsZSBmcm9tIHRoZSBub24tc2VjdXJlIGtlcm5l
bCBzcGFjZSB0bw0KPj4+Pj4gYmVnaW4gd2l0aCA/IElmIHNvLCBpcyBpdCBhbGxvd2VkIHRvIGNv
bmZpZ3VyZSBoYXJkd2FyZSBibG9ja3MgYXMgDQo+Pj4+PiBzZWN1cmUNCj4+Pj4+IG9yIHRydXN0
ZWQgPyBJIGFtIGZhaWxpbmcgdG8gdW5kZXJzdGFuZCB0aGUgb3ZlcmFsbCBkZXNpZ24gb2YgYSAN
Cj4+Pj4+IHN5c3RlbQ0KPj4+Pj4gd2l0aCBFVFpQQyBjb250cm9sbGVyLg0KPj4+PiBOb24tc2Vj
dXJlIGtlcm5lbCBjb3VsZCByZWFkIHRoZSB2YWx1ZXMgc2V0IGluIEVUWlBDLCBpZiBpdCBkb2Vz
bid0IA0KPj4+PiBtYXRjaA0KPj4+PiB3aXRoIHdoYXQgaXMgcmVxdWlyZWQgYnkgdGhlIGRldmlj
ZSBub2RlIHRoZSBkcml2ZXIgd29uJ3QgYmUgcHJvYmVkLg0KPj4+Pg0KPj4+IE9LLCBidXQgSSB3
YXMgdW5kZXIgdGhlIGltcHJlc3Npb24gdGhhdCBpdCB3YXMgbWFkZSBjbGVhciB0aGF0IExpbnV4
IGlzDQo+Pj4gbm90IGZpcm13YXJlIHZhbGlkYXRpb24gc3VpdGUuIFRoZSBmaXJtd2FyZSBuZWVk
IHRvIGVuc3VyZSBhbGwgdGhlIA0KPj4+IGRldmljZXMNCj4+PiB0aGF0IGFyZSBub3QgYWNjZXNz
aWJsZSBpbiB0aGUgTGludXgga2VybmVsIGFyZSBtYXJrZWQgYXMgZGlzYWJsZWQgYW5kDQo+Pj4g
dGhpcyBuZWVkcyB0byBoYXBwZW4gYmVmb3JlIGVudGVyaW5nIHRoZSBrZXJuZWwuIFNvIGlmIHRo
aXMgaXMgd2hhdCANCj4+PiB0aGlzDQo+Pj4gcGF0Y2ggc2VyaWVzIGFjaGlldmVzLCB0aGVuIHRo
ZXJlIGlzIG5vIG5lZWQgZm9yIGl0LiBQbGVhc2Ugc3RvcCANCj4+PiBwdXJzdWluZw0KPj4+IHRo
aXMgYW55IGZ1cnRoZXIgb3IgcHJvdmlkZSBhbnkgb3RoZXIgcmVhc29ucyhpZiBhbnkpIHRvIGhh
dmUgaXQuIFVudGlsDQo+Pj4geW91IGhhdmUgb3RoZXIgcmVhc29ucywgTkFDSyBmb3IgdGhpcyBz
ZXJpZXMuDQo+Pg0KPj4gTm8gaXQgZG9lc24ndCBkaXNhYmxlIHRoZSBub2Rlcy4NCj4+DQo+PiBX
aGVuIHRoZSBmaXJtd2FyZSBkaXNhYmxlIGEgbm9kZSBiZWZvcmUgdGhlIGtlcm5lbCB0aGF0IG1l
YW5zIGl0IGNoYW5nZQ0KPj4NCj4+IHRoZSBEVEIgYW5kIHRoYXQgaXMgYSBwcm9ibGVtIHdoZW4g
eW91IHdhbnQgdG8gc2lnbiBpdC4gV2l0aCBteSBwcm9wb3NhbA0KPj4NCj4+IHRoZSBEVEIgcmVt
YWlucyB0aGUgc2FtZS4NCj4NCj4gPz8/DQo+DQo+IDovDQo+DQo+IFRoZSBEVEIgaXMgdXNlZCB0
byBwYXNzIHRoZSBrZXJuZWwgY29tbWFuZCBsaW5lLCBtZW1vcnkgcmVzZXJ2YXRpb25zLCANCj4g
cmFuZG9tIHNlZWRzLCBhbmQgYWxsIG1hbm5lciBvZiBvdGhlciB0aGluZ3MgZHluYW1pY2FsbHkg
Z2VuZXJhdGVkIGJ5IA0KPiBmaXJtd2FyZSBhdCBib290LXRpbWUuIEFwb2xvZ2llcyBmb3IgYmVp
bmcgYmx1bnQgYnV0IGlmICJjaGFuZ2luZyB0aGUgDQo+IERUQiIgaXMgY29uc2lkZXJlZCBhIHBy
b2JsZW0gdGhlbiBJIGNhbid0IGhlbHAgYnV0IHRoaW5rIHlvdSdyZSBkb2luZyANCj4gaXQgd3Jv
bmcuDQoNClllcyBidXQgSSB3b3VsZCBsaWtlIHRvIGxpbWl0IHRoZSBudW1iZXIgb2YgY2FzZXMg
d2hlcmUgYSBmaXJtd2FyZSBoYXMgDQp0byBjaGFuZ2UgdGhlIERUQi4NCg0KV2l0aCB0aGlzIHBy
b3Bvc2FsIG5vZGVzIHJlbWFpbiB0aGUgc2FtZSBhbmQgZW1iZWRkZWQgdGhlIGZpcmV3YWxsIA0K
Y29uZmlndXJhdGlvbihzKS4NCg0KVW50aWwgbm93IGZpcmV3YWxsIGNvbmZpZ3VyYXRpb24gaXMg
InN0YXRpYyIsIHRoZSBmaXJtd2FyZSBkaXNhYmxlIChvciANCnJlbW92ZSkgdGhlIG5vZGVzIG5v
dCBhY2Nlc3NpYmxlIGZyb20gTGludXguDQoNCklmIExpbnV4IGNhbiByZWx5IG9uIG5vZGUncyBm
aXJld2FsbCBpbmZvcm1hdGlvbiBpdCBjb3VsZCBhbGxvdyBzd2l0Y2ggDQpkeW5hbWljYWxseSBh
biBoYXJkd2FyZSBibG9jayBmcm9tIExpbnV4IHRvIGEgY29wcm9jZXNzb3IuDQoNCkZvciBleGFt
cGxlIExpbnV4IGNvdWxkIG1hbmFnZSB0aGUgZGlzcGxheSBwaXBlIGNvbmZpZ3VyYXRpb24gYW5k
IHdoZW4gDQpnb2luZyB0byBzdXNwZW5kIGhhbmRvdmVyIHRoZSBkaXNwbGF5IGhhcmR3YXJlIGJs
b2NrIHRvIGEgY29wcm9jZXNzb3IgaW4gDQpjaGFyZ2UgYSByZWZyZXNoaW5nIG9ubHkgc29tZSBw
aXhlbHMuDQoNCkJlbmphbWluDQoNCj4NCj4gUm9iaW4uCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
