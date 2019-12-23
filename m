Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E234112985A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 16:39:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LbCVYJkLCS8LjGePnbuayHWO5ONd66mNfkgfjDx5EZY=; b=UKS/ux/08TQqHEhu4sFkNw3Kw
	3VcholLFco9aQ2q+BDAiKtHzUnL4THbTlBZiQmmCJP0//Ary4qj4kPGetU/d/6VDy/kzbMEbqULX8
	ppssMhO9eclP9KCsaoqkLTJcIuMKUpHSqIMAFo9IXF/FKkcX5SXEzeXLlrzwPqEY84Sbmebw/p02j
	NuQU2LTqXsuF2ofoCuHAcqJLKW4j8M/ZazxSgScQv3YrKKKORhlsY8tTNwTiMu3duOi2xU88ueVp0
	GySKE/0cRHv3ty2yZFZi7dKlh8lKptpf/Os7fcCRCn+JTW7s97qgnN0NT/FtluooPO6Q4aoApqX/s
	BVmc0K/kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijPnt-00040V-2g; Mon, 23 Dec 2019 15:39:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijPnh-000401-5r
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 15:39:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C9491FB;
 Mon, 23 Dec 2019 07:39:13 -0800 (PST)
Received: from [10.37.12.81] (unknown [10.37.12.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA2613F6CF;
 Mon, 23 Dec 2019 07:39:11 -0800 (PST)
Subject: Re: [PATCH 1/2] include: trace: Add SCMI header with trace events
To: Jim Quinlan <james.quinlan@broadcom.com>,
 Sudeep Holla <sudeep.holla@arm.com>
References: <20191216161650.21844-1-lukasz.luba@arm.com>
 <20191218120900.GA28599@bogus>
 <7b59a2f1-0786-d24f-a653-76a60c15a8ae@broadcom.com>
 <CA+-6iNxn29WpUrbc9gL4EMTJfZj7FRCeO-_QaUqbjJYd1JAEKA@mail.gmail.com>
 <7fe599d3-1ce2-1fde-2911-9516a26090b6@arm.com>
 <9befbc13-ba00-094d-0064-0d97c1ccbb63@broadcom.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <abad5f94-ce0d-99c9-bb9a-754c56849aee@arm.com>
Date: Mon, 23 Dec 2019 15:39:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <9befbc13-ba00-094d-0064-0d97c1ccbb63@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_073917_263983_B548A4CA 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mingo@redhat.com, rostedt@goodmis.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDEyLzIwLzE5IDQ6MjQgUE0sIEppbSBRdWlubGFuIHdyb3RlOgo+IAo+PiBUaGFuayB5b3Ug
Zm9yIHNoYXJpbmcgeW91ciBleHBlcmltZW50cyBhbmQgdGhvdWdodHMuIEkgaGF2ZSBwcm9iYWJs
eQo+PiBzaW1pbGFyIHNldHVwIGZvciBzdHJlc3NpbmcgdGhlIGNvbW11bmljYXRpb24gY2hhbm5l
bCwgYnV0IEkgZG8gYWxzbwo+PiBzb21lIHdpcmVkIHRoaW5ncyBpbiB0aGUgZmlybXdhcmUuIFRo
YXQncyB3aHkgSSBuZWVkIHRvIG1lYXN1cmUgdGhlc2UKPj4gZGVsYXlzLiBJIGFtIGhhcHB5IHRo
YXQgaXQgaXMgdXNlZnVsIGZvciB5b3UgYWxzby4KPj4KPj4gSSBkb24ndCBrbm93IGlmIHlvdXIg
ZmlybXdhcmUgc3VwcG9ydHMgJ2Zhc3QgY2hhbm5lbCcsIGJ1dCBwbGVhc2Uga2VlcAo+PiBpbiBt
aW5kIHRoYXQgaXQgaXMgbm90IHRyYWNrZWQgaW4gdGhpcyAndHJhbnNmZXJfaWQnLgo+PiBUaGlz
IHRyYW5zZmVyX2lkIGluIHYyIHZlcnNpb24gZG9lcyBub3Qgc2hvdyB0aGUgcmVhbCB0cmFuc2Zl
cnMKPj4gdG8gdGhlIGZpcm13YXJlIHNpbmNlIHRoZXJlIGlzIGFub3RoZXIgcGF0aCBjYWxsZWQg
J2Zhc3QgY2hhbm5lbCcgb3IKPj4gJ2Zhc3Rfc3dpdGNoJyBpbiB0aGUgQ1BVZnJlcS4gSXQgaXMg
aW4gZHJpdmVycy9maXJtd2FyZS9hcm1fc2NtaS9wZXJmLmMKPj4gYW5kIHRoZSBhdG9taWMgdmFy
aWFibGUgaXMgbm90IGluY3JlbWVudGVkIGluIHRoYXQgcGF0aC4gQWRkaW5nIGl0IGFsc28KPj4g
dGhlcmUganVzdCBmb3IgYXRvbWljX2luYygpIHByb2JhYmx5IHdvdWxkIGFkZCBkZWxheXMgaW4g
dGhlIGZhc3Rfc3dpdGNoCj4+IGFuZCBhbHNvIGJyaW5ncyBsaXR0bGUgdmFsdWUuCj4+IEZvciB0
aGUgbm9ybWFsIGNoYW5uZWwsIHdoZXJlIHdlIGhhdmUgc3BpbmxvY2tzIGFuZCBvdGhlciBzdHVm
ZiwgdGhpcwo+PiBhdG9taWNfaW5jKCkgY291bGQgc3RheSBpbiBteSBvcGluaW9uLgo+Pgo+PiBS
ZWdhcmRzLAo+PiBMdWthc3oKPiBIaSBMdWthc3osCj4gCj4gV2UgY3VycmVudGx5IGRvIG5vdCB1
c2UgImZhc3QgY2hhbm5lbHMiIC0gYWx0aG91Z2ggaXQgaXMgcG9zc2libGUgd2UgbWlnaHQgc29t
ZWRheS4KPiBJIGZpbmQgdGhlIHRyYW5zZmVyX2lkIHVzZWZ1bCBwZXIgeW91ciB2MiBldmVuIGlm
IGl0IGRvZXNuJ3QgY292ZXIgRkMuwqAgVGhhbmtzIGZvcgo+IHN1Ym1pdHRpbmcgYW5kIGRpc2N1
c3NpbmcgdGhpcyEKClRoYW5rIHlvdSBmb3IgY29vcGVyYXRpb24uCgpSZWdhcmRzLApMdWthc3oK
Cj4gCj4gUmVnYXJkcywKPiBKaW0gUXVpbmxhbgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
