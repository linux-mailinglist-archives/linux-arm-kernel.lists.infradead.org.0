Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517FE150241
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 09:09:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X23wkcXFFZpLLO4Dr1tJhX1ZNZvy7iDPVo9uHoYh+D8=; b=tHE5USof2rTNaN
	6Tcw3CwRNhxpDEmc7IZ9ugKqB/Bn2febDDYVwyuy5xeS78p4tsfOvwSuEYJ9TEze4TjMc7MOlATrb
	6LD4bebOuaBDyhYVKasPlfowsM/1OJwhW7IJjyfPALLYRbf28j76NMY5GbixssojZzCoflreYlc5r
	Df/wyeVF2T5+3fT6ygKbalH8otom0vvqRx7fw/BzmnbdFkvUZzSU+f7AMTqYST/bdgpNRhyj0gP4Y
	CyHXDR9Hg1CdBd6H9zdMyI9YJOnbBzuz/+7cqQnRiqvUZ5oPYxFj6DAeqZGMu8u8CvcW7DTg1rIGL
	XqhqPwZiAwyZw7Gp8j9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyWnL-0008PI-So; Mon, 03 Feb 2020 08:09:23 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyWnF-0008Os-Qj
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 08:09:19 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01389AxS093033;
 Mon, 3 Feb 2020 02:09:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1580717350;
 bh=SHGNUtZH+GGsjdnH4fW3GSfZiqBh1dX2XaSZkoM0DVQ=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=vIGGXyg5WoZsOivB00ACn4YVYjBPUMmhMnZrMolw05Ei8DzUUE4nrhIx51mq+BlBP
 GcFBccqy3ETrzImaTH2vnTUCuD2lKC4/LjO886doNODio8vW5T/SsJXXRcNcV8gUdK
 5NdOh3TOdt6aXdP28VxFV8L5QIOF0AoezQoxt9OU=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01389APV086217;
 Mon, 3 Feb 2020 02:09:10 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 3 Feb
 2020 02:09:10 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 3 Feb 2020 02:09:10 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 013897tS077934;
 Mon, 3 Feb 2020 02:09:08 -0600
Subject: Re: [PATCH] firmware: ti_sci: Export devm_ti_sci_get_of_resource for
 modules
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <nm@ti.com>, <t-kristo@ti.com>, <ssantosh@kernel.org>,
 <santosh.shilimkar@oracle.com>
References: <20200122104031.15733-1-peter.ujfalusi@ti.com>
Message-ID: <88323f5b-1732-f780-5a0d-754026997c2c@ti.com>
Date: Mon, 3 Feb 2020 10:10:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200122104031.15733-1-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_000917_950965_CCFCFE42 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lokeshvutla@ti.com, grygorii.strashko@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAyMi8wMS8yMDIwIDEyLjQwLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiBBbGxvdyBk
ZXZtX3RpX3NjaV9nZXRfb2ZfcmVzb3VyY2UoKSB0byBiZSB1c2FibGUgZnJvbSBtb2R1bGVzLgoK
SSB3b3VsZCByZWFsbHkgYXBwcmVjaWF0ZSBpZiB0aV9zY2kgbWFpbnRhaW5lcnMgd291bGQgc3Bh
cmUgc29tZSB0aW1lIG9uCnRoaXMgYW5kIHRoZSBvdGhlciB0d28gcGF0Y2ggOykKCmh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMDAxMjIxMDQwNDQuMTU4MzctMS1wZXRlci51amZhbHVz
aUB0aS5jb20vCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMDAxMjIxMDQwMDkuMTU2
MjItMS1wZXRlci51amZhbHVzaUB0aS5jb20vCgotIFDDqXRlcgoKPiBTaWduZWQtb2ZmLWJ5OiBQ
ZXRlciBVamZhbHVzaSA8cGV0ZXIudWpmYWx1c2lAdGkuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2Zp
cm13YXJlL3RpX3NjaS5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Zpcm13YXJlL3RpX3NjaS5jIGIvZHJpdmVycy9maXJt
d2FyZS90aV9zY2kuYwo+IGluZGV4IGYxM2U0YTk2ZjNiNy4uM2Q4MjQxY2I2OTIxIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZmlybXdhcmUvdGlfc2NpLmMKPiArKysgYi9kcml2ZXJzL2Zpcm13YXJl
L3RpX3NjaS5jCj4gQEAgLTMzMzIsNiArMzMzMiw3IEBAIGRldm1fdGlfc2NpX2dldF9vZl9yZXNv
dXJjZShjb25zdCBzdHJ1Y3QgdGlfc2NpX2hhbmRsZSAqaGFuZGxlLAo+ICAKPiAgCXJldHVybiBF
UlJfUFRSKC1FSU5WQUwpOwo+ICB9Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKGRldm1fdGlfc2NpX2dl
dF9vZl9yZXNvdXJjZSk7Cj4gIAo+ICBzdGF0aWMgaW50IHRpc2NpX3JlYm9vdF9oYW5kbGVyKHN0
cnVjdCBub3RpZmllcl9ibG9jayAqbmIsIHVuc2lnbmVkIGxvbmcgbW9kZSwKPiAgCQkJCXZvaWQg
KmNtZCkKPiAKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIs
IDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFp
a2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
