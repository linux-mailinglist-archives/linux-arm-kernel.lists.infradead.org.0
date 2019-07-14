Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DFD67FDB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jul 2019 17:33:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlp5CGwLvOoS3DQMkI+ZJHrF7Mta0wByObDedhAcbYQ=; b=PCEHx5VeVajAJI
	vbSlnBfp5og5M4hAP+T5LEnAMYbAncQA/7LB8qpRUpCv8b8ZuHvDNBxkqtpWmxv3nNLxup/g9Zv07
	cIFoirvPOk+qzeay4iFwkLbgpFL6F3TTDpGR8FjACVcySn7kEJ9C1VHpTvKG7H+zz79K9S4/QRxU1
	uYPMcElWM2WOtlmj8KXzi7c1W242qBYTcVBEeUmOvOcKqCJl5sPsh5CcoVvTY/FZb10/xuZeWAEcm
	IKShKzFk2EghuSq2a0+RfuRaaH+p7Jaq7zGJFtv51FYcEp21zU7oHgiNxVa5D5pVSiKCIIlxSuPQC
	//qpelGUz63y70iV2uVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmgUn-0003B6-6w; Sun, 14 Jul 2019 15:33:01 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmgUa-0003AN-8H
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jul 2019 15:32:50 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6EFVG4u028912; Sun, 14 Jul 2019 17:32:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=7EkE4ClqcnmG9AK4GgE4mRIrx94dxW03xdzea4KOY0A=;
 b=Lp8WagODEfVY0Ihg5xT94mO0pyML9Trh6glVz9IkM7+RHd6Z7f3VjqXUvlZiutFkCOch
 jEg0pK8UvfAaRLcfd7gkQ4Tt31ma2p18sxpBFOj8UopLzJYxWmOa9ftBRjp9IyNlLyvW
 cOC2kEIXprJskO7u90NsTfG300OTAPp/aatwyE3+scc96937/ZfuizKP3V/wnL/cK7rp
 D7QFqK6hbbkNKQBxjbGxAGLQM6MqA6MRGoHOp8fnjAUSqg7Y9SuXb9RjMs2cXAer4Mz+
 526XNCwVYtsQvKuMlZvL6phY5uKx2BCxC1xPS9A5HUgiFkv4GaCF8/ZPRWLn8fGZYyQ5 1w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2tq4e8gp8x-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Sun, 14 Jul 2019 17:32:37 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8213031;
 Sun, 14 Jul 2019 15:32:34 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5704D2CDE;
 Sun, 14 Jul 2019 15:32:34 +0000 (GMT)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sun, 14 Jul
 2019 17:32:33 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Sun, 14 Jul 2019 17:32:34 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Jonathan Cameron <jic23@kernel.org>, William Breathitt Gray
 <vilhelm.gray@gmail.com>
Subject: Re: [PATCH] IIO: stm32: Remove quadrature related functions from
 trigger driver
Thread-Topic: [PATCH] IIO: stm32: Remove quadrature related functions from
 trigger driver
Thread-Index: AQHVBLUCz+/gAEZUoUqVHnsxvwgdIqbFkt6AgAAGAICAAAEVAIAEk2yAgABaZAA=
Date: Sun, 14 Jul 2019 15:32:33 +0000
Message-ID: <08b3f84e-cee4-4fbe-031d-721aa9dc53d4@st.com>
References: <20190507091224.17781-1-benjamin.gaignard@st.com>
 <20190711115059.GA7778@icarus>
 <CA+M3ks42Whd=QVQ-4==n5bRJKEwYpQtRHs=gBGEZ_Hr=_8YU1g@mail.gmail.com>
 <20190711121620.GA11661@icarus> <20190714110901.752643ae@archlinux>
