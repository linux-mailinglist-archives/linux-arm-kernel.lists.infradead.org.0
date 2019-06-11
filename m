Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B83493C504
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 09:25:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zj88cw//7Iy+nOIppt3lf/qSYHJrldQmXEFe9SlCZqs=; b=Yq6ydO3elVDkxxB1Z/0mUBp46
	ErEqD6cOuulpA0yW/8kfPuB649b0+r8IyDLE6DYsaHnnOQiq8cT9flGWD3K3DBkDaGw3OIgK2kJaZ
	kwvE/nncqVnvgIZ+SJsYhrI9JZ+HdaMdbc3Y6WjX896UDTai31UIZK3BNsaTUIp/1IfEsbuJA9wo/
	Vn6MbzAmbiQP2r3QncY5uV37uXSfhmIxuxSIsvacaW1w1kqLUCQWNzBhICma+Vbya8ODPbvgyN+mC
	sG1NG8vAgNF9RzTikXCEy2XN7ov1D19x/tZFjnorXLrCT9OgzMxF9lPRLmFhmvjZ5lk4r6wW3g3oD
	nYfbLwebQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hab9N-0007X0-Dp; Tue, 11 Jun 2019 07:24:57 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hab98-0007Wc-D8
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 07:24:44 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5B7OeJr126159;
 Tue, 11 Jun 2019 02:24:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560237880;
 bh=S8TifoSSLw/cZ4aADOxrmYf5qF6IrYpAFQ1SQ0QCb3s=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=bVnnB3CVUJ/0ovjEYE1i1ahcLlwqlxdrFq6nUOKiQOwSV9m50Go0XLY4ALDkTRyJN
 fFM9K0d/2pf8Mwy5xz3hA9DPtEUI2djgk69kwG0jc9b8E+EH6rhVONqBmtrBfuNllW
 U7qAOmXDnwI9QPMdLdEpzECj55faqabRYwGVragU=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5B7OdCm094175
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Jun 2019 02:24:40 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 11
 Jun 2019 02:24:37 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 11 Jun 2019 02:24:37 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5B7OZg7127298;
 Tue, 11 Jun 2019 02:24:36 -0500
Subject: Re: [GIT PULL] clk: keystone: changes for 5.3
To: <santosh.shilimkar@oracle.com>, linux-clk <linux-clk@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
References: <3bd8aa21-60a5-f36a-b86f-425ce4f0163e@ti.com>
 <fe1da566-d8f4-8f53-cad7-d3b2a6e2c638@oracle.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <885237d4-c7ce-3d08-472b-55cc12561e47@ti.com>
Date: Tue, 11 Jun 2019 10:24:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <fe1da566-d8f4-8f53-cad7-d3b2a6e2c638@oracle.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_002442_576030_DAE4F1F1 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMDYvMjAxOSAyMDoxNywgc2FudG9zaC5zaGlsaW1rYXJAb3JhY2xlLmNvbSB3cm90ZToK
PiBPbiA2LzEwLzE5IDU6MTMgQU0sIFRlcm8gS3Jpc3RvIHdyb3RlOgo+PiBIaSBTdGVwaGVuLCBN
aWtlLCBTYW50b3NoLAo+Pgo+PiBIZXJlJ3MgYSBwdWxsIHJlcXVlc3QgZm9yIHRoZSBjbG9jayBj
aGFuZ2VzIGZvciBrZXlzdG9uZSBTb0MgZm9yIDUuMy4gCj4+IFRoZSBwYXRjaGVzIHdlcmUgYWNr
ZWQgYnkgU2FudG9zaCwgc28gSSB0b29rIGxpYmVydHkgdG8gY3JlYXRlIGEgCj4+IHB1bGwtcmVx
dWVzdCBmb3IgdGhlc2UgYWxzby4gSSBzbmlwcGVkIHBhdGNoICM1IG91dCBvZiB0aGUgc2VyaWVz
IChpdCAKPj4gaXMgYWdhaW5zdCBkcml2ZXJzL2Zpcm13YXJlKSBhbmQgYW0gcGxhbm5pbmcgdG8g
c2VuZCBhIHNlcGFyYXRlIAo+PiBwdWxsLXJlcXVlc3QgZm9yIHRoaXMsIG9yIGFsdGVybmF0aXZl
bHkgYWdyZWUgd2l0aCBTYW50b3NoIGhvdyB0byAKPj4gaGFuZGxlIGl0Lgo+Pgo+IFsuLi5dCj4+
Cj4+IFRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgCj4+IGExODgzMzljYTVhMzk2
YWNjNTg4ZTU4NTFlZDdlMTlmNjZiMGViZDk6Cj4+Cj4+IMKgwqAgTGludXggNS4yLXJjMSAoMjAx
OS0wNS0xOSAxNTo0NzowOSAtMDcwMCkKPj4KPj4gYXJlIGF2YWlsYWJsZSBpbiB0aGUgZ2l0IHJl
cG9zaXRvcnkgYXQ6Cj4+Cj4+IMKgwqAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L2tyaXN0by9saW51eCAKPj4gdGFncy9rZXlzdG9uZS1jbGstZm9yLTUuMwo+
Pgo+IEFtIGFzc3VtaW5nIE1pa2UvU3RlcGhlbiB3aWxsIHBpY2sgdGhpcyB1cC4KCk15IGVtYWls
IGNsaWVudCBhY2NpZGVudGFsbHkgcGlja2VkIHVwIG9sZCBlbWFpbCBmb3IgU3RlcGhlbiwgZml4
ZWQgbm93LgoKU3RlcGhlbiwgZG8geW91IHdhbnQgbWUgdG8gcmUtc2VuZCB0aGlzPwoKLVRlcm8K
Cgo+IAo+IFJlZ2FyZHMsCj4gU2FudG9zaAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwKCi0tClRleGFzIEluc3Ry
dW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLiBZLXR1
bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5r
aQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
