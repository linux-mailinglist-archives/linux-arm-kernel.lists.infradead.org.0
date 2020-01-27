Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FA014A4C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 14:19:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tao9dicmBmUNlLgMFhwFbuxtdpvI68oNKfpzNLOlMy4=; b=EQLCkNwxEEZm3Td5VSpWsgNlk
	51hMEKva5p7ggej6cmy0S8dWnnqmukRPhyhBVaC+lgkryS28OL/JZfepARHTQBcMqyQLSec++5j6K
	zaTBTRCdavOCJ6IUanpCDgLjkYvsfxJwWgCZb+LCmzUXhIwxQGd2CoeT/Pur4gaUOXWrKqQuvDOth
	tOgb5QWnIGTEM/HcFsCA9ct0m8ttmzNhGBUsBo6MR8hgR5BO0uYnmzQ2CznYuLYBtBnkx9MDDXO/f
	Bikk140vUIqIrjE6suZFz0A01GHI98qVKVSugIrsxcmPX5mIdQkKmDvX9wW/9e+riSyvDOrLbNOW5
	Bio46gCMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw4IW-0006ey-TW; Mon, 27 Jan 2020 13:19:24 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw4IG-0006eK-DV
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 13:19:10 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00RDHwuC024998; Mon, 27 Jan 2020 14:19:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=5qdrnI3NdUz5Awdk75GVDbiFRKKXqvOc7odUVOh4+yY=;
 b=srl4XyI60dB/NBS10I6iEKb2StmvtRfvBUa5lCcEgrTx0JVM43W6olDcWWy3cyfpjTr4
 B2uUsHRONVJTOb2whL0AtqvkzVo3RIRuciH7cY5iagxNmwzZVEAoH9pM/cCuYd25rhON
 2zzasPC5kd6TDr7gpbVy5umdVNvzt4OxC7231HlNep7McHDePjwB3AmX3xikRLjCOygr
 ypjfbp/HI2ZpX1dmfZF0F7Dxa0fcIG91b7GmTWyq4r6kRJZx24tPbk8MViBJJupPb8si
 vrY/8PJcK/LvvF9jB2wyOIcvYbHDkFsM+Nr8NFWJCWg3f5e+BznogHFPEpNB33U2T1Cc DQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrc13123c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 27 Jan 2020 14:19:03 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2A54E10002A;
 Mon, 27 Jan 2020 14:19:03 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0FBEC2B1863;
 Mon, 27 Jan 2020 14:19:03 +0100 (CET)
Received: from lmecxl0923.lme.st.com (10.75.127.51) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 27 Jan
 2020 14:19:01 +0100
Subject: Re: [PATCH 6/9] mmc: mmci: sdmmc: add execute tuning with delay block
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <20200110134823.14882-1-ludovic.barre@st.com>
 <20200110134823.14882-7-ludovic.barre@st.com>
 <CAPDyKFq25C6W3df5LRsYAcV71rM0YYx9xd=isURKVkbCiN+fBw@mail.gmail.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <48b15042-88cc-29d1-63bb-6bfa277980b2@st.com>
Date: Mon, 27 Jan 2020 14:19:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFq25C6W3df5LRsYAcV71rM0YYx9xd=isURKVkbCiN+fBw@mail.gmail.com>
Content-Language: fr
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-27_02:2020-01-24,
 2020-01-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_051908_766667_5A9588B8 
