Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6BDF7032
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 10:11:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CT78lug8U4N+s6MGYmLtLpZHN/3AFU7NRfmb1dBPknM=; b=uxM/GOKn3jGl3U
	tP7UUMd2ZrWAGBYJ7vlcKmkO2esmrnMH7GfN5q+k+ScEr820xs0iCtcNmmcmmgD7YGjR6+5b6lWyF
	OX8+i+k4xJ7CxT8/wr9lVyM1fN5S4NEymoTGi8uqheKc9cfJMgnUTaTXoVZ5j0N5IGpdY3muWRvkL
	oT6RmpLVnA+2btz0CoUPZdFQsBQTPTEk0ccLQwixGk87+pUhpjSaCVN/uavq7P+DxgccaZhWGEzvq
	/axOekQHW/zc1tqGt9VxT9FG7d7JijzstCCTYAwWbkdRitU2dunO0Cb2DPFKtJYmhtVe1p5Qt7QOf
	sYGaFZrhsYX2NK3GwfYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU5jC-000417-CI; Mon, 11 Nov 2019 09:11:18 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU5j2-00040a-Ru
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 09:11:10 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAB9AwrH050270;
 Mon, 11 Nov 2019 03:10:58 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573463458;
 bh=8Wpw0XqBideX91ytsjRMUFPNbL55iIhVaIU5YNr3y4o=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=QSJ+7qPZptkGiyhSBZHS5ngqiDD8cRBXkKfgJ/fEbNSuF1Lcr0Wf6pPsizmcj+fyD
 +M67khNbZokWzVBncJK5agHHkQJqF1PvPJF0TluMfdHUTOJ+DiHWnjp06vNGeE+FgJ
 MbUpA7A91C/3XLKKMu+dpW9w+GWyqjnojS5+KyG0=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAB9AwCX002661
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 Nov 2019 03:10:58 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 11
 Nov 2019 03:10:39 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 11 Nov 2019 03:10:39 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAB9AqA3037788;
 Mon, 11 Nov 2019 03:10:53 -0600
Subject: Re: [PATCH v4 09/15] dmaengine: ti: New driver for K3 UDMA - split#1:
 defines, structs, io func
To: Vinod Koul <vkoul@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-10-peter.ujfalusi@ti.com>
 <20191111052828.GN952516@vkoul-mobl>
 <00777586-a3ac-2404-5226-e8c887936a32@ti.com>
 <20191111090057.GT952516@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <675112ec-d53e-09d6-d511-d04554b96fa0@ti.com>
