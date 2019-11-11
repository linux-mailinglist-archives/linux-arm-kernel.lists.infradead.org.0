Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFDDF6FBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 09:32:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxu0XQCSMDS+KpYN2xPJiXi1YU+d0BmdhIpW1W9EAmY=; b=GFlOVj/hcqiSXN
	mBXjeiTFMp3cDm1l9ojSeM16r5rRlgvwf7RTUFxPjC92PI3cO8xCQM5rdlgYWJ1T4JRUdAsv5OSqA
	CUEy54GDC9at/qVBX3pp5ISOblddKCnN/1WQXeKt5mLEbHuMD3cZJSn8FFYroqC1J2PzwW0UL+F0k
	3oMXDNs8yoUItYpf9yuvU7IaZX+m1BgojjU4k2ZfwIZmYv/a7vh1vJuQSNT/SIsFi0uHBbf+FNdG5
	JJ50CO4kRIEL3z/U1jOh9lvr7kchMxMj5cZsfbVJvHs/JCLoruZVmV9XlAwudWEAFmZ+rFS3s95VP
	0Z4sx2SXWhogORe8YQzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU57V-00066v-Ef; Mon, 11 Nov 2019 08:32:21 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU57K-00066a-0w
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 08:32:11 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAB8W0vn038121;
 Mon, 11 Nov 2019 02:32:00 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573461121;
 bh=g5x94847hYbqbl6t0oMnSzfcp96v+AbsaJu0rr/L1DM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ouWb1i1Vkbcel87sd/4VG/dtoaWeTvVpUlhz7pvAjcp5wjMWPKV5hE+idcWjDSOQm
 bwYla2Xiga8gydxWAyB3T4aJh/brdqu1v91zXMY4MtZEZPmQS+n92P646Klikz5jOw
 V8jhnlV5tJstUqjqEj7ikSg15W1RB8p7UiYURNok=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAB8W0Dc076860
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 Nov 2019 02:32:00 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 11
 Nov 2019 02:31:43 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 11 Nov 2019 02:31:43 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAB8VuS4099304;
 Mon, 11 Nov 2019 02:31:57 -0600
Subject: Re: [PATCH v4 09/15] dmaengine: ti: New driver for K3 UDMA - split#1:
 defines, structs, io func
To: Vinod Koul <vkoul@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-10-peter.ujfalusi@ti.com>
 <20191111052828.GN952516@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <00777586-a3ac-2404-5226-e8c887936a32@ti.com>
Date: Mon, 11 Nov 2019 10:33:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111052828.GN952516@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_003210_192695_A6BD6991 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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

