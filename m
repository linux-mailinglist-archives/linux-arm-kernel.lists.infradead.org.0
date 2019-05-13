Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483441B24B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 11:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TEqSnnjBJLcjXDlsuEDslF0BPfJ+p6X4pI6csn8rWds=; b=gPnNXBTLhYfPOc
	PYymD1k9P7fIywGT6u1tIjg0ePyHC0TOPxOqXNRBgL2cN4ZlBTq0N5N4xFWq3MKsWWZf47tkENgH3
	Tycu+z8P4YDOleIGN2qlmMkXz6Dy77nCrTU6p9R+S1HYQx7pYfzMnjyHGvmGAoYQwHSWe0NMNwuCk
	babiu1s7AYx+NvVqsZM6Sv4KK8tPJyZd5/pBynWHCL0He0jan2ahh8zc57ZpC26mJhXkgdYh+Zsqw
	SesPw+IV/0yKaXjaJFiuL/r3Lavrq07NR+q9wAg/9LH93oy2UbKIDdQ/xlclLo+fVrIO8Yjrsg00v
	rxnTc5on5Pysx/kV6G9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ6vw-0000dR-Nw; Mon, 13 May 2019 09:07:44 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ6vo-0000cY-19
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 09:07:37 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4D92ULC008574; Mon, 13 May 2019 11:07:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=6oiqA8T+mnKQvbNWYLWPTsV6nFYs+iYkXtXuj8wduJA=;
 b=bL/ofrGYbBQtinEd3E54RDqD7WMSd65lpyuYYdXN4Ot6jm+kb7RsnFesDdxg44x7WUu4
 JK0WxLoa6DvV4nt9YtWkZDyo+4efixHV1/vC/VF5kaM/LaD9DhKoyri13JoJ/JcDyZKj
 m0RFC+hGHq0iSGauddBUnxDJfaxk/8kEUl3Rc9Ww3igGdzoEnMENKMo9FDknNkZg0tv2
 eFkbvB7jwsch7UMecRBr6lZjiXJMHuKKKoIiQ3bCMYjdg4loKti/n9Ra9BcPmuYihPyl
 zLWp15Cv8kA9AVS7QN0fAzFsgSpDUruWXoDbHLxjq9pR8TqqzA664I6Ms7nWBbxdcJK8 2w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sdkuyhyt8-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 13 May 2019 11:07:29 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0B64A31;
 Mon, 13 May 2019 09:07:29 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D78911623;
 Mon, 13 May 2019 09:07:28 +0000 (GMT)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 13 May
 2019 11:07:28 +0200
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1347.000; Mon, 13 May 2019 11:07:28 +0200
From: Fabien DESSENNE <fabien.dessenne@st.com>
To: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Subject: Re: [PATCH] hwspinlock: stm32: implement the relax() ops
Thread-Topic: [PATCH] hwspinlock: stm32: implement the relax() ops
Thread-Index: AQHU1PxebOxSL1urhkiJOta3IjoEXqYBnh0AgGds9YA=
Date: Mon, 13 May 2019 09:07:28 +0000
Message-ID: <b05fff00-2dd7-75d7-e8fe-de004b0f20da@st.com>
References: <1551973336-23048-1-git-send-email-fabien.dessenne@st.com>
 <CA+M3ks6r_OWvit3OK0yqDDgfnVyyxPoo5aO2n9tRhhoS4=u4XQ@mail.gmail.com>
