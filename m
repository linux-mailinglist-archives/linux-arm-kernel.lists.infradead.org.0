Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7851680A3E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 11:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbVlUK7QOMx5uETgOLv2khRAXFBZMzOXSQOfRJakl0s=; b=c5RHaRetusETUy
	0a5ZJAgec7czH4MPj19B4uD8DvJ0z+iE6UzGH8jBlE1Cj1ed7iRvj/av2x4BDNZMK/d7xmcFQqCqf
	p+826X/mOoq/Qj7KHBhYQPpr1vahG9Mx8Fbz+fSQmgV2tFrpGKq97QnE0RJiCGudEiP7GIUVOHg1y
	2fElf93hxd9NXtoym60b1qgYiVEwRF7c68fUVeEwQLyOi+0Cqpi8v2dfEcE/i4LR4pN+bUnl+Z+cI
	4pe4pltYrvrVvxjqi+s99Nhh/wXOJiF7vusJRKDjE4/CccMWvj/HbdPjtBeTrus0onFwO+Uoszc1C
	JdaEOpD/ukBM8yY13IfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huDId-0003mh-NR; Sun, 04 Aug 2019 09:59:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huDIN-0003mG-Sb; Sun, 04 Aug 2019 09:59:22 +0000
Received: from p508fd26f.dip0.t-ipconnect.de ([80.143.210.111]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1huDIK-0002UK-Md; Sun, 04 Aug 2019 11:59:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add dts for Leez RK3399 P710 SBC
Date: Sun, 04 Aug 2019 11:59:16 +0200
Message-ID: <2357897.ziZui2JcdL@phil>
In-Reply-To: <CANbgqATNLO=wJfKNDY74qmQUqAP_9Xv29nGhLj+Y0Cc7CAMQyg@mail.gmail.com>
References: <20190803114612.4830-1-andyshrk@gmail.com>
 <22687582.BTWJvYJJdG@phil>
 <CANbgqATNLO=wJfKNDY74qmQUqAP_9Xv29nGhLj+Y0Cc7CAMQyg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_025920_233710_996204F8 
X-CRM114-Status: GOOD (  23.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5keSwKCkFtIFNvbm50YWcsIDQuIEF1Z3VzdCAyMDE5LCAxMDozODoyNiBDRVNUIHNjaHJp
ZWIgQW5keSBZYW46Cj4gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4g5LqOMjAxOeW5
tDjmnIg05pel5ZGo5pelIOS4iuWNiDg6MzTlhpnpgZPvvJoKPiA+IEFtIFNhbXN0YWcsIDMuIEF1
Z3VzdCAyMDE5LCAxMzo0NjoxMiBDRVNUIHNjaHJpZWIgQW5keSBZYW46Cj4gPiA+IExlZXogUDcx
MCBpcyBhIFJLMzM5OSBiYXNlZCBTQkMsIGRlc2lnbmVkIGJ5IExlZXogdGVhbQo+ID4gPiBmcm9t
IGxlbm92byBbMF0uCj4gPiA+Cj4gPiA+IFNwZWNpZmljYXRpb24KPiA+ID4gLSBSb2NrY2hpcCBS
SzMzOTkKPiA+ID4gLSA0LzJHQiBMUEREUjQKPiA+ID4gLSBURiBzZCBzY2FyZCBzbG90Cj4gPiA+
IC0gZU1NQwo+ID4gPiAtIE0uMiBCLUtleSBmb3IgNEcgTFRFCj4gPiA+IC0gQVA2MjU2IGZvciBX
aUZpICsgQlQKPiA+ID4gLSBHaWdhYml0IGV0aGVybmV0Cj4gPiA+IC0gSERNSSBvdXQKPiA+ID4g
LSA0MCBwaW4gaGVhZGVyCj4gPiA+IC0gVFlQRS1DIFBvd2VyIHN1cHBseQo+ID4gPgo+ID4gPiBb
MF0gaHR0cHM6Ly9sZWV6Lmxlbm92by5jb20KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQW5k
eSBZYW4gPGFuZHlzaHJrQGdtYWlsLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICAuLi4vZGV2aWNldHJl
ZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCAgICAgfCAgIDUgKwo+ID4gPiAgYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgIHwgICAxICsKPiA+ID4gIC4uLi9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTktbGVlei1wNzEwLmR0cyAgICB8IDYzNSArKysrKysrKysr
KysrKysrKysKPiA+ID4gIDMgZmlsZXMgY2hhbmdlZCwgNjQxIGluc2VydGlvbnMoKykKPiA+ID4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1s
ZWV6LXA3MTAuZHRzCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiA+IGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4gPiA+IGluZGV4IDM0ODY1MDQyZjRl
NC4uZGE5Y2Q5NDdhYmZhIDEwMDY0NAo+ID4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiA+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4gPiA+IEBAIC0zMjksNiArMzI5
LDExIEBAIHByb3BlcnRpZXM6Cj4gPiA+ICAgICAgICAgICAgICAgIC0ga2hhZGFzLGVkZ2Utdgo+
ID4gPiAgICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzM5OQo+ID4gPgo+ID4gPiArICAg
ICAgLSBkZXNjcmlwdGlvbjogTGVleiBSSzMzOTkgUDcxMAo+ID4gPiArICAgICAgICBpdGVtczoK
PiA+ID4gKyAgICAgICAgICAtIGNvbnN0OiBsZWV6LHA3MTAKPiA+Cj4gPiBJcyAibGVleiIgcmVh
bGx5IHRoZSB2ZW5kb3I/Cj4gPiBQYXJ0IG9mIG1lIHdvdWxkIGFzc3VtZSBzb21ldGhpbmcgbGlr
ZQo+ID4gICAgICAgICBsZW5vdm8sbGVlei1wNzEwCj4gPgo+ID4KPiBBY2NvcmRpbmcgdG8gTGVl
eiB0ZWFt77yMIHRoZXkgd2FudCB0byB0cmVhdCBMZWV6IGFuIGluZGVwZW5kZW50IHZlbmRvciBo
ZXJl44CCCgpvaywgdGhhdCBzaG91bGQgYmUgZmluZSB0aGVuLiBZb3UnbGwganVzdCBoYXZlIHRv
IGFsc28gYWRkCmFuIGVudHJ5IGZvciB0aGVtIGludG8gdGhlIHZlbmRvci1wcmVmaXhlcy55YW1s
IGZpbGUgdGhlbi4KCihBbmQgb2YgY291cnNlIHJld29yayB0aGUgcmVndWxhdG9yIHRyZWUpCgpU
aGFua3MKSGVpa28KCj4gPiBTbyBwbGVhc2UgY2xhcmlmeSA6LSkKPiA+IEFuZCBhbHNvIHBsZWFz
ZSBtYWtlIHN1cmUgdGhlIGRlY2lkZWQgdmVuZG9yIGlzIHBhcnQgb2YgdGhlIHZlbmRvci1wcmVm
aXhlcwo+ID4gYmluZGluZyBpbiBEb2N1bWVudGF0aW9uL2RldmljZXN0cmVlL2JpbmRpbmdzL3Zl
bmRvci1wcmVmaXhlcy55YW1sCj4gPgo+ID4gPiArICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlw
LHJrMzM5OQo+ID4gPiArCj4gPiA+ICAgICAgICAtIGRlc2NyaXB0aW9uOiBtcW1ha2VyIE1pUWkK
PiA+ID4gICAgICAgICAgaXRlbXM6Cj4gPiA+ICAgICAgICAgICAgLSBjb25zdDogbXFtYWtlcixt
aXFpCj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2Vm
aWxlCj4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+ID4gaW5k
ZXggZGFhMmM3OGUyMmMzLi4xZjE4YTkzOTJkMTUgMTAwNjQ0Cj4gPiA+IC0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+ID4gPiBAQCAtMjAsNiArMjAsNyBAQCBkdGItJChDT05G
SUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LWh1Z3N1bi14OTkuZHRiCj4gPiA+ICBkdGItJChD
T05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LWtoYWRhcy1lZGdlLmR0Ygo+ID4gPiAgZHRi
LSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1raGFkYXMtZWRnZS1jYXB0YWluLmR0
Ygo+ID4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1raGFkYXMtZWRn
ZS12LmR0Ygo+ID4gPiArZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1sZWV6
LXA3MTAuZHRiCj4gPiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LW5h
bm9wYy10NC5kdGIKPiA+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTkt
bmFub3BpLW00LmR0Ygo+ID4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5
OS1uYW5vcGktbmVvNC5kdGIKPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LWxlZXotcDcxMC5kdHMKPiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktbGVlei1wNzEwLmR0cwo+ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+
ID4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLmIzNDJmNWU4NjkyYgo+ID4gPiAtLS0gL2Rldi9udWxs
Cj4gPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWxlZXotcDcx
MC5kdHMKPiA+ID4gQEAgLTAsMCArMSw2MzUgQEAKPiA+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+ID4gPiArLyoKPiA+ID4gKyAqIENvcHlyaWdodCAo
YykgMjAxOSBBbmR5IFlhbiA8YW5keS55YW5AZ21haWwuY29tPgo+ID4gPiArICovCj4gPiA+ICsK
PiA+ID4gKy9kdHMtdjEvOwo+ID4gPiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2xpbnV4
LWV2ZW50LWNvZGVzLmg+Cj4gPiA+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcHdtL3B3bS5oPgo+
ID4gPiArI2luY2x1ZGUgInJrMzM5OS5kdHNpIgo+ID4gPiArI2luY2x1ZGUgInJrMzM5OS1vcHAu
ZHRzaSIKPiA+ID4gKwo+ID4gPiArLyB7Cj4gPiA+ICsgICAgIG1vZGVsID0gIkxlZXogUkszMzk5
IFA3MTAiOwo+ID4gPiArICAgICBjb21wYXRpYmxlID0gImxlZXoscDcxMCIsICJyb2NrY2hpcCxy
azMzOTkiOwo+ID4KPiA+IHNhbWUgY29tbWVudCBhcyBhYm92ZSwgc28gbWF5YmU6Cj4gPiAgICAg
ICAgIG1vZGVsID0gIkxlbm92byBMZWV6IFJLMzM5OSBQNzEwIjsKPiA+ICAgICAgICAgY29tcGF0
aWJsZSA9ICJsZW5vdm8sbGVlei1wNzEwIiwgInJvY2tjaGlwLHJrMzM5OSI7Cj4gPgo+ID4KPiA+
Cj4gPiA+ICsKPiA+ID4gKyAgICAgY2hvc2VuIHsKPiA+ID4gKyAgICAgICAgICAgICBzdGRvdXQt
cGF0aCA9ICJzZXJpYWwyOjE1MDAwMDBuOCI7Cj4gPiA+ICsgICAgIH07Cj4gPiA+ICsKPiA+ID4g
KyAgICAgY2xraW5fZ21hYzogZXh0ZXJuYWwtZ21hYy1jbG9jayB7Cj4gPiA+ICsgICAgICAgICAg
ICAgY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7Cj4gPiA+ICsgICAgICAgICAgICAgY2xvY2st
ZnJlcXVlbmN5ID0gPDEyNTAwMDAwMD47Cj4gPiA+ICsgICAgICAgICAgICAgY2xvY2stb3V0cHV0
LW5hbWVzID0gImNsa2luX2dtYWMiOwo+ID4gPiArICAgICAgICAgICAgICNjbG9jay1jZWxscyA9
IDwwPjsKPiA+ID4gKyAgICAgfTsKPiA+ID4gKwo+ID4gPiArICAgICBzZGlvX3B3cnNlcTogc2Rp
by1wd3JzZXEgewo+ID4gPiArICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAibW1jLXB3cnNlcS1z
aW1wbGUiOwo+ID4gPiArICAgICAgICAgICAgIGNsb2NrcyA9IDwmcms4MDggMT47Cj4gPiA+ICsg
ICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiZXh0X2Nsb2NrIjsKPiA+ID4gKyAgICAgICAgICAg
ICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gPiArICAgICAgICAgICAgIHBpbmN0cmwt
MCA9IDwmd2lmaV9lbmFibGVfaD47Cj4gPiA+ICsgICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8
JmdwaW8wIFJLX1BCMiBHUElPX0FDVElWRV9MT1c+Owo+ID4gPiArICAgICB9Owo+ID4gPiArCj4g
PiA+ICsgICAgIGRjNXZfYWRwOiBkYy01diB7Cj4gPiA+ICsgICAgICAgICAgICAgY29tcGF0aWJs
ZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1l
ID0gImRjNXZfYWRhcHRlciI7Cj4gPiA+ICsgICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1v
bjsKPiA+ID4gKyAgICAgICAgICAgICByZWd1bGF0b3ItYm9vdC1vbjsKPiA+ID4gKyAgICAgICAg
ICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPiA+ID4gKyAgICAgICAg
ICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPiA+ID4gKyAgICAgfTsK
PiA+ID4gKwo+ID4gPiArICAgICB2Y2M1djBfc3lzOiB2Y2Mtc3lzIHsKPiA+Cj4gPiB2Y2M1djBf
c3lzOiB2Y2M1djAtc3lzID8KPiA+Cj4gPiA+ICsgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJy
ZWd1bGF0b3ItZml4ZWQiOwo+ID4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZj
YzV2MF9zeXMiOwo+ID4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4gPiA+
ICsgICAgICAgICAgICAgcmVndWxhdG9yLWJvb3Qtb247Cj4gPiA+ICsgICAgICAgICAgICAgcmVn
dWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4gPiA+ICsgICAgICAgICAgICAgcmVn
dWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4gPiA+ICsgICAgICAgICAgICAgdmlu
LXN1cHBseSA9IDwmZGM1dl9hZHA+Owo+ID4gPiArICAgICB9Owo+ID4gPiArCj4gPiA+ICsgICAg
IHZjYzN2M19zeXM6IHZjYzN2My1zeXMgewo+ID4gPiArICAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAicmVndWxhdG9yLWZpeGVkIjsKPiA+ID4gKyAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9
ICJ2Y2MzdjNfc3lzIjsKPiA+ID4gKyAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+
ID4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1ib290LW9uOwo+ID4gPiArICAgICAgICAgICAg
IHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ID4gPiArICAgICAgICAgICAg
IHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ID4gPiArICAgICAgICAgICAg
IHZpbi1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+ID4gPiArICAgICB9Owo+ID4gPiArCj4gPiA+
ICsgICAgIHZjYzV2MF9ob3N0OiB2Y2M1djAtaG9zdC1yZWd1bGF0b3Igewo+ID4gPiArICAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+ID4gKyAgICAgICAgICAg
ICBlbmFibGUtYWN0aXZlLWhpZ2g7Cj4gPiA+ICsgICAgICAgICAgICAgZ3BpbyA9IDwmZ3BpbzIg
UktfUEEyIEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gPiArICAgICAgICAgICAgIHBpbmN0cmwtbmFt
ZXMgPSAiZGVmYXVsdCI7Cj4gPiA+ICsgICAgICAgICAgICAgcGluY3RybC0wID0gPCZ2Y2M1djBf
aG9zdF9lbj47Cj4gPiA+ICsgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX2hv
c3QiOwo+ID4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4gPiA+ICsgICAg
ICAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47Cj4gPiA+ICsgICAgIH07Cj4gPiA+
ICsKPiA+ID4gKyAgICAgdmNjX2xhbjogdmNjM3YzLXBoeS1yZWd1bGF0b3Igewo+ID4gPiArICAg
ICAgICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+ID4gKyAgICAgICAg
ICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2NfbGFuIjsKPiA+ID4gKyAgICAgICAgICAgICByZWd1
bGF0b3ItYWx3YXlzLW9uOwo+ID4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1ib290LW9uOwo+
ID4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+
ID4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+
ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3Itb2ZmLWluLXN1c3BlbmQ7Cj4gPiA+ICsgICAg
ICAgICAgICAgfTsKPiA+ID4gKyAgICAgfTsKPiA+Cj4gPiBJbiBnZW5lcmFsLCBwbGVhc2UgbW9k
ZWwgYW4gYWN0dWFsIHJlZ3VsYXRvci10cmVlIGFuZCBkbyBub3QgY29weSB0aGUKPiA+IHVuc3Bl
Y2lmaWMgUm9ja2NoaXAgdmVuZG9yIHRyZWUuIFRoZXNlIHVuY29ubmVjdGVkIHJlZ3VsYXRvcnMg
YXJlIGEgdmVyeQo+ID4gZ29vZCBpbmRpY2F0b3IgdGhhdCB0aGUgcmVhbCBwb3dlci10cmVlIGdv
dCBpZ25vcmVkIChtaXNzaW5nIHZpbi1zdXBwbHkKPiA+IGhlcmUpCj4gPgo+ID4gSSBmb3VuZCBz
Y2hlbWF0aWNzIG9uIGh0dHBzOi8vZ2l0aHViLmNvbS9sZWV6c2JjL3Jlc291cmNlcy93aWtpL0xl
ZXotUDcxMDoKPiA+IOmTvuaOpTogaHR0cHM6Ly9wYW4uYmFpZHUuY29tL3MvMU5QV2J1STVjc1Q0
emZ0S1VDblJzN2cKPiA+IOaPkOWPlueggTogcnZyaAo+ID4KPiA+IGFuZCB0aGVyZSB0aGUgcG93
ZXItdHJlZSBpcyBkZXNjcmliZWQgaW4gYSBjb21wbGV0ZSB3YXkuCj4gPgo+ID4gcmVndWxhdG9y
L3JlZ3VsYXRvcl9zdW1tYXJheSBpbiB0aGUga2VybmVscyBkZWJ1Z2ZzIHNob3VsZAo+ID4gc2hv
dyBhIG5pY2UgdHJlZSBzdHJ1Y3R1cmUgc3RhcnRpbmcgZnJvbSB0aGUgZGMtYWRhcHRlciBpbnB1
dC4KPiA+Cj4gPiBBbHNvIHBsZWFzZSB1c2UgbmFtZXMgbWF0Y2hpbmcgdGhlIHN1cHBseSBuYW1l
cyBmcm9tIHRoZSBzY2hlbWF0aWNzLgo+ID4KPiA+IFNhbWUgZm9yIHBpbmN0cmwgbmFtZXMsIHBs
ZWFzZSB1c2UgbmFtZXMgYXMgdXNlZCBpbiB0aGUgYm9hcmQgc2NoZW1hdGljcy4KPiA+Cj4gPgo+
ID4gPiArICAgICB2ZGRfbG9nOiB2ZGQtbG9nIHsKPiA+ID4gKyAgICAgICAgICAgICBjb21wYXRp
YmxlID0gInB3bS1yZWd1bGF0b3IiOwo+ID4gPiArICAgICAgICAgICAgIHB3bXMgPSA8JnB3bTIg
MCAyNTAwMCAxPjsKPiA+ID4gKyAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2ZGRfbG9n
IjsKPiA+ID4gKyAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gPiArICAgICAg
ICAgICAgIHJlZ3VsYXRvci1ib290LW9uOwo+ID4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1t
aW4tbWljcm92b2x0ID0gPDgwMDAwMD47Cj4gPiA+ICsgICAgICAgICAgICAgcmVndWxhdG9yLW1h
eC1taWNyb3ZvbHQgPSA8MTQwMDAwMD47Cj4gPiA+ICsgICAgICAgICAgICAgdmluLXN1cHBseSA9
IDwmdmNjNXYwX3N5cz47Cj4gPiA+ICsgICAgIH07Cj4gPiA+ICt9Owo+ID4gPiArCj4gPiA+ICsm
Y3B1X2wwIHsKPiA+ID4gKyAgICAgY3B1LXN1cHBseSA9IDwmdmRkX2NwdV9sPjsKPiA+ID4gK307
Cj4gPiA+ICsKPiA+ID4gKyZjcHVfbDEgewo+ID4gPiArICAgICBjcHUtc3VwcGx5ID0gPCZ2ZGRf
Y3B1X2w+Owo+ID4gPiArfTsKPiA+ID4gKwo+ID4gPiArJmNwdV9sMiB7Cj4gPiA+ICsgICAgIGNw
dS1zdXBwbHkgPSA8JnZkZF9jcHVfbD47Cj4gPiA+ICt9Owo+ID4gPiArCj4gPiA+ICsmY3B1X2wz
IHsKPiA+ID4gKyAgICAgY3B1LXN1cHBseSA9IDwmdmRkX2NwdV9sPjsKPiA+ID4gK307Cj4gPiA+
ICsKPiA+ID4gKyZjcHVfYjAgewo+ID4gPiArICAgICBjcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1X2I+
Owo+ID4gPiArfTsKPiA+ID4gKwo+ID4gPiArJmNwdV9iMSB7Cj4gPiA+ICsgICAgIGNwdS1zdXBw
bHkgPSA8JnZkZF9jcHVfYj47Cj4gPiA+ICt9Owo+ID4gPiArCj4gPiA+ICsmZW1tY19waHkgewo+
ID4gPiArICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiA+ICt9Owo+ID4gPiArCj4gPiA+ICsmZ21h
YyB7Cj4gPiA+ICsgICAgIGFzc2lnbmVkLWNsb2NrcyA9IDwmY3J1IFNDTEtfUk1JSV9TUkM+Owo+
ID4gPiArICAgICBhc3NpZ25lZC1jbG9jay1wYXJlbnRzID0gPCZjbGtpbl9nbWFjPjsKPiA+ID4g
KyAgICAgY2xvY2tfaW5fb3V0ID0gImlucHV0IjsKPiA+ID4gKyAgICAgcGh5LXN1cHBseSA9IDwm
dmNjX2xhbj47Cj4gPiA+ICsgICAgIHBoeS1tb2RlID0gInJnbWlpIjsKPiA+ID4gKyAgICAgcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ID4gKyAgICAgcGluY3RybC0wID0gPCZyZ21paV9w
aW5zPjsKPiA+ID4gKyAgICAgc25wcyxyZXNldC1ncGlvID0gPCZncGlvMyBSS19QQjcgR1BJT19B
Q1RJVkVfTE9XPjsKPiA+ID4gKyAgICAgc25wcyxyZXNldC1hY3RpdmUtbG93Owo+ID4gPiArICAg
ICBzbnBzLHJlc2V0LWRlbGF5cy11cyA9IDwwIDEwMDAwIDUwMDAwPjsKPiA+ID4gKyAgICAgdHhf
ZGVsYXkgPSA8MHgyOD47Cj4gPiA+ICsgICAgIHJ4X2RlbGF5ID0gPDB4MTE+Owo+ID4gPiArICAg
ICBzdGF0dXMgPSAib2theSI7Cj4gPiA+ICt9Owo+ID4gPiArCj4gPiA+ICsmZ3B1IHsKPiA+ID4g
KyAgICAgbWFsaS1zdXBwbHkgPSA8JnZkZF9ncHU+Owo+ID4gPiArICAgICBzdGF0dXMgPSAib2th
eSI7Cj4gPiA+ICt9Owo+ID4gPiArCj4gPiA+ICsmaGRtaSB7Cj4gPiA+ICsgICAgIGRkYy1pMmMt
YnVzID0gPCZpMmMzPjsKPiA+Cj4gPiBjYW4gdGhpcyBhbHNvIHVzZSB0aGUgaW50ZXJuYWwgaTJj
IGluc2lkZSB0aGUgZHctaGRtaT8KPiA+Cj4gPgo+ID4gPiArICAgICBwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwo+ID4gPiArICAgICBwaW5jdHJsLTAgPSA8JmhkbWlfY2VjPjsKPiA+ID4gKyAg
ICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gPiArfTsKPiA+ID4gKwo+ID4gPiArJmhkbWlfc291bmQg
ewo+ID4gPiArICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiA+ICt9Owo+ID4gPiArCj4gPiA+ICsm
aTJjMCB7Cj4gPiA+ICsgICAgIGNsb2NrLWZyZXF1ZW5jeSA9IDw0MDAwMDA+Owo+ID4gPiArICAg
ICBpMmMtc2NsLXJpc2luZy10aW1lLW5zID0gPDE2OD47Cj4gPiA+ICsgICAgIGkyYy1zY2wtZmFs
bGluZy10aW1lLW5zID0gPDQ+Owo+ID4gPiArICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiA+ICsK
PiA+ID4gKyAgICAgcms4MDg6IHBtaWNAMWIgewo+ID4gPiArICAgICAgICAgICAgIGNvbXBhdGli
bGUgPSAicm9ja2NoaXAscms4MDgiOwo+ID4gPiArICAgICAgICAgICAgIHJlZyA9IDwweDFiPjsK
PiA+ID4gKyAgICAgICAgICAgICBpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvMT47Cj4gPiA+ICsg
ICAgICAgICAgICAgaW50ZXJydXB0cyA9IDwyMSBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+ID4gPiAr
ICAgICAgICAgICAgICNjbG9jay1jZWxscyA9IDwxPjsKPiA+ID4gKyAgICAgICAgICAgICBjbG9j
ay1vdXRwdXQtbmFtZXMgPSAieGluMzJrIiwgInJrODA4LWNsa291dDIiOwo+ID4gPiArICAgICAg
ICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiA+ICsgICAgICAgICAgICAgcGlu
Y3RybC0wID0gPCZwbWljX2ludF9sPjsKPiA+ID4gKyAgICAgICAgICAgICByb2NrY2hpcCxzeXN0
ZW0tcG93ZXItY29udHJvbGxlcjsKPiA+ID4gKyAgICAgICAgICAgICB3YWtldXAtc291cmNlOwo+
ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgdmNjMS1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+
ID4gPiArICAgICAgICAgICAgIHZjYzItc3VwcGx5ID0gPCZ2Y2M1djBfc3lzPjsKPiA+ID4gKyAg
ICAgICAgICAgICB2Y2MzLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47Cj4gPiA+ICsgICAgICAgICAg
ICAgdmNjNC1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+ID4gPiArICAgICAgICAgICAgIHZjYzYt
c3VwcGx5ID0gPCZ2Y2M1djBfc3lzPjsKPiA+ID4gKyAgICAgICAgICAgICB2Y2M3LXN1cHBseSA9
IDwmdmNjNXYwX3N5cz47Cj4gPiA+ICsgICAgICAgICAgICAgdmNjOC1zdXBwbHkgPSA8JnZjYzN2
M19zeXM+Owo+ID4gPiArICAgICAgICAgICAgIHZjYzktc3VwcGx5ID0gPCZ2Y2M1djBfc3lzPjsK
PiA+ID4gKyAgICAgICAgICAgICB2Y2MxMC1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+ID4gPiAr
ICAgICAgICAgICAgIHZjYzExLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47Cj4gPiA+ICsgICAgICAg
ICAgICAgdmNjMTItc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPiA+ID4gKyAgICAgICAgICAgICB2
ZGRpby1zdXBwbHkgPSA8JnZjY18xdjg+Owo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgcmVn
dWxhdG9ycyB7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICB2ZGRfY2VudGVyOiBEQ0RDX1JF
RzEgewo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9
ICJ2ZGRfY2VudGVyIjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxh
dG9yLWFsd2F5cy1vbjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxh
dG9yLWJvb3Qtb247Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRv
ci1taW4tbWljcm92b2x0ID0gPDc1MDAwMD47Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDEzNTAwMDA+Owo+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItcmFtcC1kZWxheSA9IDw2MDAxPjsKPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW9mZi1p
bi1zdXNwZW5kOwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+ID4gPiAr
ICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ID4gKwo+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgdmRkX2NwdV9sOiBEQ0RDX1JFRzIgewo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2ZGRfY3B1X2wiOwo+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZWd1bGF0b3ItYm9vdC1vbjsKPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NzUwMDAwPjsKPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTM1
MDAwMD47Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1yYW1w
LWRlbGF5ID0gPDYwMDE+Owo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1
bGF0b3Itc3RhdGUtbWVtIHsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICByZWd1bGF0b3Itb2ZmLWluLXN1c3BlbmQ7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIH07Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICB9Owo+ID4gPiArCj4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICB2Y2NfZGRyOiBEQ0RDX1JFRzMgewo+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2NfZGRyIjsKPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLWJvb3Qtb247Cj4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+ID4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1vbi1pbi1zdXNw
ZW5kOwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgfTsKPiA+ID4gKwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgdmNj
XzF2ODogRENEQ19SRUc0IHsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVn
dWxhdG9yLW5hbWUgPSAidmNjXzF2OCI7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHJlZ3VsYXRvci1ib290LW9uOwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1vbi1p
bi1zdXNwZW5kOwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJl
Z3VsYXRvci1zdXNwZW5kLW1pY3Jvdm9sdCA9Cj4gPiA8MTgwMDAwMD47Cj4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIH07Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICB9Owo+
ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICB2Y2MxdjhfZHZwOiBMRE9fUkVHMSB7
Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZj
YzF2OF9kdnAiOwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3It
YWx3YXlzLW9uOwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3It
Ym9vdC1vbjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW1p
bi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3Itc3RhdGUtbWVtIHsKPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3Itb2ZmLWluLXN1c3BlbmQ7Cj4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICB9Owo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICB2Y2MxdjhfaGRt
aTogTERPX1JFRzIgewo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0
b3ItbmFtZSA9ICJ2Y2MxdjhfaGRtaSI7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHJlZ3VsYXRvci1ib290LW9uOwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1vZmYt
aW4tc3VzcGVuZDsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgIH07Cj4gPiA+ICsKPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIHZjY2FfMXY4OiBMRE9fUkVHMyB7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHJlZ3VsYXRvci1uYW1lID0gInZjY2FfMXY4IjsKPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcmVndWxhdG9yLWJvb3Qtb247Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxODAw
MDAwPjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLXN0YXRl
LW1lbSB7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxh
dG9yLW9uLWluLXN1c3BlbmQ7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcmVndWxhdG9yLXN1c3BlbmQtbWljcm92b2x0ID0KPiA+IDwxODAwMDAwPjsKPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIH07Cj4gPiA+ICsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIHZjY2lvX3NkOiBMRE9f
UkVHNCB7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1l
ID0gInZjY2lvX3NkIjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxh
dG9yLWFsd2F5cy1vbjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxh
dG9yLWJvb3Qtb247Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRv
ci1taW4tbWljcm92b2x0ID0gPDMwMDAwMDA+Owo+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMDAwMDAwPjsKPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW9uLWluLXN1c3BlbmQ7
Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLXN1
c3BlbmQtbWljcm92b2x0ID0KPiA+IDwzMDAwMDAwPjsKPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfTsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIH07Cj4gPiA+ICsKPiA+
ID4gKyAgICAgICAgICAgICAgICAgICAgIHZjY2EzdjBfY29kZWM6IExET19SRUc1IHsKPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjYTN2MF9j
b2RlYyI7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdh
eXMtb247Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1ib290
LW9uOwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbWluLW1p
Y3Jvdm9sdCA9IDwzMDAwMDAwPjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzAwMDAwMD47Cj4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1vZmYtaW4tc3VzcGVuZDsKPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIH07Cj4gPiA+ICsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIHZjY18xdjU6IExET19S
RUc2IHsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUg
PSAidmNjXzF2NSI7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRv
ci1hbHdheXMtb247Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRv
ci1ib290LW9uOwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3It
bWluLW1pY3Jvdm9sdCA9IDwxNTAwMDAwPjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTUwMDAwMD47Cj4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1vbi1pbi1zdXNwZW5kOwo+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1zdXNw
ZW5kLW1pY3Jvdm9sdCA9Cj4gPiA8MTUwMDAwMD47Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIH07Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICB9Owo+ID4gPiArCj4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICB2Y2MwdjlfaGRtaTogTERPX1JFRzcgewo+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2MwdjlfaGRtaSI7
Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247
Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1ib290LW9uOwo+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9s
dCA9IDw5MDAwMDA+Owo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0
b3ItbWF4LW1pY3Jvdm9sdCA9IDw5MDAwMDA+Owo+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICByZWd1bGF0b3Itc3RhdGUtbWVtIHsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICByZWd1bGF0b3Itb2ZmLWluLXN1c3BlbmQ7Cj4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIH07Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICB9Owo+
ID4gPiArCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICB2Y2NfM3YwOiBMRE9fUkVHOCB7Cj4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjY18z
djAiOwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlz
LW9uOwo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItYm9vdC1v
bjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNy
b3ZvbHQgPSA8MzAwMDAwMD47Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJl
Z3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMwMDAwMDA+Owo+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZWd1bGF0b3Itc3RhdGUtbWVtIHsKPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3Itb24taW4tc3VzcGVuZDsKPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3Itc3VzcGVuZC1taWNy
b3ZvbHQgPQo+ID4gPDMwMDAwMDA+Owo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB9Owo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ID4gKwo+ID4KPiA+IHVubmVl
ZGVkIGJsYW5rIGxpbmUKPiA+Cj4gPiA+ICsgICAgICAgICAgICAgfTsKPiA+ID4gKyAgICAgfTsK
PiA+ID4gKwo+ID4KPiA+Cj4gPiBIZWlrbwo+ID4KPiA+Cj4gPgoKCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
