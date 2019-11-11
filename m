Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3949F720B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 11:30:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Q5bFug9x5h+eEJCIVqsnaFYlg+aHhr/rGXC3TzbcoA=; b=Ml2aaCOkoVTbXV
	x9bA9qIAteCuSwujKRs7IlCk/1Q6vnfu79QEiqspqPshLEvM83ignziWSflGIExUaHOH2NdfYlC2v
	EDSdQEhCwvnkQbTTiDn0dBZs8+1hGgn57RFhh7AZ0Vyi+jK8Z9mCa268tg4Zrz65mm+r5KaqaOXZC
	UIIQu+VfwguOA/MWBEJTkUTMnGT9lcvL04eGr10WLZzEaXwUP91peCf0P84WHkOdb9dwUzPQcWo+Z
	SIbHFMWJpJgH4AB3xr8s709glrLbfB0JAfH/bBF7VAVFwiGtr9oLR7CbHgZZycFIwQxDiPJYpTAhu
	tPHEPeTJ6wIiOia2PV2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU6xU-0003YI-06; Mon, 11 Nov 2019 10:30:08 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6wE-0002l3-VZ
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 10:28:54 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xABASgF9024340;
 Mon, 11 Nov 2019 04:28:42 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573468122;
 bh=N3+nkAquCGSpb9qA9Jkp1kcNxBZi2iIfDWLwqJXaOec=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=lVY2X2PDWwha9IAD9ulwt6I+UcqchltGoCdyFL0EZUqr41wtxxDU2sQDQzhs8zprf
 rcfv4wPD4c1xAZGtPsomrchWwOFm9ffJFPIPIqa6nVGzN8ZNyR8SC/7lthe/wUtFN9
 zhm8awX6psfFZuOD94ooPhJECr/mT576U5GG0Q5g=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xABASgnC057891
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 Nov 2019 04:28:42 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 11
 Nov 2019 04:28:09 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 11 Nov 2019 04:28:09 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xABASMXF125167;
 Mon, 11 Nov 2019 04:28:23 -0600
Subject: Re: [PATCH v4 12/15] dmaengine: ti: New driver for K3 UDMA - split#4:
 dma_device callbacks 1
To: Vinod Koul <vkoul@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-13-peter.ujfalusi@ti.com>
 <20191111060943.GQ952516@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <6d73f6e1-6d85-d468-2e69-47d36ed75807@ti.com>
Date: Mon, 11 Nov 2019 12:29:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111060943.GQ952516@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_022851_666175_A558D618 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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

CgpPbiAxMS8xMS8yMDE5IDguMDksIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMDEtMTEtMTksIDEw
OjQxLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiAKPj4gKy8qIE5vdCBtdWNoIHlldCAqLwo+IAo+
ID8KCkZvcmdvdCB0byByZW1vdmUgaXQgd2hlbiBJIGRpZCBpbXBsZW1lbnRlZCB0aGUgdHhfc3Rh
dHVzKCkgOykKCj4gCj4+ICtzdGF0aWMgZW51bSBkbWFfc3RhdHVzIHVkbWFfdHhfc3RhdHVzKHN0
cnVjdCBkbWFfY2hhbiAqY2hhbiwKPj4gKwkJCQkgICAgICBkbWFfY29va2llX3QgY29va2llLAo+
PiArCQkJCSAgICAgIHN0cnVjdCBkbWFfdHhfc3RhdGUgKnR4c3RhdGUpCj4+ICt7Cj4+ICsJc3Ry
dWN0IHVkbWFfY2hhbiAqdWMgPSB0b191ZG1hX2NoYW4oY2hhbik7Cj4+ICsJZW51bSBkbWFfc3Rh
dHVzIHJldDsKPj4gKwl1bnNpZ25lZCBsb25nIGZsYWdzOwo+PiArCj4+ICsJc3Bpbl9sb2NrX2ly
cXNhdmUoJnVjLT52Yy5sb2NrLCBmbGFncyk7Cj4+ICsKPj4gKwlyZXQgPSBkbWFfY29va2llX3N0
YXR1cyhjaGFuLCBjb29raWUsIHR4c3RhdGUpOwo+PiArCj4+ICsJaWYgKCF1ZG1hX2lzX2NoYW5f
cnVubmluZyh1YykpCj4+ICsJCXJldCA9IERNQV9DT01QTEVURTsKPiAKPiBzbyBhIHBhdXNlZCBj
aGFubmVsIHdpbGwgcmVzdWx0IGluIGRtYSBjb21wbGV0ZSBzdGF0dXM/CgpUaGUgY2hhbm5lbCBp
cyBzdGlsbCBlbmFibGVkIChydW5uaW5nKSwgdGhlIHBhdXNlIG9ubHkgc2V0cyBhIGJpdCBpbiB0
aGUKY2hhbm5lbCdzIHJlYWwgdGltZSBjb250cm9sIHJlZ2lzdGVyLgoKLSBQw6l0ZXIKClRleGFz
IEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtp
LgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBI
ZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
