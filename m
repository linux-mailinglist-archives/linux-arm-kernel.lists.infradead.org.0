Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03776E702B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 12:11:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9TOIe3JwoyYzi553+fvh6LNFOgka70WQOkVa+Zn3co=; b=LXMEs8atjTflRR
	c4FTMCHA0nc94lNzt2kNzF9RTQjxHj159gjuzdWUzyfVtZaGY5RCsQLDkJwjhZGELoKINylX5aQdL
	4+mePQiHNZllBlLkC3K+hbedxnnXoIGvgMSxccG4C2KH6Ho5Jq/aoiuuL+/SNBGgYxenor0/RAQCf
	g0yIsyyzrsFwJZtgunihy5vwYlTCuMctm1rSWd7PgbhhfHtgjkp/ll4z6gW9j31wbDA4lqMx/cjsw
	uTmEjw41pp2dC7DdMfaYse93KA438CdWV+fdJlk6SelfW4LWdzNVd2z1LHlBxdcr4uVw+7ku//5yM
	J/2bJglu2+cdNfkW40rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP2vf-0007lv-4b; Mon, 28 Oct 2019 11:11:19 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP2vW-0007RA-RH; Mon, 28 Oct 2019 11:11:12 +0000
Received: from [10.18.29.227] (10.18.29.227) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Mon, 28 Oct
 2019 19:11:13 +0800
Subject: Re: [PATCH RESEND v2 1/4] dt-bindings: power: add Amlogic secure
 power domains bindings
To: Rob Herring <robh@kernel.org>
References: <1570695678-42623-1-git-send-email-jianxin.pan@amlogic.com>
 <1570695678-42623-2-git-send-email-jianxin.pan@amlogic.com>
 <20191014173900.GA6886@bogus>
 <622c7785-8254-5473-6b35-7287830f3c60@amlogic.com>
 <CAL_Jsq+F9EGv2jEWw2BrmH0NDKMRt6=pG6LSHL8UYH9G+-OeMw@mail.gmail.com>