CgpPbiAxMS8xMS8yMDE5IDcuMjgsIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMDEtMTEtMTksIDEw
OjQxLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiAKPj4gK3N0cnVjdCB1ZG1hX2NoYW4gewo+PiAr
CXN0cnVjdCB2aXJ0X2RtYV9jaGFuIHZjOwo+PiArCXN0cnVjdCBkbWFfc2xhdmVfY29uZmlnCWNm
ZzsKPj4gKwlzdHJ1Y3QgdWRtYV9kZXYgKnVkOwo+PiArCXN0cnVjdCB1ZG1hX2Rlc2MgKmRlc2M7
Cj4+ICsJc3RydWN0IHVkbWFfZGVzYyAqdGVybWluYXRlZF9kZXNjOwo+IAo+IGRlc2NyaXB0b3Ig
YW5kIG5vdCBhIGxpc3Q/CgpZZXMsIG5vdCBhIGxpc3QuIEkgaGF2ZSBvbmx5IG9uZSB0cmFuc2Zl
ciAoaWYgYW55KSBzdWJtaXR0ZWQgdG8KaGFyZHdhcmUuIFRoaXMgaXMgbW9zdGx5IGR1ZSB0byB0
aGUgcGFja2V0IG1vZGUgUlggb3BlcmF0aW9uOiBubwpwcmVsaW5rZWQgc3VwcG9ydCBpbiBVRE1B
UCBzbyBJIG5lZWQgdG8gaGF2ZSBhcyBtYW55IGRlc2NyaXB0b3JzIHF1ZXVlZAp1cCBhcyB0aGUg
bnVtYmVyIG9mIHNnIGVsZW1lbnRzLgoKSSBuZWVkIHRvIGtlZXAgdGhlIHRlcm1pbmF0ZWQgZGVz
Y3JpcHRvciBhcm91bmQgdG8gYmUgYWJsZSB0byBmcmVlIGl0IHVwCl9hZnRlcl8gVURNQVAgcmV0
dXJuZWQgaXQgdG8gYXZvaWQgaXQgbW9kaWZ5aW5nIHJlbGVhc2VkIG1lbW9yeS4KCj4+ICsJc3Ry
dWN0IHVkbWFfc3RhdGljX3RyIHN0YXRpY190cjsKPj4gKwljaGFyICpuYW1lOwo+PiArCj4+ICsJ
c3RydWN0IHVkbWFfdGNoYW4gKnRjaGFuOwo+PiArCXN0cnVjdCB1ZG1hX3JjaGFuICpyY2hhbjsK
Pj4gKwlzdHJ1Y3QgdWRtYV9yZmxvdyAqcmZsb3c7Cj4+ICsKPj4gKwlib29sIHBzaWxfcGFpcmVk
Owo+PiArCj4+ICsJaW50IGlycV9udW1fcmluZzsKPj4gKwlpbnQgaXJxX251bV91ZG1hOwo+PiAr
Cj4+ICsJYm9vbCBjeWNsaWM7Cj4+ICsJYm9vbCBwYXVzZWQ7Cj4+ICsKPj4gKwllbnVtIHVkbWFf
Y2hhbl9zdGF0ZSBzdGF0ZTsKPj4gKwlzdHJ1Y3QgY29tcGxldGlvbiB0ZWFyZG93bl9jb21wbGV0
ZWQ7Cj4+ICsKPj4gKwl1MzIgYmNudDsgLyogbnVtYmVyIG9mIGJ5dGVzIGNvbXBsZXRlZCBzaW5j
ZSB0aGUgc3RhcnQgb2YgdGhlIGNoYW5uZWwgKi8KPj4gKwl1MzIgaW5fcmluZ19jbnQ7IC8qIG51
bWJlciBvZiBkZXNjcmlwdG9ycyBpbiBmbGlnaHQgKi8KPj4gKwo+PiArCWJvb2wgcGt0X21vZGU7
IC8qIFRSIG9yIHBhY2tldCAqLwo+PiArCWJvb2wgbmVlZHNfZXBpYjsgLyogRVBJQiBpcyBuZWVk
ZWQgZm9yIHRoZSBjb21tdW5pY2F0aW9uIG9yIG5vdCAqLwo+PiArCXUzMiBwc2Rfc2l6ZTsgLyog
c2l6ZSBvZiBQcm90b2NvbCBTcGVjaWZpYyBEYXRhICovCj4+ICsJdTMyIG1ldGFkYXRhX3NpemU7
IC8qIChuZWVkc19lcGliID8gMTY6MCkgKyBwc2Rfc2l6ZSAqLwo+PiArCXUzMiBoZGVzY19zaXpl
OyAvKiBTaXplIG9mIGEgcGFja2V0IGRlc2NyaXB0b3IgaW4gcGFja2V0IG1vZGUgKi8KPj4gKwli
b29sIG5vdGRwa3Q7IC8qIFN1cHByZXNzIHNlbmRpbmcgVERDIHBhY2tldCAqLwo+PiArCWludCBy
ZW1vdGVfdGhyZWFkX2lkOwo+PiArCXUzMiBzcmNfdGhyZWFkOwo+PiArCXUzMiBkc3RfdGhyZWFk
Owo+PiArCWVudW0gcHNpbF9lbmRwb2ludF90eXBlIGVwX3R5cGU7Cj4+ICsJYm9vbCBlbmFibGVf
YWNjMzI7Cj4+ICsJYm9vbCBlbmFibGVfYnVyc3Q7Cj4+ICsJZW51bSB1ZG1hX3RwX2xldmVsIGNo
YW5uZWxfdHBsOyAvKiBDaGFubmVsIFRocm91Z2hwdXQgTGV2ZWwgKi8KPj4gKwo+PiArCS8qIGRt
YXBvb2wgZm9yIHBhY2tldCBtb2RlIGRlc2NyaXB0b3JzICovCj4+ICsJYm9vbCB1c2VfZG1hX3Bv
b2w7Cj4+ICsJc3RydWN0IGRtYV9wb29sICpoZGVzY19wb29sOwo+PiArCj4+ICsJdTMyIGlkOwo+
PiArCWVudW0gZG1hX3RyYW5zZmVyX2RpcmVjdGlvbiBkaXI7Cj4gCj4gd2h5IGRvZXMgY2hhbm5l
bCBoYXZlIHRoaXMsIGl0IGFscmVhZHkgZXhpc3RzIGluIGRlc2NyaXB0b3IKClRoZSBjaGFubmVs
IGNhbiBub3QgY2hhbmdlIHJvbGUsIGl0IGlzIHNldCB3aGVuIGl0IHdhcyByZXF1ZXN0ZWQuIElu
IHRoZQpwcmVwIGNhbGxiYWNrcyBJIGRvIGNoZWNrIGlmIHRoZSBkaXJlY3Rpb24gbWF0Y2hlcyB3
aXRoIHRoZSBjaGFubmVsJ3MKZGlyZWN0aW9uLgoKPj4gK3N0YXRpYyBpcnFyZXR1cm5fdCB1ZG1h
X3VkbWFfaXJxX2hhbmRsZXIoaW50IGlycSwgdm9pZCAqZGF0YSkKPj4gK3sKPj4gKwlzdHJ1Y3Qg
dWRtYV9jaGFuICp1YyA9IGRhdGE7Cj4+ICsKPj4gKwl1ZG1hX3RyX2V2ZW50X2NhbGxiYWNrKHVj
KTsKPiAKPiBhbnkgcmVhc29uIHdoeSB3ZSB3YW50IHRvIGNhbGwgYSBmbiBhbmQgbm90IGNvZGUg
aGVyZS4uPwoKTm8gcGFydGljdWxhciByZWFzb24sIEknbGwgbW92ZSB0aGVtLgoKLSBQw6l0ZXIK
ClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhl
bHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWlj
aWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
