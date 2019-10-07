Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D293CEBFC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 20:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D1e7NLcsc5uhIJ5++F5Sj/DqDODCDFI8ZPywKxK9ZcA=; b=dqsbXbQjikIKNIfq3DSoRqyOt
	cBEtXGRkIdPPX1Gh8yjA1qA5yLQ13YqbwdzRt+NnV0k8yry+B5tYThsMYkpp/XAlaAJ9nfJnRMQ/h
	iAu4NrvdKUvaqs/PtcqoWREsV4ZSQnmpDoXD/WCfIsMNqSH+fQc0FUbErsCLgNeXzf/KY5v+tX7/W
	OdBHSut8F2bdKNLwWvMybi2ppBqZAb9yHmJnsLia41RGxBuvJ+bvtpCS6d/d/LGY92RgL6atyAcuP
	CjwQgIG3hjgcrh1ciOj3GbzfuK0TuZHAtbmt4QXuSleW1B5mcQcPnyYJvA3VlcYm3mIN5w9euEquz
	v7+6THPZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHXpX-0000jl-Ca; Mon, 07 Oct 2019 18:33:59 +0000
Received: from mx.0dd.nl ([2a04:52c0:101:921::25])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHXmB-0006DU-5Y; Mon, 07 Oct 2019 18:30:36 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 9DE365FBBE;
 Mon,  7 Oct 2019 20:30:28 +0200 (CEST)
Authentication-Results: mx.0dd.nl;
 dkim=pass (2048-bit key) header.d=vdorst.com header.i=@vdorst.com
 header.b="mm8Yuqtx"; dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id 6BE083BE06;
 Mon,  7 Oct 2019 20:30:28 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com 6BE083BE06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1570473028;
 bh=oeUXtc8+vJUoOsszOZiNMTAuDgvF7gVaUUppHe+ivDs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mm8YuqtxOrunMTWQvqae1DMbOjOq5dOxsJMqYnJJKWaI5MWLaBA9W95gRc+IzvxAB
 VPV0/5ViKt+5mrvD/UmWsWZRXWG02J1D/1T8YrUl2pjpH8G07AMOkaYEKrk63/hnKn
 kG69zGZnI79LTFLHhWOT07W+eBytmiWFvPcCa+8WYf7/KCrYlvLvSkPKxvZNP4C5nq
 6vsPF++aHxIk888XzyvcVXFVKNJfe7XfarD+0WG8SC9SoA4tc0ZouCV8XAHhsFJajG
 AQR4d4AievSJPr03oIQHeajuYJMG1b+vuVXjAdeHWWnRH69aVDQmeYueLGZglbL9RG
 kDwRLx6+4SdLQ==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Mon, 07 Oct 2019 18:30:28 +0000
Date: Mon, 07 Oct 2019 18:30:28 +0000
Message-ID: <20191007183028.Horde.dCYJA3Xp9mBh_Bs9Ixa7Sh0@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: MarkLee <Mark-MC.Lee@mediatek.com>
Subject: Re: [PATCH net,v2 2/2] arm: dts: mediatek: Fix mt7629 dts to
 reflect the latest dt-binding
References: <20191007070844.14212-1-Mark-MC.Lee@mediatek.com>
 <20191007070844.14212-3-Mark-MC.Lee@mediatek.com>
