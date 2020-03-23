Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4D318F195
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 10:18:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67QOjKjz3cA6GKD0wU97wC3jGkibfunyGlniJbRXgns=; b=MGob40LM2eyGTf
	NMdZUtUZ18L5is2nG3Yslsq008CL/EQEL0NhUOe8mtQEHgJDYTfoePHPIGydxnap2Lusg72eiRPTI
	dG+9Ij0meXQJmQ/ql4Q806Qyn8t9q9aeYOHMLmrR+wN1ypvuW0SqdFSP5fZ2jzWNal1BWwTU+BKwN
	6CrcBBHOjIPaQUoPlwLqK6ASNlHu/aSgzsqjUgLU/p0V8bNazEK71aPxSKVW7wC2QdGgL9J1oYn7W
	u0nKWCnSjmEdDCrhQXMTx77pvKWi+64Da/lUaeTlCsxzZa/3Bfe570EGB3JfVWL+DoolCXgfSoPcK
	r6oh3+tJfo6cIFQKhS6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJDj-0001ar-0n; Mon, 23 Mar 2020 09:18:07 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJDa-0001aF-SU
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 09:18:00 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02N97TuQ011197; Mon, 23 Mar 2020 10:17:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=UdIOJn9PEvaK3zLSkhSUlGSzzu66xRfXTNSMnBonJJ8=;
 b=G9nQPvqYGNjjIAjTmwr3YVxhCx8A2ltNxKCg7ZAmaZZtF9Ky8bWyWHeEHn8uWxhvuW2X
 p91Jp670TMCvF/olYo1aivTuVU86Bus509S290wo4hLJ7yNTJTcwohIh5pm43MGX9dvH
 HZ+t/fsc9fkgcZACwkNVUSJKWp4ywVIw/SdEY83COOoCjHKO7c8SNFnBpqT4WMafqzSW
 A8qtUl/CbrUy8x7oOZjwLemIA1ApTqgIQXiJaoA1R+rLV1Woyq9ImU35g+MrsoTHI1o3
 Jo8R/gn4yNt1e/bmO2pzIESa6IizIpdYCJxk0ae/n18c1kmka3Ou5pSBH8uHMe0gAu/v gg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw99592rh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 23 Mar 2020 10:17:53 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 660FB100034;
 Mon, 23 Mar 2020 10:17:49 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 57AE42AAA8D;
 Mon, 23 Mar 2020 10:17:49 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 23 Mar
 2020 10:17:48 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Mon, 23 Mar 2020 10:17:48 +0100
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Alain Volmat <avolmat@me.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, 
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dts: arm: stih407-family: remove duplicated rng nodes
Thread-Topic: [PATCH] dts: arm: stih407-family: remove duplicated rng nodes
Thread-Index: AQHWAGU6HT4ybsc2/E+ksa70VtGSzKhV1j6A
Date: Mon, 23 Mar 2020 09:17:48 +0000
Message-ID: <6f1c708c-f415-5ed0-d39d-327737042507@st.com>
References: <20200322161616.19111-1-avolmat@me.com>
In-Reply-To: <20200322161616.19111-1-avolmat@me.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <65323D67C51D7046B2EE139A7B779FD7@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-23_02:2020-03-21,
 2020-03-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_021759_220036_F0AFA2B0 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWxhaW7CoMKgDQoNCk9uIDMvMjIvMjAgNToxNiBQTSwgQWxhaW4gVm9sbWF0IHdyb3RlOg0K
PiB0aGUgMiBybmcgbm9kZXMgYXJlIGR1cGxpY2F0ZWQgd2l0aGluIHRoZSBzdGloNDA3LWZhbWls
eS5kdHNpDQo+DQo+IFNpZ25lZC1vZmYtYnk6IEFsYWluIFZvbG1hdCA8YXZvbG1hdEBtZS5jb20+
DQo+IC0tLQ0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvc3RpaDQwNy1mYW1pbHkuZHRzaSB8IDE0IC0t
LS0tLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTQgZGVsZXRpb25zKC0pDQo+DQo+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zdGloNDA3LWZhbWlseS5kdHNpIGIvYXJjaC9h
cm0vYm9vdC9kdHMvc3RpaDQwNy1mYW1pbHkuZHRzaQ0KPiBpbmRleCA3YzM2YzM3MjYwYTQuLjIz
YTE3NDZmM2JhYSAxMDA2NDQNCj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvc3RpaDQwNy1mYW1p
bHkuZHRzaQ0KPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9zdGloNDA3LWZhbWlseS5kdHNpDQo+
IEBAIC03NjcsMjAgKzc2Nyw2IEBADQo+ICAJCQkJIDwmY2xrX3NfYzBfZmxleGdlbiBDTEtfRVRI
X1BIWT47DQo+ICAJCX07DQo+ICANCj4gLQkJcm5nMTA6IHJuZ0A4YTg5MDAwIHsNCj4gLQkJCWNv
bXBhdGlibGUgICAgICA9ICJzdCxybmciOw0KPiAtCQkJcmVnCQk9IDwweDA4YTg5MDAwIDB4MTAw
MD47DQo+IC0JCQljbG9ja3MgICAgICAgICAgPSA8JmNsa19zeXNpbj47DQo+IC0JCQlzdGF0dXMJ
CT0gIm9rYXkiOw0KPiAtCQl9Ow0KPiAtDQo+IC0JCXJuZzExOiBybmdAOGE4YTAwMCB7DQo+IC0J
CQljb21wYXRpYmxlICAgICAgPSAic3Qscm5nIjsNCj4gLQkJCXJlZwkJPSA8MHgwOGE4YTAwMCAw
eDEwMDA+Ow0KPiAtCQkJY2xvY2tzICAgICAgICAgID0gPCZjbGtfc3lzaW4+Ow0KPiAtCQkJc3Rh
dHVzCQk9ICJva2F5IjsNCj4gLQkJfTsNCj4gLQ0KPiAgCQltYWlsYm94MDogbWFpbGJveEA4ZjAw
MDAwICB7DQo+ICAJCQljb21wYXRpYmxlCT0gInN0LHN0aWg0MDctbWFpbGJveCI7DQo+ICAJCQly
ZWcJCT0gPDB4OGYwMDAwMCAweDEwMDA+Ow0KDQoNClJldmlld2VkLWJ5OiBQYXRyaWNlIENob3Rh
cmQgPHBhdHJpY2UuY2hvdGFyZEBzdC5jb20+DQoNClRoYW5rcw0KDQpQYXRyaWNlDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
