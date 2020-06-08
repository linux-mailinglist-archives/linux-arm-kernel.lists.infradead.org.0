Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D70531F1A6C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 15:50:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1F48nTfwFXZPurkTy1MfHLrow1xzkUXy1GeWKHjdEnM=; b=tdynlaXcVRHMzRHW2cmp2JkuS
	bCcUedXkUXu5KUWsq2nnjiaTsgNddyDGbF6yoTOad5vErs7vTuesvHQFDG6Dd2Yo0G3eMsK3ZqIVt
	pIjLP9p2wwP5bIJhgRjC/hYeq6lt68FCf2HK7o2w2DQEs06VU48RxeX9dwadN8lVv6Kh+PkgNhdxt
	qw9mIt8GIOW5U2ADE9Q2frj87bITo3vYanhfhNW5tMpOYJdm0QXq6xhd3DCoX/QMp5y9GPVw5fyEO
	W9wXvb4dRU2OKfNgrGdji8oeBXnAwjmyx7ODed6/yw0EXNZYte3/h1pvrRx93sSzq/UZcOPInDKaK
	GWSSQrcvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiIAp-0005b4-AE; Mon, 08 Jun 2020 13:50:47 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiIAe-0005a1-I0
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 13:50:40 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591624238; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=BeW+XFvH8gEbAcXx9Jn4/gY3Kx/KL0fZNhe2EoXlSQQ=;
 b=Tge3k73adlNwa2//MtmuaybtpHeEqhtbWtAHjRev5T/4VVCbEqSI70hEatNraZYkr90v8Kcs
 zxIOQlsq/jnJgyVtZ2qR4qJG9UP1OfCn2IWmPldLBv1UPCiiI/5igHOCjx1nw2Mvo0EVRHME
 ZHfV0u5I1H/fLtZzbS6NUFpf6PQ=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n12.prod.us-west-2.postgun.com with SMTP id
 5ede421a3b3439f23ad58627 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 08 Jun 2020 13:50:18
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 48E4EC433C6; Mon,  8 Jun 2020 13:50:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 376ACC433CA;
 Mon,  8 Jun 2020 13:50:17 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 08 Jun 2020 19:20:17 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [RFC PATCH] iommu/arm-smmu: Remove shutdown callback
In-Reply-To: <e072f61a-d6cf-2e34-efd5-c1db38c5c622@arm.com>
References: <20200607110918.1733-1-saiprakash.ranjan@codeaurora.org>
 <20200608081846.GA1542@willie-the-truck>
 <08c293eefc20bc2c67f2d2639b93f0a5@codeaurora.org>
 <e072f61a-d6cf-2e34-efd5-c1db38c5c622@arm.com>
