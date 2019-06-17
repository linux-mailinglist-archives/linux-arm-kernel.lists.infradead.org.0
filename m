Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C3B489ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 19:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+v4ZIiBI6uTI1xNQuOKHaO4kUuvAnvBBB20sXKFFTy0=; b=nKpzlY4wM0ignn
	W4xe7/jMgC0phZY4Dr+JhKva8logIwU45PDq99RgTFGIfyG/ujaAWDdKx2wsSLnOUXRA/eiCXTYrB
	gRmoaJbxvDu+SdtocnAGCdaIT5W4iz6QQe1JCKzpnNEl7v+4tLUN1Ss13tH3jP/YdDXsrxFpXRJ24
	FvgB3KDFh/fNS2MB5W5ZqefJoHPWTwHWAzt5SPkZ7YQxjodAILbdpzYm7EXk1ijXHqGOOIT2hPOzZ
	+2fDjcOn9OeehI6aYldAiEcKiNyZHa1qIxvtxBpEJKab4bpQ4aocutoh1CJVSGrB6cQAgYDMGxJjA
	xkuDkp/y1B7Yj9caCwtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcvJ8-0003Fa-E2; Mon, 17 Jun 2019 17:20:38 +0000
Received: from p3plmtsmtp03.prod.phx3.secureserver.net ([184.168.131.16])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcvIw-0003Ep-74
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 17:20:27 +0000
Received: from n16.mail01.mtsvc.net ([216.70.64.51]) by :MT-SMTP: with ESMTP
 id cvIOhlTwxu62YcvIOh4voI; Mon, 17 Jun 2019 10:19:52 -0700
X-SID: cvIOhlTwxu62Y
Received: from cpe-71-75-202-74.carolina.res.rr.com ([71.75.202.74]:51042
 helo=SBGCLTOFFICE)
 by n16.mail01.mtsvc.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <tkrantz@stahurabrenner.com>)
 id 1hcvIK-0005or-VZ; Mon, 17 Jun 2019 13:19:52 -0400
From: "Timothy Krantz" <tkrantz@stahurabrenner.com>
To: "'Miquel Raynal'" <miquel.raynal@bootlin.com>
References: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAABB6J1kxOR7T73eMrM92Eq+AQAAAAA=@stahurabrenner.com>	<20190429095727.48de0b7c@xps13>	<!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAAABdzCVMdZ+R6253dvJGHcXAQAAAAA=@stahurabrenner.com>	<20190617113841.60032387@xps13>
 <20190617114016.10fb9e03@xps13>
