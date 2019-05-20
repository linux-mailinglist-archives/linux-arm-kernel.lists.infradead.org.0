Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0452922DA2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hlLvnQr3KZuse00BNeXJoyxvkij+/CEe0qab7qSUy10=; b=EkNTTDblneOVM8o0RTvIJ5Ld3
	jYW3UEppNNM/f2VD5F9mR7/mcDrWZVpnGe/CN5ST6eDTDBt2EyL5J6lv7HS7EM8zQ3sfdnNTsUrmu
	D/+1uwkcH+r2ngcSfNbVe+yth69lv2JmEnVWVu203AAN2qwKsxhvITJk/cMPIKN17rLw7ehBTyRAi
	rV8pP46gj8rJt7DLF3EcF526vP4Row/jWTVef/bXv4HWfczIFFCnDGue956BmDmqg5bNwR8YFCMPj
	vy6I5Yw++ethoZdxUPiIVky7/3dJTY3TOCXR+96zaLz2Q9mOXsuiinpPbWLNPUBnacyVsop+yiETt
	lmjWH2Emw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdHc-00089m-PN; Mon, 20 May 2019 08:04:32 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdHS-0007zE-Qu; Mon, 20 May 2019 08:04:25 +0000
Received: from wxt?rock-chips.com (unknown [192.168.167.161])
 by regular1.263xmail.com (Postfix) with ESMTP id 1F4D63EE;
 Mon, 20 May 2019 16:04:14 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.21.194] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32757T140039436609280S1558339450334725_; 
 Mon, 20 May 2019 16:04:11 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c6a2d7109fd86b9f3d455bed21fbadbc>
X-RL-SENDER: wxt@rock-chips.com
X-SENDER: wxt@rock-chips.com
X-LOGIN-NAME: wxt@rock-chips.com
X-FST-TO: hjc@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH] phy: rockchip-dp: Avoid power leak by leaving the PHY
 power on
