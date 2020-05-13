Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 846E31D1031
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7bteTTt7lE6jOWPVlGrct/rbuy5DdzFdDXbxL14x1z0=; b=gihLVReXBQZn6k
	5QSyeuTmbqKr1W4Ma87EA/TFxBhxioN+qcMcCL+0BghPuYU7Vb6RLgKmSsaEauRwhVUkc001RZfun
	A7V59arCVvEx5l21qwJzqf36vSC7D8u8fOsFx/IxPLWM7+LYa6vpVQRMeLGi9yoeyyX77iDMu10/9
	qgAxw0aCMP6lN3gTZlBZ52CRcceWTCMGZDfxX+6CkVM39XZ3koy6NTWOtSvdY90n/kxxRcxmuCpGA
	Dn8eyHC26hVLZAvlUPZz3A8Yq+pXZU73OSzcccSw1xXg+ySw4MCRRxHQJr+xhIMrZ6lpdYXcQxjr5
	491cSqj+P2JPJLJsIkkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYowR-0004q9-1i; Wed, 13 May 2020 10:48:47 +0000
Received: from plasma4.jpberlin.de ([80.241.57.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYowB-0004l6-8W
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:48:33 +0000
Received: from spamfilter03.heinlein-hosting.de
 (spamfilter03.heinlein-hosting.de [80.241.56.117])
 by plasma.jpberlin.de (Postfix) with ESMTP id C016CBA8EC;
 Wed, 13 May 2020 12:48:23 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.68])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id HUsxvJ6SJwrN; Wed, 13 May 2020 12:48:22 +0200 (CEST)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "webmail.opensynergy.com",
 Issuer "GeoTrust EV RSA CA 2018" (not verified))
 (Authenticated sender: opensynergy@jpberlin.de)
 by plasma.jpberlin.de (Postfix) with ESMTPSA id 101EFB9F3B;
 Wed, 13 May 2020 12:48:22 +0200 (CEST)
Received: from [10.51.0.60] (10.25.255.1) by MXS02.open-synergy.com
 (10.25.10.18) with Microsoft SMTP Server (TLS) id 14.3.487.0; Wed, 13 May
 2020 12:48:21 +0200
Subject: Re: [PATCH v4] Add virtio SCMI device specification
To: <virtio-comment@lists.oasis-open.org>
References: <20200317192053.15665-1-peter.hilber@opensynergy.com>
 <20200424085114.9129-1-peter.hilber@opensynergy.com>
From: Peter Hilber <peter.hilber@opensynergy.com>
Autocrypt: addr=peter.hilber@opensynergy.com; prefer-encrypt=mutual; keydata=
 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
 lbekkuPTQs/m
Message-ID: <d0034b91-8f8a-3316-b67f-4e5abde73629@opensynergy.com>
Date: Wed, 13 May 2020 12:48:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200424085114.9129-1-peter.hilber@opensynergy.com>
Content-Language: en-US
X-Originating-IP: [10.25.255.1]
X-Rspamd-Queue-Id: C016CBA8EC
X-Rspamd-Score: -5.48 / 15.00 / 200.00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_034831_631375_8DE8DA5B 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.57.33 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: virtio-dev@lists.oasis-open.org, Souvik.Chakravarty@arm.com,
 jean-philippe@linaro.org, Sudeep.Holla@arm.com, alex.bennee@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQuMDQuMjAgMTA6NTEsIFBldGVyIEhpbGJlciB3cm90ZToKPiBUaGlzIHBhdGNoIHByb3Bv
c2VzIGEgbmV3IHZpcnRpbyBkZXZpY2UgZm9yIHRoZSBBcm0gU0NNSSBwcm90b2NvbC4KPiAKPiBU
aGUgZGV2aWNlIHByb3ZpZGVzIGEgc2ltcGxlIHRyYW5zcG9ydCBmb3IgdGhlIEFybSBTQ01JIHBy
b3RvY29sWzFdLiBUaGUKPiAqUyp5c3RlbSAqQypvbnRyb2wgYW5kICpNKmFuYWdlbWVudCAqSSpu
dGVyZmFjZSBwcm90b2NvbCBhbGxvd3Mgc3BlYWtpbmcKPiB0byBzeXN0ZW0gY29udHJvbGxlcnMg
dGhhdCBhbGxvdyBvcmNoZXN0cmF0aW5nIHRoaW5ncyBsaWtlIHBvd2VyCj4gbWFuYWdlbWVudCwg
c3lzdGVtIHN0YXRlIG1hbmFnZW1lbnQgYW5kIHNlbnNvciBhY2Nlc3MuIFRoZSBTQ01JIHByb3Rv
Y29sCj4gaXMgdXNlZCBvbiBTb0NzIHdoZXJlIG11bHRpcGxlIGNvcmVzIGFuZCBjby1wcm9jZXNz
b3JzIG5lZWQgYWNjZXNzIHRvCj4gdGhlc2UgcmVzb3VyY2VzLgo+IAo+IFRoZSB2aXJ0aW8gdHJh
bnNwb3J0IGFsbG93cyBtYWtpbmcgdXNlIG9mIHRoaXMgcHJvdG9jb2wgaW4gdmlydHVhbGl6ZWQK
PiBzeXN0ZW1zLgo+IAo+IFsxXSBodHRwczovL2RldmVsb3Blci5hcm0uY29tL2RvY3MvZGVuMDA1
Ni9iCj4gCj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgSGlsYmVyIDxwZXRlci5oaWxiZXJAb3BlbnN5
bmVyZ3kuY29tPgo+IC0tLQo+IAo+IE5vdGVzOgo+ICAgICBDaGFuZ2VzIGZvciB2NDoKPiAgICAg
Cj4gICAgIC0gQWRkIG1vcmUgcmVxdWlyZW1lbnRzIG9uIHNoYXJlZCBtZW1vcnkgcmVnaW9ucyBh
ZnRlciBmZWVkYmFjayBmcm9tCj4gICAgICAgQWxleCBCZW5uw6llLgoKSSBoYWQgYW4gb2ZmLWxp
c3QgZGlzY3Vzc2lvbiBhYm91dCBjb25jdXJyZW50IGFjY2VzcyB0byBTQ01JIHNoYXJlZAptZW1v
cnkgcmVnaW9ucyB3aXRoIHRoZSBBcm0gU0NNSSBzcGVjWzFdIG1haW50YWluZXIgeWVzdGVyZGF5
LiBBbgp1cGNvbWluZyBuZXcgdmVyc2lvbiBvZiB0aGUgQXJtIFNDTUkgc3BlYyB3aWxsIHByb3Zp
ZGUgYSBnZW5lcmljLCBtb3JlCnBvd2VyZnVsIHdheSB0byBoYW5kbGUgY29uY3VycmVudCBhY2Nl
c3MgdG8gc2hhcmVkIG1lbW9yeS4KClRoZXJlZm9yZSwgSSBwbGFuIHRvIGFnYWluIGRyb3AgdGhl
IHJlcXVpcmVtZW50cyBpbnRyb2R1Y2VkIGluIHY0IGluIHRoZQp1cGNvbWluZyB2aXJ0aW8gU0NN
SSBzcGVjIHBhdGNoIHY1LgoKQmVzdCByZWdhcmRzLAoKUGV0ZXIKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
