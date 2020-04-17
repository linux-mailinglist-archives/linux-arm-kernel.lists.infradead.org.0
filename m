Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 150691AE05C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 17:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uj4wUW2OsJYZPKDJd+e8mYhulXzO5IaG7/SKrMEqi+c=; b=GgMX7Z2jgTTsWA
	8D8hsrVhaJ7dSzGYa2kaRR2YZCHw/Glrar76orv5+96uzeXP6zUMjuMMrIVadsUc+s5HHCDfcBCwC
	5bYt5UTub6TtsUgCIMaOK2DEV3dKcm4uX0nWfIxw+lcxey8H+6WSOSpX4Jm4mPG3NP3lfdPMKnxtN
	tqy0M+R8Hnaw56mBo0q0wBLSicaw+lUVJ1bK9KkDTHjaGKjsGsf0DtJXDiiHj9pvHxO7mZrNM5dbn
	wNZJH9Sl3IeokTGKcYAfUgsI+HswxZGczsj9IZ6YAAkL8KK1/+pYcsjzOsYqrS8QjkjIBaORmbDP9
	8IaazXpS1sL642tl1N9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPSVv-0004Ml-OK; Fri, 17 Apr 2020 15:02:43 +0000
Received: from mailoutvs30.siol.net ([185.57.226.221] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPSV6-00047a-TK
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 15:01:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 3B421522A05;
 Fri, 17 Apr 2020 17:01:45 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 35vgEkZzt6rN; Fri, 17 Apr 2020 17:01:44 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id AAA5C5248A7;
 Fri, 17 Apr 2020 17:01:44 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 5BE3F522A05;
 Fri, 17 Apr 2020 17:01:43 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: robh+dt@kernel.org, andrew@lunn.ch, hkallweit1@gmail.com,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [RFC PATCH 2/4] net: phy: Add support for AC200 EPHY
Date: Fri, 17 Apr 2020 17:01:42 +0200
Message-ID: <2274555.jE0xQCEvom@jernej-laptop>
In-Reply-To: <5062b508-2c68-dc94-add2-038178667c9f@gmail.com>
References: <20200416185758.1388148-1-jernej.skrabec@siol.net>
 <20200416185758.1388148-3-jernej.skrabec@siol.net>
 <5062b508-2c68-dc94-add2-038178667c9f@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_080153_104668_A09DE855 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.221 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org, linux@armlinux.org.uk,
 mripard@kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 lee.jones@linaro.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIMSNZXRydGVrLCAxNi4gYXByaWwgMjAyMCBvYiAyMToxODoyOSBDRVNUIGplIEZsb3JpYW4g
RmFpbmVsbGkgbmFwaXNhbChhKToKPiBPbiA0LzE2LzIwMjAgMTE6NTcgQU0sIEplcm5laiBTa3Jh
YmVjIHdyb3RlOgo+ID4gQUMyMDAgTUZEIElDIHN1cHBvcnRzIEZhc3QgRXRoZXJuZXQgUEhZLiBB
ZGQgYSBkcml2ZXIgZm9yIGl0Lgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJl
YyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPiAtLS0KPiA+IAo+ID4gICBkcml2ZXJzL25l
dC9waHkvS2NvbmZpZyAgfCAgIDcgKysKPiA+ICAgZHJpdmVycy9uZXQvcGh5L01ha2VmaWxlIHwg
ICAxICsKPiA+ICAgZHJpdmVycy9uZXQvcGh5L2FjMjAwLmMgIHwgMjA2ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gICAzIGZpbGVzIGNoYW5nZWQsIDIxNCBpbnNl
cnRpb25zKCspCj4gPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9waHkvYWMyMDAu
Ywo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvcGh5L0tjb25maWcgYi9kcml2ZXJz
L25ldC9waHkvS2NvbmZpZwo+ID4gaW5kZXggM2ZhMzNkMjdlZWJhLi4xNmFmNjlmNjllYWYgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL25ldC9waHkvS2NvbmZpZwo+ID4gKysrIGIvZHJpdmVycy9u
ZXQvcGh5L0tjb25maWcKPiA+IEBAIC0yODgsNiArMjg4LDEzIEBAIGNvbmZpZyBBRElOX1BIWQo+
ID4gCj4gPiAgIAkgIC0gQURJTjEzMDAgLSBSb2J1c3QsSW5kdXN0cmlhbCwgTG93IExhdGVuY3kg
MTAvMTAwLzEwMDAgR2lnYWJpdAo+ID4gICAJICAKPiA+ICAgCSAgICBFdGhlcm5ldCBQSFkKPiA+
IAo+ID4gK2NvbmZpZyBBQzIwMF9QSFkKPiA+ICsJdHJpc3RhdGUgIkFDMjAwIEVQSFkiCj4gPiAr
CWRlcGVuZHMgb24gTlZNRU0KPiA+ICsJZGVwZW5kcyBvbiBPRgo+ID4gKwloZWxwCj4gPiArCSAg
RmFzdCBldGhlcm5ldCBQSFkgYXMgZm91bmQgaW4gWC1Qb3dlcnMgQUMyMDAgbXVsdGktZnVuY3Rp
b24gCmRldmljZS4KPiA+ICsKPiA+IAo+ID4gICBjb25maWcgQU1EX1BIWQo+ID4gICAKPiA+ICAg
CXRyaXN0YXRlICJBTUQgUEhZcyIKPiA+ICAgCS0tLWhlbHAtLS0KPiA+IAo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbmV0L3BoeS9NYWtlZmlsZSBiL2RyaXZlcnMvbmV0L3BoeS9NYWtlZmlsZQo+
ID4gaW5kZXggMmY1YzcwOTNhNjViLi5iMGM1YjkxOTAwZmEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2
ZXJzL25ldC9waHkvTWFrZWZpbGUKPiA+ICsrKyBiL2RyaXZlcnMvbmV0L3BoeS9NYWtlZmlsZQo+
ID4gQEAgLTUzLDYgKzUzLDcgQEAgb2JqLSQoQ09ORklHX1NGUCkJCSs9IHNmcC5vCj4gPiAKPiA+
ICAgc2ZwLW9iai0kKENPTkZJR19TRlApCQkrPSBzZnAtYnVzLm8KPiA+ICAgb2JqLXkJCQkJKz0g
JChzZnAtb2JqLXkpICQoc2ZwLW9iai1tKQo+ID4gCj4gPiArb2JqLSQoQ09ORklHX0FDMjAwX1BI
WSkJCSs9IGFjMjAwLm8KPiA+IAo+ID4gICBvYmotJChDT05GSUdfQURJTl9QSFkpCQkrPSBhZGlu
Lm8KPiA+ICAgb2JqLSQoQ09ORklHX0FNRF9QSFkpCQkrPSBhbWQubwo+ID4gICBhcXVhbnRpYS1v
YmpzCQkJKz0gYXF1YW50aWFfbWFpbi5vCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9waHkvYWMyMDAuYyBiL2RyaXZlcnMvbmV0L3BoeS9hYzIwMC5jCj4gPiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4zZDc4NTZmZjhmOTEKPiA+IC0tLSAvZGV2
L251bGwKPiA+ICsrKyBiL2RyaXZlcnMvbmV0L3BoeS9hYzIwMC5jCj4gPiBAQCAtMCwwICsxLDIw
NiBAQAo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wKwo+ID4gKy8qKgo+
ID4gKyAqIERyaXZlciBmb3IgQUMyMDAgRXRoZXJuZXQgUEhZCj4gPiArICoKPiA+ICsgKiBDb3B5
cmlnaHQgKGMpIDIwMjAgSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+
ID4gKyAqLwo+ID4gKwo+ID4gKyNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KPiA+ICsjaW5jbHVk
ZSA8bGludXgvbW9kdWxlLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L21mZC9hYzIwMC5oPgo+ID4g
KyNpbmNsdWRlIDxsaW51eC9udm1lbS1jb25zdW1lci5oPgo+ID4gKyNpbmNsdWRlIDxsaW51eC9v
Zi5oPgo+ID4gKyNpbmNsdWRlIDxsaW51eC9waHkuaD4KPiA+ICsjaW5jbHVkZSA8bGludXgvcGxh
dGZvcm1fZGV2aWNlLmg+Cj4gPiArCj4gPiArI2RlZmluZSBBQzIwMF9FUEhZX0lECQkJMHgwMDQ0
MTQwMAo+ID4gKyNkZWZpbmUgQUMyMDBfRVBIWV9JRF9NQVNLCQkweDBmZmZmZmYwCj4gPiArCj4g
PiArLyogbWFjcm9zIGZvciBzeXN0ZW0gZXBoeSBjb250cm9sIDAgcmVnaXN0ZXIgKi8KPiA+ICsj
ZGVmaW5lIEFDMjAwX0VQSFlfUkVTRVRfSU5WQUxJRAlCSVQoMCkKPiA+ICsjZGVmaW5lIEFDMjAw
X0VQSFlfU1lTQ0xLX0dBVElORwlCSVQoMSkKPiA+ICsKPiA+ICsvKiBtYWNyb3MgZm9yIHN5c3Rl
bSBlcGh5IGNvbnRyb2wgMSByZWdpc3RlciAqLwo+ID4gKyNkZWZpbmUgQUMyMDBfRVBIWV9FX0VQ
SFlfTUlJX0lPX0VOCUJJVCgwKQo+ID4gKyNkZWZpbmUgQUMyMDBfRVBIWV9FX0xOS19MRURfSU9f
RU4JQklUKDEpCj4gPiArI2RlZmluZSBBQzIwMF9FUEhZX0VfU1BEX0xFRF9JT19FTglCSVQoMikK
PiA+ICsjZGVmaW5lIEFDMjAwX0VQSFlfRV9EUFhfTEVEX0lPX0VOCUJJVCgzKQo+ID4gKwo+ID4g
Ky8qIG1hY3JvcyBmb3IgZXBoeSBjb250cm9sIHJlZ2lzdGVyICovCj4gPiArI2RlZmluZSBBQzIw
MF9FUEhZX1NIVVRET1dOCQlCSVQoMCkKPiA+ICsjZGVmaW5lIEFDMjAwX0VQSFlfTEVEX1BPTAkJ
QklUKDEpCj4gPiArI2RlZmluZSBBQzIwMF9FUEhZX0NMS19TRUwJCUJJVCgyKQo+ID4gKyNkZWZp
bmUgQUMyMDBfRVBIWV9BRERSKHgpCQkoKCh4KSAmIDB4MUYpIDw8IDQpCj4gPiArI2RlZmluZSBB
QzIwMF9FUEhZX1hNSUlfU0VMCQlCSVQoMTEpCj4gPiArI2RlZmluZSBBQzIwMF9FUEhZX0NBTElC
KHgpCQkoKCh4KSAmIDB4RikgPDwgMTIpCj4gPiArCj4gPiArc3RydWN0IGFjMjAwX2VwaHlfZGV2
IHsKPiA+ICsJc3RydWN0IHBoeV9kcml2ZXIJKmVwaHk7Cj4gPiArCXN0cnVjdCByZWdtYXAJCSpy
ZWdtYXA7Cj4gPiArfTsKPiA+ICsKPiA+ICtzdGF0aWMgY2hhciAqYWMyMDBfcGh5X25hbWUgPSAi
QUMyMDAgRVBIWSI7Cj4gPiArCj4gPiArc3RhdGljIGludCBhYzIwMF9lcGh5X2NvbmZpZ19pbml0
KHN0cnVjdCBwaHlfZGV2aWNlICpwaHlkZXYpCj4gPiArewo+ID4gKwljb25zdCBzdHJ1Y3QgYWMy
MDBfZXBoeV9kZXYgKnByaXYgPSBwaHlkZXYtPmRydi0+ZHJpdmVyX2RhdGE7Cj4gPiArCXVuc2ln
bmVkIGludCB2YWx1ZTsKPiA+ICsJaW50IHJldDsKPiA+ICsKPiA+ICsJcGh5X3dyaXRlKHBoeWRl
diwgMHgxZiwgMHgwMTAwKTsJLyogU3dpdGNoIHRvIFBhZ2UgMSAqLwo+IAo+IFlvdSBjb3VsZCBk
ZWZpbmUgYSBtYWNybyBmb3IgYWNjZXNzaW5nIHRoZSBwYWdlIGFuZCB5b3UgbWF5IGNvbnNpZGVy
Cj4gaW1wbGVtZW50aW5nIC5yZWFkX3BhZ2UgYW5kIC53cml0ZV9wYWdlIGFuZCB1c2UgdGhlCj4g
cGh5X3JlYWRfcGFnZWQoKS9waHlfd3JpdGVfcGFnZWQoKSBoZWxwZXIgZnVuY3Rpb25zLgoKWWVh
aCwgSSBzYXcgdGhhdCwgYnV0IHRoZXkgYnJpbmcgc29tZSBvdmVyaGVhZCAtIHRoZXJlIGlzIG5v
IG5lZWQgdG8gc3dpdGNoIApwYWdlIGJhY2sgYWZ0ZXIgd3JpdGUsIGJlY2F1c2UgbmV4dCB3cml0
ZSBjaGFuZ2VzIGl0IGFueXdheS4gQnV0IGl0IHdpbGwgCnByb2JhYmx5IGJlIG1vcmUgcmVhZGFi
bGUgYW5kIGl0J3MgZG9uZSBvbmx5IG9uY2Ugc28gb3ZlcmhlYWQgaXMgYWNjZXB0YWJsZS4KCj4g
Cj4gPiArCXBoeV93cml0ZShwaHlkZXYsIDB4MTIsIDB4NDgyNCk7CS8qIERpc2FibGUgQVBTICov
Cj4gPiArCj4gPiArCXBoeV93cml0ZShwaHlkZXYsIDB4MWYsIDB4MDIwMCk7CS8qIFN3aXRjaCB0
byBQYWdlIDIgKi8KPiA+ICsJcGh5X3dyaXRlKHBoeWRldiwgMHgxOCwgMHgwMDAwKTsJLyogUEhZ
QUZFIFRSWCBvcHRpbWl6YXRpb24gKi8KPiA+ICsKPiA+ICsJcGh5X3dyaXRlKHBoeWRldiwgMHgx
ZiwgMHgwNjAwKTsJLyogU3dpdGNoIHRvIFBhZ2UgNiAqLwo+ID4gKwlwaHlfd3JpdGUocGh5ZGV2
LCAweDE0LCAweDcwOGYpOwkvKiBQSFlBRkUgVFggb3B0aW1pemF0aW9uICovCj4gPiArCXBoeV93
cml0ZShwaHlkZXYsIDB4MTMsIDB4RjAwMCk7CS8qIFBIWUFGRSBSWCBvcHRpbWl6YXRpb24gKi8K
PiA+ICsJcGh5X3dyaXRlKHBoeWRldiwgMHgxNSwgMHgxNTMwKTsKPiA+ICsKPiA+ICsJcGh5X3dy
aXRlKHBoeWRldiwgMHgxZiwgMHgwODAwKTsJLyogU3dpdGNoIHRvIFBhZ2UgNiAqLwo+IAo+IFNl
ZW1zIGxpa2UgdGhlIGNvbW1lbnQgZG9lcyBub3QgbWF0Y2ggdGhlIGNvZGUsIHRoYXQgc2hvdWxk
IGJlIFBhZ2UgOCwgbm8/CgpSaWdodCwgSSBjb3B5IHRoYXQgZnJvbSBCU1AgZHJpdmVyLiBJZiB0
aGV5IG1hZGUgdGhpcyBjb3B5IGFuZCBwYXN0ZSBlcnJvciwgSSAKd29uZGVyIGlmIGFsbCBvdGhl
ciBjb21tZW50cyBhcmUgb2suIEkgaGF2ZSBubyBkb2N1bWVudGF0aW9uIGFib3V0IHRoZXJlIApy
ZWdpc3RlcnMuCgo+IAo+ID4gKwlwaHlfd3JpdGUocGh5ZGV2LCAweDE4LCAweDAwYmMpOwkvKiBQ
SFlBRkUgVFJYIG9wdGltaXphdGlvbiAqLwo+ID4gKwo+ID4gKwlwaHlfd3JpdGUocGh5ZGV2LCAw
eDFmLCAweDAxMDApOwkvKiBzd2l0Y2ggdG8gcGFnZSAxICovCj4gPiArCXBoeV9jbGVhcl9iaXRz
KHBoeWRldiwgMHgxNywgQklUKDMpKTsJLyogZGlzYWJsZSBpbnRlbGxpZ2VudCAKSUVFRSAqLwo+
IAo+IEludGVsbGlnZW50IEVFRSBtYXliZT8KCk5vdCBzdXJlLiBBcyBJIHNhaWQgYmVmb3JlLCBJ
IGp1c3QgY29waWVkIGNvbW1lbnRzIGZyb20gQlNQIGRyaXZlcjoKaHR0cHM6Ly9naXRodWIuY29t
L0FsbHdpbm5lci1Ib21sZXQvSDYtQlNQNC45LWxpbnV4L2Jsb2IvbWFzdGVyL2RyaXZlcnMvbmV0
LwpwaHkvc3VueGktZXBoeS5jCgpUaGlzIGlzIG15IGZpcnN0IHRha2UgYXQgZXRoZXJuZXQgcGh5
IGRyaXZlcnMsIHNvIEkgZG9uJ3QgcmVhbGx5IGtub3cgaWYgYWxsIApjb21tZW50cyBhYm92ZSBt
YWtlIHNlbnNlLgoKQmVzdCByZWdhcmRzLApKZXJuZWoKCgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
