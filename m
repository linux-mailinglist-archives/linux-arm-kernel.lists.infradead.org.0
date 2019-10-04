Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB676CB33E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 04:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZlfJUpqgosa279o02FihCl4pLcQBsCOtOsgZyu8u0zE=; b=KpYTvVdDt8mes9SVf+RVr97Gf
	UKB1tDjOeydAmk1rsXFMM2ju6OviviNBGtRc9LWlTB7LNSbOJoejfifS94hDB3jJa6IXAKo7CGrc9
	TP+vw2PatQl/Z4WHoq0QJ0PcKg+W2KOMwhaav+CA+LVTMk7sn1y6I3y1gwxGSSjIvl1nqouwty3Or
	s2BpSGjDM6SSjX77GtzAh+3QRxnFy4uteqoppvEMEduASstQC/uMx3z+TtRFnQYaeUkr0IayTeds8
	QU7rUoWnmDqLhFWMCKT6jGTi26fUZ38KVqn6YB9L1yJABXK2nfnSDKWOf0MDoH2JoPbbAzt1+7CuP
	PzZ38o+Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGD7o-0001a8-Pf; Fri, 04 Oct 2019 02:15:20 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGD7h-0000jR-Ab; Fri, 04 Oct 2019 02:15:15 +0000
Received: from localhost (unknown [192.168.167.69])
 by lucky1.263xmail.com (Postfix) with ESMTP id CF3F05D332;
 Fri,  4 Oct 2019 10:15:00 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.10.106] (unknown [220.200.58.186])
 by smtp.263.net (postfix) whith ESMTP id
 P20279T139768363312896S1570155286485644_; 
 Fri, 04 Oct 2019 10:14:59 +0800 (CST)
X-UNIQUE-TAG: <ba7e53742f06ad9e000d5da00b9ed5d3>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: linux-arm-kernel@lists.infradead.org
X-SENDER-IP: 220.200.58.186
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_3/3=5d_arm64=3a_dts=3a_rockchip=3a_fix_Roc?=
 =?UTF-8?B?a1BybzY0IHNkbW1jIHNldHRpbmdz44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGlu?=
 =?UTF-8?Q?ux-rockchip-bounces+shawn=2elin=3drock-chips=2ecom=40lists=2einfr?=
 =?UTF-8?B?YWRlYWQub3Jn5Luj5Y+R44CR?=
To: Soeren Moch <smoch@web.de>, Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
References: <20191003215036.15023-1-smoch@web.de>
 <20191003215036.15023-3-smoch@web.de>
 <31181f3c-20ec-e717-1f7e-8b35cd54d96d@arm.com>
 <a8b20c45-0426-ee42-4efc-52e56ea6bb20@web.de>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <120e2dbc-55eb-2205-b00f-7e50928ec706@rock-chips.com>
