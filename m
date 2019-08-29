Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF02A18AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2ZCf8rtjkWJrhWwl3FiYNjS8la7ZSrKYN7qoCRiu4mA=; b=jH1xIdzkRT1E5jL93uGqDdTP9
	xQIhHZD/eeg9Wx6N5NcmocSJ8Y4Zk7Y28+qhl304gNT6Nn0tmW8ynjD78V0IdbYzDFK5E6ImWZNza
	wQNl99o2kdzqAXIH1Ky2zon2AO45rJ0Hy8sfwIKEfeoRXhY+oqISfjKxzN7azCrLmpST2R1x1mcZ+
	0ADVSlEo9tddEd1vNGSbdv6dgE9dr130+a2PtCNlS+HkZ7pHsQXsL1geVLTAZ+gUEaxge3gDrUAFh
	UipsrNjy2N3T+p36BRs83svBF34QLgkBf2O5dQEBd6xdyHArwYjeSqNlIgIXsLdgOYSA4StZ+1AEY
	YmkV4k+2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IhM-0004JO-H6; Thu, 29 Aug 2019 11:34:40 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Idv-0001Db-4R; Thu, 29 Aug 2019 11:31:08 +0000
Received: from zhangzj?rock-chips.com (unknown [192.168.167.73])
 by regular1.263xmail.com (Postfix) with ESMTP id 2B4EF38D;
 Thu, 29 Aug 2019 19:30:58 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.9.224] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P18543T140265176168192S1567078256984205_; 
 Thu, 29 Aug 2019 19:30:57 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <658534ad7c1ca7df45c972965d3d6d09>
X-RL-SENDER: zhangzj@rock-chips.com
X-SENDER: zhangzj@rock-chips.com
X-LOGIN-NAME: zhangzj@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v1 1/1] ARM: dts: rockchip: set crypto default disabled on
 rk3288
To: Heiko Stuebner <heiko@sntech.de>
References: <20190827071439.14767-1-zhangzj@rock-chips.com>
 <4806912.UyKsYhR33o@phil>
From: Elon Zhang <zhangzj@rock-chips.com>
Message-ID: <3b9cbffa-291e-fc95-bce6-5b24f5fd860d@rock-chips.com>
Date: Thu, 29 Aug 2019 19:31:00 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <4806912.UyKsYhR33o@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043107_395020_5B5546C2 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.203 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpPbiA4LzI3LzIwMTkgMjI6MjgsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+IEhp
LAo+Cj4gQW0gRGllbnN0YWcsIDI3LiBBdWd1c3QgMjAxOSwgMDk6MTQ6MzkgQ0VTVCBzY2hyaWVi
IEVsb24gWmhhbmc6Cj4+IE5vdCBldmVyeSBib2FyZCBuZWVkcyB0byBlbmFibGUgY3J5cHRvIG5v
ZGUsIHNvIHRoZSBub2RlIHNob3VsZAo+PiBiZSBzZXQgZGVmYXVsdCBkaXNhYmxlZCBpbiByazMy
ODguZHRzaSBhbmQgZW5hYmxlZCBpbiBzcGVjaWZpYwo+PiBib2FyZCBkdHMgZmlsZS4KPiBDYW4g
eW91IGdpdmUgYSBiaXQgbW9yZSByYXRpb25hbGUgaGVyZT8gVGhlcmUgd291bGQgbmVlZCB0byBi
ZSBhIHZlcnkKPiBzcGVjaWZpYyByZWFzb24gYmVjYXVzZSBvZiB0aGUgZm9sbG93aW5nOgo+Cj4g
VGhlIGNyeXB0byBtb2R1bGUgaXMgbm90IHdpcmVkIHRvIHNvbWUgYm9hcmQtc3BlY2lmaWMgY29t
cG9uZW50cywKPiBzbyBpdHMgdXNhYmlsaXR5IGRvZXMgbm90IGRlcGVuZCBvbiB0aGUgc3BlY2lm
aWMgYm9hcmQgYXQgYWxsLgo+IEluc3RlYWQgZXZlcnkgYm9hcmQgY2FuIGp1c3QgdXNlIGl0IG91
dCBvZiB0aGUgYm94IGFuZCB0aGUgZGV2aWNldHJlZQo+IGlzIHN1cHBvc2VkIHRvIGRlc2NyaWJl
IHRoZSBoYXJkd2FyZSBhbmQgaXMgX25vdF8gbWVhbnQgYXMgYSBzcGFjZQo+IGZvciB1c2VyIGNv
bmZpZ3VyYXRpb24uCgpSaWdodCBmb3IgYWxtb3N0IGFsbCBub3JtYWwgaGFyZHdhcmUgbW9kdWxl
cyBidXQgdGhlIGNyeXB0byBtb2R1bGUgd2FzIApkZXNpZ25lZAoKZm9yIHNlY3VyZSB3b3JsZC4g
QXMgYSByZXN1bHQswqAgdGhlIGNyeXB0byBtb2R1bGUgd2lsbCBiZWNvbWUgCmluYWNjZXNzaWJs
ZSBmb3IgbGludXgKCmtlcm5lbCBpZiBzZWN1cmUgd29ybGQgZW5hYmxlIGl0LgoKV2UgcGxhbiB0
byBlbmFibGUgdGhlIGNyeXB0byBtb2R1bGUgaW4gc2VjdXJlIHdvcmxkIHNvIHdlIHNob3VsZCBz
ZXQgCmNyeXB0byBtb2R1bGUKCmRlZmF1bHQgZGlzYWJsZWQgaW4gbGludXgga2VybmVsLgoKPgo+
IFNvIGluIGZhY3QgdGhlIHN0YXR1cyBwcm9wZXJ0eSBzaG91bGQgcHJvYmFibHkgZ28gYXdheSBj
b21wbGV0ZWx5IGZyb20KPiB0aGUgY3J5cHRvIG5vZGUsIGFzIGl0J3MgdXNhYmxlIG91dCBvZiB0
aGUgYm94IGluIGFsbCBjYXNlcy4KPgo+Cj4gSGVpa28KPgo+Cj4KPj4gU2lnbmVkLW9mZi1ieTog
RWxvbiBaaGFuZyA8emhhbmd6akByb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+ICAgYXJjaC9hcm0v
Ym9vdC9kdHMvcmszMjg4LmR0c2kgfCAyICstCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0
cy9yazMyODguZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC5kdHNpCj4+IGluZGV4IGNj
ODkzZTE1NGZlNS4uZDUwOWFhMjQxNzdjIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0
cy9yazMyODguZHRzaQo+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9yazMyODguZHRzaQo+PiBA
QCAtOTg0LDcgKzk4NCw3IEBACj4+ICAgCQljbG9jay1uYW1lcyA9ICJhY2xrIiwgImhjbGsiLCAi
c2NsayIsICJhcGJfcGNsayI7Cj4+ICAgCQlyZXNldHMgPSA8JmNydSBTUlNUX0NSWVBUTz47Cj4+
ICAgCQlyZXNldC1uYW1lcyA9ICJjcnlwdG8tcnN0IjsKPj4gLQkJc3RhdHVzID0gIm9rYXkiOwo+
PiArCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiAgIAl9Owo+PiAgIAo+PiAgIAlpZXBfbW11OiBp
b21tdUBmZjkwMDgwMCB7Cj4+Cj4KPgo+Cj4KPgo+CgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
