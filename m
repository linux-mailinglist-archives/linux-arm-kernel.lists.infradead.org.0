Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA56D19E638
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 17:47:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlrBaO19FCj9dytSgC56qez4CSBBdl+TtABFhB/WWz4=; b=ajiBCbPySvOzLt
	lvMoJC4bAODLgGjL8JfhWnzrJDb8LI/3NvcoCFUU5A7mYYvMVZgkIqsH1RZ8MbSiqsn5+HmGX4jNw
	D5tKvRK/sFZEAF4qsTFbatKRV2xUYgOahQEaRXHsFRAK2cti7IS5ahPjDbNp90txgJd1SiahLe7Ub
	mefR3r0U55n0p0NKqPDFLRP7fpt4+Ke5sKIWxHomMvDUcB76lPQ1PSYDgFBSHxPbjK3yQFvLneP2J
	ZWGR04HL+U5qeizaOH3T/MTOf72dHPGKRMvoJTZwD9uLbb2elVEr0R85R9wYRJ5cwzkHwFwdmc2Nr
	+FVbusdLA9ad5Q44cqaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKl0f-0005IJ-QA; Sat, 04 Apr 2020 15:47:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKl0Y-0005Hn-9o; Sat, 04 Apr 2020 15:46:55 +0000
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
 [209.85.208.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0C9220787;
 Sat,  4 Apr 2020 15:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586015214;
 bh=WJRemwJCqzpDcI6pJ9JuFYK2/3qEZkXB/hThgp1+WDs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JmO/Vfwule7YlfedMUk0yMIkxxFIk36ZVfPzmmujhVE1MYQ5BkNLuSjR0x3466YVX
 CyFZlVgMrzNnlpdne2s0Mamh/wVfndPpFEJG7FpNx1c/VMPbPTqU2SL3oEkyda8MO3
 V1CcxEhS1uZ+eGOQuYhnc86uFNBh3gqOLcePHh+c=
Received: by mail-ed1-f50.google.com with SMTP id z65so13168777ede.0;
 Sat, 04 Apr 2020 08:46:53 -0700 (PDT)
X-Gm-Message-State: AGi0PuY8s/eAtcnm7ELmmfgeoSNA9NxmHUhaD15nRDFVOMp7OWlqcvxx
 GWPcR57zHkvO2Z0OIePCvHmDf7bD3JGL2RkZkQ==
X-Google-Smtp-Source: APiQypK7z+HsfAmBbW8fRL2j4biTCkMbLc7PDBmY54QJwJhjpBtAQh3RlWcMHGlQ9VeMeZHePyRCYJTqhyjeIPOpuk0=
X-Received: by 2002:a05:6402:335:: with SMTP id
 q21mr3140080edw.47.1586015212120; 
 Sat, 04 Apr 2020 08:46:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200331082725.81048-1-jitao.shi@mediatek.com>
 <20200331082725.81048-4-jitao.shi@mediatek.com>
In-Reply-To: <20200331082725.81048-4-jitao.shi@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sat, 4 Apr 2020 23:46:40 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9=uyfSYms_F=T8guvB9Bx9V=Pjo1TtmmfihMgSj1dt9Q@mail.gmail.com>
Message-ID: <CAAOTY_9=uyfSYms_F=T8guvB9Bx9V=Pjo1TtmmfihMgSj1dt9Q@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] drm/mediatek: add the mipitx driving control
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_084654_374108_523D27BD 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>, cawa.cheng@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEppdGFvOgoKSml0YW8gU2hpIDxqaXRhby5zaGlAbWVkaWF0ZWsuY29tPiDmlrwgMjAyMOW5
tDPmnIgzMeaXpSDpgLHkuowg5LiL5Y2INDoyOOWvq+mBk++8mgo+Cj4gQWRkIGEgcHJvcGVydHkg
aW4gZGV2aWNlIHRyZWUgdG8gY29udHJvbCB0aGUgZHJpdmluZyBieSBkaWZmZXJlbnQKPiBib2Fy
ZC4KClJldmlld2VkLWJ5OiBDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4K
Cj4KPiBSZXZpZXdlZC1ieTogTWF0dGhpYXMgQnJ1Z2dlciA8bWF0dGhpYXMuYmdnQGdtYWlsLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBKaXRhbyBTaGkgPGppdGFvLnNoaUBtZWRpYXRlay5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfbWlwaV90eC5jICAgICAgICB8IDE0
ICsrKysrKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfbWlwaV90eC5o
ICAgICAgICB8ICAxICsKPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19tdDgxODNfbWlw
aV90eC5jIHwgIDcgKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKykK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX21pcGlfdHguYyBi
L2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfbWlwaV90eC5jCj4gaW5kZXggZTRkMzQ0ODRl
Y2M4Li5lMzAxYWY2NDgwOWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19taXBpX3R4LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX21pcGlf
dHguYwo+IEBAIC0xMjUsNiArMTI1LDIwIEBAIHN0YXRpYyBpbnQgbXRrX21pcGlfdHhfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgICAgICAgICAgICAgICAgcmV0dXJuIHJl
dDsKPiAgICAgICAgIH0KPgo+ICsgICAgICAgcmV0ID0gb2ZfcHJvcGVydHlfcmVhZF91MzIoZGV2
LT5vZl9ub2RlLCAiZHJpdmUtc3RyZW5ndGgtbWljcm9hbXAiLAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgJm1pcGlfdHgtPm1pcGl0eF9kcml2ZSk7Cj4gKyAgICAgICAvKiBJ
ZiBjYW4ndCBnZXQgdGhlICJtaXBpX3R4LT5taXBpdHhfZHJpdmUiLCBzZXQgaXQgZGVmYXVsdCAw
eDggKi8KPiArICAgICAgIGlmIChyZXQgPCAwKQo+ICsgICAgICAgICAgICAgICBtaXBpX3R4LT5t
aXBpdHhfZHJpdmUgPSA0NjAwOwo+ICsKPiArICAgICAgIC8qIGNoZWNrIHRoZSBtaXBpdHhfZHJp
dmUgdmFsaWQgKi8KPiArICAgICAgIGlmIChtaXBpX3R4LT5taXBpdHhfZHJpdmUgPiA2MDAwIHx8
IG1pcGlfdHgtPm1pcGl0eF9kcml2ZSA8IDMwMDApIHsKPiArICAgICAgICAgICAgICAgZGV2X3dh
cm4oZGV2LCAiZHJpdmUtc3RyZW5ndGgtbWljcm9hbXAgaXMgaW52YWxpZCAlZCwgbm90IGluIDMw
MDAgfiA2MDAwXG4iLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICBtaXBpX3R4LT5taXBpdHhf
ZHJpdmUpOwo+ICsgICAgICAgICAgICAgICBtaXBpX3R4LT5taXBpdHhfZHJpdmUgPSBjbGFtcF92
YWwobWlwaV90eC0+bWlwaXR4X2RyaXZlLCAzMDAwLAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgNjAwMCk7Cj4gKyAgICAgICB9Cj4gKwo+ICAgICAg
ICAgcmVmX2Nsa19uYW1lID0gX19jbGtfZ2V0X25hbWUocmVmX2Nsayk7Cj4KPiAgICAgICAgIHJl
dCA9IG9mX3Byb3BlcnR5X3JlYWRfc3RyaW5nKGRldi0+b2Zfbm9kZSwgImNsb2NrLW91dHB1dC1u
YW1lcyIsCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfbWlwaV90
eC5oIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19taXBpX3R4LmgKPiBpbmRleCA0MTNm
MzVkODYyMTkuLmVlYTQ0MzI3ZmU5ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVk
aWF0ZWsvbXRrX21pcGlfdHguaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtf
bWlwaV90eC5oCj4gQEAgLTI3LDYgKzI3LDcgQEAgc3RydWN0IG10a19taXBpX3R4IHsKPiAgICAg
ICAgIHN0cnVjdCBkZXZpY2UgKmRldjsKPiAgICAgICAgIHZvaWQgX19pb21lbSAqcmVnczsKPiAg
ICAgICAgIHUzMiBkYXRhX3JhdGU7Cj4gKyAgICAgICB1MzIgbWlwaXR4X2RyaXZlOwo+ICAgICAg
ICAgY29uc3Qgc3RydWN0IG10a19taXBpdHhfZGF0YSAqZHJpdmVyX2RhdGE7Cj4gICAgICAgICBz
dHJ1Y3QgY2xrX2h3IHBsbF9odzsKPiAgICAgICAgIHN0cnVjdCBjbGsgKnBsbDsKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19tdDgxODNfbWlwaV90eC5jIGIvZHJp
dmVycy9ncHUvZHJtL21lZGlhdGVrL210a19tdDgxODNfbWlwaV90eC5jCj4gaW5kZXggOTFmMDhh
MzUxZmQwLi5lNGNjOTY3NzUwY2IgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19tdDgxODNfbWlwaV90eC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19tdDgxODNfbWlwaV90eC5jCj4gQEAgLTE3LDYgKzE3LDkgQEAKPiAgI2RlZmluZSBSR19E
U0lfQkdfQ09SRV9FTiAgICAgICAgICAgICAgQklUKDcpCj4gICNkZWZpbmUgUkdfRFNJX1BBRF9U
SUVMX1NFTCAgICAgICAgICAgIEJJVCg4KQo+Cj4gKyNkZWZpbmUgTUlQSVRYX1ZPTFRBR0VfU0VM
ICAgICAweDAwMTAKPiArI2RlZmluZSBSR19EU0lfSFNUWF9MRE9fUkVGX1NFTCAgICAgICAgICAg
ICAgICAoMHhmIDw8IDYpCj4gKwo+ICAjZGVmaW5lIE1JUElUWF9QTExfUFdSICAgICAgICAgMHgw
MDI4Cj4gICNkZWZpbmUgTUlQSVRYX1BMTF9DT04wICAgICAgICAgICAgICAgIDB4MDAyYwo+ICAj
ZGVmaW5lIE1JUElUWF9QTExfQ09OMSAgICAgICAgICAgICAgICAweDAwMzAKPiBAQCAtMTIzLDYg
KzEyNiwxMCBAQCBzdGF0aWMgdm9pZCBtdGtfbWlwaV90eF9wb3dlcl9vbl9zaWduYWwoc3RydWN0
IHBoeSAqcGh5KQo+ICAgICAgICAgbXRrX21pcGlfdHhfY2xlYXJfYml0cyhtaXBpX3R4LCBNSVBJ
VFhfRDNfU1dfQ1RMX0VOLCBEU0lfU1dfQ1RMX0VOKTsKPiAgICAgICAgIG10a19taXBpX3R4X2Ns
ZWFyX2JpdHMobWlwaV90eCwgTUlQSVRYX0NLX1NXX0NUTF9FTiwgRFNJX1NXX0NUTF9FTik7Cj4K
PiArICAgICAgIG10a19taXBpX3R4X3VwZGF0ZV9iaXRzKG1pcGlfdHgsIE1JUElUWF9WT0xUQUdF
X1NFTCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJHX0RTSV9IU1RYX0xET19S
RUZfU0VMLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKG1pcGlfdHgtPm1pcGl0
eF9kcml2ZSAtIDMwMDApIC8gMjAwIDw8IDYpOwo+ICsKPiAgICAgICAgIG10a19taXBpX3R4X3Nl
dF9iaXRzKG1pcGlfdHgsIE1JUElUWF9DS19DS01PREVfRU4sIERTSV9DS19DS01PREVfRU4pOwo+
ICB9Cj4KPiAtLQo+IDIuMjEuMAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaS1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