X-CRM114-Status: GOOD (  22.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGkgVWxmCgpMZSAxLzI0LzIwIMOgIDI6MTAgUE0sIFVsZiBIYW5zc29uIGEgw6ljcml0wqA6Cj4g
T24gRnJpLCAxMCBKYW4gMjAyMCBhdCAxNDo0OSwgTHVkb3ZpYyBCYXJyZSA8bHVkb3ZpYy5iYXJy
ZUBzdC5jb20+IHdyb3RlOgo+Pgo+PiBUaGUgaGFyZHdhcmUgZGVsYXkgYmxvY2sgaXMgdXNlZCB0
byBhbGlnbiB0aGUgc2FtcGxpbmcgY2xvY2sgb24KPj4gdGhlIGRhdGEgcmVjZWl2ZWQgYnkgU0RN
TUMuIEl0IGlzIG1hbmRhdG9yeSBmb3IgU0RNTUMgdG8KPj4gc3VwcG9ydCB0aGUgU0RSMTA0IG1v
ZGUuIFRoZSBkZWxheSBibG9jayBpcyB1c2VkIHRvIGdlbmVyYXRlCj4+IGFuIG91dHB1dCBjbG9j
ayB3aGljaCBpcyBkZXBoYXNlZCBmcm9tIHRoZSBpbnB1dCBjbG9jay4KPj4gVGhlIHBoYXNlIG9m
IHRoZSBvdXRwdXQgY2xvY2sgbXVzdCBiZSBwcm9ncmFtbWVkIGJ5IHRoZSBleGVjdXRlCj4+IHR1
bmluZyBpbnRlcmZhY2UuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEx1ZG92aWMgQmFycmUgPGx1ZG92
aWMuYmFycmVAc3QuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL21tYy9ob3N0L21tY2lfc3RtMzJf
c2RtbWMuYyB8IDE0NyArKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+ICAgMSBmaWxlIGNo
YW5nZWQsIDE0NyBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9o
b3N0L21tY2lfc3RtMzJfc2RtbWMuYyBiL2RyaXZlcnMvbW1jL2hvc3QvbW1jaV9zdG0zMl9zZG1t
Yy5jCj4+IGluZGV4IGRmMDhmNjY2MjQzMS4uMTAwNTlmYTE5ZjRhIDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL21tYy9ob3N0L21tY2lfc3RtMzJfc2RtbWMuYwo+PiArKysgYi9kcml2ZXJzL21tYy9o
b3N0L21tY2lfc3RtMzJfc2RtbWMuYwo+PiBAQCAtMywxMCArMywxMyBAQAo+PiAgICAqIENvcHly
aWdodCAoQykgU1RNaWNyb2VsZWN0cm9uaWNzIDIwMTggLSBBbGwgUmlnaHRzIFJlc2VydmVkCj4+
ICAgICogQXV0aG9yOiBMdWRvdmljLmJhcnJlQHN0LmNvbSBmb3IgU1RNaWNyb2VsZWN0cm9uaWNz
Lgo+PiAgICAqLwo+PiArI2luY2x1ZGUgPGxpbnV4L2JpdGZpZWxkLmg+Cj4+ICAgI2luY2x1ZGUg
PGxpbnV4L2RlbGF5Lmg+Cj4+ICAgI2luY2x1ZGUgPGxpbnV4L2RtYS1tYXBwaW5nLmg+Cj4+ICsj
aW5jbHVkZSA8bGludXgvaW9wb2xsLmg+Cj4+ICAgI2luY2x1ZGUgPGxpbnV4L21tYy9ob3N0Lmg+
Cj4+ICAgI2luY2x1ZGUgPGxpbnV4L21tYy9jYXJkLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvb2Zf
YWRkcmVzcy5oPgo+PiAgICNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgo+PiAgICNpbmNsdWRlIDxs
aW51eC9zY2F0dGVybGlzdC5oPgo+PiAgICNpbmNsdWRlICJtbWNpLmgiCj4+IEBAIC0xNCw2ICsx
NywyMCBAQAo+PiAgICNkZWZpbmUgU0RNTUNfTExJX0JVRl9MRU4gICAgICBQQUdFX1NJWkUKPj4g
ICAjZGVmaW5lIFNETU1DX0lETUFfQlVSU1QgICAgICAgQklUKE1NQ0lfU1RNMzJfSURNQUJORFRf
U0hJRlQpCj4+Cj4+ICsjZGVmaW5lIERMWUJfQ1IgICAgICAgICAgICAgICAgICAgICAgICAweDAK
Pj4gKyNkZWZpbmUgRExZQl9DUl9ERU4gICAgICAgICAgICBCSVQoMCkKPj4gKyNkZWZpbmUgRExZ
Ql9DUl9TRU4gICAgICAgICAgICBCSVQoMSkKPj4gKwo+PiArI2RlZmluZSBETFlCX0NGR1IgICAg
ICAgICAgICAgIDB4NAo+PiArI2RlZmluZSBETFlCX0NGR1JfU0VMX01BU0sgICAgIEdFTk1BU0so
MywgMCkKPj4gKyNkZWZpbmUgRExZQl9DRkdSX1VOSVRfTUFTSyAgICBHRU5NQVNLKDE0LCA4KQo+
PiArI2RlZmluZSBETFlCX0NGR1JfTE5HX01BU0sgICAgIEdFTk1BU0soMjcsIDE2KQo+PiArI2Rl
ZmluZSBETFlCX0NGR1JfTE5HRiAgICAgICAgIEJJVCgzMSkKPj4gKwo+PiArI2RlZmluZSBETFlC
X05CX0RFTEFZICAgICAgICAgIDExCj4+ICsjZGVmaW5lIERMWUJfQ0ZHUl9TRUxfTUFYICAgICAg
KERMWUJfTkJfREVMQVkgKyAxKQo+PiArI2RlZmluZSBETFlCX0NGR1JfVU5JVF9NQVggICAgIDEy
Nwo+IAo+IFsuLi5dCj4gCj4+ICtzdGF0aWMgaW50IHNkbW1jX2RseWJfbG5nX3R1bmluZyhzdHJ1
Y3QgbW1jaV9ob3N0ICpob3N0KQo+PiArewo+PiArICAgICAgIHN0cnVjdCBzZG1tY19kbHliICpk
bHliID0gaG9zdC0+dmFyaWFudF9wcml2Owo+PiArICAgICAgIHUzMiBjZmdyOwo+PiArICAgICAg
IGludCBpLCBsbmcsIHJldDsKPj4gKwo+PiArICAgICAgIGZvciAoaSA9IDA7IGkgPD0gRExZQl9D
RkdSX1VOSVRfTUFYOyBpKyspIHsKPj4gKyAgICAgICAgICAgICAgIHNkbW1jX2RseWJfc2V0X2Nm
Z3IoZGx5YiwgaSwgRExZQl9DRkdSX1NFTF9NQVgsIHRydWUpOwo+PiArCj4+ICsgICAgICAgICAg
ICAgICByZXQgPSByZWFkbF9yZWxheGVkX3BvbGxfdGltZW91dChkbHliLT5iYXNlICsgRExZQl9D
RkdSLCBjZmdyLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgKGNmZ3IgJiBETFlCX0NGR1JfTE5HRiksCj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAxLCAxMDAwKTsKPiAKPiBJIHN1Z2dlc3QgeW91IGlu
dHJvZHVjZSBhIGRlZmluZSBmb3IgdGhpcyB0aW1lb3V0LCBpbiB0aGUgdG9wIG9mIHRoZSBmaWxl
LgoKT0sKCj4gCj4+ICsgICAgICAgICAgICAgICBpZiAocmV0KSB7Cj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgIGRldl93YXJuKG1tY19kZXYoaG9zdC0+bW1jKSwKPj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgImRlbGF5IGxpbmUgY2ZnIHRpbWVvdXQgdW5pdDolZCBjZmdyOiVk
XG4iLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpLCBjZmdyKTsKPj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4+ICsgICAgICAgICAgICAgICB9Cj4+ICsK
Pj4gKyAgICAgICAgICAgICAgIGxuZyA9IEZJRUxEX0dFVChETFlCX0NGR1JfTE5HX01BU0ssIGNm
Z3IpOwo+PiArICAgICAgICAgICAgICAgaWYgKGxuZyA8IEJJVChETFlCX05CX0RFTEFZKSAmJiBs
bmcgPiAwKQo+PiArICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPj4gKyAgICAgICB9Cj4+
ICsKPj4gKyAgICAgICBpZiAoaSA+IERMWUJfQ0ZHUl9VTklUX01BWCkKPj4gKyAgICAgICAgICAg
ICAgIHJldHVybiAtRUlOVkFMOwo+PiArCj4+ICsgICAgICAgZGx5Yi0+dW5pdCA9IGk7Cj4+ICsg
ICAgICAgZGx5Yi0+bWF4ID0gX19mbHMobG5nKTsKPj4gKwo+PiArICAgICAgIHJldHVybiAwOwo+
PiArfQo+PiArCj4+ICtzdGF0aWMgaW50IHNkbW1jX2RseWJfcGhhc2VfdHVuaW5nKHN0cnVjdCBt
bWNpX2hvc3QgKmhvc3QsIHUzMiBvcGNvZGUpCj4+ICt7Cj4+ICsgICAgICAgc3RydWN0IHNkbW1j
X2RseWIgKmRseWIgPSBob3N0LT52YXJpYW50X3ByaXY7Cj4+ICsgICAgICAgaW50IGN1cl9sZW4g
PSAwLCBtYXhfbGVuID0gMCwgZW5kX29mX2xlbiA9IDA7Cj4+ICsgICAgICAgaW50IHBoYXNlOwo+
PiArCj4+ICsgICAgICAgZm9yIChwaGFzZSA9IDA7IHBoYXNlIDw9IGRseWItPm1heDsgcGhhc2Ur
Kykgewo+PiArICAgICAgICAgICAgICAgc2RtbWNfZGx5Yl9zZXRfY2ZncihkbHliLCBkbHliLT51
bml0LCBwaGFzZSwgZmFsc2UpOwo+PiArCj4+ICsgICAgICAgICAgICAgICBpZiAobW1jX3NlbmRf
dHVuaW5nKGhvc3QtPm1tYywgb3Bjb2RlLCBOVUxMKSkgewo+PiArICAgICAgICAgICAgICAgICAg
ICAgICBjdXJfbGVuID0gMDsKPj4gKyAgICAgICAgICAgICAgIH0gZWxzZSB7Cj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGN1cl9sZW4rKzsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYg
KGN1cl9sZW4gPiBtYXhfbGVuKSB7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
bWF4X2xlbiA9IGN1cl9sZW47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW5k
X29mX2xlbiA9IHBoYXNlOwo+PiArICAgICAgICAgICAgICAgICAgICAgICB9Cj4+ICsgICAgICAg
ICAgICAgICB9Cj4+ICsgICAgICAgfQo+PiArCj4+ICsgICAgICAgaWYgKCFtYXhfbGVuKSB7Cj4+
ICsgICAgICAgICAgICAgICBkZXZfZXJyKG1tY19kZXYoaG9zdC0+bW1jKSwgIm5vIHR1bmluZyBw
b2ludCBmb3VuZFxuIik7Cj4+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPj4gKyAg
ICAgICB9Cj4+ICsKPj4gKyAgICAgICBwaGFzZSA9IGVuZF9vZl9sZW4gLSBtYXhfbGVuIC8gMjsK
Pj4gKyAgICAgICBzZG1tY19kbHliX3NldF9jZmdyKGRseWIsIGRseWItPnVuaXQsIHBoYXNlLCBm
YWxzZSk7Cj4+ICsKPj4gKyAgICAgICBkZXZfZGJnKG1tY19kZXYoaG9zdC0+bW1jKSwgInVuaXQ6
JWQgbWF4X2RseTolZCBwaGFzZTolZFxuIiwKPj4gKyAgICAgICAgICAgICAgIGRseWItPnVuaXQs
IGRseWItPm1heCwgcGhhc2UpOwo+PiArCj4+ICsgICAgICAgcmV0dXJuIDA7Cj4+ICt9Cj4+ICsK
Pj4gK3N0YXRpYyBpbnQgc2RtbWNfZXhlY3V0ZV90dW5pbmcoc3RydWN0IG1tY19ob3N0ICptbWMs
IHUzMiBvcGNvZGUpCj4+ICt7Cj4+ICsgICAgICAgc3RydWN0IG1tY2lfaG9zdCAqaG9zdCA9IG1t
Y19wcml2KG1tYyk7Cj4+ICsgICAgICAgc3RydWN0IHNkbW1jX2RseWIgKmRseWIgPSBob3N0LT52
YXJpYW50X3ByaXY7Cj4+ICsKPj4gKyAgICAgICBpZiAoIWRseWIgfHwgIWRseWItPmJhc2UpCj4+
ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPj4gKwo+PiArICAgICAgIGlmIChzZG1t
Y19kbHliX2xuZ190dW5pbmcoaG9zdCkpCj4+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZB
TDsKPj4gKwo+PiArICAgICAgIHJldHVybiBzZG1tY19kbHliX3BoYXNlX3R1bmluZyhob3N0LCBv
cGNvZGUpOwo+IAo+IFdoYXQgaGFwcGVucyB0byB0aGUgdHVuaW5nIHJlZ2lzdGVycyB3aGVuIHRo
ZSBjb250cm9sbGVyIGRldmljZQo+IGJlY29tZXMgcnVudGltZSBzdXNwZW5kZWQ/IFdvdWxkIGl0
IHBvc3NpYmxlIHRoYXQgdGhlIHZhbHVlcyBnZXRzIGxvc3QKPiBhbmQgdGhlbiB0aGV5IG5lZWQg
dG8gYmUgcmVzdG9yZWQgaW4gcnVudGltZSByZXN1bWU/Cgp3aGVuIHRoZSBkZXZpY2UgZ29lcyB0
byBydW50aW1lIHN1c3BlbmQ6Ci1UaGUgc2RtbWMgY2xvY2sgaXMgZGlzYWJsZWQgPT4gc2RtbWMg
JiBkbHliIHJlZ2lzdGVycyBhcmUgbm90IGFjY2Vzc2libGUuCi1UaGUgcG93ZXIgZG9tYWluIG9m
IHRoaXMgYmxvY2tzIGlzIG5vdCBvZmYsIHRoZSByZWdpc3RlciB2YWx1ZXMgYXJlIG5vdCAKbG9z
dC4KCk9uIHJ1bnRpbWUgcmVzdW1lIHRoZSBjbG9jayBpcyByZS1lbmFibGVkIGFuZCB0aGUgcmVn
aXN0ZXJzCmFyZSBhY2Nlc3NpYmxlIGFuZCB3aXRoIHJpZ2h0IHZhbHVlcwoKUmVnYXJkcwpMdWRv
Cgo+IAo+PiArfQo+PiArCj4+ICAgc3RhdGljIHN0cnVjdCBtbWNpX2hvc3Rfb3BzIHNkbW1jX3Zh
cmlhbnRfb3BzID0gewo+PiAgICAgICAgICAudmFsaWRhdGVfZGF0YSA9IHNkbW1jX2lkbWFfdmFs
aWRhdGVfZGF0YSwKPj4gICAgICAgICAgLnByZXBfZGF0YSA9IHNkbW1jX2lkbWFfcHJlcF9kYXRh
LAo+PiBAQCAtMzM4LDUgKzQ2OSwyMSBAQCBzdGF0aWMgc3RydWN0IG1tY2lfaG9zdF9vcHMgc2Rt
bWNfdmFyaWFudF9vcHMgPSB7Cj4+Cj4+ICAgdm9pZCBzZG1tY192YXJpYW50X2luaXQoc3RydWN0
IG1tY2lfaG9zdCAqaG9zdCkKPj4gICB7Cj4+ICsgICAgICAgc3RydWN0IGRldmljZV9ub2RlICpu
cCA9IGhvc3QtPm1tYy0+cGFyZW50LT5vZl9ub2RlOwo+PiArICAgICAgIHZvaWQgX19pb21lbSAq
YmFzZV9kbHliOwo+PiArICAgICAgIHN0cnVjdCBzZG1tY19kbHliICpkbHliOwo+PiArCj4+ICAg
ICAgICAgIGhvc3QtPm9wcyA9ICZzZG1tY192YXJpYW50X29wczsKPj4gKwo+PiArICAgICAgIGJh
c2VfZGx5YiA9IGRldm1fb2ZfaW9tYXAobW1jX2Rldihob3N0LT5tbWMpLCBucCwgMSwgTlVMTCk7
Cj4+ICsgICAgICAgaWYgKElTX0VSUihiYXNlX2RseWIpKQo+PiArICAgICAgICAgICAgICAgcmV0
dXJuOwo+PiArCj4+ICsgICAgICAgZGx5YiA9IGRldm1fa3phbGxvYyhtbWNfZGV2KGhvc3QtPm1t
YyksIHNpemVvZigqZGx5YiksIEdGUF9LRVJORUwpOwo+PiArICAgICAgIGlmICghZGx5YikKPj4g
KyAgICAgICAgICAgICAgIHJldHVybjsKPj4gKwo+PiArICAgICAgIGRseWItPmJhc2UgPSBiYXNl
X2RseWI7Cj4+ICsgICAgICAgaG9zdC0+dmFyaWFudF9wcml2ID0gZGx5YjsKPj4gKyAgICAgICBo
b3N0LT5tbWNfb3BzLT5leGVjdXRlX3R1bmluZyA9IHNkbW1jX2V4ZWN1dGVfdHVuaW5nOwo+PiAg
IH0KPj4gLS0KPj4gMi4xNy4xCj4+Cj4gCj4gS2luZCByZWdhcmRzCj4gVWZmZQo+IAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
