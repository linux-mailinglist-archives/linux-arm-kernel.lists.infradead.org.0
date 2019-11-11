Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90209F6FE7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 09:46:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPLF+/ex851LPapyQ5jeyS+5YzYNu8h4N/RzV/D72wc=; b=I8RHUvYYvy6X7W
	jrpSoKeNoOUy55cIdWk66pcHA6Sa65o9Kq0fLBvx3Sa4ijj6dI4PYtSCiFYmLLzuy5fJ+xCGF2VNL
	kEjHsZevNlI3b0PD1ggBjIPm6nVcdfPurQjxdrnV6xCOsYfoTDPxbrDJVIz3WE4ZjjMI+Zbe/Lnag
	EAOTeC7PLeV5eDbTloqX8wr/byd0MFPhwG9Wj6xINl6Ai2NdT7SUyKnqsF8fA0w8CDfncMNcc57ev
	/HXKAq2i2PT9HTWMvvwVm6YUoDsymvp6YgoKTvp3JqXj3Qg5+buwasB1qA4myYDHHfpkUMPlKTYZh
	ZfhJtzugsnw7AZgTuEag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU5LH-0002xd-Me; Mon, 11 Nov 2019 08:46:35 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU5L6-0002x2-MP
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 08:46:26 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAB8kFjp047825;
 Mon, 11 Nov 2019 02:46:15 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573461975;
 bh=bPsdV3D16S4/f/dE/JDv9mNF3nvxhJIfXWIaWmitlCY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=mXaHGQTW3V1k5l+az7PK9qrALszJvuc6fkBps1mPRoWCUC9eXPnedgV5DUDxYuHv6
 g9E7oN45MK9ILrYHZGMIN2+6dBw6BWc9/HGDwcZz+2CI4lvRLEdew9a8772mJj13A/
 X8xm14x3Ju/vIpOsQydYM+IDfjBI0Rd1gnU+XBlw=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAB8kE99038243
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 Nov 2019 02:46:15 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 11
 Nov 2019 02:45:57 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 11 Nov 2019 02:45:57 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAB8kArs100093;
 Mon, 11 Nov 2019 02:46:11 -0600
Subject: Re: [PATCH v4 07/15] dmaengine: ti: k3 PSI-L remote endpoint
 configuration
To: Vinod Koul <vkoul@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-8-peter.ujfalusi@ti.com>
 <20191111044716.GM952516@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <0a9d570a-0942-6e98-9e5a-798546c9c677@ti.com>