Message-ID: <c5a86b3a5a8a6d32e094b6ebde23f869@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_065038_672977_31F272DC 
X-CRM114-Status: GOOD (  24.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-msm@vger.kernel.org, iommu@lists.linux-foundation.org,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iaW4sCgpPbiAyMDIwLTA2LTA4IDE2OjU2LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24g
MjAyMC0wNi0wOCAxMDoxMywgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+PiBIaSBXaWxsLAo+
PiAKPj4gT24gMjAyMC0wNi0wOCAxMzo0OCwgV2lsbCBEZWFjb24gd3JvdGU6Cj4+PiBPbiBTdW4s
IEp1biAwNywgMjAyMCBhdCAwNDozOToxOFBNICswNTMwLCBTYWkgUHJha2FzaCBSYW5qYW4gd3Jv
dGU6Cj4+Pj4gUmVtb3ZlIFNNTVUgc2h1dGRvd24gY2FsbGJhY2sgc2luY2UgaXQgc2VlbXMgdG8g
Y2F1c2UgbW9yZQo+Pj4+IHByb2JsZW1zIHRoYW4gYmVuZWZpdHMuIFdpdGggdGhpcyBjYWxsYmFj
aywgd2UgbmVlZCB0byBtYWtlCj4+Pj4gc3VyZSB0aGF0IGFsbCBjbGllbnRzL2NvbnN1bWVycyBv
ZiBTTU1VIGRvIG5vdCBwZXJmb3JtIGFueQo+Pj4+IERNQSBhY3Rpdml0eSBvbmNlIHRoZSBTTU1V
IGlzIHNodXRkb3duIGFuZCB0cmFuc2xhdGlvbiBpcwo+Pj4+IGRpc2FibGVkLiBJbiBvdGhlciB3
b3JkcyB3ZSBuZWVkIHRvIGFkZCBzaHV0ZG93biBjYWxsYmFja3MKPj4+PiBmb3IgYWxsIHRob3Nl
IGNsaWVudHMgdG8gbWFrZSBzdXJlIHRoZXkgZG8gbm90IHBlcmZvcm0gYW55Cj4+Pj4gRE1BIG9y
IGVsc2Ugd2Ugc2VlIGFsbCBraW5kcyBvZiB3ZWlyZCBjcmFzaGVzIGR1cmluZyByZWJvb3QKPj4+
PiBvciBzaHV0ZG93bi4gVGhpcyBpcyBjbGVhcmx5IG5vdCBzY2FsYWJsZSBhcyB0aGUgbnVtYmVy
IG9mCj4+Pj4gY2xpZW50cyBvZiBTTU1VIHdvdWxkIHZhcnkgYWNyb3NzIFNvQ3MgYW5kIHdlIHdv
dWxkIG5lZWQgdG8KPj4+PiBhZGQgc2h1dGRvd24gY2FsbGJhY2tzIHRvIGFsbW9zdCBhbGwgZHJp
dmVycyBldmVudHVhbGx5Lgo+Pj4+IFRoaXMgY2FsbGJhY2sgd2FzIGFkZGVkIGZvciBrZXhlYyB1
c2VjYXNlIHdoZXJlIGl0IHdhcyBrbm93bgo+Pj4+IHRvIGNhdXNlIG1lbW9yeSBjb3JydXB0aW9u
cyB3aGVuIFNNTVUgd2FzIG5vdCBzaHV0ZG93biBidXQKPj4+PiB0aGF0IGRvZXMgbm90IGRpcmVj
dGx5IHJlbGF0ZSB0byBTTU1VIGJlY2F1c2UgdGhlIG1lbW9yeQo+Pj4+IGNvcnJ1cHRpb24gY291
bGQgYmUgYmVjYXVzZSBvZiB0aGUgY2xpZW50IG9mIFNNTVUgd2hpY2ggaXMKPj4+PiBub3Qgc2h1
dGRvd24gcHJvcGVybHkgYmVmb3JlIGJvb3RpbmcgaW50byBuZXcga2VybmVsLiBTbyBpbgo+Pj4+
IHRoYXQgY2FzZSwgd2UgbmVlZCB0byBpZGVudGlmeSB0aGUgY2xpZW50IG9mIFNNTVUgY2F1c2lu
Zwo+Pj4+IHRoZSBtZW1vcnkgY29ycnVwdGlvbiBhbmQgYWRkIGFwcHJvcHJpYXRlIHNodXRkb3du
IGNhbGxiYWNrCj4+Pj4gdG8gdGhlIGNsaWVudCByYXRoZXIgdGhhbiB0byB0aGUgU01NVS4KPj4+
PiAKPj4+PiBTaWduZWQtb2ZmLWJ5OiBTYWkgUHJha2FzaCBSYW5qYW4gPHNhaXByYWthc2gucmFu
amFuQGNvZGVhdXJvcmEub3JnPgo+Pj4+IC0tLQo+Pj4+IMKgZHJpdmVycy9pb21tdS9hcm0tc21t
dS12My5jIHwgNiAtLS0tLS0KPj4+PiDCoGRyaXZlcnMvaW9tbXUvYXJtLXNtbXUuY8KgwqDCoCB8
IDYgLS0tLS0tCj4+Pj4gwqAyIGZpbGVzIGNoYW5nZWQsIDEyIGRlbGV0aW9ucygtKQo+Pj4gCj4+
PiBUaGlzIGZlZWxzIGxpa2UgYSBnaWFudCBib2RnZSB0byBtZSBhbmQgSSB0aGluayB0aGF0IGFu
eSBkcml2ZXIgd2hpY2gKPj4+IGNvbnRpbnVlcyB0byBwZXJmb3JtIERNQSBhZnRlciBpdHMgLT5z
aHV0ZG93bigpIGZ1bmN0aW9uIGhhcyBiZWVuIAo+Pj4gaW52b2tlZAo+Pj4gaXMgYnVnZ3kuIFdv
dWxkbid0IHRoYXQgY2F1c2UgcHJvYmxlbXMgd2l0aCBrZXhlYygpLCBmb3IgZXhhbXBsZT8KPj4+
IAo+PiAKPj4gWWVzIGl0IGlzIGRlZmluaXRlbHkgYSBidWcgaW4gdGhlIGNsaWVudCBkcml2ZXIg
aWYgRE1BIGlzIHBlcmZvcm1lZAo+PiBhZnRlciBzaHV0ZG93biBjYWxsYmFjayBvZiB0aGF0IHJl
c3BlY3RpdmUgZHJpdmVyIGlzIGludm9rZWQgYW5kIGl0IAo+PiBtdXN0Cj4+IGJlIGZpeGVkIGlu
IHRoYXQgZHJpdmVyLiBCdXQgaGVyZSB0aGUgcHJvYmxlbSBJIHdhcyBkZXNjcmliaW5nIGlzIG5v
dCAKPj4gdGhhdCwKPj4gbW9zdCBvZiB0aGUgZHJpdmVycyBkbyBub3QgaGF2ZSBhIHNodXRkb3du
IGNhbGxiYWNrIHRvIGJlZ2luIHdpdGggYW5kIAo+PiBhZGRpbmcKPj4gaXQganVzdCBiZWNhdXNl
IG9mIHNodXRkb3duIGRlcGVuZGVuY3kgb24gU01NVSBkb2Vzbid0IHNlZW0gc28gd2VsbCAKPj4g
YmVjYXVzZQo+PiB3ZSBjYW4gaGF2ZSBtYW55IG1vcmUgc3VjaCBjbGllbnRzIGluIHRoZSBmdXR1
cmUgYW5kIHRoZW4gd2UgaGF2ZSB0byAKPj4ganVzdCBnbwo+PiBvbiBhZGRpbmcgdGhlIHNodXRk
b3duIGNhbGxiYWNrcyBldmVyeXdoZXJlLgo+IAo+IFllcywgaW5kZWVkIHdlIGRvLiBMaWtlIGl0
IG9yIG5vdCwga2V4ZWMgaXMgYSB0aGluZywgYW5kIGFib3V0IDk4JSBvZgo+IGRyaXZlcnMgd2ls
bCBoYXZlIGJlZW4gd3JpdHRlbiB3aXRob3V0IGNvbnNpZGVyaW5nIGl0Lgo+IAo+IElmIGZpeGlu
ZyBvbmUgcHJvYmxlbSBleHBvc2VzIGxvdHMgb2Ygb3RoZXIgcHJvYmxlbXMsIGNhbiB5b3UgaG9u
ZXN0bHkKPiBzYXkgdGhhdCB0aGUgYmVzdCBzb2x1dGlvbiBpcyB0byBnbyBiYWNrIGFuZCByZS1i
cmVhayB0aGUgb3JpZ2luYWwKPiB0aGluZz8KPiAKCk5vLCBkZWZpbml0ZWx5IG5vdC4gSSB3YXMg
dW5kZXIgdGhlIHdyb25nIGltcHJlc3Npb24gdGhhdCAqa2V4ZWMgdGhpbmcqCndhcyBtb3JlIGR1
ZSB0byB0aGUgY2xpZW50IGRyaXZlciBidWdzIHJhdGhlciB0aGFuIHRoZSBTTU1VLgoKPj4+IFRo
ZXJlJ3MgYSBjbGVhciBzaHV0ZG93biBkZXBlbmRlbmN5IG9yZGVyaW5nLCB3aGVyZSB0aGUgY2xp
ZW50cyBvZiAKPj4+IHRoZQo+Pj4gU01NVSBuZWVkIHRvIHNodXRkb3duIGJlZm9yZSB0aGUgU01N
VSBpdHNlbGYsIGJ1dCB0aGF0J3Mgbm90IHJlYWxseQo+Pj4gdGhlIFNNTVUgZHJpdmVyJ3MgcHJv
YmxlbSB0byBzb2x2ZS4KPj4+IAo+PiAKPj4gVGhlIHByb2JsZW0gd2l0aCBrZXhlYyBtYXkgbm90
IGJlIGRpcmVjdGx5IHJlbGF0ZWQgdG8gU01NVSBhcyB5b3Ugc2FpZAo+PiBhYm92ZSBpZiBETUEg
aXMgcGVyZm9ybWVkIGFmdGVyIHRoZSBjbGllbnQgc2h1dGRvd24gY2FsbGJhY2ssIHRoZW4gaXRz
IAo+PiBhCj4+IGJ1ZyBpbiB0aGUgY2xpZW50IGRyaXZlciwgc28gdGhhdCBuZWVkcyB0byBiZSBm
aXhlZCBpbiB0aGUgY2xpZW50IAo+PiBkcml2ZXIsCj4+IG5vdCB0aGUgU01NVS4gU28gaXMgdGhl
cmUgYW55IHBvaW50IGluIGhhdmluZyB0aGUgU01NVSBzaHV0ZG93biAKPj4gY2FsbGJhY2s/Cj4g
Cj4gVGhlIHBvaW50IGlzIHRoYXQga2V4ZWMgbmVlZHMgdG8gcmV0dXJuIHRoZSBzeXN0ZW0gdG8g
YSBzdGF0ZSBhcyBjbG9zZQo+IHRvIHJlc2V0IGFzIHBvc3NpYmxlLiBUaGUgU01NVSBpcyBhdCBs
ZWFzdCBhcyByZWxldmFudCBhcyBhbnkgb3RoZXIKPiBkZXZpY2UgaW4gdGhhdCByZWdhcmQsIGlm
IG5vdCBmYXIgbW9yZSBzbyAtIGNvbnNpZGVyIGlmIHRoZSBmaXJzdAo+IGtlcm5lbCAqZGlkKiBs
ZWF2ZSBpdCBlbmFibGVkIHdpdGggd2hhdGV2ZXIgbGVmdC1vdmVyIHRyYW5zbGF0aW9ucyBpbgo+
IHBsYWNlLCBhbmQga2V4ZWMnZWQgaW50byBhbm90aGVyIE9TIHRoYXQgd2Fzbid0IFNNTVUtYXdh
cmUuLi4KPiAKClllcyB1bmRlcnN0b29kLiBJIHdyb25nbHkgYXNzdW1lZCB0aGF0IHRoZSBrZXhl
YyBwcm9ibGVtIHdhcyBtb3JlCm9mIGEgY2xpZW50IGRyaXZlciBidWdzIHJhdGhlciB0aGFuIFNN
TVUuIEJ1dCBJIHNlZSB0aGF0IHdlIGluZGVlZApuZWVkIHRvIHNodXRkb3duIFNNTVUgYXMgYW55
IG90aGVyIGRyaXZlci4KCj4+IEFzIHlvdSBzZWUsIHdpdGggdGhpcyBTTU1VIHNodXRkb3duIGNh
bGxiYWNrLCB3ZSBuZWVkIHRvIGFkZCBzaHV0ZG93bgo+PiBjYWxsYmFja3MgaW4gYWxsIHRoZSBj
bGllbnQgZHJpdmVycy4KPiAKPiBZZXMuIEFuZCBpZiB5b3UgcmVhbGx5IHdhbnQgdG8gYXJndWUg
YWdhaW5zdCB0aGF0LCB0aGVuIGF0IGxlYXN0IGJlCj4gY29uc2lzdGVudCBhbmQgcHJvcG9zZSBy
ZW1vdmluZyBzaHV0ZG93biBmcm9tICphbGwqIHRoZSBJT01NVSBkcml2ZXJzLgo+IEFuZCB0aGVu
IHByb2JhYmx5IHByb3Bvc2UgcmVtb3Zpbmcga2V4ZWMgc3VwcG9ydCBmcm9tIGFsbCB0aGVpcgo+
IHJlc3BlY3RpdmUgYXJjaGl0ZWN0dXJlcy4uLiA7KQo+IAoKTm90IG15IGludGVudGlvbiB0byBi
cmVhayBvciByZW1vdmUga2V4ZWMsIGhlbmNlIHRoZSBSRkMgdGFnIDopCkFzIGZvciB0aGUgY29u
c2lzdGVudCBwYXJ0LCBvdXQgb2YgMTggaW9tbXUgZHJpdmVycyBvbmx5IDUKaGF2ZSBzaHV0ZG93
biBjYWxsYmFja3MsIHNvIG5vdGhpbmcgbXVjaCB0byByZW1vdmUgdGhlcmUgYW5kCmtleGVjIGlz
IGJyb2tlbiB0aGVyZSBwcm9iYWJseS4gSG93ZXZlciBJIGdvdCB5b3VyIHBvaW50IGFuZAp3aWxs
IGRyb3AgdGhpcyBwYXRjaC4KClRoYW5rcywKU2FpCgotLSAKUVVBTENPTU0gSU5ESUEsIG9uIGJl
aGFsZiBvZiBRdWFsY29tbSBJbm5vdmF0aW9uIENlbnRlciwgSW5jLiBpcyBhIAptZW1iZXIKb2Yg
Q29kZSBBdXJvcmEgRm9ydW0sIGhvc3RlZCBieSBUaGUgTGludXggRm91bmRhdGlvbgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
