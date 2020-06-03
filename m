Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B211ED108
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 15:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KMUQ8TpAoX+VI30JBl7VLkM3G4vXzQNkSleLWf8/pgE=; b=rsz39er8qDxLI46t4G+CDwXBI
	dwposw7AN8puXt/I9pDtvJiT8SmQ2N5aKHYSKmaHsbRsAp18MWEjNlg13/Ww8AWQ0kCnAZQLvhCwT
	8gEEAuy48Qh1KO4fg0r0ON1gNOHN5/R2BuJntfKaIhGLYO6+prZns7jvtDeoza8iOI2kiopi2iDp4
	+p27NUsGR7MOH8aLviajDGsAukr9n54m6vxAoPeljWyPNjyzGqFGH3i7SXyvXEiFSuxCCwuHJBEo8
	FuhFxFd598BmN3iFxgTgYtudJxtsh7r8n1K8NremN1PqlcDqAWU+7qbkJ7s3wwrDjC1vMLhCSjTOi
	E22ixj+Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTdj-0005ws-5D; Wed, 03 Jun 2020 13:41:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTdZ-0005wR-OW
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 13:40:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B1C255D;
 Wed,  3 Jun 2020 06:40:56 -0700 (PDT)
Received: from [10.57.0.45] (unknown [10.57.0.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C9B3C3F52E;
 Wed,  3 Jun 2020 06:40:54 -0700 (PDT)
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15> <bf7e8ac2-51b2-d9cb-9c4f-c311297accac@arm.com>
 <1549935cf69ac3a006f32eb278821027@codeaurora.org>
 <6c1a4fbd-98cb-a49c-0ced-1318d5d5e7c8@arm.com>
 <7fe5762b5cb8f87e988232922d06c55d@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <68444180-3ebe-8988-493a-fdd1dff994b6@arm.com>
Date: Wed, 3 Jun 2020 14:40:52 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <7fe5762b5cb8f87e988232922d06c55d@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_064057_843126_FF21C6EE 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNi0wMyAxMzoyNiwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+IEhpIFJvYmlu
LAo+IAo+IE9uIDIwMjAtMDYtMDMgMTc6NTEsIFJvYmluIE11cnBoeSB3cm90ZToKPj4gT24gMjAy
MC0wNi0wMyAxMzowMCwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+Pj4gSGkgUm9iaW4sIE1h
dGhpZXUKPj4+Cj4+PiBPbiAyMDIwLTA2LTAzIDE3OjA3LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+
Pj4gT24gMjAyMC0wNi0wMSAyMjoyOCwgTWF0aGlldSBQb2lyaWVyIHdyb3RlOgo+Pj4+PiBUaGF0
IGJlaW5nIHNhaWQgSSdtIHN1cmUgdGhhdCBkZXBlbmRlbmNpZXMgb24gYW4gSU9NTVUgaXNuJ3Qg
YSAKPj4+Pj4gcHJvYmxlbSBjb25maW5lZAo+Pj4+PiB0byBjb3Jlc2lnaHQuIEkgYW0gYWRkaW5n
IFJvYmluIE11cnBoeSwgd2hvIGFkZGVkIHRoaXMgY29tbWl0IFsxXSwgCj4+Pj4+IHRvIHRoZSB0
aHJlYWQKPj4+Pj4gaW4gdGhlIGhvcGUgdGhhdCBoZSBjYW4gcHJvdmlkZSBndWlkYW5jZSBvbiB0
aGUgcmlnaHQgd2F5IHRvIGRvIHRoaXMuCj4+Pj4KPj4+PiBSaWdodCwgaXQncyBub3Qgc3BlY2lm
aWMgdG8gQ29yZVNpZ2h0LCBhbmQgaXQncyBub3QgZXZlbiBzcGVjaWZpYyB0bwo+Pj4+IElPTU1V
cyByZWFsbHkuIEluIHNob3J0LCBibGFtZSBrZXhlYyA7KQo+Pj4+Cj4+Pgo+Pj4gWWVzIGl0IGlz
IG5vdCBzcGVjaWZpYyB0byBjb3Jlc2lnaHQsIHdlIGFyZSB0YXJnZXRpbmcgdGhpcyBmb3IgYWxs
Cj4+PiBjb25zdW1lcnMvY2xpZW50cyBvZiBTTU1VKGF0bGVhc3Qgb24gU0M3MTgwIFNvQykuIFdl
IGhhdmUgZGlzcGxheSAKPj4+IHRocm93aW5nCj4+PiBOb0MvaW50ZXJjb25uZWN0IGVycm9yc1sx
XSBkdXJpbmcgcmVib290IGFmdGVyIFNNTVUgaXMgZGlzYWJsZWQuCj4+PiBUaGlzIGlzIGFsc28g
bm90IHNwZWNpZmljIHRvIGtleGVjIGVpdGhlciBhcyB5b3UgZXhwbGFpbmVkIGhlcmUgWzJdIAo+
Pj4gYWJvdXQKPj4+IGEgY2FzZSB3aXRoIGRpc3BsYXkgd2hpY2ggaXMgZXhhY2x5IHdoYXQgaXMg
aGFwcGVuaW5nIGluIG91ciBzeXN0ZW0gWzFdLgo+Pgo+PiBTdXJlLCBidXQgdGhvc2UgaW5zdGFu
Y2VzIGFyZSBiZWdnaW5nIHRoZSBxdWVzdGlvbiBvZiB3aHkgdGhlIFNNTVUgaXMKPj4gZGlzYWJs
ZWQgYXQgcmVib290IGluIHRoZSBmaXJzdCBwbGFjZSA7KQo+Pgo+IAo+IFRoYXQgaXMgd2hhdCBo
YXBwZW5zIGluIFNNTVUgc2h1dGRvd24gY2FsbGJhY2sgcmlnaHQ/IEl0IGlzIHRoZSAKPiByZWJv
b3Qvc2h1dGRvd24gZmxvdy4KClllcywgdGhhdCdzIHdoZXJlIGl0IGhhcHBlbnMsIGJ1dCBteSBw
b2ludCBpcyAqd2h5KiBpdCBoYXBwZW5zIGF0IGFsbC4KCmhpbnQ6IGBnaXQgbG9nIC0tZ3JlcD1z
aHV0ZG93biBkcml2ZXJzL2lvbW11L2AKCklmIHdlIGNvdWxkIGFzc3VtZSB0aGUgc3lzdGVtIGlz
IGFsd2F5cyBhYm91dCB0byBiZSBwb3dlcmVkIG9mZiBvciAKcmVzZXQsIHdlIHdvdWxkbid0IG5l
ZWQgdG8gZG8gYW55dGhpbmcgdG8gdGhlIFNNTVUgZWl0aGVyIDspCgpSb2Jpbi4KCj4gCj4gIMKg
wqAgYXJtX3NtbXVfZGV2aWNlX3NodXRkb3duKCkKPiAgwqDCoMKgIHBsYXRmb3JtX2Rydl9zaHV0
ZG93bigpCj4gIMKgwqDCoMKgIGRldmljZV9zaHV0ZG93bigpCj4gIMKgwqDCoMKgwqAga2VybmVs
X3Jlc3RhcnRfcHJlcGFyZSgpCj4gIMKgwqDCoMKgwqDCoCBrZXJuZWxfcmVzdGFydCgpCj4gCj4g
VGhhbmtzLAo+IFNhaQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