From: Jianxin Pan <jianxin.pan@amlogic.com>
Message-ID: <730e5611-6dc0-5bf0-0489-4091bda18c9e@amlogic.com>
Date: Mon, 28 Oct 2019 19:11:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+F9EGv2jEWw2BrmH0NDKMRt6=pG6LSHL8UYH9G+-OeMw@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.18.29.227]
X-ClientProxiedBy: mail-sh.amlogic.com (10.18.11.5) To mail-sh.amlogic.com
 (10.18.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_041110_885124_D305501D 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKT24gMjAxOS8xMC8yNiA0OjE5LCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBXZWQs
IE9jdCAxNiwgMjAxOSBhdCA2OjI2IEFNIEppYW54aW4gUGFuIDxqaWFueGluLnBhbkBhbWxvZ2lj
LmNvbT4gd3JvdGU6Cj4+Cj4+IEhpIFJvYiwKPj4KPj4gT24gMjAxOS8xMC8xNSAxOjM5LCBSb2Ig
SGVycmluZyB3cm90ZToKPj4+IE9uIFRodSwgT2N0IDEwLCAyMDE5IGF0IDA0OjIxOjE1QU0gLTA0
MDAsIEppYW54aW4gUGFuIHdyb3RlOgo+Pj4+IEFkZCB0aGUgYmluZGluZ3MgZm9yIHRoZSBBbWxv
Z2ljIFNlY3VyZSBwb3dlciBkb21haW5zLCBjb250cm9sbGluZyB0aGUKPj4+PiBzZWN1cmUgcG93
ZXIgZG9tYWlucy4KPj4+Pgo+Pj4+IFRoZSBiaW5kaW5ncyB0YXJnZXRzIHRoZSBBbWxvZ2ljIEEx
IGFuZCBDMSBjb21wYXRpYmxlIFNvQ3MsIGluIHdoaWNoIHRoZQo+Pj4+IHBvd2VyIGRvbWFpbiBy
ZWdpc3RlcnMgYXJlIGluIHNlY3VyZSB3b3JsZC4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEpp
YW54aW4gUGFuIDxqaWFueGluLnBhbkBhbWxvZ2ljLmNvbT4KPj4+PiAtLS0KPj4+PiAgLi4uL2Jp
bmRpbmdzL3Bvd2VyL2FtbG9naWMsbWVzb24tc2VjLXB3cmMueWFtbCAgICAgfCA0MiArKysrKysr
KysrKysrKysrKysrKysrCj4+Pj4gIGluY2x1ZGUvZHQtYmluZGluZ3MvcG93ZXIvbWVzb24tYTEt
cG93ZXIuaCAgICAgICAgIHwgMzIgKysrKysrKysrKysrKysrKysKPj4+PiAgMiBmaWxlcyBjaGFu
Z2VkLCA3NCBpbnNlcnRpb25zKCspCj4+Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcG93ZXIvYW1sb2dpYyxtZXNvbi1zZWMtcHdyYy55YW1s
Cj4+Pj4gKwo+Pj4+ICsgIHNlY3VyZS1tb25pdG9yOgo+Pj4+ICsgICAgZGVzY3JpcHRpb246IHBo
YW5kbGUgdG8gdGhlIHNlY3VyZS1tb25pdG9yIG5vZGUKPj4+PiArICAgICRyZWY6IC9zY2hlbWFz
L3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUKPj4+Cj4+PiBXaHkgbm90IGp1c3QgYSBj
aGlsZCBub2RlIG9mIHRoaXMgbm9kZT8KPj4+Cj4+IFRoYW5rcyBmb3IgdGhlIHJldmlldy4KPj4K
Pj4gSSBmb2xsb3dlZCB0aGUgc3R5bGUgb2YgdGhlIHByZXZpb3VzIHNlcmllcyBvZiBtZXNvbu+8
mgo+Pgo+PiAgIDQ2ICAgICAgICAgZWZ1c2U6IGVmdXNlIHsKPj4gICA0NyAgICAgICAgICAgICAg
ICAgY29tcGF0aWJsZSA9ICJhbWxvZ2ljLG1lc29uLWd4YmItZWZ1c2UiOwo+PiAgIDQ4ICAgICAg
ICAgICAgICAgICBjbG9ja3MgPSA8JmNsa2MgQ0xLSURfRUZVU0U+Owo+PiAgIDQ5ICAgICAgICAg
ICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4gICA1MCAgICAgICAgICAgICAgICAgI3Np
emUtY2VsbHMgPSA8MT47Cj4+ICAgNTEgICAgICAgICAgICAgICAgIHJlYWQtb25seTsKPj4gICA1
MiAgICAgICAgICAgICAgICAgc2VjdXJlLW1vbml0b3IgPSA8JnNtPjsKPj4gICA1MyAgICAgICAg
IH07Cj4gCj4gTG9va3MgbGlrZSB0aGF0IHdhcyBub3QgcmV2aWV3ZWQgYnkgbWUgYW5kIGlzIG9u
bHkgaW4gbGludXgtbmV4dC4KPiBQbGVhc2UgbWFrZSBmdW5jdGlvbnMgZXhwb3NlZCBieSBzZWN1
cmUgd29ybGQgYSBjaGlsZCBvZiB0aGUgc2VjdXJlCj4gZmlybXdhcmUgbm9kZS4KPiAKPiBSZWFs
bHkgZm9yIHBvd2VyIGRvbWFpbnMsIHlvdSBvbmx5IG5lZWQgdG8gYWRkIGEgJyNwb3dlci1kb21h
aW4tY2VsbHMnCj4gcHJvcGVydHkgdG8gdGhlIHNlY3VyZSBtb25pdG9yIG5vZGUuCj4gCk9LLCBJ
IHdpbGwgdXBkYXRlIHRoZW0gaW4gdGhlIG5leHQgdmVyc2lvbi4gClRoYW5rcyBmb3IgdGhlIHJl
dmlldy4KPiBSb2IKPiAKPiAuCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
