Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 603B1FA6BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 03:44:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=odGox3dAtdRBpSdyZe+KL+A5FJyqgqCbjVYZaoEnPYE=; b=hKZvKWH5gKt8UWJz8mwSJ7xFR
	qpk6asT9vZSXeXArPyzEdl68uYYm7kVd9gWeFiFSbTbaYtnVQpOIAKXCVHeWPCmTvxEepWxREdOMP
	FxS6URuvbpX5K5o2SgGx2Kek/1jubkwiXlp6akK0U833YPjyya2q8at1QIAlluGxZauVTD/VTJSKm
	vAwNqtwdwUTAYUumKnG8DtuRxl44Kc3CpecXNU9+tKuq1ivXKvo9eta39fYArHQu79sKJgNSb/BTi
	A36+6ft8/83Q5xZW6rtLN/Ops+9wrFTWrZyKDNVk6cUT8BXEpHfRPQE14iPqioqN1WLpMV/xHRUsm
	6N5ICOlhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUido-0006Zn-Fi; Wed, 13 Nov 2019 02:44:20 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUide-0006Z9-Fk; Wed, 13 Nov 2019 02:44:13 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 59FD51EB;
 Wed, 13 Nov 2019 10:44:04 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P27171T139653306865408S1573613042814360_; 
 Wed, 13 Nov 2019 10:44:03 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4f10d3830a5a75db422b247fc6297adc>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: daniel.lezcano@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 2/3] arm64: dts: rk3399-rock960: add vdd_log
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-2-kever.yang@rock-chips.com>
 <20191111052232.GA2842@Mani-XPS-13-9360>
 <3d129826-7705-819e-e68b-cc9080eb6c95@rock-chips.com>
 <20191112171726.GA18622@Mani-XPS-13-9360>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <885996a6-e314-52c8-fec4-f66526dd1397@rock-chips.com>