In-Reply-To: <20190714110901.752643ae@archlinux>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <AD430700EEE2CC40834D63B2834723B7@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-14_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_083248_749889_9F6DF81C 
X-CRM114-Status: GOOD (  18.05  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpPbiA3LzE0LzE5IDEyOjA5IFBNLCBKb25hdGhhbiBDYW1lcm9uIHdyb3RlOg0KPiBPbiBUaHUs
IDExIEp1bCAyMDE5IDIxOjE2OjIwICswOTAwDQo+IFdpbGxpYW0gQnJlYXRoaXR0IEdyYXkgPHZp
bGhlbG0uZ3JheUBnbWFpbC5jb20+IHdyb3RlOg0KPg0KPj4gT24gVGh1LCBKdWwgMTEsIDIwMTkg
YXQgMDI6MTI6MjdQTSArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6DQo+Pj4gTGUgamV1
LiAxMSBqdWlsLiAyMDE5IMOgIDEzOjUxLCBXaWxsaWFtIEJyZWF0aGl0dCBHcmF5DQo+Pj4gPHZp
bGhlbG0uZ3JheUBnbWFpbC5jb20+IGEgw6ljcml0IDoNCj4+Pj4gT24gVHVlLCBNYXkgMDcsIDIw
MTkgYXQgMTE6MTI6MjRBTSArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6DQo+Pj4+PiBR
dWFkcmF0dXJlIGZlYXR1cmUgaXMgbm93IGhvc3RlZCBvbiBpdCBvd24gZnJhbWV3b3JrLg0KPj4+
Pj4gUmVtb3ZlIHF1YWRyYXR1cmUgcmVsYXRlZCBjb2RlIGZyb20gc3RtMzItdHJpZ2dlciBkcml2
ZXIgdG8gYXZvaWQNCj4+Pj4+IGNvZGUgZHVwbGljYXRpb24gYW5kIHNpbXBsaWZ5IHRoZSBBQkku
DQo+Pj4+Pg0KPj4+Pj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWlu
LmdhaWduYXJkQHN0LmNvbT4NCj4+Pj4gV2hhdCBpcyB0aGUgc3RhdHVzIG9mIHRoaXMgcGF0Y2g/
IEFyZSB0aGVyZSBhbnkgb2JqZWN0aW9ucyBjdXJyZW50bHkgZm9yDQo+Pj4+IGl0cyBpbmNsdXNp
b24/DQo+Pj4gWW91IHdlcmUgdGhlIG9ubHkgb25lIGFza2luZyBmb3IgbW9yZSBkZXRhaWxzIGFi
b3V0IGl0IDotKQ0KPj4+IElmIHlvdSBhZ3JlZSBJIHRoaW5rIHRoYXQgSm9uYXRoYW4gY2FuIG1l
cmdlIGl0Lg0KPj4+DQo+Pj4gQmVuamFtaW4NCj4+Pj4gV2lsbGlhbSBCcmVhdGhpdHQgR3JheQ0K
Pj4+Pg0KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xw0KPj4+PiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdA0KPj4+PiBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4+Pj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsDQo+PiBZZXMsIEpvbmF0aGFuIHBsZWFz
ZSBtZXJnZSB0aGlzIGlmIHlvdSBoYXZlIG5vIG9iamVjdGlvbnMsIEkgaGFkbid0DQo+PiByZWFs
aXplZCBJIHdhcyBkZWxheWluZyBpdC4NCj4+DQo+PiBUaGFuayB5b3UsDQo+Pg0KPj4gV2lsbGlh
bSBCcmVhdGhpdHQgR3JheQ0KPiBPbmUgbGFzdCB0aGluZy4uLiAgVGhpcyBzZWVtcyB0byBiZSBh
IHVzZXJzcGFjZSBBQkkgY2hhbmdlLiAgV2hhdA0KPiBhcmUgb3VyIHBvdGVudGlhbCBpc3N1ZXMg
d2l0aCB1c2VycyBvZiB0aGlzIEFCST8NCj4NCj4gSXQncyBub3QgdGhhdCBjb3N0bHkgdG8ga2Vl
cCB0aGUgY29kZSwgdGhvdWdoIGRyb3BwaW5nIHRoZSBkb2NzIG9yDQo+IHB1dHRpbmcgYSBkZXBy
ZWNpYXRlZCBub3RlIGluIHRoZW0gaXMgcHJvYmFibHkgYSBnb29kIGlkZWEuICBIZW5jZQ0KPiBJ
J20gbm90IHRvdGFsbHkgY29udmluY2VkIHRoZSByaXNrIG9mIGEgcmVncmVzc2lvbiBpcyB3b3J0
aCBpdC4NCg0KQXMgZmFyIEkga25vdyBub2JvZHkgdXNlIHRoaXMgaW50ZXJmYWNlIHlldCBmb3Ig
bWUgdGhlcmUgaXMgbm8gcmlzayB0byANCnJlbW92ZSB0aGlzIGNvZGUuDQoNCkJlbmphbWluDQoN
Cj4NCj4gSWYgd2UgdGhpbmsgaXQncyB0aGUgc29ydCBvZiBjaGFuZ2Ugbm8gb25lIHdpbGwgbm90
aWNlLCB0aGVuDQo+IGZhaXIgZW5vdWdoIHdlJ2xsIGdpdmUgaXQgYSBnbyBhbmQgY3Jvc3Mgb3Vy
IGZpbmdlcnMuDQo+DQo+IFRoYW5rcywNCj4NCj4gSm9uYXRoYW4NCj4NCj4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
