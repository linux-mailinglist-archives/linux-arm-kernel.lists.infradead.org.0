Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D5B154304
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 12:27:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3HvCDgHEvj1/4Q+zzKkv6chLxQjVzcR/MuIafJmkLo=; b=Ag9griALiPHJoP
	wFP98sI7iQ7NvkQ9tmADK5DT+aa3eLEfvlavUQz5o330fBXfOrpcv7EKWHu0BMlJG/pJDK0rouY1J
	IPW2wD1Qd6UbIvZNspzjlKdl/nmXdAYorfO6Gx8xuI4IowE7a1uH9BKqpWCnhoSba9Q0yxkp2ZlY4
	YUDXlz3WPlrQj61PtzCFPkMBo2yLBXCYy9Ywi2k2hf0DRen1EiWOLB941wRBKXcaeuON5h3lzcgkz
	RJc1g8qEDTMX+FV79QDb4uaUd4C9yUS6rnhjkgyz+1Y6AvS4UwyiMpDWSdv0reFSrvYQ/XpxCj0UQ
	rZ96P2YbY8BP5zwuNVVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izfJs-0007vm-M7; Thu, 06 Feb 2020 11:27:40 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izfJj-0007up-Sx
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 11:27:34 +0000
Received: by mail-wm1-x341.google.com with SMTP id a9so6617270wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 03:27:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thegoodpenguin-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=DhWg+zpdSqsW8rxWEiaaZAwp7E2BBzkWJY6y23Nf9HU=;
 b=muKUaEKfnmdex2xux9VRn97Fyh2mmm6dgo7Z4NzuaTE++qIXJ3R+6ePGB7umg//9LW
 FKN8elSrBErbld5boWBqNcSUvl9pfVrv5mXp/pXO4BJttqmkjgY0cXSVs/+rjGvOSO9T
 BJWwgPlHrfLqo6Vqvheynora+vQInsIBdKAeqmdTynbzPpodGpNnscfk2ehufxwe6kWn
 wa3TVmsyD5xn0x14Po47+2nP1X5mI+WnG0ieORzop8RanyKcUjy/C9auh+w4baTf7HUH
 TKFxO+wROoPQ/kz2lX7bVEozXVIA+esLEtqH1slZtgJCwB2HnbE6kiJsAs7e5ut0+R8g
 ncjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=DhWg+zpdSqsW8rxWEiaaZAwp7E2BBzkWJY6y23Nf9HU=;
 b=QITHMiPX0xDxqoahOvSo2BSdUD4yaK2bq9adknF4kWsB+WRy3ikUED/g3yv1B+kK+u
 nG02al80xeZ4OZJz5GDQOHY4iryczu2+1pcpwt/LMeA3m5LF23RMvT8gl+Xl8pfOUqPH
 P4HuPdDIh0npkxPvFoA4/Il3pezofESFy56T0Wx3+XeSfejx/fTl34UTd5RsiK6bYvVy
 T2E3j74TxPCi3tCmZY6ExapxOjMHYEIg6X600o5Ap+yXaOcWi8DbHXh6poFYnJ43S+Gv
 B04o4R4bLod4FLBI4FIT3WtDhvJCtyoOdqPyYPsyCkfLmIrfnKysY215AtvvQm5nolo1
 kvcA==
X-Gm-Message-State: APjAAAUQDDy5KpfNQqQRJOWjga+BQyFEWpKZwWrhWzNHNlkb8J0ewPJJ
 Eq0tzFzPPZcwx5TLbK3fTuUGSw==
X-Google-Smtp-Source: APXvYqwSsh7dUxDsfBDsS/7Q3iLOvZND5C4QfZ6rnRc8hHTEMsls6EvjrbZbVmJ14vQg12Ie6nC2vA==
X-Received: by 2002:a7b:cb49:: with SMTP id v9mr4221349wmj.160.1580988445988; 
 Thu, 06 Feb 2020 03:27:25 -0800 (PST)
Received: from big-machine ([2a00:23c5:dd80:8400:94e8:de94:574e:efb1])
 by smtp.gmail.com with ESMTPSA id o4sm3721797wrx.25.2020.02.06.03.27.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 03:27:25 -0800 (PST)
Date: Thu, 6 Feb 2020 11:27:23 +0000
From: Andrew Murray <amurray@thegoodpenguin.co.uk>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv9 01/12] PCI: mobiveil: Re-abstract the private structure
Message-ID: <20200206112723.GA19388@big-machine>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <20191120034451.30102-2-Zhiqiang.Hou@nxp.com>
 <20200113100931.GG42593@e119886-lin.cambridge.arm.com>
 <DB8PR04MB67476FE40D1396B2F61F5683841D0@DB8PR04MB6747.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB8PR04MB67476FE40D1396B2F61F5683841D0@DB8PR04MB6747.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_032732_123492_CE143C08 
