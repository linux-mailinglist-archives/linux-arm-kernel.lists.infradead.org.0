Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90AC7E5D90
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 15:58:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2F3fg6V8sTORtT6J7PVhNxhoycqm60TuhVxfpfornM=; b=V7Uy1X9o5I4r3E
	ygCNV9ZJB8MEbNGq5TgIjyjchbh1TqEMV/qj3NlfG17f18vEh6Dp+j5KGuDRzG9xhbfPU/VoCRSo0
	xEaWTvUCih5P4ChIbs7lxeVDdWXYgZa8NTXyeuQ9ADvAj8y+ZkpwypjxR0bk/JnC3q2Cqrl+ZNXYg
	6w4nXY4TCbrMVKLNsJifBO+J8bwi6PWEP4ajWSpvOaOilAm92bxIiLiDL9YlJrn+DEaTAVhgWddr8
	UFOQeMR29BRuY9Lv2Q073LQF4U5LFAy5ffUeMU5vldpr1+h/mDRUW03FIHyuyYYfbVx2500+JTAmd
	agfkMbV1ctTZez9Lwctg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOMa3-00082e-95; Sat, 26 Oct 2019 13:58:11 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOMZo-00081o-Mb; Sat, 26 Oct 2019 13:57:58 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 85577B319;
 Sat, 26 Oct 2019 13:57:53 +0000 (UTC)
Subject: Re: [PATCH v2 3/8] dt-bindings: arm: realtek: Tidy up conversion to
 json-schema
To: Rob Herring <robh@kernel.org>
References: <20191020040817.16882-1-afaerber@suse.de>
 <20191020040817.16882-4-afaerber@suse.de> <20191025212127.GA4819@bogus>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <1c4eae6d-d145-72af-85dd-18c8e1fdc848@suse.de>
Date: Sat, 26 Oct 2019 15:57:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191025212127.GA4819@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_065756_883342_CB9F5B3E 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMjUuMTAuMTkgdW0gMjM6MjEgc2NocmllYiBSb2IgSGVycmluZzoKPiBPbiBTdW4sIDIwIE9j
dCAyMDE5IDA2OjA4OjEyICswMjAwLCA9P1VURi04P3E/QW5kcmVhcz0yMEY9QzM9QTRyYmVyPz0g
d3JvdGU6Cj4+IFJlc3RvcmUgdGhlIGRldmljZSBuYW1lcyBmb3IgY29tcGF0aWJsZSBzdHJpbmdz
IGFzIGNvbW1lbnRzLgo+PiBQcmVwYXJlIGZvciBhZGRpbmcgbW9yZSBTb0NzIGJ5IGluc2VydGlu
ZyBvbmVPZi4KPj4KPj4gRml4ZXM6IDY5M2FmNWYzZWVhYSAoImR0LWJpbmRpbmdzOiBhcm06IENv
bnZlcnQgUmVhbHRlayBib2FyZC9zb2MgYmluZGluZ3MgdG8ganNvbi1zY2hlbWEiKQo+PiBTaWdu
ZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Cj4+IC0tLQo+PiAg
djI6IE5ldwo+PiAgCj4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Jl
YWx0ZWsueWFtbCB8IDE1ICsrKysrKysrLS0tLS0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDggaW5z
ZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPj4KPiAKPiBSZXZpZXdlZC1ieTogUm9iIEhlcnJp
bmcgPHJvYmhAa2VybmVsLm9yZz4KClRoYW5rcywgYXBwbGllZCB0byBsaW51eC1yZWFsdGVrLmdp
dCB2NS41L2R0NjQ6CgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVs
L2dpdC9hZmFlcmJlci9saW51eC1yZWFsdGVrLmdpdC9sb2cvP2g9djUuNS9kdDY0CgpSZWdhcmRz
LApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZl
bGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVy
CkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