In-Reply-To: <20191007070844.14212-3-Mark-MC.Lee@mediatek.com>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_113031_497274_DB684460 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Nelson Chang <nelson.chang@mediatek.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UXVvdGluZyBNYXJrTGVlIDxNYXJrLU1DLkxlZUBtZWRpYXRlay5jb20+OgoKPiAqIFJlbW92ZXMg
bWVkaWF0ZWsscGh5c3BlZWQgcHJvcGVydHkgZnJvbSBkdHNpIHRoYXQgaXMgdXNlbGVzcyBpbiBQ
SFlMSU5LCj4gKiBVc2UgdGhlIGZpeGVkLWxpbmsgcHJvcGVydHkgc3BlZWQgPSA8MjUwMD4gdG8g
c2V0IHRoZSBwaHkgaW4gMi41R2JpdC4KPiAqIFNldCBnbWFjMSB0byBnbWlpIG1vZGUgdGhhdCBj
b25uZWN0IHRvIGEgaW50ZXJuYWwgZ3BoeQo+Cj4gU2lnbmVkLW9mZi1ieTogTWFya0xlZSA8TWFy
ay1NQy5MZWVAbWVkaWF0ZWsuY29tPgo+IC0tCj4gdjEtPnYyOgo+ICogU0dNSUkgcG9ydCBvbmx5
IHN1cHBvcnQgQkFTRS1YIGF0IDIuNUdiaXQuCj4gLS0tCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL210
NzYyOS1yZmIuZHRzIHwgMTMgKysrKysrKysrKysrLQo+ICBhcmNoL2FybS9ib290L2R0cy9tdDc2
MjkuZHRzaSAgICB8ICAyIC0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9tdDc2Mjkt
cmZiLmR0cyAgCj4gYi9hcmNoL2FybS9ib290L2R0cy9tdDc2MjktcmZiLmR0cwo+IGluZGV4IDM2
MjFiN2QyYjIyYS4uOTk4MGMxMGM2ZTI5IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L210NzYyOS1yZmIuZHRzCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvbXQ3NjI5LXJmYi5kdHMK
PiBAQCAtNjYsOSArNjYsMjEgQEAKPiAgCXBpbmN0cmwtMSA9IDwmZXBoeV9sZWRzX3BpbnM+Owo+
ICAJc3RhdHVzID0gIm9rYXkiOwo+Cj4gKwlnbWFjMDogbWFjQDAgewo+ICsJCWNvbXBhdGlibGUg
PSAibWVkaWF0ZWssZXRoLW1hYyI7Cj4gKwkJcmVnID0gPDA+Owo+ICsJCXBoeS1tb2RlID0gIjI1
MDBiYXNlLXgiOwo+ICsJCWZpeGVkLWxpbmsgewo+ICsJCQlzcGVlZCA9IDwyNTAwPjsKPiArCQkJ
ZnVsbC1kdXBsZXg7Cj4gKwkJCXBhdXNlOwo+ICsJCX07Cj4gKwl9Owo+ICsKPiAgCWdtYWMxOiBt
YWNAMSB7Cj4gIAkJY29tcGF0aWJsZSA9ICJtZWRpYXRlayxldGgtbWFjIjsKPiAgCQlyZWcgPSA8
MT47Cj4gKwkJcGh5LW1vZGUgPSAiZ21paSI7Cj4gIAkJcGh5LWhhbmRsZSA9IDwmcGh5MD47Cj4g
IAl9Owo+Cj4gQEAgLTc4LDcgKzkwLDYgQEAKPgo+ICAJCXBoeTA6IGV0aGVybmV0LXBoeUAwIHsK
PiAgCQkJcmVnID0gPDA+Owo+IC0JCQlwaHktbW9kZSA9ICJnbWlpIjsKPiAgCQl9Owo+ICAJfTsK
PiAgfTsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvbXQ3NjI5LmR0c2kgYi9hcmNo
L2FybS9ib290L2R0cy9tdDc2MjkuZHRzaQo+IGluZGV4IDk2MDhiYzJjY2IzZi4uODY3Yjg4MTAz
YjlkIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL210NzYyOS5kdHNpCj4gKysrIGIv
YXJjaC9hcm0vYm9vdC9kdHMvbXQ3NjI5LmR0c2kKPiBAQCAtNDY4LDE0ICs0NjgsMTIgQEAKPiAg
CQkJY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDc2Mjktc2dtaWlzeXMiLCAic3lzY29uIjsKPiAg
CQkJcmVnID0gPDB4MWIxMjgwMDAgMHgzMDAwPjsKPiAgCQkJI2Nsb2NrLWNlbGxzID0gPDE+Owo+
IC0JCQltZWRpYXRlayxwaHlzcGVlZCA9ICIyNTAwIjsKPiAgCQl9Owo+Cj4gIAkJc2dtaWlzeXMx
OiBzeXNjb25AMWIxMzAwMDAgewo+ICAJCQljb21wYXRpYmxlID0gIm1lZGlhdGVrLG10NzYyOS1z
Z21paXN5cyIsICJzeXNjb24iOwo+ICAJCQlyZWcgPSA8MHgxYjEzMDAwMCAweDMwMDA+Owo+ICAJ
CQkjY2xvY2stY2VsbHMgPSA8MT47Cj4gLQkJCW1lZGlhdGVrLHBoeXNwZWVkID0gIjI1MDAiOwo+
ICAJCX07Cj4gIAl9Owo+ICB9Owo+IC0tCj4gMi4xNy4xCgpSZXZpZXdlZC1ieTogUmVuw6kgdmFu
IERvcnN0IDxvcGVuc291cmNlQHZkb3JzdC5jb20+CgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
