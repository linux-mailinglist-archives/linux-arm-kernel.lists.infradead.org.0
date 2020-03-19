Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E0D18B287
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 12:47:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJs1sy+5umQ/ZeqPN8Nk0eTO5cDp7VJlNLd+WMGXrYs=; b=GVpo0RkaDEuu6e
	y/oOaaWTrOkXhG4tY5uqAanR2WKcStnKgQqiCmoAWmfLfzn5VqmaJYAzpnw/xVh/hF1LkO1JowpV4
	juZf1ZSpP/WS5WbKR+mrfDXpl2o6RenExqhRuPlsrJmvettVZU2GycOj0qm0I0Z0rOo6oas+DpvZ2
	FOzAIMaVV/OupbSi0x1jzsu741WYtp4nfuTmEVh02mVnFGL8OXntvMO0vODXofCKbpN3LawEZr0Gl
	DcBW+jyEda96PN4klIvEBDufpF0xKSGtaY5L8yQkgxwxpXxUT90WE8743qCdbu4Ja8LD8LCxMTffc
	rdYo+ouDhKBj4eoQihgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEtdz-0005B5-NA; Thu, 19 Mar 2020 11:47:23 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEtdW-0004qb-R1
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 11:46:56 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02JBkkr5013052;
 Thu, 19 Mar 2020 06:46:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584618406;
 bh=eLc0F07lGlaweqEknraqkLgo/qT755GoM11Uffn7v04=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=O2LHQIekQLiFzL0AaAAvNFd7P4z1KHcazjWrvD11yLl0tJtHqNwat4fx+84zVICgk
 5mNxJun1L/HrXttmPgSGbU47lyIhR0V/+HP10WGYNZL8EjE0JcLCUgDxK+XToBy1Gc
 r78ID8wf6hGolce5M+7LmwSO0vWx/lNocPy98Efk=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02JBkkGF089071
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 19 Mar 2020 06:46:46 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 19
 Mar 2020 06:46:45 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 19 Mar 2020 06:46:46 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02JBkhsM123072;
 Thu, 19 Mar 2020 06:46:43 -0500
Subject: Re: [PATCH net-next v4 06/11] net: ethernet: ti: introduce
 am65x/j721e gigabit eth subsystem driver
To: Grygorii Strashko <grygorii.strashko@ti.com>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Tero Kristo
 <t-kristo@ti.com>, "David S . Miller" <davem@davemloft.net>, netdev
 <netdev@vger.kernel.org>, Roger Quadros <rogerq@ti.com>,
 <devicetree@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>
References: <20200317072739.23950-1-grygorii.strashko@ti.com>
 <20200317072739.23950-7-grygorii.strashko@ti.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <dcd70320-8f1e-dbb5-c275-3b203e9b5851@ti.com>
