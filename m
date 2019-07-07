Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E010B61518
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 15:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFdtzKwkIC7g4FOPy+kb1PuQJH4jDKdIA6oCf3WijSU=; b=nZM6Nd8lXiWB6Q
	8Ll+6AgvldcJjWwlJI92tc0EXVeofTGlRoQ0cL3wYkniJI3gAthuhFBpLWfa4unHvtE+yPCalX5tU
	sErHv8TihA7ZQ5DxbmheAXI/wEMUxHOL3T/RDlyqABboMdm6I9ujQHRXpFKxHBAjpxQrjM5lSOJQK
	h6/CjzYRRCQHR7sR257zVJtct1cXuEE9wVaP6rQhMAd27ZKzknoCHCvmLwD/XtK26/Yo9Y059HFSk
	fJUxBBr+nxkRnCgrF+0On7ACYPwkRWPjqkvIeN0vs19kCfxL1rxvDQA8Z0e7pNy8C+oo4hGcmnjhg
	jJbiz5Jq5uZXiWC5gQvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hk7GO-0000A3-Ns; Sun, 07 Jul 2019 13:31:32 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hk7GA-0008TQ-NV
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 13:31:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6553CAFDB;
 Sun,  7 Jul 2019 13:31:17 +0000 (UTC)
Subject: Re: [PATCH 5/6] dt-bindings: arm: Document RTD1296
To: Aleix Roca Nonell <kernelrocks@gmail.com>
References: <20190707132339.GF13340@arks.localdomain>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Openpgp: preference=signencrypt
Organization: SUSE Linux GmbH
Message-ID: <27a3468f-e7b4-e334-5956-8db87d04ff8c@suse.de>
Date: Sun, 7 Jul 2019 15:31:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190707132339.GF13340@arks.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_063118_913570_79F3BD1D 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <marc.zyngier@arm.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMDcuMDcuMTkgdW0gMTU6MjMgc2NocmllYiBBbGVpeCBSb2NhIE5vbmVsbDoKPiBBZGQgYmlu
ZGluZ3MgZm9yIFJlbGF0ZWsgUlREMTI5NiBTb0MuIEFuZCB0aGUgQmFubmFuYSBQaSBCUEktVzIg
Ym9hcmQuCgoiUmVhbHRlayIsICJCYW5hbmEiCgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFsZWl4IFJv
Y2EgTm9uZWxsIDxrZXJuZWxyb2Nrc0BnbWFpbC5jb20+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay50eHQgfCAxMyArKysrKysrKysrKysrCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay50eHQgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JlYWx0ZWsudHh0Cj4gaW5kZXggOTU4MzllMTlh
ZTkyLi43OGRhMTAwNGQzOGMgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9yZWFsdGVrLnR4dAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9hcm0vcmVhbHRlay50eHQKPiBAQCAtMjAsMyArMjAsMTYgQEAgUm9vdCBub2Rl
IHByb3BlcnR5IGNvbXBhdGlibGUgbXVzdCBjb250YWluLCBkZXBlbmRpbmcgb24gYm9hcmQ6Cj4g
IEV4YW1wbGU6Cj4gIAo+ICAgICAgY29tcGF0aWJsZSA9ICJ6aWRvbyx4OXMiLCAicmVhbHRlayxy
dGQxMjk1IjsKPiArCj4gKwo+ICtSVEQxMjk2IFNvQwo+ICs9PT09PT09PT09PQo+ICsKPiArUmVx
dWlyZWQgcm9vdCBub2RlIHByb3BlcnRpZXM6Cj4gKwo+ICsgLSBjb21wYXRpYmxlIDogIG11c3Qg
Y29udGFpbiAicmVhbHRlayxydGQxMjk2IgoKSSdtIHByZXR0eSBzdXJlIHRoYXQgSSBoYWQgc3Vj
aCBhIHBhdGNoIG9uIHRoZSBsaXN0IGFscmVhZHksIHNvIHRoaXMgaXMKbGFja2luZyBteSBhdXRo
b3JzaGlwLgoKQWxzbywgUm9iIGhhcyBiZWVuIHdvcmtpbmcgdG8gY29udmVydCB0aGVzZSB0byBZ
QU1MLCBzbyB3ZSBzaG91bGQKcHJvYmFibHkgY29tcGxldGUgdGhhdCBmaXJzdCBhbmQgdGhlbiBh
ZGQgUlREMTI5NiBwcm9wZXJseS4KCj4gKwo+ICsKPiArUm9vdCBub2RlIHByb3BlcnR5IGNvbXBh
dGlibGUgbXVzdCBjb250YWluLCBkZXBlbmRpbmcgb24gYm9hcmQ6Cj4gKwo+ICsgLSBCYW5uYW5h
IFBpIEJQSS1XMjogImJhbmFuYXBpLGJwaS13MiIKCiJCYW5hbmEiCgpSZWdhcmRzLApBbmRyZWFz
CgoKLS0gClNVU0UgTGludXggR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdl
cm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhS
QiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
