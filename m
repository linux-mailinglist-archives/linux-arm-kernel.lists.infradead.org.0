Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCE578645
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 09:23:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JmxoOO8ByvizWL2Hv0HWKPzojJAa8MRMyMke3mXHDno=; b=FPT1Yt1E1WA/cd
	ucinPjQc3zGIHYR3HVg7pVYFIKAFC08gKeTH1JL0/oDO0w25OAxyOsb7pP6/R7pZTm0qCgQQ82jvB
	KBWOwVJMDsiKqJDzBRpSyZBkOTzkVlK6/OMXLKKZIBRFEiPLzD45ikD9V3gYzUbvQKtlHoII31iXW
	Fyn6HQF3O8gSPH5c0LbhAptiuueJvjtl6QEtT4AggeuCPPzZ1IMkbX0sV55nQj3+3qv49pS8Qojd4
	c7V5hUAd4AKmkyJkfAUsBqcYaNNVNxKBTKWM92cxWnyQiTFompwKi7LMaaVx/Kuj0utVhrqlYdiTK
	fn9iI2B98jyGG1YG+G9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrzzw-0008Ai-Hh; Mon, 29 Jul 2019 07:23:08 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrzze-00088x-An
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 07:22:52 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6T7Mid4063082;
 Mon, 29 Jul 2019 02:22:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564384964;
 bh=VnQ9Nv//8xBx58kK6E2oPeg3dqXVx2pbyRIDI1AqKV0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=GHyl86mBC2VOEWrDJKZkxDR2RrIawERskz2V5queRcjgloAIm1wWHczwzPRL1reDC
 7aPpWUn69EWnCv7lWs4LXwHzL2v6REaFcaCoRCO5a9iuiap8ziSIAfCixAMKwgcVpo
 GDZuFQkX/12xFADUXD/65ZCZouz7KEUbIfiEuWuU=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6T7Min0120738
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 29 Jul 2019 02:22:44 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 29
 Jul 2019 02:22:43 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 29 Jul 2019 02:22:43 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6T7Mdo1056158;
 Mon, 29 Jul 2019 02:22:40 -0500
Subject: Re: [PATCH v5 0/3] dmaengine: ti: edma: Polled completion support
To: Vinod Koul <vkoul@kernel.org>
References: <20190716082655.1620-1-peter.ujfalusi@ti.com>
 <20190729064209.GF12733@vkoul-mobl.Dlink>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <f051dd12-911b-2b13-1908-7f0e1bd4b695@ti.com>
