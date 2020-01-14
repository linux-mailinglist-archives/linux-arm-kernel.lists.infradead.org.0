Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBD713AB49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 14:45:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yK2jyOVGsQlidnv4LWL0QBF9arLxIlYeIjfS170WGQg=; b=jUDhsZGg8XMkP+
	jXbzzpIU+CrsA+3LIasDon31KiCXSikNnO63SMDKZxaI1tyLAQlvLxteediuQsfij3PARwTgdXGvE
	9QsmSotF/sozbk0gX+X8uFVh8vLKkMRYpgyhKRQbB9eXgiYklpFN5BwxYvy7OhGOKvFpdlQy1FdH7
	GUQmSx+93Fn9aFCrd/b5HZxxf3VxJ5SH13b1CFOufTrMxJVLr1W8TA2UoJJMYfKJ9qPiqZN6AcjtG
	bgAaGBqhc969gbB8mW71vat4VU5YAq22oVVf2I8oRhPfz/Keau3n4uA9GFIE3vb8UyxnNWcvb16O1
	czUqbmYr5L4re475CRvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irMV0-0001r7-Gj; Tue, 14 Jan 2020 13:44:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irMUk-0001pg-T8
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 13:44:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E6841435;
 Tue, 14 Jan 2020 05:44:31 -0800 (PST)
Received: from [240.8.37.10] (unknown [10.37.8.240])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2DA943F534;
 Tue, 14 Jan 2020 05:44:27 -0800 (PST)
Subject: Re: [PATCH] arm: Fix Kexec compilation issue.
To: Vincenzo Frascino <vincenzo.frascino@arm.com>, linux@armlinux.org.uk
References: <20200110123125.51092-1-vincenzo.frascino@arm.com>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <27d511d6-90de-02f1-733b-e177462dffab@arm.com>
Date: Tue, 14 Jan 2020 13:44:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200110123125.51092-1-vincenzo.frascino@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_054434_984057_023CE05D 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMS8xMC8yMCAxMjozMSBQTSwgVmluY2Vuem8gRnJhc2Npbm8gd3JvdGU6Cj4gVG8gcGVyZm9y
bSB0aGUgcmVzZXJ2ZV9jcmFzaGtlcm5lbCgpIG9wZXJhdGlvbiBrZXhlYyB1c2VzIFNFQ1RJT05f
U0laRSB0bwo+IGZpbmQgYSBtZW1ibG9jayBpbiBhIHJhbmdlLgo+IFNFQ1RJT05fU0laRSBpcyBu
b3QgZGVmaW5lZCBmb3Igbm9tbXUgc3lzdGVtcy4gVHJ5aW5nIHRvIGNvbXBpbGUga2V4ZWMgaW4K
PiB0aGVzZSBjb25kaXRpb25zIHJlc3VsdHMgaW4gYSBidWlsZCBlcnJvcjoKPiAKPiAgIGxpbnV4
L2FyY2gvYXJtL2tlcm5lbC9zZXR1cC5jOiBJbiBmdW5jdGlvbiDigJhyZXNlcnZlX2NyYXNoa2Vy
bmVs4oCZOgo+ICAgbGludXgvYXJjaC9hcm0va2VybmVsL3NldHVwLmM6MTAxNjoyNTogZXJyb3I6
IOKAmFNFQ1RJT05fU0laReKAmSB1bmRlY2xhcmVkCj4gICAgICAoZmlyc3QgdXNlIGluIHRoaXMg
ZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g4oCYU0VDVElPTlNfV0lEVEjigJk/Cj4gICAgICAgICAg
ICAgIGNyYXNoX3NpemUsIFNFQ1RJT05fU0laRSk7Cj4gICAgICAgICAgICAgICAgICAgICAgICAg
IF5+fn5+fn5+fn5+fgo+ICAgICAgICAgICAgICAgICAgICAgICAgICBTRUNUSU9OU19XSURUSAo+
ICAgbGludXgvYXJjaC9hcm0va2VybmVsL3NldHVwLmM6MTAxNjoyNTogbm90ZTogZWFjaCB1bmRl
Y2xhcmVkIGlkZW50aWZpZXIKPiAgICAgIGlzIHJlcG9ydGVkIG9ubHkgb25jZSBmb3IgZWFjaCBm
dW5jdGlvbiBpdCBhcHBlYXJzIGluCj4gICBsaW51eC9zY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI2
NTogcmVjaXBlIGZvciB0YXJnZXQgJ2FyY2gvYXJtL2tlcm5lbC9zZXR1cC5vJwo+ICAgICAgZmFp
bGVkCj4gCj4gTWFrZSBLRVhFQyBkZXBlbmQgb24gTU1VIHRvIGZpeCB0aGUgY29tcGlsYXRpb24g
aXNzdWUuCj4gCj4gQ2M6IFJ1c3NlbGwgS2luZyA8bGludXhAYXJtbGludXgub3JnLnVrPgo+IFNp
Z25lZC1vZmYtYnk6IFZpbmNlbnpvIEZyYXNjaW5vIDx2aW5jZW56by5mcmFzY2lub0Bhcm0uY29t
Pgo+IC0tLQo+ICBhcmNoL2FybS9LY29uZmlnIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vS2Nv
bmZpZyBiL2FyY2gvYXJtL0tjb25maWcKPiBpbmRleCBiYTc1ZTM2NjFhNDEuLmJjOTk1ODJiZGM4
NSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9LY29uZmlnCj4gKysrIGIvYXJjaC9hcm0vS2NvbmZp
Zwo+IEBAIC0xOTA0LDcgKzE5MDQsNyBAQCBjb25maWcgWElQX0RFRkxBVEVEX0RBVEEKPiAgY29u
ZmlnIEtFWEVDCj4gIAlib29sICJLZXhlYyBzeXN0ZW0gY2FsbCAoRVhQRVJJTUVOVEFMKSIKPiAg
CWRlcGVuZHMgb24gKCFTTVAgfHwgUE1fU0xFRVBfU01QKQo+IC0JZGVwZW5kcyBvbiAhQ1BVX1Y3
TQo+ICsJZGVwZW5kcyBvbiBNTVUKPiAgCXNlbGVjdCBLRVhFQ19DT1JFCj4gIAloZWxwCj4gIAkg
IGtleGVjIGlzIGEgc3lzdGVtIGNhbGwgdGhhdCBpbXBsZW1lbnRzIHRoZSBhYmlsaXR5IHRvIHNo
dXRkb3duIHlvdXIKPiAKClJldmlld2VkLWJ5OiBWbGFkaW1pciBNdXJ6aW4gPHZsYWRpbWlyLm11
cnppbkBhcm0uY29tPgoKQ2hlZXJzClZsYWRpbWlyCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