Date: Fri, 4 Oct 2019 10:13:02 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.3
MIME-Version: 1.0
In-Reply-To: <a8b20c45-0426-ee42-4efc-52e56ea6bb20@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_191513_736253_211504D8 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.132 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.132 listed in wl.mailspike.net]
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
Cc: linux-rockchip@lists.infradead.org, shawn.lin@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS8xMC80IDg6NTMsIFNvZXJlbiBNb2NoIHdyb3RlOgo+IAo+IAo+IE9uIDA0LjEwLjE5
IDAyOjAxLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+IE9uIDIwMTktMTAtMDMgMTA6NTAgcG0sIFNv
ZXJlbiBNb2NoIHdyb3RlOgo+Pj4gQWNjb3JkaW5nIHRvIHRoZSBSb2NrUHJvNjQgc2NoZW1hdGlj
IFsxXSB0aGUgcmszMzk5IHNkbW1jIGNvbnRyb2xsZXIgaXMKPj4+IGNvbm5lY3RlZCB0byBhIG1p
Y3JvU0QgKFRGIGNhcmQpIHNsb3QsIHdoaWNoIGNhbm5vdCBiZSBzd2l0Y2hlZCB0byAxLjhWLgo+
Pgo+PiBSZWFsbHk/IEFGQUlDUyB0aGUgU0RNTUMwIHdpcmluZyBsb29rcyBwcmV0dHkgbXVjaCBp
ZGVudGljYWwgdG8gdGhlCj4+IE5hbm9QQy1UNCBzY2hlbWF0aWMgKGl0J3MgdGhlIHNhbWUgcmVm
ZXJlbmNlIGRlc2lnbiwgYWZ0ZXIgYWxsKSwgYW5kIEkKPj4ga25vdyB0aGF0IGJvYXJkIGNhbiBo
YXBwaWx5IGRyaXZlIGEgVUhTLUkgbWljcm9TRCBjYXJkIHdpdGggMS44diBJL09zLAo+PiBiZWNh
dXNlIG1pbmUncyBkb2luZyBzbyByaWdodCBub3cuCj4+Cj4+IFJvYmluLgo+IE9LLCB0aGUgUm9j
a1BybzY0IGRvZXMgbm90IGFsbG93IGEgY2FyZCByZXNldCAocG93ZXIgY3ljbGUpIHNpbmNlCj4g
VkNDM1YwX1NEIGlzIGRpcmVjdGx5IGNvbm5lY3RlZCB0byBWQ0MzVjNfU1lTICh2aWEgUjg5NTU1
KSwgdGhlCj4gU0RNTUMwX1BXSF9IIHNpZ25hbCBpcyBub3QgY29ubmVjdGVkLiBTbyB0aGUgY2Fy
ZCBmYWlscyB0byBpZGVudGlmeQo+IGl0c2VsZiBhZnRlciBzdXNwZW5kIG9yIHJlYm9vdCB3aGVu
IHN3aXRjaGVkIHRvIDEuOFYgb3BlcmF0aW9uLgo+IAoKSSBiZWxpZXZlIHdlIGFkZHJlc3NlZCB0
aGlzIGlzc3VlIGxvbmcgdGltZSBhZ28sIHBsZWFzZSBjaGVjazoKCmh0dHBzOi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQv
P2lkPTZhMTFmYzQ3ZjE3NWM4ZDg3MDE4ZTg5Y2I1OGUyZDM2YzY2NTM0Y2IKCj4gUmVnYXJkcywK
PiBTb2VyZW4KPj4KPj4+IFNvIGFsc28gY29uZmlndXJlIHRoZSB2Y2Nfc2RpbyByZWd1bGF0b3Is
IHdoaWNoIGRyaXZlcyB0aGUgaS9vIHZvbHRhZ2UKPj4+IG9mIHRoZSBzZG1tYyBjb250cm9sbGVy
LCBhY2NvcmRpbmdseS4KPj4+Cj4+PiBXaGlsZSBhdCBpdCwgYWxzbyByZW1vdmUgdGhlIGNhcC1t
bWMtaGlnaHNwZWVkIHByb3BlcnR5IG9mIHRoZSBzZG1tYwo+Pj4gY29udHJvbGxlciwgc2luY2Ug
bm8gbW1jIGNhcmQgY2FuIGJlIGNvbm5lY3RlZCBoZXJlLgo+Pj4KPj4+IFsxXSBodHRwOi8vZmls
ZXMucGluZTY0Lm9yZy9kb2Mvcm9ja3BybzY0L3JvY2twcm82NF92MjEtU0NILnBkZgo+Pj4KPj4+
IEZpeGVzOiBlNGYzZmI0OTA5NjcgKCJhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIGluaXRpYWwg
ZHRzIHN1cHBvcnQKPj4+IGZvciBSb2NrcHJvNjQiKQo+Pj4gU2lnbmVkLW9mZi1ieTogU29lcmVu
IE1vY2ggPHNtb2NoQHdlYi5kZT4KPj4+IC0tLQo+Pj4gQ2M6IEhlaWtvIFN0dWVibmVyIDxoZWlr
b0BzbnRlY2guZGU+Cj4+PiBDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+
Pj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4gQ2M6IGxpbnV4
LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKPj4+IC0tLQo+Pj4gIMKgIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHMgfCAzICstLQo+Pj4gIMKgIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cwo+Pj4g
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCj4+PiBp
bmRleCAyZTQ0ZGFlNDg2NWEuLjA4NGYxZDk5NGE1MCAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHMKPj4+ICsrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHMKPj4+IEBAIC0zNTMs
NyArMzUzLDcgQEAKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZ3Vs
YXRvci1uYW1lID0gInZjY19zZGlvIjsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByZWd1bGF0b3ItYm9vdC1vbjsKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMwMDAw
MDA+Owo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVndWxhdG9yLW1h
eC1taWNyb3ZvbHQgPSA8MzAwMDAwMD47Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZWd1bGF0b3Itc3RhdGUtbWVtIHsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVndWxhdG9yLW9uLWluLXN1c3BlbmQ7Cj4+PiBAQCAtNjI0
LDcgKzYyNCw2IEBACj4+Pgo+Pj4gIMKgICZzZG1tYyB7Cj4+PiAgwqDCoMKgwqDCoCBidXMtd2lk
dGggPSA8ND47Cj4+PiAtwqDCoMKgIGNhcC1tbWMtaGlnaHNwZWVkOwo+Pj4gIMKgwqDCoMKgwqAg
Y2FwLXNkLWhpZ2hzcGVlZDsKPj4+ICDCoMKgwqDCoMKgIGNkLWdwaW9zID0gPCZncGlvMCA3IEdQ
SU9fQUNUSVZFX0xPVz47Cj4+PiAgwqDCoMKgwqDCoCBkaXNhYmxlLXdwOwo+Pj4gLS0gCj4+PiAy
LjE3LjEKPj4+Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+Pj4gTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo+Pj4KPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4gCgoKLS0gCkJlc3Qg
UmVnYXJkcwpTaGF3biBMaW4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
