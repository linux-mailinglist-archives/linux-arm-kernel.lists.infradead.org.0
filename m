Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B3F1C8A1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:07:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=seDmPNrXuzSivJvqP5pnQ1CZ7ObOG3OpBWHPghC9Mo4=; b=S8MrD3LNRObtLmZ/Yg4V1HbNQ
	959xcbNpGB84suLFzvBaNYpVVmChk+fqTtAnnNjjr9JlADP2O5XViCnv2SQ9Adx4zmZyidt6kRmIA
	6AAc6SZAdM76OPjcBs4UkAeGputMAHLue5QPlJuMzwxXAsd2/iF3YMOT5HJcqaZbwz0L2Ab3jzIhj
	/djiJOcnIZwbotks4qbdyGELkNV/6nuMUA7HjkT4rPaqxpt5l52B0xive/9aaM+Jwlzs07MDbPXT+
	u9+qBLzk1DSfatQiZZ/F0OTaT6m1Zu6tv3sjemSkzjqs7CD6AUe3c9VUG7cFuteT9reHZIxXyBboe
	NSgoYpQ2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWfIz-0005fd-Ry; Thu, 07 May 2020 12:07:09 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWfId-0005aw-Ql
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:06:57 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588853211; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=CsTjSpDacRW1HUymiU2kvvRQCndHnkINhBw2dj0kpdw=;
 b=KpS8od3bdrjj6b4xvAXxiX4cuNXW/WKdXN8+9AQAbtNpWB/8p6T30O5OLNDZl/TIEwGdtvO0
 6SMsLUh+6uggYXNVr8TjCg8FYhLq6gPADSD+9ayJSmpWVmmWmuOsOdTT4yuMjm64OiZP/4KJ
 0ziP0AWV+TD2lP5T1Ok3ufOb7HE=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb3f9d2.7f54e90f5c38-smtp-out-n02;
 Thu, 07 May 2020 12:06:42 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 670EFC44798; Thu,  7 May 2020 12:06:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 88106C4478F;
 Thu,  7 May 2020 12:06:41 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 07 May 2020 17:36:41 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>, Rob Clark <robdclark@gmail.com>
Subject: Re: [PATCH] iomm/arm-smmu: Add stall implementation hook
In-Reply-To: <1ced023b-157c-21a0-ac75-1adef7f029f0@arm.com>
References: <20200421202004.11686-1-saiprakash.ranjan@codeaurora.org>
 <b491e02ad790a437115fdeab6b21bc48@codeaurora.org>
 <1ced023b-157c-21a0-ac75-1adef7f029f0@arm.com>