Date: Mon, 29 Jul 2019 10:22:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729064209.GF12733@vkoul-mobl.Dlink>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_002250_494464_E3A0759C 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Vmlub2QsCgpPbiAyOS8wNy8yMDE5IDkuNDIsIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMTYtMDct
MTksIDExOjI2LCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4gSGksCj4+Cj4+IENoYW5nZXMgc2lu
Y2UgdjQ6Cj4+IC0gU3BsaXQgdGhlIERNQV9DT01QTEVURSBhbmQgIXR4c3RhdGUgY2hlY2sgYXMg
Vmlub2Qgc3VnZ2VzdGVkCj4+Cj4+IENoYW5nZSBzaW5jZSB2MzoKPj4gLSBmaXggRE1BIHBvaW50
ZXIgdHJhY2tpbmcgZm9yIG1lbWNweQo+PiAtIGNvbXBsZXRpb24gcG9sbGluZyBpcyBvbmx5IGRv
bmUgd2hlbiBpdCBpcyBhc2tlZCBieSBub3QgcHJvdmlkaW5nCj4+ICAgRE1BX1BSRVBfSU5URVJS
VVBUIGZvciBtZW1jcHkKPj4KPj4gQ2hhbmdlcyBzaW5jZSB2MjoKPj4gLSBGaXggdHlwbyBpbiB0
aGUgY29tbWVudCBmb3IgcGF0Y2ggMAo+Pgo+PiBDaGFuZ2VzIHNpbmNlIHYxOgo+PiAtIENsZWFu
dXAgcGF0Y2ggZm9yIHRoZSBhcnJheSByZWdpc3RlciBoYW5kbGluZwo+PiAtIHR5cG8gZml4ZWQg
aW4gcGF0Y2gyIGNvbW1pdCBtZXNzYWdlCj4+Cj4+IFRoZSBjb2RlIGFyb3VuZCB0aGUgYXJyYXkg
cmVnaXN0ZXIgYWNjZXNzIHdhcyBwcmV0dHkgY29uZnVzaW5nIGZvciB0aGUgZmlyc3QKPj4gbG9v
aywgc28gY2xlYW4gdGhlbSB1cCBmaXJzdCB0aGVuIHVzZSB0aGUgY2xlYW5lciB3YXkgaW4gdGhl
IHBvbGxlZCBoYW5kbGluZy4KPj4KPj4gV2hlbiBhIERNQSBjbGllbnQgZHJpdmVyIGRvZXMgbm90
IHNldCB0aGUgRE1BX1BSRVBfSU5URVJSVVBUIGJlY2F1c2UgaXQKPj4gZG9lcyBub3Qgd2FudCB0
byB1c2UgaW50ZXJydXB0cyBmb3IgRE1BIGNvbXBsZXRpb24gb3IgYmVjYXVzZSBpdCBjYW4gbm90
Cj4+IHJlbHkgb24gRE1BIGludGVycnVwdHMgZHVlIHRvIGV4ZWN1dGluZyB0aGUgbWVtY3B5IHdo
ZW4gaW50ZXJydXB0cyBhcmUKPj4gZGlzYWJsZWQgaXQgd2lsbCBwb2xsIHRoZSBzdGF0dXMgb2Yg
dGhlIHRyYW5zZmVyLgo+Pgo+PiBTaW5jZSB3ZSBjYW4gbm90IHRlbGwgZnJvbSBhbnkgRURNQSBy
ZWdpc3RlciB0aGF0IHRoZSB0cmFuc2ZlciBpcwo+PiBjb21wbGV0ZWQsIHdlIGNhbiBvbmx5IGtu
b3cgdGhhdCB0aGUgcGFSQU0gc2V0IGhhcyBiZWVuIHNlbnQgdG8gVFBUQyBmb3IKPj4gcHJvY2Vz
c2luZyB3ZSBuZWVkIHRvIGNoZWNrIHRoZSByZXNpZHVlIG9mIHRoZSB0cmFuc2ZlciwgaWYgaXQg
aXMgMCB0aGVuCj4+IHRoZSB0cmFuc2ZlciBpcyBjb21wbGV0ZWQuCj4+Cj4+IFRoZSBwb2xsZWQg
Y29tcGxldGlvbiBjYW4gYnZlIHRlc3RlZCBieSBhcHBseWluZzoKPj4gaHR0cHM6Ly9wYXRjaHdv
cmsua2VybmVsLm9yZy9wYXRjaC8xMDk2NjQ5OS8KPj4KPj4gRW5hYmxpbmcgdGhlIG1lbWNweSBm
b3IgRURNQSBhbmQgcnVuIHRoZSBkbWF0ZXN0IHdpdGggcG9sbGVkID0gMS4KPj4KPj4gT3IsIGVu
YWJsZSB0aGUgRURNQSBtZW1jcHkgc3VwcG9ydCBhbmQgYm9vdCB1cCBhbnkgZHJhNyBmYW1pbHkg
ZGV2aWNlIHdpdGgKPj4gZGlzcGxheSBlbmFibGVkLiBUaGUgd29ya2Fyb3VuZCBmb3IgRE1NIGVy
cmF0YSBpODc4IHVzZXMgcG9sbGVkIERNQSBtZW1jcHkuCj4gCj4gQXBwbGllZCwgdGhhbmtzLiBG
aXhlZCB0eXBvIGluIDJuZCBwYXRjaCB3aGlsZSBhdCBpdAoKVGhhbmsgeW91ISBJIHdhcyBhYm91
dCB0byBzZW5kIHY2IHdpdGggdGhlIGZpeGVkIHR5cG8uCgotIFDDqXRlcgoKVGV4YXMgSW5zdHJ1
bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClktdHVu
bnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtp
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