To: Douglas Anderson <dianders@chromium.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>
References: <20190507234857.81414-1-dianders@chromium.org>
From: Caesar Wang <wxt@rock-chips.com>
Message-ID: <79ca5499-6b7d-fe55-2030-283f5cfb1d27@rock-chips.com>
Date: Mon, 20 May 2019 16:04:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190507234857.81414-1-dianders@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_010423_182291_1D391298 
X-CRM114-Status: GOOD (  25.96  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Elaine Zhang <zhangqing@rock-chips.com>, hl@rock-chips.com,
 dbasehore@chromium.org, linux-kernel@vger.kernel.org,
 Huang Jiachai <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 "nickey.yang \(nickey.yang@rock-chips.com\)" <nickey.yang@rock-chips.com>,
 mka@chromium.org, ryandcase@chromium.org, groeck@chromium.org,
 wzz <wzz@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRG91ZywKCkZvciBub3cswqAgbm9ib2R5IG9mIHJvY2tjaGlwIGlzIHJlc3BvbnNpYmxlIGZv
ciB0aGlzIGRyaXZlci4KQ2M6IE5pY2tleSwgWmFpbiwgSGpjCgoKT24gNS84LzE5IDc6NDggQU0s
IERvdWdsYXMgQW5kZXJzb24gd3JvdGU6Cj4gV2hpbGUgdGVzdGluZyBhIG5ld2VyIGtlcm5lbCBv
biByazMyODgtYmFzZWQgQ2hyb21lYm9va3MgSSBmb3VuZCB0aGF0Cj4gdGhlIHBvd2VyIGRyYXcg
aW4gc3VzcGVuZCB3YXMgaGlnaGVyIG9uIG5ld2VyIGtlcm5lbHMgY29tcGFyZWQgdG8gdGhlCj4g
ZG93bnN0cmVhbSBDaHJvbWUgT1MgMy4xNCBrZXJuZWwuICBTcGVjaWZpY2FsbHkgdGhlIHBvd2Vy
IG9mIGFuCj4gcmszMjg4LXZleXJvbi1qZXJyeSBib2FyZCB0aGF0IEkgdGVzdGVkIChhcyBtZWFz
dXJlZCBieSB0aGUgc21hcnQKPiBiYXR0ZXJ5KSB3YXMgfjE2IG1BIG9uIENocm9tZSBPUyAzLjE0
IGFuZCB+MjEgbUEgb24gYSBuZXdlciBrZXJuZWwuCj4KPiBJIHRyYWNrZWQgdGhlIHJlZ3Jlc3Np
b24gZG93biB0byB0aGUgZmFjdCB0aGF0IHRoZSAiRFAgUEhZIiBkcml2ZXIKPiBkaWRuJ3QgZXhp
c3QgaW4gb3VyIGRvd25zdHJlYW0gMy4xNC4gIFdlIHJlbGllZCBvbiB0aGUgZURQIGRyaXZlciB0
bwo+IHR1cm4gb24gdGhlIGNsb2NrIGFuZCByZWxpZWQgb24gdGhlIGZhY3QgdGhhdCB0aGUgcG93
ZXIgZm9yIHRoZSBQSFkKPiB3YXMgZGVmYXVsdCB0dXJuZWQgb24uCj4KPiBTcGVjaWZpY2FsbHkg
dGhlIHRoaW5nIHRoYXQgY2F1c2VkIHRoZSBwb3dlciByZWdyZXNzaW9uIHdhcyB0dXJuaW5nCj4g
dGhlIGVEUCBQSFkgX29mZl8uICBQcmVzdW1hYmx5IHRoZXJlIGlzIHNvbWUgc29ydCBvZiBwb3dl
ciBsZWFrIGluIHRoZQo+IHN5c3RlbSBhbmQgd2hlbiB3ZSB0dXJuIHRoZSBQSFkgb2ZmIHNvbWV0
aGluZyBpcyBsZWFjaGluZyBwb3dlciBmcm9tCj4gc29tZXRoaW5nIGVsc2UgYW5kIGNhdXNpbmcg
ZXhjZXNzaXZlIHBvd2VyIGRyYXcuCj4KPiBEb2luZyBhIHNlYXJjaCB0aHJvdWdoIGRldmljZSB0
cmVlcyBzaG93cyB0aGF0IHRoaXMgUEhZIGlzIG9ubHkgZXZlcgo+IHVzZWQgb24gcmszMjg4LiAg
UHJlc3VtYWJseSB0aGlzIHBvd2VyIGxlYWsgaXMgcHJlc2VudCBvbiBhbGwKPiByazMyODgtU29D
cyBydW5uaW5nIHVwc3RyZWFtIExpbnV4IHNvIGxldCdzIGp1c3Qgd2hhY2sgdGhlIGRyaXZlciB0
bwo+IG1ha2Ugc3VyZSB3ZSBuZXZlciB0dXJuIG9mZiBwb3dlci4gIFdlJ2xsIHN0aWxsIGxlYXZl
IHRoZSBwYXJ0cyB0aGF0Cj4gdHVybiBfb25fIHRoZSBwb3dlciBhbmQgZ3JhYiB0aGUgY2xvY2ss
IHRob3VnaC4KPgo+IE5PVEVTOgo+IEEpIElmIHNvbWVvbmUgY2FuIGlkZW50aWZ5IHdoYXQgdGhp
cyBwb3dlciBsZWFrIGlzIGFuZCBmaXggaXQgaW4gc29tZQo+ICAgICBvdGhlciB3YXkgd2UgY2Fu
IHJldmVydCB0aGlzIHBhdGNoLgo+IEIpIElmIHNvbWVvbmUgY2FuIHNob3cgdGhhdCB0aGVpciBw
YXJ0aWN1bGFyIGJvYXJkIGRvZXNuJ3QgaGF2ZSB0aGlzCj4gICAgIHBvd2VyIGxlYWsgKG1heWJl
IHRoZXkgaGF2ZSByYWlscyBob29rZWQgdXAgZGlmZmVyZW50bHk/KSB3ZSBjYW4KPiAgICAgcGVy
aGFwcyBhZGQgYSBkZXZpY2UgdHJlZSBwcm9wZXJ0eSBpbmRpY2F0aW5nIHRoYXQgZm9yIHNvbWUg
Ym9hcmRzCj4gICAgIGl0J3MgT0sgdG8gdHVybiB0aGlzIHJhaWwgb2ZmLiAgSSBkb24ndCB3YW50
IHRvIGFkZCB0aGlzIHByb3BlcnR5Cj4gICAgIHVudGlsIEkga25vdyBvZiBhIGJvYXJkIHRoYXQg
bmVlZHMgaXQuCj4KPiBGaXhlczogZmQ5Njg5NzNkZTk1ICgicGh5OiBBZGQgZHJpdmVyIGZvciBy
b2NrY2hpcCBEaXNwbGF5IFBvcnQgUEhZIikKPiBTaWduZWQtb2ZmLWJ5OiBEb3VnbGFzIEFuZGVy
c29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+CgoKUmV2aWV3ZWQtYnk6IENhZXNhciBXYW5nIDx3
eHRAcm9jay1jaGlwcy5jb20+Cgo+IC0tLQo+IEFzIGZhciBhcyBJIGtub3cgWWFraXIgKHRoZSBv
cmlnaW5hbCBhdXRob3IpIGlzIG5vIGxvbmdlciBhdCBSb2NrY2hpcC4KPiBJJ3ZlIGFkZGVkIGEg
ZmV3IG90aGVyIFJvY2tjaGlwIHBlb3BsZSBhbmQgaG9wZWZ1bGx5IG9uZSBvZiB0aGVtIGNhbgo+
IGhlbHAgZGlyZWN0IGV2ZW4gaWYgdGhleSdyZSBub3QgZGlyZWN0bHkgcmVzcG9uc2libGUuCj4K
PiAgIGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1kcC5jIHwgMTEgKysrKysrKy0t
LS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWRwLmMgYi9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtZHAuYwo+IGluZGV4IDhiMjY3YTc0NjU3
Ni4uMTBiYmNkNjlkNmY1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1y
b2NrY2hpcC1kcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWRw
LmMKPiBAQCAtMzUsNyArMzUsNyBAQCBzdHJ1Y3Qgcm9ja2NoaXBfZHBfcGh5IHsKPiAgIHN0YXRp
YyBpbnQgcm9ja2NoaXBfc2V0X3BoeV9zdGF0ZShzdHJ1Y3QgcGh5ICpwaHksIGJvb2wgZW5hYmxl
KQo+ICAgewo+ICAgCXN0cnVjdCByb2NrY2hpcF9kcF9waHkgKmRwID0gcGh5X2dldF9kcnZkYXRh
KHBoeSk7Cj4gLQlpbnQgcmV0Owo+ICsJaW50IHJldCA9IDA7Cj4gICAKPiAgIAlpZiAoZW5hYmxl
KSB7Cj4gICAJCXJldCA9IHJlZ21hcF93cml0ZShkcC0+Z3JmLCBHUkZfU09DX0NPTjEyLAo+IEBA
IC01MCw5ICs1MCwxMiBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3NldF9waHlfc3RhdGUoc3RydWN0
IHBoeSAqcGh5LCBib29sIGVuYWJsZSkKPiAgIAl9IGVsc2Ugewo+ICAgCQljbGtfZGlzYWJsZV91
bnByZXBhcmUoZHAtPnBoeV8yNG0pOwo+ICAgCj4gLQkJcmV0ID0gcmVnbWFwX3dyaXRlKGRwLT5n
cmYsIEdSRl9TT0NfQ09OMTIsCj4gLQkJCQkgICBHUkZfRURQX1BIWV9TSUREUV9ISVdPUkRfTUFT
SyB8Cj4gLQkJCQkgICBHUkZfRURQX1BIWV9TSUREUV9PRkYpOwo+ICsJCS8qCj4gKwkJICogSW50
ZW50aW9uYWxseSBkb24ndCB0dXJuIFNJRERRIG9mZiB3aGVuIGRpc2FibGluZwo+ICsJCSAqIHRo
ZSBQSFkuICBUaGVyZSBpcyBhIHBvd2VyIGxlYWsgb24gcmszMjg4IGFuZAo+ICsJCSAqIHN1c3Bl
bmQgcG93ZXIgX2luY3JlYXNlc18gYnkgNSBtQSBpZiB5b3UgdHVybiB0aGlzCj4gKwkJICogb2Zm
Lgo+ICsJCSAqLwoKCkFzIGRlc2NyaWJlZCBieSBUUk0sIFRoZSDigJxHUkZfRURQX1BIWV9TSURE
UV9PRkbigJ0gdGhhdCBhbGwgY2lyY3VpdHMgYXJlIApwb3dlciBkb3duLCBhbGwKSU8gYXJlIGhp
Z2gtWi4gVGhhdCBzaG91bGQgbWFrZSBzdXJlIHRoZSBQRF9WSU9bMF0gd2FzIGRpc2FibGVkIGZp
cnN0LCAKbm8gYWN0aXZlLgpCdXQgdGhlIHJrMzI4OCBjYW4ndCB0dXJuIHBkX3ZpbyBvZmYgYXQg
dGhlIG1vbWVudC4KClswXQpQRF9WSU8gV2hpY2ggY2xvY2sgYXJlIGRldmljZSBjbG9ja3M6CiDC
oMKgwqAgwqDCoMKgIMKgwqDCoCDCoCrCoMKgwqAgY2xvY2tzwqDCoMKgIMKgwqDCoCBkZXZpY2Vz
CiDCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoCrCoMKgwqAgKl9JRVDCoMKgwqAgwqDCoMKgIElFUDpJ
bWFnZSBFbmhhbmNlbWVudCBQcm9jZXNzb3IKIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgKsKgwqDC
oCAqX0lTUMKgwqDCoCDCoMKgwqAgSVNQOkltYWdlIFNpZ25hbCBQcm9jZXNzaW5nCiDCoMKgwqAg
wqDCoMKgIMKgwqDCoCDCoCrCoMKgwqAgKl9WSVDCoMKgwqAgwqDCoMKgIFZJUDpWaWRlbyBJbnB1
dCBQcm9jZXNzb3IKIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgKsKgwqDCoCAqX1ZPUCrCoMKgwqAg
wqDCoMKgIFZPUDpWaXN1YWwgT3V0cHV0IFByb2Nlc3NvcgogwqDCoMKgIMKgwqDCoCDCoMKgwqAg
wqAqwqDCoMKgICpfUkdBwqDCoMKgIMKgwqDCoCBSR0EKIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKg
KsKgwqDCoCAqX0VEUCrCoMKgwqAgwqDCoMKgIEVEUAogwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqAq
wqDCoMKgICpfTFZEU18qwqDCoMKgIExWRFMKIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgKsKgwqDC
oCAqX0hETUnCoMKgwqAgwqDCoMKgIEhETUkKIMKgwqDCoCDCoMKgwqAgwqDCoMKgIMKgKsKgwqDC
oCAqX01JUElfKsKgwqDCoCBNSVBJCgoKVGhhbmtzLAotQ2Flc2FyCgoKPiAgIAl9Cj4gICAKPiAg
IAlyZXR1cm4gcmV0OwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