Date: Wed, 13 Nov 2019 10:44:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191112171726.GA18622@Mani-XPS-13-9360>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_184410_890111_1612402E 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 heiko@sntech.de, daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFuaXZhbm5hbiwKCk9uIDIwMTkvMTEvMTMg5LiK5Y2IMToxNywgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIFR1ZSwgTm92IDEyLCAyMDE5IGF0IDA0OjEwOjE3UE0gKzA4MDAs
IEtldmVyIFlhbmcgd3JvdGU6Cj4+IE9uIDIwMTkvMTEvMTEg5LiL5Y2IMToyMiwgTWFuaXZhbm5h
biBTYWRoYXNpdmFtIHdyb3RlOgo+Pj4gSGkgS2V2ZXIsCj4+Pgo+Pj4gT24gTW9uLCBOb3YgMTEs
IDIwMTkgYXQgMDg6NTE6NTdBTSArMDgwMCwgS2V2ZXIgWWFuZyB3cm90ZToKPj4+PiBBZGQgdmRk
X2xvZyBub2RlIGFjY29yZGluZyB0byByb2NrOTYwIHNjaGVtYXRpYyBWMTMuCj4+Pj4KPj4+PiBT
aWduZWQtb2ZmLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgo+Pj4+
IC0tLQo+Pj4+Cj4+Pj4gICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9j
azk2MC5kdHNpIHwgMTIgKysrKysrKysrKysrCj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDEyIGlu
c2VydGlvbnMoKykKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1yb2NrOTYwLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1yb2NrOTYwLmR0c2kKPj4+PiBpbmRleCBjN2Q0OGQ0MWUxODQuLjczYWZlZTI1NzEx
NSAxMDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1y
b2NrOTYwLmR0c2kKPj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1yb2NrOTYwLmR0c2kKPj4+PiBAQCAtNzYsNiArNzYsMTggQEAKPj4+PiAgICAJCXJlZ3VsYXRv
ci1hbHdheXMtb247Cj4+Pj4gICAgCQl2aW4tc3VwcGx5ID0gPCZ2Y2M1djBfc3lzPjsKPj4+PiAg
ICAJfTsKPj4+PiArCj4+Pj4gKwl2ZGRfbG9nOiB2ZGQtbG9nIHsKPj4+PiArCQljb21wYXRpYmxl
ID0gInB3bS1yZWd1bGF0b3IiOwo+Pj4+ICsJCXB3bXMgPSA8JnB3bTIgMCAyNTAwMCAxPjsKPj4+
PiArCQlyZWd1bGF0b3ItbmFtZSA9ICJ2ZGRfbG9nIjsKPj4+PiArCQlyZWd1bGF0b3ItYWx3YXlz
LW9uOwo+Pj4+ICsJCXJlZ3VsYXRvci1ib290LW9uOwo+Pj4+ICsJCXJlZ3VsYXRvci1taW4tbWlj
cm92b2x0ID0gPDgwMDAwMD47Cj4+Pj4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTQw
MDAwMD47Cj4+Pj4gKwkJcmVndWxhdG9yLWluaXQtbWljcm92b2x0ID0gPDk1MDAwMD47Cj4+PiBU
aGUgZGVmYXVsdCB2YWx1ZSBzZWVtcyB0byBiZSAwLjl2IGFzIHBlciBib3RoIFJvY2s5NjAgYW5k
IEZpY3VzIHNjaGVtYXRpY3MuCj4+Cj4+IFRoZSBkZWZhdWx0IHZhbHVlIGlzIDAuOVYgd2hlbiBw
d20tcmVndWxhdG9yIGlzIG5vdCBlbmFibGVkLCBhbmQgdGhpcwo+PiAnaW5pdC1taWNyb3ZvbHQn
IHN1cHBvc2UgdG8gc2V0IHRoZQo+Pgo+PiBpbml0IHZhbHVlIHdoZW4gcHdtLXJlZ3VsYXRvciBp
cyBlbmFibGVkLiBJIHNldCB0aGlzIHRvIDk1MG1WIGJlY2F1c2UgUGV0ZXIKPj4gcmVwb3J0IHRo
YXQgaGUgZXhwZXJpZW5jZQo+Pgo+PiB0aGUgc3lzdGVtIGhhbmcgZHVyaW5nIEZlZG9yYSBib290
wqAgdXAsIGFuZCB1cGRhdGUgdGhlIHZkZF9sb2cgdG8gOTUwbVYgY2FuCj4+IGZpeCB0aGUgaXNz
dWUgZHVlIHRvCj4+Cj4+IGVuZ2luZWVyIG1lYXN1cmUgb24gYW5vdGhlciByazMzOTkgYm9hcmQg
cHVtYS1RNy4KPj4KPiBva2F5LiBQcmV2aW91c2x5IHdlIGhhZCBwb3N0LWJvb3QgaGFuZyBpc3N1
ZSBvbiBSb2NrOTYwIE1vZGVsIEEgYm9hcmRzIHdoZW4gdGhlCj4gcGVyZm9ybWFuY2UgZ292ZXJu
b3Igd2FzIHNldCBhcyBkZWZhdWx0LiBTbyB0aGUgdmRkX2xvZyBub2RlIHdhcyByZW1vdmVkIGZy
b20KPiB0aGUgZGV2aWNldHJlZS4gSGF2ZSB5b3UgdGVzdGVkIHRoYXQgY2FzZSBhbHNvPwo+Cj4g
SGVyZSBpcyB0aGUgY29tbWl0Ogo+IDEzNjgyZTUyNDE2NyAoImFybTY0OiBkdHM6IHJvY2tjaGlw
OiByZW1vdmUgdmRkX2xvZyBmcm9tIHJvY2s5NjAgdG8gZml4IGEgc3RhYmlsaXR5IGlzc3VlcyIp
CgoKRm9yIHJrMzM5OSwgdGhlIGtlcm5lbCBkb2VzIG5vdCB0b3VjaCB0aGlzIHJlZ3VsYXRvciwg
aXQgc2hvdWxkIGJlIHRha2UgCmNhcmUgYnkgYm9vdGxvYWRlci4KClNvIEkgdGhpbmsgd2UgbmVl
ZCB0byB1cGRhdGUgYm90aCBVLUJvb3QgYW5kIGtlcm5lbC4KCgpUaGFua3MsCgotIEtldmVyCgo+
Cj4gdGhhbmtzLAo+IE1hbmkKPj4gVGhhbmtzLAo+Pgo+PiAtIEtldmVyCj4+Cj4+PiBPdGhlciB0
aGFuIHRoYXQsCj4+PiBBY2tlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFu
LnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KPj4+Cj4+PiBUaGFua3MsCj4+PiBNYW5pCj4+Pgo+Pj4+
ICsJCXZpbi1zdXBwbHkgPSA8JnZjY19zeXM+Owo+Pj4+ICsJfTsKPj4+PiAgICB9Owo+Pj4+ICAg
ICZjcHVfbDAgewo+Pj4+IC0tIAo+Pj4+IDIuMTcuMQo+Pj4+Cj4+CgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
