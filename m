Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7166E1C7019
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:15:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:MIME-Version:In-Reply-To:
	Subject:To:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=G3ZY6EVaVVasSjcdYXJmuGbHrvO3mulj8BXaHVrUkvE=; b=r86gT6wpLxOs4W
	rzmT4p9HtyOFzV3xSeltJyw4XQorvfFCdGCpTckvD67CaNY+f3UR6qcAzegU9p5O2Or8SnqE7PLcM
	6t2ZawRw98UtGHnffCq6mYcdKBEoPjOHCA7bY+tn4F0DHWwtrkeauYpwM5aKoEf1nD5hGM6wnOEY2
	KYeezgxOcPC6KnGQaOXWxMqJZUTmcAJDqsDzPvxuHEk9zQD9tQU6RYknX0s+LcmT5cL8/A2Wfvx8D
	tXjw7TKYiRDhBdDwdzheKsaGvl7gpoVmFWno5WsRJcesmU3dLBr/NIqU5fMRw9gkEyhU++VDGYgqt
	QBBjXtJVcosm2diCEuQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWIxK-0003lX-1E; Wed, 06 May 2020 12:15:18 +0000
Received: from m176150.mail.qiye.163.com ([59.111.176.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIx0-0003jw-C8
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 12:15:00 +0000
Received: from vivo.com (wm-10.qy.internal [127.0.0.1])
 by m176150.mail.qiye.163.com (Hmail) with ESMTP id 621B01A1680;
 Wed,  6 May 2020 20:14:18 +0800 (CST)
Message-ID: <AJcAtgBECILBSP4ZwkKFT4o9.3.1588767258295.Hmail.bernard@vivo.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Subject: =?UTF-8?B?UmU6UmU6IFJlOiBbUEFUQ0hdIGRybS9tZWRpYXRlazogY2xlYW51cCBjb2Rpbmcgc3R5bGUgaW4gbWVkaWF0ZWsgYSBiaXQ=?=
X-Priority: 3
X-Mailer: HMail Webmail Server V2.0 Copyright (c) 2016-163.com
X-Originating-IP: 157.0.31.122
In-Reply-To: <CAAOTY_8o239n_y4LJiyU5978e87knZmNRJwSHZbEDxLLasiJjw@mail.gmail.com>
MIME-Version: 1.0
Received: from bernard@vivo.com( [157.0.31.122) ] by ajax-webmail (
 [127.0.0.1] ) ; Wed, 6 May 2020 20:14:18 +0800 (GMT+08:00)
From: Bernard <bernard@vivo.com>
Date: Wed, 6 May 2020 20:14:18 +0800 (GMT+08:00)
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZSVVDTUhCQkJDT0hOQkxPSllXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kJHlYWEh9ZQUhMTk9MSUJLQk5JN1dZDB4ZWUEPCQ4eV1kSHx4VD1lB
 WUc6MRg6Dxw5PjgyNzkoK08hDBAwPS9PFEJVSFVKTkNDTE1MSU1IT0NPVTMWGhIXVRkeCRUaCR87
 DRINFFUYFBZFWVdZEgtZQVlKTkxVS1VISlVKSUlZV1kIAVlBSktLSEo3Bg++
X-HM-Tid: 0a71e9e8772b93b4kuws621b01a1680
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_051458_718559_D932F028 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.150 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 opensource.kernel@vivo.com, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgrlj5Hku7bkurrvvJpDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4K5Y+R
6YCB5pel5pyf77yaMjAyMC0wNC0zMCAyMzo1MDozOArmlLbku7bkurrvvJpCZXJuYXJkIDxiZXJu
YXJkQHZpdm8uY29tPgrmioTpgIHkurrvvJpDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2Vy
bmVsLm9yZz4sUGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRyb25peC5kZT4sb3BlbnNvdXJj
ZS5rZXJuZWxAdml2by5jb20sRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPixsaW51eC1r
ZXJuZWwgPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc+LERSSSBEZXZlbG9wbWVudCA8ZHJp
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4sIm1vZGVyYXRlZCBsaXN0OkFSTS9NZWRpYXRl
ayBTb0Mgc3VwcG9ydCIgPGxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmc+LERhbmll
bCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4sTWF0dGhpYXMgQnJ1Z2dlciA8bWF0dGhpYXMuYmdn
QGdtYWlsLmNvbT4sTGludXggQVJNIDxsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmc+CuS4u+mimO+8mlJlOiBSZTogW1BBVENIXSBkcm0vbWVkaWF0ZWs6IGNsZWFudXAgY29kaW5n
IHN0eWxlIGluIG1lZGlhdGVrIGEgYml0PkhpLCBCZXJuYXJkOgo+Cj5CZXJuYXJkIDxiZXJuYXJk
QHZpdm8uY29tPiDmlrwgMjAyMOW5tDTmnIgzMOaXpSDpgLHlm5sg5LiL5Y2IMjozMuWvq+mBk++8
mgo+Pgo+Pgo+Pgo+PiDlj5Hku7bkurrvvJpDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2Vy
bmVsLm9yZz4KPj4g5Y+R6YCB5pel5pyf77yaMjAyMC0wNC0yOSAyMjoyMjo1MAo+PiDmlLbku7bk
urrvvJpCZXJuYXJkIFpoYW8gPGJlcm5hcmRAdml2by5jb20+Cj4+IOaKhOmAgeS6uu+8mkNodW4t
S3VhbmcgSHUgPGNodW5rdWFuZy5odUBrZXJuZWwub3JnPixQaGlsaXBwIFphYmVsIDxwLnphYmVs
QHBlbmd1dHJvbml4LmRlPixEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+LERhbmllbCBW
ZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4sTWF0dGhpYXMgQnJ1Z2dlciA8bWF0dGhpYXMuYmdnQGdt
YWlsLmNvbT4sRFJJIERldmVsb3BtZW50IDxkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
PixMaW51eCBBUk0gPGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZz4sIm1vZGVy
YXRlZCBsaXN0OkFSTS9NZWRpYXRlayBTb0Mgc3VwcG9ydCIgPGxpbnV4LW1lZGlhdGVrQGxpc3Rz
LmluZnJhZGVhZC5vcmc+LGxpbnV4LWtlcm5lbCA8bGludXgta2VybmVsQHZnZXIua2VybmVsLm9y
Zz4sb3BlbnNvdXJjZS5rZXJuZWxAdml2by5jb20KPj4g5Li76aKY77yaUmU6IFtQQVRDSF0gZHJt
L21lZGlhdGVrOiBjbGVhbnVwIGNvZGluZyBzdHlsZSBpbiBtZWRpYXRlayBhIGJpdD5IaSwgQmVy
bmFyZDoKPj4gPgo+PiA+QmVybmFyZCBaaGFvIDxiZXJuYXJkQHZpdm8uY29tPiDmlrwgMjAyMOW5
tDTmnIgyN+aXpSDpgLHkuIAg5LiL5Y2IMzo1M+Wvq+mBk++8mgo+PiA+Pgo+PiA+PiBUaGlzIGNv
ZGUgY2hhbmdlIGlzIHRvIG1ha2UgY29kZSBiaXQgbW9yZSByZWFkYWJsZS4KPj4gPj4gT3B0aW1p
c2UgYXJyYXkgc2l6ZSBhbGlnbiB0byBIRE1JIG1hY3JvIGRlZmluZS4KPj4gPj4gQWRkIGNoZWNr
IGlmIGxlbiBpcyBvdmVyYW5nZS4KPj4gPgo+PiA+T25lIHBhdGNoIHNob3VsZCBqdXN0IGRvIG9u
ZSB0aGluZywgYnV0IHRoaXMgZG8gdGhyZWUgdGhpbmdzLgo+PiA+U28gYnJlYWsgdGhpcyBpbnRv
IHRocmVlIHBhdGNoZXMuCj4+ID4KPj4gPlJlZ2FyZHMsCj4+ID5DaHVuLUt1YW5nLgo+Pgo+PiBI
aQo+PiBUaGlzIG9wdGltaXphdGlvbiBpcyBtYWlubHkgdG8gbWFrZSB0aGUgY29kZSBhIGJpdCBy
ZWFkYWJsZS4KPj4gVGhlc2UgbW9kaWZpY2F0aW9ucyBhcmUgcmVsYXRlZCwgbWFpbiBpbiBzZXZl
cmFsIHJlbGF0ZWQgZnVuY3Rpb24gY2FsbHMgaW4gdGhlIHNhbWUgZmlsZS4KPj4gSSB3YXMgYSBi
aXQgY29uZnVzZWQgdGhhdCBpZiBpdCBpcyByZWFsbHkgbmVjZXNzYXJ5IHRvIGNoYW5nZSB0byB0
aHJlZSBzZXBhcmF0ZSBwYXRjaCBzdWJtaXNzaW9ucz8KPj4KPj4gUmVnYXJkcwo+PiBCZXJuYXJk
Cj4+Cj4+ID4+Cj4+ID4+IFNpZ25lZC1vZmYtYnk6IEJlcm5hcmQgWmhhbyA8YmVybmFyZEB2aXZv
LmNvbT4KPj4gPj4gLS0tCj4+ID4+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWku
YyB8IDIyICsrKysrKysrKysrLS0tLS0tLS0tLS0KPj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBp
bnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKPj4gPj4KPj4gPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlh
dGVrL210a19oZG1pLmMKPj4gPj4gaW5kZXggZmY0M2EzZDgwNDEwLi40MGZiNTE1NGVkNWQgMTAw
NjQ0Cj4+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jCj4+ID4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jCj4+ID4+IEBAIC0zMTEs
MTUgKzMxMSwxNSBAQCBzdGF0aWMgdm9pZCBtdGtfaGRtaV9od19zZW5kX2luZm9fZnJhbWUoc3Ry
dWN0IG10a19oZG1pICpoZG1pLCB1OCAqYnVmZmVyLAo+PiA+PiAgICAgICAgIHU4IGNoZWNrc3Vt
Owo+PiA+PiAgICAgICAgIGludCBjdHJsX2ZyYW1lX2VuID0gMDsKPj4gPj4KPj4gPj4gLSAgICAg
ICBmcmFtZV90eXBlID0gKmJ1ZmZlcjsKPj4gPj4gLSAgICAgICBidWZmZXIgKz0gMTsKPj4gPj4g
LSAgICAgICBmcmFtZV92ZXIgPSAqYnVmZmVyOwo+PiA+PiAtICAgICAgIGJ1ZmZlciArPSAxOwo+
PiA+PiAtICAgICAgIGZyYW1lX2xlbiA9ICpidWZmZXI7Cj4+ID4+IC0gICAgICAgYnVmZmVyICs9
IDE7Cj4+ID4+IC0gICAgICAgY2hlY2tzdW0gPSAqYnVmZmVyOwo+PiA+PiAtICAgICAgIGJ1ZmZl
ciArPSAxOwo+PiA+PiArICAgICAgIGZyYW1lX3R5cGUgPSAqYnVmZmVyKys7Cj4+ID4+ICsgICAg
ICAgZnJhbWVfdmVyID0gKmJ1ZmZlcisrOwo+PiA+PiArICAgICAgIGZyYW1lX2xlbiA9ICpidWZm
ZXIrKzsKPj4gPj4gKyAgICAgICBjaGVja3N1bSA9ICpidWZmZXIrKzsKPgo+VGhpcyBwYXJ0IGxv
b2tzIGxpa2UgY2xlYW51cCwgc28ga2VlcCBpbiB0aGlzIHBhdGNoLgo+Cj4+ID4+ICAgICAgICAg
ZnJhbWVfZGF0YSA9IGJ1ZmZlcjsKPj4gPj4gKyAgICAgICBpZiAoKGZyYW1lX2xlbiArIEhETUlf
SU5GT0ZSQU1FX0hFQURFUl9TSVpFKSA+IGxlbikgewo+PiA+PiArICAgICAgICAgICAgICAgZGV2
X2VycihoZG1pLT5kZXYsICJXcm9uZyBmcmFtZSBsZW46ICVkXG4iLCBmcmFtZV9sZW47Cj4+ID4+
ICsgICAgICAgICAgICAgICByZXR1cm47Cj4KPlRoaXMgaXMgZXJyb3IgY2hlY2tpbmcsIG5vdCBj
bGVhbnVwIHRoZSBjb2Rpbmcgc3R5bGUsIHNvIG1vdmUgdGhpcyB0bwo+YW5vdGhlciBwYXRjaC4K
Pgo+PiA+PiArICAgICAgIH0KPj4gPj4KPj4gPj4gICAgICAgICBkZXZfZGJnKGhkbWktPmRldiwK
Pj4gPj4gICAgICAgICAgICAgICAgICJmcmFtZV90eXBlOjB4JXgsZnJhbWVfdmVyOjB4JXgsZnJh
bWVfbGVuOjB4JXgsY2hlY2tzdW06MHgleFxuIiwKPj4gPj4gQEAgLTk4Miw3ICs5ODIsNyBAQCBz
dGF0aWMgaW50IG10a19oZG1pX3NldHVwX2F2aV9pbmZvZnJhbWUoc3RydWN0IG10a19oZG1pICpo
ZG1pLAo+PiA+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0
IGRybV9kaXNwbGF5X21vZGUgKm1vZGUpCj4+ID4+ICB7Cj4+ID4+ICAgICAgICAgc3RydWN0IGhk
bWlfYXZpX2luZm9mcmFtZSBmcmFtZTsKPj4gPj4gLSAgICAgICB1OCBidWZmZXJbMTddOwo+PiA+
PiArICAgICAgIHU4IGJ1ZmZlcltIRE1JX0lORk9GUkFNRV9IRUFERVJfU0laRSArIEhETUlfQVZJ
X0lORk9GUkFNRV9TSVpFXTsKPgo+VGhpcyBpcyB0byBzeW1ib2xpemUgdGhlIG51bWJlciwgc3lt
Ym9saXphdGlvbiBpcyBtb3JlIHRoYW4gY2xlYW51cC4KPgo+UmVnYXJkcywKPkNodW4tS3Vhbmcu
Cj4KCkhpClN1cmUsIEkgZ2V0IHRoZSBwaWN0dXJlLCBpIHdpbGwgcmVzdWJtaXQsIHRoYW5rIHlv
dSEKClJlZ2FyZHMsCkJlcm5hcmQKCj4+ID4+ICAgICAgICAgc3NpemVfdCBlcnI7Cj4+ID4+Cj4+
ID4+ICAgICAgICAgZXJyID0gZHJtX2hkbWlfYXZpX2luZm9mcmFtZV9mcm9tX2Rpc3BsYXlfbW9k
ZSgmZnJhbWUsCj4+ID4+IEBAIC0xMDA4LDcgKzEwMDgsNyBAQCBzdGF0aWMgaW50IG10a19oZG1p
X3NldHVwX3NwZF9pbmZvZnJhbWUoc3RydWN0IG10a19oZG1pICpoZG1pLAo+PiA+PiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgY2hhciAqcHJvZHVjdCkKPj4g
Pj4gIHsKPj4gPj4gICAgICAgICBzdHJ1Y3QgaGRtaV9zcGRfaW5mb2ZyYW1lIGZyYW1lOwo+PiA+
PiAtICAgICAgIHU4IGJ1ZmZlclsyOV07Cj4+ID4+ICsgICAgICAgdTggYnVmZmVyW0hETUlfSU5G
T0ZSQU1FX0hFQURFUl9TSVpFICsgSERNSV9TUERfSU5GT0ZSQU1FX1NJWkVdOwo+PiA+PiAgICAg
ICAgIHNzaXplX3QgZXJyOwo+PiA+Pgo+PiA+PiAgICAgICAgIGVyciA9IGhkbWlfc3BkX2luZm9m
cmFtZV9pbml0KCZmcmFtZSwgdmVuZG9yLCBwcm9kdWN0KTsKPj4gPj4gQEAgLTEwMzEsNyArMTAz
MSw3IEBAIHN0YXRpYyBpbnQgbXRrX2hkbWlfc2V0dXBfc3BkX2luZm9mcmFtZShzdHJ1Y3QgbXRr
X2hkbWkgKmhkbWksCj4+ID4+ICBzdGF0aWMgaW50IG10a19oZG1pX3NldHVwX2F1ZGlvX2luZm9m
cmFtZShzdHJ1Y3QgbXRrX2hkbWkgKmhkbWkpCj4+ID4+ICB7Cj4+ID4+ICAgICAgICAgc3RydWN0
IGhkbWlfYXVkaW9faW5mb2ZyYW1lIGZyYW1lOwo+PiA+PiAtICAgICAgIHU4IGJ1ZmZlclsxNF07
Cj4+ID4+ICsgICAgICAgdTggYnVmZmVyW0hETUlfSU5GT0ZSQU1FX0hFQURFUl9TSVpFICsgSERN
SV9BVURJT19JTkZPRlJBTUVfU0laRV07Cj4+ID4+ICAgICAgICAgc3NpemVfdCBlcnI7Cj4+ID4+
Cj4+ID4+ICAgICAgICAgZXJyID0gaGRtaV9hdWRpb19pbmZvZnJhbWVfaW5pdCgmZnJhbWUpOwo+
PiA+PiAtLQo+PiA+PiAyLjI2LjIKPj4gPj4KPj4gPj4KPj4gPj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gPj4gTGludXgtbWVkaWF0ZWsgbWFpbGlu
ZyBsaXN0Cj4+ID4+IExpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gPj4gaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo+
Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
PiBMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKPj4gTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5m
cmFkZWFkLm9yZwo+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LW1lZGlhdGVrCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