X-CRM114-Status: GOOD (  34.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBGZWIgMDYsIDIwMjAgYXQgMTE6MDQ6MjlBTSArMDAwMCwgWi5xLiBIb3Ugd3JvdGU6
Cj4gSGkgQW5kcmV3LAo+IAo+IFRoYW5rcyBhIGxvdCBmb3IgeW91ciBjb21tZW50cyEKPiBTb3Jy
eSBmb3IgbXkgZGVsYXkgcmVzcG9uZCEKPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
Cj4gPiBGcm9tOiBBbmRyZXcgTXVycmF5IDxhbmRyZXcubXVycmF5QGFybS5jb20+Cj4gPiBTZW50
OiAyMDIw5bm0MeaciDEz5pelIDE4OjEwCj4gPiBUbzogWi5xLiBIb3UgPHpoaXFpYW5nLmhvdUBu
eHAuY29tPgo+ID4gQ2M6IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPiA+IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBs
aW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOwo+ID4gYmhlbGdhYXNAZ29vZ2xlLmNvbTsgcm9i
aCtkdEBrZXJuZWwub3JnOyBhcm5kQGFybmRiLmRlOwo+ID4gbWFyay5ydXRsYW5kQGFybS5jb207
IGwuc3VicmFobWFueWFAbW9iaXZlaWwuY28uaW47Cj4gPiBzaGF3bmd1b0BrZXJuZWwub3JnOyBt
LmthcnRoaWtleWFuQG1vYml2ZWlsLmNvLmluOyBMZW8gTGkKPiA+IDxsZW95YW5nLmxpQG54cC5j
b20+OyBsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tOwo+ID4gY2F0YWxpbi5tYXJpbmFzQGFybS5j
b207IHdpbGwuZGVhY29uQGFybS5jb207IE1pbmdrYWkgSHUKPiA+IDxtaW5na2FpLmh1QG54cC5j
b20+OyBNLmguIExpYW4gPG1pbmdodWFuLmxpYW5AbnhwLmNvbT47IFhpYW93ZWkgQmFvCj4gPiA8
eGlhb3dlaS5iYW9AbnhwLmNvbT4KPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0h2OSAwMS8xMl0gUENJ
OiBtb2JpdmVpbDogUmUtYWJzdHJhY3QgdGhlIHByaXZhdGUgc3RydWN0dXJlCj4gPiAKPiA+IE9u
IFdlZCwgTm92IDIwLCAyMDE5IGF0IDAzOjQ1OjIzQU0gKzAwMDAsIFoucS4gSG91IHdyb3RlOgo+
ID4gPiBGcm9tOiBIb3UgWmhpcWlhbmcgPFpoaXFpYW5nLkhvdUBueHAuY29tPgo+ID4gPgo+ID4g
PiBUaGUgTW9iaXZlaWwgUENJZSBjb250cm9sbGVyIGNhbiB3b3JrIGluIGVpdGhlciBSb290IENv
bXBsZXggbW9kZSBvcgo+ID4gPiBFbmRwb2ludCBtb2RlLiBTbyBpbnRyb2R1Y2UgYSBuZXcgc3Ry
dWN0dXJlIHJvb3RfcG9ydCwgYW5kIGFic3RyYWN0Cj4gPiA+IHRoZSBSQyByZWxhdGVkIG1lbWJl
cnMgaW50byBpdC4KPiA+IAo+ID4gVGhlIGZpcnN0IHNlbnRlbmNlIGV4cGxhaW5zIHRoZSB0cmln
Z2VyIGZvciB0aGlzIHdvcmssIHRoZSBzZWNvbmQgZXhwbGFpbnMgd2hhdAo+ID4geW91IGFyZSBj
aGFuZ2luZywgaXQgd291bGQgYmUgaGVscGZ1bCB0byBhbHNvIGRlc2NyaWJlIHdoeSB5b3UgbmVl
ZCB0byBtYWtlCj4gPiB0aGlzIGNoYW5nZS4gWW91IGNvdWxkIGRvIHRoaXMgYnkgZXh0ZW5kaW5n
IHRoZSBsYXN0IHNlbnRlbmNlLCBlLmcuCj4gPiAKPiA+ICJTbyBpbnRyb2R1Y2UgYSBuZXcgc3Ry
dWN0dXJlIHJvb3RfcG9ydCwgYW5kIGFic3RyYWN0IHRoZSBSQyAgcmVsYXRlZAo+ID4gbWVtYmVy
cyBpbnRvIGl0IHN1Y2ggdGhhdCBpdCBjYW4gYmUgdXNlZCBieSBib3RoIC4uLiIKPiA+IAo+ID4g
QXMgdGhpcyBzZXJpZXMgZG9lc24ndCBhY3R1YWxseSBhZGQgYSBFUCBkcml2ZXIsIHRoaXMgYWJz
dHJhY3Rpb24gaXNuJ3QgbmVlZGVkCj4gPiBub3cgLSBidXQgaXQgaXMgbmljZSB0byBoYXZlIC0g
aXQgbWF5IGJlIGhlbHBmdWwgdG8gZXhwbGFpbiB0aGlzLgo+ID4gCj4gPiBUaGUgZW1haWwgc3Vi
amVjdCBjb3VsZCBhbHNvIG1vcmUgcHJlY2lzZWx5IGV4cGxhaW4gd2hhdCB0aGlzIHBhdGNoIGRv
ZXMuCj4gCj4gVGhhbmtzIGZvciB0aGUgZ29vZCBzdWdnZXN0aW9ucyEgV2lsbCBjaGFuZ2UgaW4g
djEwLgo+IAo+ID4gCj4gPiAKPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogSG91IFpoaXFpYW5n
IDxaaGlxaWFuZy5Ib3VAbnhwLmNvbT4KPiA+ID4gLS0tCj4gPiA+IFY5Ogo+ID4gPiAgLSBOZXcg
cGF0Y2ggc3BsaXRlZCBmcm9tIHRoZSAjMSBvZiBWOCBwYXRjaGVzIHRvIG1ha2UgaXQgZWFzeSB0
byByZXZpZXcuCj4gPiAKPiA+IEluZGVlZCwgaXQncyBtdWNoIG5pY2VyIHRvIHJldmlldyAtIHRo
YW5rcy4KPiA+IAo+ID4gCj4gPiA+Cj4gPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUt
bW9iaXZlaWwuYyB8IDk5Cj4gPiA+ICsrKysrKysrKysrKysrKystLS0tLS0tLS0tCj4gPiA+ICAx
IGZpbGUgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKSwgMzkgZGVsZXRpb25zKC0pCj4gPiA+Cj4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtbW9iaXZlaWwuYwo+
ID4gPiBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1tb2JpdmVpbC5jCj4gPiA+IGluZGV4
IDNhNjk2Y2E0NWJmYS4uNWZkMjZlMzc2YWYyIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL3BjaWUtbW9iaXZlaWwuYwo+ID4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL3BjaWUtbW9iaXZlaWwuYwo+ID4gPiBAQCAtMyw3ICszLDEwIEBACj4gPiA+ICAgKiBQ
Q0llIGhvc3QgY29udHJvbGxlciBkcml2ZXIgZm9yIE1vYml2ZWlsIFBDSWUgSG9zdCBjb250cm9s
bGVyCj4gPiA+ICAgKgo+ID4gPiAgICogQ29weXJpZ2h0IChjKSAyMDE4IE1vYml2ZWlsIEluYy4K
PiA+ID4gKyAqIENvcHlyaWdodCAyMDE5IE5YUAo+ID4gPiArICoKPiA+ID4gICAqIEF1dGhvcjog
U3VicmFobWFueWEgTGluZ2FwcGEgPGwuc3VicmFobWFueWFAbW9iaXZlaWwuY28uaW4+Cj4gPiA+
ICsgKiBSZWNvZGU6IEhvdSBaaGlxaWFuZyA8WmhpcWlhbmcuSG91QG54cC5jb20+Cj4gPiAKPiA+
IEFzIHBlciBteSBwcmV2aW91cyBmZWVkYmFjaywgSSdtIG5vdCBzdXJlIHRoZSB2YWx1ZSBvZiB1
c2luZyB0aGUgdGVybSByZWZhY3Rvcgo+ID4gb3IgYSBzeW5vbnltIG9mIGl0LiBBbmQgSSBjZXJ0
YWludGx5IGRvbid0IHdhbnQgdG8gZW5jb3VyYWdlIGFueW9uZSB0aGF0Cj4gPiBtb2RpZmllcyB0
aGlzIGZpbGUgdG8gYWRkIGEgc2ltaWxhciB0YWcgd2hlbiB0aGUgaW5mb3JtYXRpb24gaXMgZWFz
aWx5IHZpc2libGUgdmlhCj4gPiBHSVQgYW5kIHRoZSBnZXRfbWFpbnRhaW5lcnMgc2NyaXB0Lgo+
IAo+IFdpbGwgcmVtb3ZlIHRoZSByZWNvZGUgdGFnIGluIHYxMC4KPiAKPiA+IAo+ID4gPiAgICov
Cj4gPiA+Cj4gPiA+ICAjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KPiA+ID4gQEAgLTEzOCwyMiAr
MTQxLDI3IEBAIHN0cnVjdCBtb2JpdmVpbF9tc2kgewkJCS8qIE1TSQo+ID4gaW5mb3JtYXRpb24g
Ki8KPiA+ID4gIAlERUNMQVJFX0JJVE1BUChtc2lfaXJxX2luX3VzZSwgUENJX05VTV9NU0kpOyAg
fTsKPiA+ID4KPiA+ID4gK3N0cnVjdCByb290X3BvcnQgewo+ID4gPiArCWNoYXIgcm9vdF9idXNf
bnI7Cj4gPiA+ICsJdm9pZCBfX2lvbWVtICpjb25maWdfYXhpX3NsYXZlX2Jhc2U7CS8qIGVuZHBv
aW50IGNvbmZpZyBiYXNlICovCj4gPiA+ICsJc3RydWN0IHJlc291cmNlICpvYl9pb19yZXM7Cj4g
PiA+ICsJaW50IGlycTsKPiA+ID4gKwlyYXdfc3BpbmxvY2tfdCBpbnR4X21hc2tfbG9jazsKPiA+
ID4gKwlzdHJ1Y3QgaXJxX2RvbWFpbiAqaW50eF9kb21haW47Cj4gPiA+ICsJc3RydWN0IG1vYml2
ZWlsX21zaSBtc2k7Cj4gPiA+ICsJc3RydWN0IHBjaV9ob3N0X2JyaWRnZSAqYnJpZGdlOwo+ID4g
PiArfTsKPiA+IAo+ID4gUGxlYXNlIHByZWZpeCB3aXRoIG1vYml2ZWlsIGdpdmVuIHdlIGhhdmUg
bW9iaXZlaWwgcmVsYXRlZCBzdHJ1Y3R1cmVzIGluc2lkZSBpdC4KPiAKPiBEbyB5b3UgbWVhbiBz
L3Jvb3RfcG9ydC9tb2JpdmVpbF9yb290X3BvcnQvID8KClllcyEKClRoYW5rcywKCkFuZHJldyBN
dXJyYXkKCj4gCj4gVGhhbmtzLAo+IFpoaXFpYW5nCj4gCj4gPiAKPiA+IChBbHNvIG9uIHlvdXIg
cmVzcGluLCBwbGVhc2UgcmViYXNlIGFzIHBlciBPbG9mJ3MgZmVlZGJhY2spLgo+ID4gCj4gPiBU
aGFua3MsCj4gPiAKPiA+IEFuZHJldyBNdXJyYXkKPiA+IAo+ID4gPiArCj4gPiA+ICBzdHJ1Y3Qg
bW9iaXZlaWxfcGNpZSB7Cj4gPiA+ICAJc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldjsKPiA+
ID4gLQl2b2lkIF9faW9tZW0gKmNvbmZpZ19heGlfc2xhdmVfYmFzZTsJLyogZW5kcG9pbnQgY29u
ZmlnIGJhc2UgKi8KPiA+ID4gIAl2b2lkIF9faW9tZW0gKmNzcl9heGlfc2xhdmVfYmFzZTsJLyog
cm9vdCBwb3J0IGNvbmZpZyBiYXNlICovCj4gPiA+ICAJdm9pZCBfX2lvbWVtICphcGJfY3NyX2Jh
c2U7CS8qIE1TSSByZWdpc3RlciBiYXNlICovCj4gPiA+ICAJcGh5c19hZGRyX3QgcGNpZV9yZWdf
YmFzZTsJLyogUGh5c2ljYWwgUENJZSBDb250cm9sbGVyIEJhc2UgKi8KPiA+ID4gLQlzdHJ1Y3Qg
aXJxX2RvbWFpbiAqaW50eF9kb21haW47Cj4gPiA+IC0JcmF3X3NwaW5sb2NrX3QgaW50eF9tYXNr
X2xvY2s7Cj4gPiA+IC0JaW50IGlycTsKPiA+ID4gIAlpbnQgYXBpb193aW5zOwo+ID4gPiAgCWlu
dCBwcGlvX3dpbnM7Cj4gPiA+ICAJaW50IG9iX3dpbnNfY29uZmlndXJlZDsJCS8qIGNvbmZpZ3Vy
ZWQgb3V0Ym91bmQgd2luZG93cyAqLwo+ID4gPiAgCWludCBpYl93aW5zX2NvbmZpZ3VyZWQ7CQkv
KiBjb25maWd1cmVkIGluYm91bmQgd2luZG93cyAqLwo+ID4gPiAtCXN0cnVjdCByZXNvdXJjZSAq
b2JfaW9fcmVzOwo+ID4gPiAtCWNoYXIgcm9vdF9idXNfbnI7Cj4gPiA+IC0Jc3RydWN0IG1vYml2
ZWlsX21zaSBtc2k7Cj4gPiA+ICsJc3RydWN0IHJvb3RfcG9ydCBycDsKPiA+ID4gIH07Cj4gPiA+
Cj4gPiA+ICAvKgo+ID4gPiBAQCAtMjgxLDE2ICsyODksMTcgQEAgc3RhdGljIGJvb2wgbW9iaXZl
aWxfcGNpZV9saW5rX3VwKHN0cnVjdAo+ID4gPiBtb2JpdmVpbF9wY2llICpwY2llKSAgc3RhdGlj
IGJvb2wgbW9iaXZlaWxfcGNpZV92YWxpZF9kZXZpY2Uoc3RydWN0Cj4gPiA+IHBjaV9idXMgKmJ1
cywgdW5zaWduZWQgaW50IGRldmZuKSAgewo+ID4gPiAgCXN0cnVjdCBtb2JpdmVpbF9wY2llICpw
Y2llID0gYnVzLT5zeXNkYXRhOwo+ID4gPiArCXN0cnVjdCByb290X3BvcnQgKnJwID0gJnBjaWUt
PnJwOwo+ID4gPgo+ID4gPiAgCS8qIE9ubHkgb25lIGRldmljZSBkb3duIG9uIGVhY2ggcm9vdCBw
b3J0ICovCj4gPiA+IC0JaWYgKChidXMtPm51bWJlciA9PSBwY2llLT5yb290X2J1c19ucikgJiYg
KGRldmZuID4gMCkpCj4gPiA+ICsJaWYgKChidXMtPm51bWJlciA9PSBycC0+cm9vdF9idXNfbnIp
ICYmIChkZXZmbiA+IDApKQo+ID4gPiAgCQlyZXR1cm4gZmFsc2U7Cj4gPiA+Cj4gPiA+ICAJLyoK
PiA+ID4gIAkgKiBEbyBub3QgcmVhZCBtb3JlIHRoYW4gb25lIGRldmljZSBvbiB0aGUgYnVzIGRp
cmVjdGx5Cj4gPiA+ICAJICogYXR0YWNoZWQgdG8gUkMKPiA+ID4gIAkgKi8KPiA+ID4gLQlpZiAo
KGJ1cy0+cHJpbWFyeSA9PSBwY2llLT5yb290X2J1c19ucikgJiYgKFBDSV9TTE9UKGRldmZuKSA+
IDApKQo+ID4gPiArCWlmICgoYnVzLT5wcmltYXJ5ID09IHJwLT5yb290X2J1c19ucikgJiYgKFBD
SV9TTE9UKGRldmZuKSA+IDApKQo+ID4gPiAgCQlyZXR1cm4gZmFsc2U7Cj4gPiA+Cj4gPiA+ICAJ
cmV0dXJuIHRydWU7Cj4gPiA+IEBAIC0zMDQsMTMgKzMxMywxNCBAQCBzdGF0aWMgdm9pZCBfX2lv
bWVtCj4gPiAqbW9iaXZlaWxfcGNpZV9tYXBfYnVzKHN0cnVjdCBwY2lfYnVzICpidXMsCj4gPiA+
ICAJCQkJCSAgIHVuc2lnbmVkIGludCBkZXZmbiwgaW50IHdoZXJlKSAgewo+ID4gPiAgCXN0cnVj
dCBtb2JpdmVpbF9wY2llICpwY2llID0gYnVzLT5zeXNkYXRhOwo+ID4gPiArCXN0cnVjdCByb290
X3BvcnQgKnJwID0gJnBjaWUtPnJwOwo+ID4gPiAgCXUzMiB2YWx1ZTsKPiA+ID4KPiA+ID4gIAlp
ZiAoIW1vYml2ZWlsX3BjaWVfdmFsaWRfZGV2aWNlKGJ1cywgZGV2Zm4pKQo+ID4gPiAgCQlyZXR1
cm4gTlVMTDsKPiA+ID4KPiA+ID4gIAkvKiBSQyBjb25maWcgYWNjZXNzICovCj4gPiA+IC0JaWYg
KGJ1cy0+bnVtYmVyID09IHBjaWUtPnJvb3RfYnVzX25yKQo+ID4gPiArCWlmIChidXMtPm51bWJl
ciA9PSBycC0+cm9vdF9idXNfbnIpCj4gPiA+ICAJCXJldHVybiBwY2llLT5jc3JfYXhpX3NsYXZl
X2Jhc2UgKyB3aGVyZTsKPiA+ID4KPiA+ID4gIAkvKgo+ID4gPiBAQCAtMzI1LDcgKzMzNSw3IEBA
IHN0YXRpYyB2b2lkIF9faW9tZW0KPiA+ICptb2JpdmVpbF9wY2llX21hcF9idXMoc3RydWN0Cj4g
PiA+IHBjaV9idXMgKmJ1cywKPiA+ID4KPiA+ID4gIAltb2JpdmVpbF9jc3Jfd3JpdGVsKHBjaWUs
IHZhbHVlLAo+ID4gUEFCX0FYSV9BTUFQX1BFWF9XSU5fTChXSU5fTlVNXzApKTsKPiA+ID4KPiA+
ID4gLQlyZXR1cm4gcGNpZS0+Y29uZmlnX2F4aV9zbGF2ZV9iYXNlICsgd2hlcmU7Cj4gPiA+ICsJ
cmV0dXJuIHJwLT5jb25maWdfYXhpX3NsYXZlX2Jhc2UgKyB3aGVyZTsKPiA+ID4gIH0KPiA+ID4K
PiA+ID4gIHN0YXRpYyBzdHJ1Y3QgcGNpX29wcyBtb2JpdmVpbF9wY2llX29wcyA9IHsgQEAgLTMz
OSw3ICszNDksOCBAQAo+ID4gPiBzdGF0aWMgdm9pZCBtb2JpdmVpbF9wY2llX2lzcihzdHJ1Y3Qg
aXJxX2Rlc2MgKmRlc2MpCj4gPiA+ICAJc3RydWN0IGlycV9jaGlwICpjaGlwID0gaXJxX2Rlc2Nf
Z2V0X2NoaXAoZGVzYyk7Cj4gPiA+ICAJc3RydWN0IG1vYml2ZWlsX3BjaWUgKnBjaWUgPSBpcnFf
ZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRlc2MpOwo+ID4gPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9
ICZwY2llLT5wZGV2LT5kZXY7Cj4gPiA+IC0Jc3RydWN0IG1vYml2ZWlsX21zaSAqbXNpID0gJnBj
aWUtPm1zaTsKPiA+ID4gKwlzdHJ1Y3Qgcm9vdF9wb3J0ICpycCA9ICZwY2llLT5ycDsKPiA+ID4g
KwlzdHJ1Y3QgbW9iaXZlaWxfbXNpICptc2kgPSAmcnAtPm1zaTsKPiA+ID4gIAl1MzIgbXNpX2Rh
dGEsIG1zaV9hZGRyX2xvLCBtc2lfYWRkcl9oaTsKPiA+ID4gIAl1MzIgaW50cl9zdGF0dXMsIG1z
aV9zdGF0dXM7Cj4gPiA+ICAJdW5zaWduZWQgbG9uZyBzaGlmdGVkX3N0YXR1czsKPiA+ID4gQEAg
LTM2NSw3ICszNzYsNyBAQCBzdGF0aWMgdm9pZCBtb2JpdmVpbF9wY2llX2lzcihzdHJ1Y3QgaXJx
X2Rlc2MgKmRlc2MpCj4gPiA+ICAJCXNoaWZ0ZWRfc3RhdHVzID4+PSBQQUJfSU5UWF9TVEFSVDsK
PiA+ID4gIAkJZG8gewo+ID4gPiAgCQkJZm9yX2VhY2hfc2V0X2JpdChiaXQsICZzaGlmdGVkX3N0
YXR1cywgUENJX05VTV9JTlRYKSB7Cj4gPiA+IC0JCQkJdmlycSA9IGlycV9maW5kX21hcHBpbmco
cGNpZS0+aW50eF9kb21haW4sCj4gPiA+ICsJCQkJdmlycSA9IGlycV9maW5kX21hcHBpbmcocnAt
PmludHhfZG9tYWluLAo+ID4gPiAgCQkJCQkJCWJpdCArIDEpOwo+ID4gPiAgCQkJCWlmICh2aXJx
KQo+ID4gPiAgCQkJCQlnZW5lcmljX2hhbmRsZV9pcnEodmlycSk7Cj4gPiA+IEBAIC00MjQsMTUg
KzQzNSwxNiBAQCBzdGF0aWMgaW50IG1vYml2ZWlsX3BjaWVfcGFyc2VfZHQoc3RydWN0Cj4gPiBt
b2JpdmVpbF9wY2llICpwY2llKQo+ID4gPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwY2llLT5w
ZGV2LT5kZXY7Cj4gPiA+ICAJc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiA9IHBjaWUtPnBk
ZXY7Cj4gPiA+ICAJc3RydWN0IGRldmljZV9ub2RlICpub2RlID0gZGV2LT5vZl9ub2RlOwo+ID4g
PiArCXN0cnVjdCByb290X3BvcnQgKnJwID0gJnBjaWUtPnJwOwo+ID4gPiAgCXN0cnVjdCByZXNv
dXJjZSAqcmVzOwo+ID4gPgo+ID4gPiAgCS8qIG1hcCBjb25maWcgcmVzb3VyY2UgKi8KPiA+ID4g
IAlyZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2VfYnluYW1lKHBkZXYsIElPUkVTT1VSQ0VfTUVN
LAo+ID4gPiAgCQkJCQkgICAiY29uZmlnX2F4aV9zbGF2ZSIpOwo+ID4gPiAtCXBjaWUtPmNvbmZp
Z19heGlfc2xhdmVfYmFzZSA9IGRldm1fcGNpX3JlbWFwX2NmZ19yZXNvdXJjZShkZXYsIHJlcyk7
Cj4gPiA+IC0JaWYgKElTX0VSUihwY2llLT5jb25maWdfYXhpX3NsYXZlX2Jhc2UpKQo+ID4gPiAt
CQlyZXR1cm4gUFRSX0VSUihwY2llLT5jb25maWdfYXhpX3NsYXZlX2Jhc2UpOwo+ID4gPiAtCXBj
aWUtPm9iX2lvX3JlcyA9IHJlczsKPiA+ID4gKwlycC0+Y29uZmlnX2F4aV9zbGF2ZV9iYXNlID0g
ZGV2bV9wY2lfcmVtYXBfY2ZnX3Jlc291cmNlKGRldiwgcmVzKTsKPiA+ID4gKwlpZiAoSVNfRVJS
KHJwLT5jb25maWdfYXhpX3NsYXZlX2Jhc2UpKQo+ID4gPiArCQlyZXR1cm4gUFRSX0VSUihycC0+
Y29uZmlnX2F4aV9zbGF2ZV9iYXNlKTsKPiA+ID4gKwlycC0+b2JfaW9fcmVzID0gcmVzOwo+ID4g
Pgo+ID4gPiAgCS8qIG1hcCBjc3IgcmVzb3VyY2UgKi8KPiA+ID4gIAlyZXMgPSBwbGF0Zm9ybV9n
ZXRfcmVzb3VyY2VfYnluYW1lKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCBAQAo+ID4gLTQ1NSw5Cj4g
PiA+ICs0NjcsOSBAQCBzdGF0aWMgaW50IG1vYml2ZWlsX3BjaWVfcGFyc2VfZHQoc3RydWN0IG1v
Yml2ZWlsX3BjaWUgKnBjaWUpCj4gPiA+ICAJaWYgKG9mX3Byb3BlcnR5X3JlYWRfdTMyKG5vZGUs
ICJwcGlvLXdpbnMiLCAmcGNpZS0+cHBpb193aW5zKSkKPiA+ID4gIAkJcGNpZS0+cHBpb193aW5z
ID0gTUFYX1BJT19XSU5ET1dTOwo+ID4gPgo+ID4gPiAtCXBjaWUtPmlycSA9IHBsYXRmb3JtX2dl
dF9pcnEocGRldiwgMCk7Cj4gPiA+IC0JaWYgKHBjaWUtPmlycSA8PSAwKSB7Cj4gPiA+IC0JCWRl
dl9lcnIoZGV2LCAiZmFpbGVkIHRvIG1hcCBJUlE6ICVkXG4iLCBwY2llLT5pcnEpOwo+ID4gPiAr
CXJwLT5pcnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDApOwo+ID4gPiArCWlmIChycC0+aXJx
IDw9IDApIHsKPiA+ID4gKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gbWFwIElSUTogJWRcbiIs
IHJwLT5pcnEpOwo+ID4gPiAgCQlyZXR1cm4gLUVOT0RFVjsKPiA+ID4gIAl9Cj4gPiA+Cj4gPiA+
IEBAIC01NjQsOSArNTc2LDkgQEAgc3RhdGljIGludCBtb2JpdmVpbF9icmluZ3VwX2xpbmsoc3Ry
dWN0Cj4gPiA+IG1vYml2ZWlsX3BjaWUgKnBjaWUpICBzdGF0aWMgdm9pZCBtb2JpdmVpbF9wY2ll
X2VuYWJsZV9tc2koc3RydWN0Cj4gPiA+IG1vYml2ZWlsX3BjaWUgKnBjaWUpICB7Cj4gPiA+ICAJ
cGh5c19hZGRyX3QgbXNnX2FkZHIgPSBwY2llLT5wY2llX3JlZ19iYXNlOwo+ID4gPiAtCXN0cnVj
dCBtb2JpdmVpbF9tc2kgKm1zaSA9ICZwY2llLT5tc2k7Cj4gPiA+ICsJc3RydWN0IG1vYml2ZWls
X21zaSAqbXNpID0gJnBjaWUtPnJwLm1zaTsKPiA+ID4KPiA+ID4gLQlwY2llLT5tc2kubnVtX29m
X3ZlY3RvcnMgPSBQQ0lfTlVNX01TSTsKPiA+ID4gKwltc2ktPm51bV9vZl92ZWN0b3JzID0gUENJ
X05VTV9NU0k7Cj4gPiA+ICAJbXNpLT5tc2lfcGFnZXNfcGh5cyA9IChwaHlzX2FkZHJfdCltc2df
YWRkcjsKPiA+ID4KPiA+ID4gIAl3cml0ZWxfcmVsYXhlZChsb3dlcl8zMl9iaXRzKG1zZ19hZGRy
KSwKPiA+ID4gQEAgLTU3OSw3ICs1OTEsOCBAQCBzdGF0aWMgdm9pZCBtb2JpdmVpbF9wY2llX2Vu
YWJsZV9tc2koc3RydWN0Cj4gPiA+IG1vYml2ZWlsX3BjaWUgKnBjaWUpCj4gPiA+Cj4gPiA+ICBz
dGF0aWMgaW50IG1vYml2ZWlsX2hvc3RfaW5pdChzdHJ1Y3QgbW9iaXZlaWxfcGNpZSAqcGNpZSkg
IHsKPiA+ID4gLQlzdHJ1Y3QgcGNpX2hvc3RfYnJpZGdlICpicmlkZ2UgPSBwY2lfaG9zdF9icmlk
Z2VfZnJvbV9wcml2KHBjaWUpOwo+ID4gPiArCXN0cnVjdCByb290X3BvcnQgKnJwID0gJnBjaWUt
PnJwOwo+ID4gPiArCXN0cnVjdCBwY2lfaG9zdF9icmlkZ2UgKmJyaWRnZSA9IHJwLT5icmlkZ2U7
Cj4gPiA+ICAJdTMyIHZhbHVlLCBwYWJfY3RybCwgdHlwZTsKPiA+ID4gIAlzdHJ1Y3QgcmVzb3Vy
Y2VfZW50cnkgKndpbjsKPiA+ID4KPiA+ID4gQEAgLTYyOSw4ICs2NDIsOCBAQCBzdGF0aWMgaW50
IG1vYml2ZWlsX2hvc3RfaW5pdChzdHJ1Y3QgbW9iaXZlaWxfcGNpZQo+ID4gKnBjaWUpCj4gPiA+
ICAJICovCj4gPiA+Cj4gPiA+ICAJLyogY29uZmlnIG91dGJvdW5kIHRyYW5zbGF0aW9uIHdpbmRv
dyAqLwo+ID4gPiAtCXByb2dyYW1fb2Jfd2luZG93cyhwY2llLCBXSU5fTlVNXzAsIHBjaWUtPm9i
X2lvX3Jlcy0+c3RhcnQsIDAsCj4gPiA+IC0JCQkgICBDRkdfV0lORE9XX1RZUEUsIHJlc291cmNl
X3NpemUocGNpZS0+b2JfaW9fcmVzKSk7Cj4gPiA+ICsJcHJvZ3JhbV9vYl93aW5kb3dzKHBjaWUs
IFdJTl9OVU1fMCwgcnAtPm9iX2lvX3Jlcy0+c3RhcnQsIDAsCj4gPiA+ICsJCQkgICBDRkdfV0lO
RE9XX1RZUEUsIHJlc291cmNlX3NpemUocnAtPm9iX2lvX3JlcykpOwo+ID4gPgo+ID4gPiAgCS8q
IG1lbW9yeSBpbmJvdW5kIHRyYW5zbGF0aW9uIHdpbmRvdyAqLwo+ID4gPiAgCXByb2dyYW1faWJf
d2luZG93cyhwY2llLCBXSU5fTlVNXzAsIDAsIDAsIE1FTV9XSU5ET1dfVFlQRSwKPiA+ID4gSUJf
V0lOX1NJWkUpOyBAQCAtNjY3LDMyICs2ODAsMzYgQEAgc3RhdGljIHZvaWQKPiA+ID4gbW9iaXZl
aWxfbWFza19pbnR4X2lycShzdHJ1Y3QgaXJxX2RhdGEgKmRhdGEpICB7Cj4gPiA+ICAJc3RydWN0
IGlycV9kZXNjICpkZXNjID0gaXJxX3RvX2Rlc2MoZGF0YS0+aXJxKTsKPiA+ID4gIAlzdHJ1Y3Qg
bW9iaXZlaWxfcGNpZSAqcGNpZTsKPiA+ID4gKwlzdHJ1Y3Qgcm9vdF9wb3J0ICpycDsKPiA+ID4g
IAl1bnNpZ25lZCBsb25nIGZsYWdzOwo+ID4gPiAgCXUzMiBtYXNrLCBzaGlmdGVkX3ZhbDsKPiA+
ID4KPiA+ID4gIAlwY2llID0gaXJxX2Rlc2NfZ2V0X2NoaXBfZGF0YShkZXNjKTsKPiA+ID4gKwly
cCA9ICZwY2llLT5ycDsKPiA+ID4gIAltYXNrID0gMSA8PCAoKGRhdGEtPmh3aXJxICsgUEFCX0lO
VFhfU1RBUlQpIC0gMSk7Cj4gPiA+IC0JcmF3X3NwaW5fbG9ja19pcnFzYXZlKCZwY2llLT5pbnR4
X21hc2tfbG9jaywgZmxhZ3MpOwo+ID4gPiArCXJhd19zcGluX2xvY2tfaXJxc2F2ZSgmcnAtPmlu
dHhfbWFza19sb2NrLCBmbGFncyk7Cj4gPiA+ICAJc2hpZnRlZF92YWwgPSBtb2JpdmVpbF9jc3Jf
cmVhZGwocGNpZSwgUEFCX0lOVFBfQU1CQV9NSVNDX0VOQik7Cj4gPiA+ICAJc2hpZnRlZF92YWwg
Jj0gfm1hc2s7Cj4gPiA+ICAJbW9iaXZlaWxfY3NyX3dyaXRlbChwY2llLCBzaGlmdGVkX3ZhbCwg
UEFCX0lOVFBfQU1CQV9NSVNDX0VOQik7Cj4gPiA+IC0JcmF3X3NwaW5fdW5sb2NrX2lycXJlc3Rv
cmUoJnBjaWUtPmludHhfbWFza19sb2NrLCBmbGFncyk7Cj4gPiA+ICsJcmF3X3NwaW5fdW5sb2Nr
X2lycXJlc3RvcmUoJnJwLT5pbnR4X21hc2tfbG9jaywgZmxhZ3MpOwo+ID4gPiAgfQo+ID4gPgo+
ID4gPiAgc3RhdGljIHZvaWQgbW9iaXZlaWxfdW5tYXNrX2ludHhfaXJxKHN0cnVjdCBpcnFfZGF0
YSAqZGF0YSkgIHsKPiA+ID4gIAlzdHJ1Y3QgaXJxX2Rlc2MgKmRlc2MgPSBpcnFfdG9fZGVzYyhk
YXRhLT5pcnEpOwo+ID4gPiAgCXN0cnVjdCBtb2JpdmVpbF9wY2llICpwY2llOwo+ID4gPiArCXN0
cnVjdCByb290X3BvcnQgKnJwOwo+ID4gPiAgCXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gPiA+ICAJ
dTMyIHNoaWZ0ZWRfdmFsLCBtYXNrOwo+ID4gPgo+ID4gPiAgCXBjaWUgPSBpcnFfZGVzY19nZXRf
Y2hpcF9kYXRhKGRlc2MpOwo+ID4gPiArCXJwID0gJnBjaWUtPnJwOwo+ID4gPiAgCW1hc2sgPSAx
IDw8ICgoZGF0YS0+aHdpcnEgKyBQQUJfSU5UWF9TVEFSVCkgLSAxKTsKPiA+ID4gLQlyYXdfc3Bp
bl9sb2NrX2lycXNhdmUoJnBjaWUtPmludHhfbWFza19sb2NrLCBmbGFncyk7Cj4gPiA+ICsJcmF3
X3NwaW5fbG9ja19pcnFzYXZlKCZycC0+aW50eF9tYXNrX2xvY2ssIGZsYWdzKTsKPiA+ID4gIAlz
aGlmdGVkX3ZhbCA9IG1vYml2ZWlsX2Nzcl9yZWFkbChwY2llLCBQQUJfSU5UUF9BTUJBX01JU0Nf
RU5CKTsKPiA+ID4gIAlzaGlmdGVkX3ZhbCB8PSBtYXNrOwo+ID4gPiAgCW1vYml2ZWlsX2Nzcl93
cml0ZWwocGNpZSwgc2hpZnRlZF92YWwsIFBBQl9JTlRQX0FNQkFfTUlTQ19FTkIpOwo+ID4gPiAt
CXJhd19zcGluX3VubG9ja19pcnFyZXN0b3JlKCZwY2llLT5pbnR4X21hc2tfbG9jaywgZmxhZ3Mp
Owo+ID4gPiArCXJhd19zcGluX3VubG9ja19pcnFyZXN0b3JlKCZycC0+aW50eF9tYXNrX2xvY2ss
IGZsYWdzKTsKPiA+ID4gIH0KPiA+ID4KPiA+ID4gIHN0YXRpYyBzdHJ1Y3QgaXJxX2NoaXAgaW50
eF9pcnFfY2hpcCA9IHsgQEAgLTc2MCw3ICs3NzcsNyBAQCBzdGF0aWMKPiA+ID4gaW50IG1vYml2
ZWlsX2lycV9tc2lfZG9tYWluX2FsbG9jKHN0cnVjdCBpcnFfZG9tYWluICpkb21haW4sCj4gPiA+
ICAJCQkJCSB1bnNpZ25lZCBpbnQgbnJfaXJxcywgdm9pZCAqYXJncykgIHsKPiA+ID4gIAlzdHJ1
Y3QgbW9iaXZlaWxfcGNpZSAqcGNpZSA9IGRvbWFpbi0+aG9zdF9kYXRhOwo+ID4gPiAtCXN0cnVj
dCBtb2JpdmVpbF9tc2kgKm1zaSA9ICZwY2llLT5tc2k7Cj4gPiA+ICsJc3RydWN0IG1vYml2ZWls
X21zaSAqbXNpID0gJnBjaWUtPnJwLm1zaTsKPiA+ID4gIAl1bnNpZ25lZCBsb25nIGJpdDsKPiA+
ID4KPiA+ID4gIAlXQVJOX09OKG5yX2lycXMgIT0gMSk7Cj4gPiA+IEBAIC03ODcsNyArODA0LDcg
QEAgc3RhdGljIHZvaWQgbW9iaXZlaWxfaXJxX21zaV9kb21haW5fZnJlZShzdHJ1Y3QKPiA+ID4g
aXJxX2RvbWFpbiAqZG9tYWluLCAgewo+ID4gPiAgCXN0cnVjdCBpcnFfZGF0YSAqZCA9IGlycV9k
b21haW5fZ2V0X2lycV9kYXRhKGRvbWFpbiwgdmlycSk7Cj4gPiA+ICAJc3RydWN0IG1vYml2ZWls
X3BjaWUgKnBjaWUgPSBpcnFfZGF0YV9nZXRfaXJxX2NoaXBfZGF0YShkKTsKPiA+ID4gLQlzdHJ1
Y3QgbW9iaXZlaWxfbXNpICptc2kgPSAmcGNpZS0+bXNpOwo+ID4gPiArCXN0cnVjdCBtb2JpdmVp
bF9tc2kgKm1zaSA9ICZwY2llLT5ycC5tc2k7Cj4gPiA+Cj4gPiA+ICAJbXV0ZXhfbG9jaygmbXNp
LT5sb2NrKTsKPiA+ID4KPiA+ID4gQEAgLTgwOCw5ICs4MjUsOSBAQCBzdGF0aWMgaW50IG1vYml2
ZWlsX2FsbG9jYXRlX21zaV9kb21haW5zKHN0cnVjdAo+ID4gPiBtb2JpdmVpbF9wY2llICpwY2ll
KSAgewo+ID4gPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwY2llLT5wZGV2LT5kZXY7Cj4gPiA+
ICAJc3RydWN0IGZ3bm9kZV9oYW5kbGUgKmZ3bm9kZSA9IG9mX25vZGVfdG9fZndub2RlKGRldi0+
b2Zfbm9kZSk7Cj4gPiA+IC0Jc3RydWN0IG1vYml2ZWlsX21zaSAqbXNpID0gJnBjaWUtPm1zaTsK
PiA+ID4gKwlzdHJ1Y3QgbW9iaXZlaWxfbXNpICptc2kgPSAmcGNpZS0+cnAubXNpOwo+ID4gPgo+
ID4gPiAtCW11dGV4X2luaXQoJnBjaWUtPm1zaS5sb2NrKTsKPiA+ID4gKwltdXRleF9pbml0KCZt
c2ktPmxvY2spOwo+ID4gPiAgCW1zaS0+ZGV2X2RvbWFpbiA9IGlycV9kb21haW5fYWRkX2xpbmVh
cihOVUxMLAo+ID4gbXNpLT5udW1fb2ZfdmVjdG9ycywKPiA+ID4gIAkJCQkJCSZtc2lfZG9tYWlu
X29wcywgcGNpZSk7Cj4gPiA+ICAJaWYgKCFtc2ktPmRldl9kb21haW4pIHsKPiA+ID4gQEAgLTgz
NCwxOCArODUxLDE5IEBAIHN0YXRpYyBpbnQgbW9iaXZlaWxfcGNpZV9pbml0X2lycV9kb21haW4o
c3RydWN0Cj4gPiA+IG1vYml2ZWlsX3BjaWUgKnBjaWUpICB7Cj4gPiA+ICAJc3RydWN0IGRldmlj
ZSAqZGV2ID0gJnBjaWUtPnBkZXYtPmRldjsKPiA+ID4gIAlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5v
ZGUgPSBkZXYtPm9mX25vZGU7Cj4gPiA+ICsJc3RydWN0IHJvb3RfcG9ydCAqcnAgPSAmcGNpZS0+
cnA7Cj4gPiA+ICAJaW50IHJldDsKPiA+ID4KPiA+ID4gIAkvKiBzZXR1cCBJTlR4ICovCj4gPiA+
IC0JcGNpZS0+aW50eF9kb21haW4gPSBpcnFfZG9tYWluX2FkZF9saW5lYXIobm9kZSwgUENJX05V
TV9JTlRYLAo+ID4gPiAtCQkJCQkJICAmaW50eF9kb21haW5fb3BzLCBwY2llKTsKPiA+ID4gKwly
cC0+aW50eF9kb21haW4gPSBpcnFfZG9tYWluX2FkZF9saW5lYXIobm9kZSwgUENJX05VTV9JTlRY
LAo+ID4gPiArCQkJCQkJJmludHhfZG9tYWluX29wcywgcGNpZSk7Cj4gPiA+Cj4gPiA+IC0JaWYg
KCFwY2llLT5pbnR4X2RvbWFpbikgewo+ID4gPiArCWlmICghcnAtPmludHhfZG9tYWluKSB7Cj4g
PiA+ICAJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGdldCBhIElOVHggSVJRIGRvbWFpblxuIik7
Cj4gPiA+ICAJCXJldHVybiAtRU5PTUVNOwo+ID4gPiAgCX0KPiA+ID4KPiA+ID4gLQlyYXdfc3Bp
bl9sb2NrX2luaXQoJnBjaWUtPmludHhfbWFza19sb2NrKTsKPiA+ID4gKwlyYXdfc3Bpbl9sb2Nr
X2luaXQoJnJwLT5pbnR4X21hc2tfbG9jayk7Cj4gPiA+Cj4gPiA+ICAJLyogc2V0dXAgTVNJICov
Cj4gPiA+ICAJcmV0ID0gbW9iaXZlaWxfYWxsb2NhdGVfbXNpX2RvbWFpbnMocGNpZSk7Cj4gPiA+
IEBAIC04NjIsNiArODgwLDcgQEAgc3RhdGljIGludCBtb2JpdmVpbF9wY2llX3Byb2JlKHN0cnVj
dAo+ID4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPiAgCXN0cnVjdCBwY2lfYnVzICpjaGls
ZDsKPiA+ID4gIAlzdHJ1Y3QgcGNpX2hvc3RfYnJpZGdlICpicmlkZ2U7Cj4gPiA+ICAJc3RydWN0
IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiA+ID4gKwlzdHJ1Y3Qgcm9vdF9wb3J0ICpycDsK
PiA+ID4gIAlpbnQgcmV0Owo+ID4gPgo+ID4gPiAgCS8qIGFsbG9jYXRlIHRoZSBQQ0llIHBvcnQg
Ki8KPiA+ID4gQEAgLTg3MCw2ICs4ODksOCBAQCBzdGF0aWMgaW50IG1vYml2ZWlsX3BjaWVfcHJv
YmUoc3RydWN0Cj4gPiBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiA+ICAJCXJldHVybiAtRU5P
TUVNOwo+ID4gPgo+ID4gPiAgCXBjaWUgPSBwY2lfaG9zdF9icmlkZ2VfcHJpdihicmlkZ2UpOwo+
ID4gPiArCXJwID0gJnBjaWUtPnJwOwo+ID4gPiArCXJwLT5icmlkZ2UgPSBicmlkZ2U7Cj4gPiA+
Cj4gPiA+ICAJcGNpZS0+cGRldiA9IHBkZXY7Cj4gPiA+Cj4gPiA+IEBAIC05MDQsMTIgKzkyNSwx
MiBAQCBzdGF0aWMgaW50IG1vYml2ZWlsX3BjaWVfcHJvYmUoc3RydWN0Cj4gPiBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gPiA+ICAJCXJldHVybiByZXQ7Cj4gPiA+ICAJfQo+ID4gPgo+ID4gPiAt
CWlycV9zZXRfY2hhaW5lZF9oYW5kbGVyX2FuZF9kYXRhKHBjaWUtPmlycSwgbW9iaXZlaWxfcGNp
ZV9pc3IsIHBjaWUpOwo+ID4gPiArCWlycV9zZXRfY2hhaW5lZF9oYW5kbGVyX2FuZF9kYXRhKHJw
LT5pcnEsIG1vYml2ZWlsX3BjaWVfaXNyLCBwY2llKTsKPiA+ID4KPiA+ID4gIAkvKiBJbml0aWFs
aXplIGJyaWRnZSAqLwo+ID4gPiAgCWJyaWRnZS0+ZGV2LnBhcmVudCA9IGRldjsKPiA+ID4gIAli
cmlkZ2UtPnN5c2RhdGEgPSBwY2llOwo+ID4gPiAtCWJyaWRnZS0+YnVzbnIgPSBwY2llLT5yb290
X2J1c19ucjsKPiA+ID4gKwlicmlkZ2UtPmJ1c25yID0gcnAtPnJvb3RfYnVzX25yOwo+ID4gPiAg
CWJyaWRnZS0+b3BzID0gJm1vYml2ZWlsX3BjaWVfb3BzOwo+ID4gPiAgCWJyaWRnZS0+bWFwX2ly
cSA9IG9mX2lycV9wYXJzZV9hbmRfbWFwX3BjaTsKPiA+ID4gIAlicmlkZ2UtPnN3aXp6bGVfaXJx
ID0gcGNpX2NvbW1vbl9zd2l6emxlOwo+ID4gPiAtLQo+ID4gPiAyLjE3LjEKPiA+ID4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