Date: Mon, 11 Nov 2019 11:12:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111090057.GT952516@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_011108_986080_4B6F78AD 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS8xMS8yMDE5IDExLjAwLCBWaW5vZCBLb3VsIHdyb3RlOgo+IE9uIDExLTExLTE5LCAx
MDozMywgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+IE9uIDExLzExLzIwMTkgNy4yOCwgVmlub2Qg
S291bCB3cm90ZToKPj4+IE9uIDAxLTExLTE5LCAxMDo0MSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6
Cj4gCj4+Pj4gKwlzdHJ1Y3QgdWRtYV9zdGF0aWNfdHIgc3RhdGljX3RyOwo+Pj4+ICsJY2hhciAq
bmFtZTsKPj4+PiArCj4+Pj4gKwlzdHJ1Y3QgdWRtYV90Y2hhbiAqdGNoYW47Cj4+Pj4gKwlzdHJ1
Y3QgdWRtYV9yY2hhbiAqcmNoYW47Cj4+Pj4gKwlzdHJ1Y3QgdWRtYV9yZmxvdyAqcmZsb3c7Cj4+
Pj4gKwo+Pj4+ICsJYm9vbCBwc2lsX3BhaXJlZDsKPj4+PiArCj4+Pj4gKwlpbnQgaXJxX251bV9y
aW5nOwo+Pj4+ICsJaW50IGlycV9udW1fdWRtYTsKPj4+PiArCj4+Pj4gKwlib29sIGN5Y2xpYzsK
Pj4+PiArCWJvb2wgcGF1c2VkOwo+Pj4+ICsKPj4+PiArCWVudW0gdWRtYV9jaGFuX3N0YXRlIHN0
YXRlOwo+Pj4+ICsJc3RydWN0IGNvbXBsZXRpb24gdGVhcmRvd25fY29tcGxldGVkOwo+Pj4+ICsK
Pj4+PiArCXUzMiBiY250OyAvKiBudW1iZXIgb2YgYnl0ZXMgY29tcGxldGVkIHNpbmNlIHRoZSBz
dGFydCBvZiB0aGUgY2hhbm5lbCAqLwo+Pj4+ICsJdTMyIGluX3JpbmdfY250OyAvKiBudW1iZXIg
b2YgZGVzY3JpcHRvcnMgaW4gZmxpZ2h0ICovCj4+Pj4gKwo+Pj4+ICsJYm9vbCBwa3RfbW9kZTsg
LyogVFIgb3IgcGFja2V0ICovCj4+Pj4gKwlib29sIG5lZWRzX2VwaWI7IC8qIEVQSUIgaXMgbmVl
ZGVkIGZvciB0aGUgY29tbXVuaWNhdGlvbiBvciBub3QgKi8KPj4+PiArCXUzMiBwc2Rfc2l6ZTsg
Lyogc2l6ZSBvZiBQcm90b2NvbCBTcGVjaWZpYyBEYXRhICovCj4+Pj4gKwl1MzIgbWV0YWRhdGFf
c2l6ZTsgLyogKG5lZWRzX2VwaWIgPyAxNjowKSArIHBzZF9zaXplICovCj4+Pj4gKwl1MzIgaGRl
c2Nfc2l6ZTsgLyogU2l6ZSBvZiBhIHBhY2tldCBkZXNjcmlwdG9yIGluIHBhY2tldCBtb2RlICov
Cj4+Pj4gKwlib29sIG5vdGRwa3Q7IC8qIFN1cHByZXNzIHNlbmRpbmcgVERDIHBhY2tldCAqLwo+
Pj4+ICsJaW50IHJlbW90ZV90aHJlYWRfaWQ7Cj4+Pj4gKwl1MzIgc3JjX3RocmVhZDsKPj4+PiAr
CXUzMiBkc3RfdGhyZWFkOwo+Pj4+ICsJZW51bSBwc2lsX2VuZHBvaW50X3R5cGUgZXBfdHlwZTsK
Pj4+PiArCWJvb2wgZW5hYmxlX2FjYzMyOwo+Pj4+ICsJYm9vbCBlbmFibGVfYnVyc3Q7Cj4+Pj4g
KwllbnVtIHVkbWFfdHBfbGV2ZWwgY2hhbm5lbF90cGw7IC8qIENoYW5uZWwgVGhyb3VnaHB1dCBM
ZXZlbCAqLwo+Pj4+ICsKPj4+PiArCS8qIGRtYXBvb2wgZm9yIHBhY2tldCBtb2RlIGRlc2NyaXB0
b3JzICovCj4+Pj4gKwlib29sIHVzZV9kbWFfcG9vbDsKPj4+PiArCXN0cnVjdCBkbWFfcG9vbCAq
aGRlc2NfcG9vbDsKPj4+PiArCj4+Pj4gKwl1MzIgaWQ7Cj4+Pj4gKwllbnVtIGRtYV90cmFuc2Zl
cl9kaXJlY3Rpb24gZGlyOwo+Pj4KPj4+IHdoeSBkb2VzIGNoYW5uZWwgaGF2ZSB0aGlzLCBpdCBh
bHJlYWR5IGV4aXN0cyBpbiBkZXNjcmlwdG9yCj4+Cj4+IFRoZSBjaGFubmVsIGNhbiBub3QgY2hh
bmdlIHJvbGUsIGl0IGlzIHNldCB3aGVuIGl0IHdhcyByZXF1ZXN0ZWQuIEluIHRoZQo+IAo+IGhv
dyBkbyB5b3UgZG8gdGhpcyBvbiBzZXQ/IFRoZSBjaGFubmVsIGlzIHJlcXVlc3RlZCwgd2UgZG8g
bm90IGtub3cgdGhlCj4gZGlyZWN0aW9uLiBXaGVuIHByZXBfIGlzIGludm9rZWQgd2Uga25vdyBp
dC4uCgpJbiBVRE1BUCB3ZSBtdXN0IGtub3cgaXQgYXMgYSBjaGFubmVsIGNhbiBkbyBvbmx5IG9u
ZSBkaXJlY3Rpb24gdHJhbnNmZXI6CgpkbWFzID0gPCZtYWluX3VkbWFwIDB4YzQwMD4sIDwmbWFp
bl91ZG1hcCAweDQ0MDA+OwpkbWEtbmFtZXMgPSAidHgiLCAicngiOwoKMHhjNDAwIGlzIGEgZGVz
dGluYXRpb24gdGhyZWFkIElELCBzbyB0aGUgJ3R4JyBjaGFubmVsIGNhbiBvbmx5IGRvCk1FTV9U
T19ERVYKMHg0NDAwIGlzIGEgc291cmNlIHRocmVhZCwgJ3J4JyBjYW4gb25seSBkbyBERVZfVE9f
TUVNLgoKV2UgY2FuIG5vdCBzd2l0Y2ggZGlyZWN0aW9uIHJ1bnRpbWUuCgotIFDDqXRlcgoKVGV4
YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lu
a2kuClktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6
IEhlbHNpbmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