In-Reply-To: <20190617114016.10fb9e03@xps13>
Subject: RE: espressobin device tree with kernel 5.1 RC
Date: Mon, 17 Jun 2019 13:19:46 -0400
Message-ID: <!&!AAAAAAAAAAAuAAAAAAAAAOBWTR25SONAuESb5loyl/sBAMO2jhD3dRHOtM0AqgC7tuYAAAAAAA4AABAAAADly4/rI9w9RYcxQAoCt9xgAQAAAAA=@stahurabrenner.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQHHHNahTQSMuKl1SiqoWXgyzEZ1/QHhLXjKAr/FJm4BlquXjgGHPVqnpn4wKUA=
Content-Language: en-us
X-Authenticated-User: 902853 tkrantz@stahurabrenner.com
X-MT-ID: C1A731F58FEDE20B47E8EFF5D29156B2BFE18A53
X-CMAE-Envelope: MS4wfO/Yd5pafHyDT60Jmzz/KBty6jXdrG5Jhvh3hAgn70C2SWbh7Wu05RJxqs1XQcYLEmMcLkdNpQ+n91B73lBmee5woU8rQXYxO7GQHc5AHKn78XEGpnZU
 93E64ZPno8PcGeqhzV89Z/rQxW1EinsjnnGQMR8R/w3HpjlDMsIELUfkmETgNruPRuVjawQNx6JSDzt36bZo/UBCU4RuaPpICGHgEn61MwadE8Z7GhoVUn+e
 agEI6EA6mgw/olM6sJ+WIw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_102026_272296_962B5BE3 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [184.168.131.16 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhhbmtzIE1pcXVlbCwKCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiBGcm9tOiBNaXF1
ZWwgUmF5bmFsIFttYWlsdG86bWlxdWVsLnJheW5hbEBib290bGluLmNvbV0KPiBTZW50OiBNb25k
YXksIEp1bmUgMTcsIDIwMTkgNTo0MCBBTQo+IFRvOiBUaW1vdGh5IEtyYW50eiA8dGtyYW50ekBz
dGFodXJhYnJlbm5lci5jb20+Cj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwo+IFN1YmplY3Q6IFJlOiBlc3ByZXNzb2JpbiBkZXZpY2UgdHJlZSB3aXRoIGtlcm5lbCA1
LjEgUkMKPiAKPiBIaSBUaW1vdGh5LAo+IAo+IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxA
Ym9vdGxpbi5jb20+IHdyb3RlIG9uIE1vbiwgMTcgSnVuIDIwMTkKPiAxMTozODo0MSArMDIwMDoK
PiAKPiA+IEhpIFRpbW90aHksCj4gPgo+ID4gUGxlYXNlIGtlZXAgdGhlIExpbnV4IEFSTSBrZXJu
ZWwgTUwgaW4gY29weS4KPiA+Cj4gPiAiVGltb3RoeSBLcmFudHoiIDx0a3JhbnR6QHN0YWh1cmFi
cmVubmVyLmNvbT4gd3JvdGUgb24gU2F0LCAxNSBKdW4KPiAyMDE5Cj4gPiAxODo1NjowMCAtMDQw
MDoKPiA+Cj4gPiA+IEhlbGxvLAo+ID4gPiBJIGFtIHN0aWxsIHVuYWJsZSB0byBnZXQgNS4xIG9y
IDUuMnJjIGtlcm5lbHMgdG8gYm9vdCB3aXRoIHRoZSBhc3NvY2lhdGVkIGR0Yi4KPiBUaGV5IGFs
bCBzZWVtIHRvIHdvcmsgZmluZSB3aXRoIHRoZSBvbGRlciBkdGIuCj4gPiA+Cj4gPiA+IEkgYW0g
Y2VydGFpbiB0aGF0IGl0IGlzIHNvbWV0aGluZyBpbiBteSAuY29uZmlnIHRoYXQgaXMgbm90IHBy
b3Blcmx5IHNldC4KPiA+ID4KPiA+ID4gSSBkb24ndCBzdXBwb3NlIHlvdSBjYW4gc2VuZCBtZSBh
IGNvcHkgb2YgeW91ciAuY29uZmlnIHRoYXQgd29ya3Mgc28gdGhhdAo+IEkgY2FuIHRyeSB3aXRo
IHRoYXQ/Cj4gPgo+ID4gTXlIZXJlIGlzIG15IGNvbmZpZ3VyYXRpb24gZm9yIGEgNS4yLXJjMSBr
ZXJuZWwuCj4gCj4gSGVyZSBpdCBpcyAtPiBodHRwOi8vY29kZS5idWxpeC5vcmcvbmdkcjh6LTc3
NDA3MQo+IAo+IFNBVEEgcG9ydCBpcyB3b3JraW5nIHdpdGggdGhpcyBzZXR1cC4KPiAKPiBUaGFu
a3MsCj4gTWlxdcOobAoKVGhpcyBodHRwczovL3Bhc3RlYmluLmNvbS94UFRNZGJieAoKSXMgd2hh
dCBJIGdldCB3aXRoIGEga2VybmVsIGNvbmZpZ3VyZWQgd2l0aCB5b3VyIC5jb25maWcuCgpJIHN1
c3BlY3QgdGhlcmUgaXMgc29tZSBtYWdpYyBpbiAKCkNPTkZJR19JTklUUkFNRlNfU09VUkNFPSIv
aG9tZS9tcmF5bmFsL2J1aWxkcm9vdC9vdXRwdXQtYXJtL2ltYWdlcy9yb290ZnMuY3BpbyIKCldo
aWNoIEkgZG8gbm90IGhhdmUgdGhhdCBtYXkgYmUgbWFraW5nIGEgZGlmZmVyZW5jZT8gKHRoYXQg
aXMgdGhlIG9ubHkgZGlmZmVyZW5jZSBpbiB3aGF0IEkgY29tcGlsZWQgYW5kIHlvdSBzZW50IHRv
IG1lKS4KClRoYW5rcyBmb3IgYW55IGlucHV0IHlvdSBtaWdodCBoYXZlLgoKVGltCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