Message-ID: <fad5dc096a2bd9404341ba8738ba8fc9@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_050651_691685_343885D0 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Jordan Crouse <jcrouse@codeaurora.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iaW4sCgpPbiAyMDIwLTA1LTA3IDE2OjI1LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24g
MjAyMC0wNS0wNyAxMToxNCBhbSwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+PiBIaSBXaWxs
LCBSb2Jpbgo+PiAKPj4gT24gMjAyMC0wNC0yMiAwMTo1MCwgU2FpIFByYWthc2ggUmFuamFuIHdy
b3RlOgo+Pj4gQWRkIHN0YWxsIGltcGxlbWVudGF0aW9uIGhvb2sgdG8gZW5hYmxlIHN0YWxsaW5n
Cj4+PiBmYXVsdHMgb24gUUNPTSBwbGF0Zm9ybXMgd2hpY2ggc3VwcG9ydHMgaXQgd2l0aG91dAo+
Pj4gY2F1c2luZyBhbnkga2luZCBvZiBoYXJkd2FyZSBtaXNoYXBzLiBXaXRob3V0IHRoaXMKPj4+
IG9uIFFDT00gcGxhdGZvcm1zLCBHUFUgZmF1bHRzIGNhbiBjYXVzZSB1bnJlbGF0ZWQKPj4+IEdQ
VSBtZW1vcnkgYWNjZXNzZXMgdG8gcmV0dXJuIHplcm9lcy4gVGhpcyBoYXMgdGhlCj4+PiB1bmZv
cnR1bmF0ZSByZXN1bHQgb2YgY29tbWFuZC1zdHJlYW0gcmVhZHMgZnJvbSBDUAo+Pj4gZ2V0dGlu
ZyBpbnZhbGlkIGRhdGEsIGNhdXNpbmcgYSBjYXNjYWRlIG9mIGZhaWwuCj4gCj4gSSB0aGluayB0
aGlzIGNhbWUgdXAgYmVmb3JlLCBidXQgc29tZXRoaW5nIGFib3V0IHRoaXMgcmF0aW9uYWxlCj4g
ZG9lc24ndCBhZGQgdXAgLSB3ZSdyZSBub3QgKnVzaW5nKiBzdGFsbHMgYXQgYWxsLCB3ZSdyZSBz
dGlsbAo+IHRlcm1pbmF0aW5nIGZhdWx0aW5nIHRyYW5zYWN0aW9ucyB1bmNvbmRpdGlvbmFsbHk7
IHdlJ3JlIGp1c3QgdXNpbmcKPiBDRkNGRyB0byB0ZXJtaW5hdGUgdGhlbSB3aXRoIGEgc2xpZ2h0
IGRlbGF5LCByYXRoZXIgdGhhbiBpbW1lZGlhdGVseS4KPiBJdCdzIHJlYWxseSBub3QgY2xlYXIg
aG93IG9yIHdoeSB0aGF0IG1ha2VzIGEgZGlmZmVyZW5jZS4gSXMgaXQgYSBHUFUKPiBidWc/IE9y
IGFuIFNNTVUgYnVnPyBJcyB0aGlzIHJlbGlhYmxlIChvciBldmVuIGEgZG9jdW1lbnRlZCB3b3Jr
YXJvdW5kCj4gZm9yIHNvbWV0aGluZyksIG9yIG1pZ2h0IHRoaW5ncyBzdGFydCBibG93aW5nIHVw
IGFnYWluIGlmIGFueSBvdGhlcgo+IGJlaGF2aW91ciBzdWJ0bHkgY2hhbmdlcz8gSSdtIG5vdCBk
ZWFkIHNldCBhZ2FpbnN0IGFkZGluZyB0aGlzLCBidXQKPiBJJ2QgKnJlYWxseSogbGlrZSB0byBo
YXZlIGEgbG90IG1vcmUgY29uZmlkZW5jZSBpbiBpdC4KPiAKClllcyBpdCBoYXMgY29tZSB1cCBi
ZWZvcmUsIHlvdSBjYW4gZmluZCBkZXRhaWxzIGluIGJlbG93IGxpbmtzLgogIC0gaHR0cHM6Ly9w
YXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC85OTUzODAzLwogIC0gaHR0cHM6Ly9wYXRjaHdvcmsu
a2VybmVsLm9yZy9wYXRjaC8xMDYxODcxMy8KClJvYiBDbGFyayBjYW4gYWRkIG1vcmUgZGV0YWls
cyBvbiB0aGlzIHByb2JhYmx5IGZvciB0aGUgR1BVIGZhdWx0cy4KQXMgZm9yIHRoZSByZWxpYWJp
bGl0eSwgZG93bnN0cmVhbSBrZXJuZWwoSSBtZWFuIGtlcm5lbHMgd2l0aCB3aGljaCAKYW5kcm9p
ZApkZXZpY2VzIHdpdGggUUNPTSBjaGlwc2V0cyBhcmUgc2hpcHBlZCkgaGFzIHN0YWxsaW5nIGVu
YWJsZWQgZm9yIGEgbG9uZyAKdGltZQpub3cgYW5kIGhhcyBiZWVuIHN0YWJsZSBpbiB0aGUgZmll
bGQuIFNvIHdlIGNhbiBzYXkgdGhhdCB3ZSBhcmUgc2FmZSAKd2l0aAp0aGlzIGVuYWJsZWQgaW4g
UUNPTSBpbXBsZW1lbnRhdGlvbi4KCj4+PiBTdWdnZXN0ZWQtYnk6IFJvYiBDbGFyayA8cm9iZGNs
YXJrQGdtYWlsLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IFNhaSBQcmFrYXNoIFJhbmphbiA8c2Fp
cHJha2FzaC5yYW5qYW5AY29kZWF1cm9yYS5vcmc+Cj4+PiAtLS0KPj4+IFRoaXMgaGFzIGJlZW4g
YXR0ZW1wdGVkIHByZXZpb3VzbHkgYnkgUm9iIENsYXJrIGluIDIwMTcsIDIwMTguCj4+PiBIb3Bl
ZnVsbHkgd2UgY2FuIGdldCBzb21ldGhpbmcgY29uY2x1ZGVkIGluIDIwMjAuCj4+PiDCoCogaHR0
cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC85OTUzODAzLwo+Pj4gwqAqIGh0dHBzOi8v
cGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA2MTg3MTMvCj4+PiAtLS0KPj4+IMKgZHJpdmVy
cy9pb21tdS9hcm0tc21tdS1xY29tLmMgfCAxICsKPj4+IMKgZHJpdmVycy9pb21tdS9hcm0tc21t
dS5jwqDCoMKgwqDCoCB8IDcgKysrKysrKwo+Pj4gwqBkcml2ZXJzL2lvbW11L2FybS1zbW11LmjC
oMKgwqDCoMKgIHwgMSArCj4+PiDCoDMgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCj4+
PiAKPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2FybS1zbW11LXFjb20uYyAKPj4+IGIv
ZHJpdmVycy9pb21tdS9hcm0tc21tdS1xY29tLmMKPj4+IGluZGV4IDI0YzA3MWMxZDhiMC4uYTEz
YjIyOTM4OWQ0IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9pb21tdS9hcm0tc21tdS1xY29tLmMK
Pj4+ICsrKyBiL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUtcWNvbS5jCj4+PiBAQCAtMzIsNiArMzIs
NyBAQCBzdGF0aWMgaW50IHFjb21fc2RtODQ1X3NtbXU1MDBfcmVzZXQoc3RydWN0Cj4+PiBhcm1f
c21tdV9kZXZpY2UgKnNtbXUpCj4+PiAKPj4+IMKgc3RhdGljIGNvbnN0IHN0cnVjdCBhcm1fc21t
dV9pbXBsIHFjb21fc21tdV9pbXBsID0gewo+Pj4gwqDCoMKgwqAgLnJlc2V0ID0gcWNvbV9zZG04
NDVfc21tdTUwMF9yZXNldCwKPj4+ICvCoMKgwqAgLnN0YWxsID0gdHJ1ZSwKPj4+IMKgfTsKPj4+
IAo+Pj4gwqBzdHJ1Y3QgYXJtX3NtbXVfZGV2aWNlICpxY29tX3NtbXVfaW1wbF9pbml0KHN0cnVj
dCBhcm1fc21tdV9kZXZpY2UgCj4+PiAqc21tdSkKPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lv
bW11L2FybS1zbW11LmMgYi9kcml2ZXJzL2lvbW11L2FybS1zbW11LmMKPj4+IGluZGV4IGU2MjJm
NGUzMzM3OS4uMTZiMDNmY2E5OTY2IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9pb21tdS9hcm0t
c21tdS5jCj4+PiArKysgYi9kcml2ZXJzL2lvbW11L2FybS1zbW11LmMKPj4+IEBAIC00ODgsNiAr
NDg4LDExIEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBhcm1fc21tdV9jb250ZXh0X2ZhdWx0KGludAo+
Pj4gaXJxLCB2b2lkICpkZXYpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBm
c3IsIGlvdmEsIGZzeW5yLCBjYmZyc3lucmEsIGlkeCk7Cj4+PiAKPj4+IMKgwqDCoMKgIGFybV9z
bW11X2NiX3dyaXRlKHNtbXUsIGlkeCwgQVJNX1NNTVVfQ0JfRlNSLCBmc3IpOwo+Pj4gKwo+Pj4g
K8KgwqDCoCBpZiAoc21tdS0+aW1wbCAmJiBzbW11LT5pbXBsLT5zdGFsbCAmJiAoZnNyICYgQVJN
X1NNTVVfRlNSX1NTKSkKPj4+ICvCoMKgwqDCoMKgwqDCoCBhcm1fc21tdV9jYl93cml0ZShzbW11
LCBpZHgsIEFSTV9TTU1VX0NCX1JFU1VNRSwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIEFSTV9TTU1VX1JFU1VNRV9URVJNSU5BVEUpOwo+IAo+IFNob3VsZG4ndCB0aGlz
IGJlICpiZWZvcmUqIHRoZSB3cml0ZSB0byBGU1IsIGluIGNhc2UgdGhlIG91dHN0YW5kaW5nCj4g
ZmF1bHQgY2F1c2VzIHRoYXQgdG8gYmUgaW1tZWRpYXRlbHkgcmVhc3NlcnRlZCBiZWZvcmUgd2Ug
d3JpdGUKPiBDQl9SRVNVTUUgYW5kIHdlIGVuZCB1cCBpbW1lZGlhdGVseSB0YWtpbmcgdGhlIElS
USBhIHNlY29uZCB0aW1lPwo+IAoKWWVzLCBJIHdpbGwgZml4dXAgdGhpcyBpbiB0aGUgbmV4dCB2
ZXJzaW9uLgoKPiAoVGhlIG92ZXJhbGwgZW5hYmxlbWVudCBiZWluZyBpbiBpbXBsIGlzIHNvdW5k
LCBidXQgeW91IHN0aWxsIGRvbid0Cj4gZ2V0IHRvIHBsYXkgIndvcmtzIG9uIG15IG1hY2hpbmUi
IGluIHRoZSBhcmNoaXRlY3R1cmFsIGNvZGUgOlApCj4gCgpXZSBjb3VsZCBoYXZlIG91ciBvd24g
Y29udGV4dCBmYXVsdCBoYW5kbGVyIGluIFFDT00gaW1wbGVtZW50YXRpb24sCmJ1dCB0aGF0IHdv
dWxkIGp1c3QgYmUgZHVwbGljYXRpbmcgdGhpbmdzIGZyb20gYXJtLXNtbXUgY29udGV4dCBmYXVs
dApoYW5kbGVyLiBTbyBJIGRpZCBub3QgdGhpbmsgaXQgbWFrZXMgbXVjaCBzZW5zZSB0byBoYXZl
IG91ciBvd24KZmF1bHQgaGFuZGxlciBpbiBxY29tIGltcGwganVzdCBmb3IgZW5hYmxpbmcgc3Rh
bGwgbW9kZWwuCgpUaGFua3MsClNhaQoKLS0gClFVQUxDT01NIElORElBLCBvbiBiZWhhbGYgb2Yg
UXVhbGNvbW0gSW5ub3ZhdGlvbiBDZW50ZXIsIEluYy4gaXMgYSAKbWVtYmVyCm9mIENvZGUgQXVy
b3JhIEZvcnVtLCBob3N0ZWQgYnkgVGhlIExpbnV4IEZvdW5kYXRpb24KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