Date: Mon, 11 Nov 2019 10:47:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111044716.GM952516@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_004624_816504_ED8B9618 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS8xMS8yMDE5IDYuNDcsIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMDEtMTEtMTksIDEw
OjQxLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiAKPj4gLS0tIC9kZXYvbnVsbAo+PiArKysgYi9k
cml2ZXJzL2RtYS90aS9rMy1wc2lsLmMKPj4gQEAgLTAsMCArMSw5NyBAQAo+PiArLy8gU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiAKPiAuLi4KPiAKPj4gK2V4dGVybiBzdHJ1Y3Qg
cHNpbF9lcF9tYXAgYW02NTRfZXBfbWFwOwo+PiArZXh0ZXJuIHN0cnVjdCBwc2lsX2VwX21hcCBq
NzIxZV9lcF9tYXA7Cj4+ICsKPj4gK3N0YXRpYyBERUZJTkVfTVVURVgoZXBfbWFwX211dGV4KTsK
Pj4gK3N0YXRpYyBzdHJ1Y3QgcHNpbF9lcF9tYXAgKnNvY19lcF9tYXA7Cj4+ICsKPj4gK3N0cnVj
dCBwc2lsX2VuZHBvaW50X2NvbmZpZyAqcHNpbF9nZXRfZXBfY29uZmlnKHUzMiB0aHJlYWRfaWQp
Cj4+ICt7Cj4+ICsJaW50IGk7Cj4+ICsKPj4gKwltdXRleF9sb2NrKCZlcF9tYXBfbXV0ZXgpOwo+
PiArCWlmICghc29jX2VwX21hcCkgewo+PiArCQlpZiAob2ZfbWFjaGluZV9pc19jb21wYXRpYmxl
KCJ0aSxhbTY1NCIpKSB7Cj4+ICsJCQlzb2NfZXBfbWFwID0gJmFtNjU0X2VwX21hcDsKPj4gKwkJ
fSBlbHNlIGlmIChvZl9tYWNoaW5lX2lzX2NvbXBhdGlibGUoInRpLGo3MjFlIikpIHsKPj4gKwkJ
CXNvY19lcF9tYXAgPSAmajcyMWVfZXBfbWFwOwo+PiArCQl9IGVsc2Ugewo+PiArCQkJcHJfZXJy
KCJQU0lMOiBObyBjb21wYXRpYmxlIG1hY2hpbmUgZm91bmQgZm9yIG1hcFxuIik7Cj4+ICsJCQly
ZXR1cm4gRVJSX1BUUigtRU5PVFNVUFApOwo+PiArCQl9Cj4+ICsJCXByX2RlYnVnKCIlczogVXNp
bmcgbWFwIGZvciAlc1xuIiwgX19mdW5jX18sIHNvY19lcF9tYXAtPm5hbWUpOwo+PiArCX0KPj4g
KwltdXRleF91bmxvY2soJmVwX21hcF9tdXRleCk7Cj4+ICsKPj4gKwlpZiAodGhyZWFkX2lkICYg
SzNfUFNJTF9EU1RfVEhSRUFEX0lEX09GRlNFVCAmJiBzb2NfZXBfbWFwLT5kc3QpIHsKPj4gKwkJ
LyogY2hlY2sgaW4gZGVzdGluYXRpb24gdGhyZWFkIG1hcCAqLwo+PiArCQlmb3IgKGkgPSAwOyBp
IDwgc29jX2VwX21hcC0+ZHN0X2NvdW50OyBpKyspIHsKPj4gKwkJCWlmIChzb2NfZXBfbWFwLT5k
c3RbaV0udGhyZWFkX2lkID09IHRocmVhZF9pZCkKPj4gKwkJCQlyZXR1cm4gJnNvY19lcF9tYXAt
PmRzdFtpXS5lcF9jb25maWc7Cj4+ICsJCX0KPj4gKwl9Cj4+ICsKPj4gKwl0aHJlYWRfaWQgJj0g
fkszX1BTSUxfRFNUX1RIUkVBRF9JRF9PRkZTRVQ7Cj4+ICsJaWYgKHNvY19lcF9tYXAtPnNyYykg
ewo+PiArCQlmb3IgKGkgPSAwOyBpIDwgc29jX2VwX21hcC0+c3JjX2NvdW50OyBpKyspIHsKPj4g
KwkJCWlmIChzb2NfZXBfbWFwLT5zcmNbaV0udGhyZWFkX2lkID09IHRocmVhZF9pZCkKPj4gKwkJ
CQlyZXR1cm4gJnNvY19lcF9tYXAtPnNyY1tpXS5lcF9jb25maWc7Cj4+ICsJCX0KPj4gKwl9Cj4+
ICsKPj4gKwlyZXR1cm4gRVJSX1BUUigtRU5PRU5UKTsKPj4gK30KPj4gK0VYUE9SVF9TWU1CT0wo
cHNpbF9nZXRfZXBfY29uZmlnKTsKPiAKPiBUaGlzIGRvZXNuJ3QgbWF0Y2ggdGhlIGxpY2Vuc2Ug
b2YgdGhpcyBtb2R1bGUsIHdlIG5lZWQgaXQgdG8gYmUKPiBFWFBPUlRfU1lNQk9MX0dQTAoKT29w
cywgd2lsbCBmaXggaXQuCgoKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ks
IFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDog
MDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