Date: Thu, 19 Mar 2020 13:46:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200317072739.23950-7-grygorii.strashko@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_044654_980315_5CA1992B 
X-CRM114-Status: GOOD (  23.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Murali Karicheri <m-karicheri2@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3J5Z29yaWksCgpPbiAxNy8wMy8yMDIwIDkuMjcsIEdyeWdvcmlpIFN0cmFzaGtvIHdyb3Rl
Ogo+IFRoZSBUSSBBTTY1eC9KNzIxRSBTb0NzIEdpZ2FiaXQgRXRoZXJuZXQgU3dpdGNoIHN1YnN5
c3RlbSAoQ1BTVzJHIE5VU1MpIGhhcwo+IHR3byBwb3J0cyAtIE9uZSBFdGhlcm5ldCBwb3J0IChw
b3J0IDEpIHdpdGggc2VsZWN0YWJsZSBSR01JSSBhbmQgUk1JSQo+IGludGVyZmFjZXMgYW5kIGFu
IGludGVybmFsIENvbW11bmljYXRpb25zIFBvcnQgUHJvZ3JhbW1pbmcgSW50ZXJmYWNlIChDUFBJ
KQo+IHBvcnQgKEhvc3QgcG9ydCAwKSBhbmQgd2l0aCBBTEUgaW4gYmV0d2Vlbi4gSXQgYWxzbyBj
b250YWlucwo+ICAtIE1hbmFnZW1lbnQgRGF0YSBJbnB1dC9PdXRwdXQgKE1ESU8pIGludGVyZmFj
ZSBmb3IgcGh5c2ljYWwgbGF5ZXIgZGV2aWNlCj4gKFBIWSkgbWFuYWdlbWVudDsKPiAgLSBVcGRh
dGVkIEFkZHJlc3MgTG9va3VwIEVuZ2luZSAoQUxFKSBtb2R1bGU7Cj4gIC0gKFRCRCkgTmV3IHZl
cnNpb24gb2YgQ29tbW9uIHBsYXRmb3JtIHRpbWUgc3luYyAoQ1BUUykgbW9kdWxlLgo+IAo+IE9u
IHRoZSBUSSBhbTY1eC9KNzIxRSBTb0NzIENQU1cgTlVTUyBFdGhlcm5ldCBzdWJzeXN0ZW0gaW50
byBkZXZpY2UgTUNVCj4gZG9tYWluIG5hbWVkIE1DVV9DUFNXMC4KPiAKPiBIb3N0IFBvcnQgMCBD
UFBJIFBhY2tldCBTdHJlYW1pbmcgSW50ZXJmYWNlIGludGVyZmFjZSBzdXBwb3J0cyA4IFRYCj4g
Y2hhbm5lbHMgYW5kIG9uZSBSWCBjaGFubmVscyBvcGVyYXRpbmcgYnkgVEkgYW02NTQgTkFWU1Mg
VW5pZmllZCBETUEKPiBQZXJpcGhlcmFsIFJvb3QgQ29tcGxleCAoVURNQS1QKSBjb250cm9sbGVy
Lgo+IAo+IEludHJvZHVjZWQgZHJpdmVyIHByb3ZpZGVzIHN0YW5kYXJkIExpbnV4IG5ldF9kZXZp
Y2UgdG8gdXNlciBzcGFjZSBhbmQgc3VwcG9ydHM6Cj4gIC0gaWZjb25maWcgdXAvZG93bgo+ICAt
IE1BQyBhZGRyZXNzIGNvbmZpZ3VyYXRpb24KPiAgLSBldGh0b29sIG9wZXJhdGlvbjoKPiAgICAt
LWRyaXZlcgo+ICAgIC0tY2hhbmdlCj4gICAgLS1yZWdpc3Rlci1kdW1wCj4gICAgLS1uZWdvdGlh
dGUgcGh5Cj4gICAgLS1zdGF0aXN0aWNzCj4gICAgLS1zZXQtZWVlIHBoeQo+ICAgIC0tc2hvdy1y
aW5nCj4gICAgLS1zaG93LWNoYW5uZWxzCj4gICAgLS1zZXQtY2hhbm5lbHMKPiAgLSBuZXRfZGV2
aWNlIGlvY3RsIG1paS1jb250cm9sCj4gIC0gcHJvbWlzYyBtb2RlCj4gCj4gIC0gcnggY2hlY2tz
dW0gb2ZmbG9hZCBmb3Igbm9uLWZyYWdtZW50ZWQgSVB2NC9JUHY2IFRDUC9VRFAgcGFja2V0cy4K
PiAgICBUaGUgQ1BTVyBOVVNTIGNhbiB2ZXJpZnkgSVB2NC9JUHY2IFRDUC9VRFAgcGFja2V0cyBj
aGVja3N1bSBhbmQgZmlsbHMKPiAgICBjc3VtIGluZm9ybWF0aW9uIGZvciBlYWNoIHBhY2tldCBp
biBwc2RhdGFbMl0gd29yZDoKPiAgICAtIEJJVCgxNikgQ0hFQ0tTVU1fRVJST1IgLSBpbmRpY2F0
ZXMgY3N1bSBlcnJvcgo+ICAgIC0gQklUKDE3KSBGUkFHTUVOVCAtICBpbmRpY2F0ZXMgZnJhZ21l
bnRlZCBwYWNrZXQKPiAgICAtIEJJVCgxOCkgVENQX1VEUF9OIC0gIEluZGljYXRlcyBUQ1AgcGFj
a2V0IHdhcyBkZXRlY3RlZAo+ICAgIC0gQklUKDE5KSBJUFY2X1ZBTElELCAgQklUKDIwKSBJUFY0
X1ZBTElEIC0gaW5kaWNhdGVzIElQdjYvSVB2NCBwYWNrZXQKPiAgICAtIEJJVCgxNSwgMCkgQ0hF
Q0tTVU1fQUREIC0gVGhpcyBpcyB0aGUgdmFsdWUgdGhhdCB3YXMgc3VtbWVkCj4gICAgZHVyaW5n
IHRoZSBjaGVja3N1bSBjb21wdXRhdGlvbi4gVGhpcyB2YWx1ZSBpcyBGRkZGaCBmb3Igbm9uIGZy
YWdtZW50ZWQKPiAgICBJUFY0LzYgVURQL1RDUCBwYWNrZXRzIHdpdGggbm8gY2hlY2tzdW0gZXJy
b3IuCj4gCj4gICAgUlggY3N1bSBvZmZsb2FkIGNhbiBiZSBkaXNhYmxlZDoKPiAJIGV0aHRvb2wg
LUsgPGRldj4gcngtY2hlY2tzdW0gb258b2ZmCj4gCj4gIC0gdHggY2hlY2tzdW0gb2ZmbG9hZCBz
dXBwb3J0IGZvciBJUHY0L0lQdjYgVENQL1VEUCBwYWNrZXRzIChKNzIxRSBvbmx5KS4KPiAgICBU
WCBjc3VtIEhXIG9mZmxvYWQgIGNhbiBiZSBlbmFibGVkL2Rpc2FibGVkOgo+IAkgZXRodG9vbCAt
SyA8ZGV2PiB0eC1jaGVja3N1bS1pcC1nZW5lcmljIG9ufG9mZgo+IAo+ICAtIG11bHRpcSBhbmQg
c3dpdGNoIGJldHdlZW4gcm91bmQgcm9iaW4vcHJpbyBtb2RlcyBmb3IgY3BwaSB0eCBxdWV1ZXMg
YnkKPiAgICB1c2luZyBOZXRkZXYgcHJpdmF0ZSBmbGFnICJwMC1yeC1wdHlwZS1ycm9iaW4iIHRv
IHN3aXRjaCBiZXR3ZWVuCj4gICAgUm91bmQgUm9iaW4gYW5kIEZpeGVkIHByaW9yaXR5IG1vZGVz
Ogo+IAkgIyBldGh0b29sIC0tc2hvdy1wcml2LWZsYWdzIGV0aDAKPiAJIFByaXZhdGUgZmxhZ3Mg
Zm9yIGV0aDA6Cj4gCSBwMC1yeC1wdHlwZS1ycm9iaW46IG9uCj4gCSAjIGV0aHRvb2wgLS1zZXQt
cHJpdi1mbGFncyBldGgwIHAwLXJ4LXB0eXBlLXJyb2JpbiBvZmYKPiAKPiAgICBOdW1iZXIgb2Yg
VFggRE1BIGNoYW5uZWxzIGNhbiBiZSBjaGFuZ2VkIHVzaW5nICJldGh0b29sIC1MIGV0aDAgdHgg
PE4+Ii4KPiAKPiAgLSBHUk8gc3VwcG9ydDogdGhlIG5hcGlfZ3JvX3JlY2VpdmUoKSBhbmQgbmFw
aV9jb21wbGV0ZV9kb25lKCkgYXJlIHVzZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogR3J5Z29yaWkg
U3RyYXNoa28gPGdyeWdvcmlpLnN0cmFzaGtvQHRpLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvdGkvS2NvbmZpZyAgICAgICAgICAgICB8ICAgMTkgKy0KPiAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvdGkvTWFrZWZpbGUgICAgICAgICAgICB8ICAgIDMgKwo+ICBkcml2ZXJzL25ldC9l
dGhlcm5ldC90aS9hbTY1LWNwc3ctZXRodG9vbC5jIHwgIDc0NyArKysrKysrCj4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L3RpL2FtNjUtY3Bzdy1udXNzLmMgICAgfCAxOTY1ICsrKysrKysrKysrKysr
KysrKysKPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkvYW02NS1jcHN3LW51c3MuaCAgICB8ICAx
NDMgKysKPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkvazMtdWRtYS1kZXNjLXBvb2wuYyB8ICAx
MjYgKysKPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkvazMtdWRtYS1kZXNjLXBvb2wuaCB8ICAg
MzAgKwoKSSB3b3VsZCByYXRoZXIgbG9vc2UgdGhlICd1ZG1hJyBmcm9tIHRoZSBuYW1lIGFuZCBB
UEkuIEl0IGlzIG1vcmUgbGlrZQpDUFBJNSBkZXNjcmlwdG9yIHBvb2wgdGhhbiBVRE1BLiBVRE1B
IGlzIGp1c3QgaGFwcGVuIHRvIHVzZSBDUFBJNS4KUHJvYmFibHkgdGktY3BwaTUtZGVzYy1wb29s
PwoKPiAgNyBmaWxlcyBjaGFuZ2VkLCAzMDMxIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC90aS9hbTY1LWNwc3ct
ZXRodG9vbC5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC90aS9h
bTY1LWNwc3ctbnVzcy5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5l
dC90aS9hbTY1LWNwc3ctbnVzcy5oCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9l
dGhlcm5ldC90aS9rMy11ZG1hLWRlc2MtcG9vbC5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL25ldC9ldGhlcm5ldC90aS9rMy11ZG1hLWRlc2MtcG9vbC5oCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9ldGhlcm5ldC90aS9LY29uZmlnIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkv
S2NvbmZpZwo+IGluZGV4IDhhNmNhMTZlZWUzYi4uODljZWM3NzhjZjJkIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L3RpL0tjb25maWcKPiArKysgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC90aS9LY29uZmlnCj4gQEAgLTYsNyArNiw3IEBACj4gIGNvbmZpZyBORVRfVkVORE9SX1RJ
Cj4gIAlib29sICJUZXhhcyBJbnN0cnVtZW50cyAoVEkpIGRldmljZXMiCj4gIAlkZWZhdWx0IHkK
PiAtCWRlcGVuZHMgb24gUENJIHx8IEVJU0EgfHwgQVI3IHx8IEFSQ0hfREFWSU5DSSB8fCBBUkNI
X09NQVAyUExVUyB8fCBBUkNIX0tFWVNUT05FCj4gKwlkZXBlbmRzIG9uIFBDSSB8fCBFSVNBIHx8
IEFSNyB8fCBBUkNIX0RBVklOQ0kgfHwgQVJDSF9PTUFQMlBMVVMgfHwgQVJDSF9LRVlTVE9ORSB8
fCBBUkNIX0szCj4gIAktLS1oZWxwLS0tCj4gIAkgIElmIHlvdSBoYXZlIGEgbmV0d29yayAoRXRo
ZXJuZXQpIGNhcmQgYmVsb25naW5nIHRvIHRoaXMgY2xhc3MsIHNheSBZLgo+ICAKPiBAQCAtMzEs
NyArMzEsNyBAQCBjb25maWcgVElfREFWSU5DSV9FTUFDCj4gIAo+ICBjb25maWcgVElfREFWSU5D
SV9NRElPCj4gIAl0cmlzdGF0ZSAiVEkgRGFWaW5jaSBNRElPIFN1cHBvcnQiCj4gLQlkZXBlbmRz
IG9uIEFSQ0hfREFWSU5DSSB8fCBBUkNIX09NQVAyUExVUyB8fCBBUkNIX0tFWVNUT05FIHx8IENP
TVBJTEVfVEVTVAo+ICsJZGVwZW5kcyBvbiBBUkNIX0RBVklOQ0kgfHwgQVJDSF9PTUFQMlBMVVMg
fHwgQVJDSF9LRVlTVE9ORSB8fCBBUkNIX0szIHx8IENPTVBJTEVfVEVTVAo+ICAJc2VsZWN0IFBI
WUxJQgo+ICAJLS0taGVscC0tLQo+ICAJICBUaGlzIGRyaXZlciBzdXBwb3J0cyBUSSdzIERhVmlu
Y2kgTURJTyBtb2R1bGUuCj4gQEAgLTk1LDYgKzk1LDIxIEBAIGNvbmZpZyBUSV9DUFRTX01PRAo+
ICAJaW1wbHkgUFRQXzE1ODhfQ0xPQ0sKPiAgCWRlZmF1bHQgbQo+ICAKPiArY29uZmlnIFRJX0sz
X0FNNjVfQ1BTV19OVVNTCj4gKwl0cmlzdGF0ZSAiVEkgSzMgQU02NTR4L0o3MjFFIENQU1cgRXRo
ZXJuZXQgZHJpdmVyIgo+ICsJZGVwZW5kcyBvbiBBUkNIX0szICYmIE9GICYmIFRJX0szX1VETUFf
R0xVRV9MQVlFUgo+ICsJc2VsZWN0IFRJX0RBVklOQ0lfTURJTwo+ICsJaW1wbHkgUEhZX1RJX0dN
SUlfU0VMCj4gKwloZWxwCj4gKwkgIFRoaXMgZHJpdmVyIHN1cHBvcnRzIFRJIEszIEFNNjU0L0o3
MjFFIENQU1cyRyBFdGhlcm5ldCBTdWJTeXN0ZW0uCj4gKwkgIFRoZSB0d28tcG9ydCBHaWdhYml0
IEV0aGVybmV0IE1BQyAoTUNVX0NQU1cwKSBzdWJzeXN0ZW0gcHJvdmlkZXMKPiArCSAgRXRoZXJu
ZXQgcGFja2V0IGNvbW11bmljYXRpb24gZm9yIHRoZSBkZXZpY2U6IE9uZSBFdGhlcm5ldCBwb3J0
Cj4gKwkgIChwb3J0IDEpIHdpdGggc2VsZWN0YWJsZSBSR01JSSBhbmQgUk1JSSBpbnRlcmZhY2Vz
IGFuZCBhbiBpbnRlcm5hbAo+ICsJICBDb21tdW5pY2F0aW9ucyBQb3J0IFByb2dyYW1taW5nIElu
dGVyZmFjZSAoQ1BQSSkgcG9ydCAocG9ydCAwKS4KPiArCj4gKwkgIFRvIGNvbXBpbGUgdGhpcyBk
cml2ZXIgYXMgYSBtb2R1bGUsIGNob29zZSBNIGhlcmU6IHRoZSBtb2R1bGUKPiArCSAgd2lsbCBi
ZSBjYWxsZWQgdGktYW02NS1jcHN3LW51c3MuCj4gKwo+ICBjb25maWcgVElfS0VZU1RPTkVfTkVU
Q1AKPiAgCXRyaXN0YXRlICJUSSBLZXlzdG9uZSBORVRDUCBDb3JlIFN1cHBvcnQiCj4gIAlzZWxl
Y3QgVElfREFWSU5DSV9NRElPCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3Rp
L01ha2VmaWxlIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvdGkvTWFrZWZpbGUKPiBpbmRleCBlY2Y3
NzZhZDg2ODkuLjYzNjJhOWIwYmI4YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC90aS9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3RpL01ha2VmaWxlCj4g
QEAgLTIzLDMgKzIzLDYgQEAgb2JqLSQoQ09ORklHX1RJX0tFWVNUT05FX05FVENQKSArPSBrZXlz
dG9uZV9uZXRjcC5vCj4gIGtleXN0b25lX25ldGNwLXkgOj0gbmV0Y3BfY29yZS5vIGNwc3dfYWxl
Lm8KPiAgb2JqLSQoQ09ORklHX1RJX0tFWVNUT05FX05FVENQX0VUSFNTKSArPSBrZXlzdG9uZV9u
ZXRjcF9ldGhzcy5vCj4gIGtleXN0b25lX25ldGNwX2V0aHNzLXkgOj0gbmV0Y3BfZXRoc3MubyBu
ZXRjcF9zZ21paS5vIG5ldGNwX3hnYmVwY3NyLm8gY3Bzd19hbGUubwo+ICsKPiArb2JqLSQoQ09O
RklHX1RJX0szX0FNNjVfQ1BTV19OVVNTKSArPSB0aS1hbTY1LWNwc3ctbnVzcy5vCj4gK3RpLWFt
NjUtY3Bzdy1udXNzLXkgOj0gYW02NS1jcHN3LW51c3MubyBjcHN3X3NsLm8gYW02NS1jcHN3LWV0
aHRvb2wubyBjcHN3X2FsZS5vIGszLXVkbWEtZGVzYy1wb29sLm8KCldvdWxkIG5vdCBiZSBiZXR0
ZXIgdG8gaGF2ZSB0aGUgZGVzYy1wb29sIChzaWxlbnQpIEtjb25maWcgc2VsZWN0YWJsZT8KVGhl
IG5vdCB5ZXQgdXBzdHJlYW0gaWNzc2ctcHJ1ZXRoIGFsc28gbmVlZHMgdGhlIHNhbWUgZGVzYy1w
b29sIGxpYnJhcnkKYXMgY3Bzdy4KCi0gUMOpdGVyCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5k
IE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3Mg
SUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