In-Reply-To: <CA+M3ks6r_OWvit3OK0yqDDgfnVyyxPoo5aO2n9tRhhoS4=u4XQ@mail.gmail.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <3014D1D5A3EB094197DF17DF3BAA24C2@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-13_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_020736_536676_A95042AD 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Fabien DESSENNE <fabien.dessenne@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkNCg0KDQpBbnkgZnVydGhlciBjb21tZW50cz8NCg0KDQpGYWJpZW4NCg0KT24gMDgvMDMvMjAx
OSAxOjQyIFBNLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToNCj4gTGUgamV1LiA3IG1hcnMgMjAx
OSDDoCAxNjo0MiwgRmFiaWVuIERlc3Nlbm5lIDxmYWJpZW4uZGVzc2VubmVAc3QuY29tPiBhIMOp
Y3JpdCA6DQo+PiBJbXBsZW1lbnQgdGhpcyBvcHRpb25hbCBvcHMsIGNhbGxlZCBieSBod3NwaW5s
b2NrIGNvcmUgd2hpbGUgc3Bpbm5pbmcgb24NCj4+IGEgbG9jaywgYmV0d2VlbiB0d28gc3VjY2Vz
c2l2ZSBpbnZvY2F0aW9ucyBvZiB0cnlsb2NrKCkuDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogRmFi
aWVuIERlc3Nlbm5lIDxmYWJpZW4uZGVzc2VubmVAc3QuY29tPg0KPiBSZXZpZXdlZC1ieTogQmVu
amFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQHN0LmNvbT4NCj4NCj4+IC0tLQ0KPj4g
ICBkcml2ZXJzL2h3c3BpbmxvY2svc3RtMzJfaHdzcGlubG9jay5jIHwgNyArKysrKysrDQo+PiAg
IDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9od3NwaW5sb2NrL3N0bTMyX2h3c3BpbmxvY2suYyBiL2RyaXZlcnMvaHdzcGlubG9jay9z
dG0zMl9od3NwaW5sb2NrLmMNCj4+IGluZGV4IDQ0MTgzOTIuLmM4ZWFjZjQgMTAwNjQ0DQo+PiAt
LS0gYS9kcml2ZXJzL2h3c3BpbmxvY2svc3RtMzJfaHdzcGlubG9jay5jDQo+PiArKysgYi9kcml2
ZXJzL2h3c3BpbmxvY2svc3RtMzJfaHdzcGlubG9jay5jDQo+PiBAQCAtNSw2ICs1LDcgQEANCj4+
ICAgICovDQo+Pg0KPj4gICAjaW5jbHVkZSA8bGludXgvY2xrLmg+DQo+PiArI2luY2x1ZGUgPGxp
bnV4L2RlbGF5Lmg+DQo+PiAgICNpbmNsdWRlIDxsaW51eC9od3NwaW5sb2NrLmg+DQo+PiAgICNp
bmNsdWRlIDxsaW51eC9pby5oPg0KPj4gICAjaW5jbHVkZSA8bGludXgva2VybmVsLmg+DQo+PiBA
QCAtNDIsOSArNDMsMTUgQEAgc3RhdGljIHZvaWQgc3RtMzJfaHdzcGlubG9ja191bmxvY2soc3Ry
dWN0IGh3c3BpbmxvY2sgKmxvY2spDQo+PiAgICAgICAgICB3cml0ZWwoU1RNMzJfTVVURVhfQ09S
RUlELCBsb2NrX2FkZHIpOw0KPj4gICB9DQo+Pg0KPj4gK3N0YXRpYyB2b2lkIHN0bTMyX2h3c3Bp
bmxvY2tfcmVsYXgoc3RydWN0IGh3c3BpbmxvY2sgKmxvY2spDQo+PiArew0KPj4gKyAgICAgICBu
ZGVsYXkoNTApOw0KPj4gK30NCj4+ICsNCj4+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBod3NwaW5s
b2NrX29wcyBzdG0zMl9od3NwaW5sb2NrX29wcyA9IHsNCj4+ICAgICAgICAgIC50cnlsb2NrICAg
ICAgICA9IHN0bTMyX2h3c3BpbmxvY2tfdHJ5bG9jaywNCj4+ICAgICAgICAgIC51bmxvY2sgICAg
ICAgICA9IHN0bTMyX2h3c3BpbmxvY2tfdW5sb2NrLA0KPj4gKyAgICAgICAucmVsYXggICAgICAg
ICAgPSBzdG0zMl9od3NwaW5sb2NrX3JlbGF4LA0KPj4gICB9Ow0KPj4NCj4+ICAgc3RhdGljIGlu
dCBzdG0zMl9od3NwaW5sb2NrX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQo+
PiAtLQ0KPj4gMi43LjQNCj4+DQo+Pg0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0DQo+PiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4+IGh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbA0KPg0KPgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
