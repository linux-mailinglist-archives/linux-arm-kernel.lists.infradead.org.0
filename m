Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3714D1ACE80
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 19:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yP5RxyKhKEgk6ZuHbcK6nD+w/Xe78oK1QPDw3iNizLs=; b=GKYL7RTk1sTvNm5S6FPAUocst
	5o26bkGvpwgnwBXk9LCALBNo7VbEwofTFP53mmZ4clMp1CbQ80/dpxH6zHQ1eOzYoMsHDA9q0TgSp
	Z3Q3e7pkcoPpIEzLxGiK+Es2QOcXDDxgamSVGQvH04j4eV6DmxCzi5fw/u9vzgHlHe1G6zddqinGF
	Vns44z4xkzzOHmyMF7rAmoP2C8FrVROWTjqhcT9pypUgFN3MVICsAGpFCLCfZPIgxuaJU8MZ1WqNt
	Y7xh/HTK9w6Op+q5APgIfeiaKZh+fB9mteZhLQ42W66Dse8y0qbAtLe3KyjvPswLczk1Zurwm/iGg
	2yUw2TAKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP898-0001sg-9U; Thu, 16 Apr 2020 17:17:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP88w-0001rz-PM
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 17:17:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7287730E;
 Thu, 16 Apr 2020 10:17:37 -0700 (PDT)
Received: from [10.57.59.184] (unknown [10.57.59.184])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5CBA23F73D;
 Thu, 16 Apr 2020 10:17:35 -0700 (PDT)
Subject: Re: [PATCH 2/2] iommu/arm-smmu: Allow client devices to select direct
 mapping
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
References: <cover.1579692800.git.saiprakash.ranjan@codeaurora.org>
 <813cc5b2da10c27db982254b274bf26008a9e6da.1579692800.git.saiprakash.ranjan@codeaurora.org>
 <3f12cefb-3887-859c-ddf5-c7a0fc755152@arm.com>
 <540fc55811d0a60a929ff1f694d6d271@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <fdc265e4-5a96-2def-df13-376249e16b49@arm.com>
Date: Thu, 16 Apr 2020 18:17:33 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <540fc55811d0a60a929ff1f694d6d271@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_101738_913288_2484C868 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rajendra Nayak <rnayak@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Jordan Crouse <jcrouse@codeaurora.org>,
 iommu@lists.linux-foundation.org, Tomasz Figa <tfiga@chromium.org>,
 Rob Clark <robdclark@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNC0xNiA1OjIzIHBtLCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6Cj4gSGkgUm9i
aW4sCj4gCj4gT24gMjAyMC0wNC0xNiAxOToyOCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+PiBPbiAy
MDIwLTAxLTIyIDExOjQ4IGFtLCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6Cj4+PiBGcm9tOiBK
b3JkYW4gQ3JvdXNlIDxqY3JvdXNlQGNvZGVhdXJvcmEub3JnPgo+Pj4KPj4+IFNvbWUgY2xpZW50
IGRldmljZXMgd2FudCB0byBkaXJlY3RseSBtYXAgdGhlIElPTU1VIHRoZW1zZWx2ZXMgaW5zdGVh
ZAo+Pj4gb2YgdXNpbmcgdGhlIERNQSBkb21haW4uIEFsbG93IHRob3NlIGRldmljZXMgdG8gb3B0
IGluIHRvIGRpcmVjdAo+Pj4gbWFwcGluZyBieSB3YXkgb2YgYSBsaXN0IG9mIGNvbXBhdGlibGUg
c3RyaW5ncy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBKb3JkYW4gQ3JvdXNlIDxqY3JvdXNlQGNv
ZGVhdXJvcmEub3JnPgo+Pj4gQ28tZGV2ZWxvcGVkLWJ5OiBTYWkgUHJha2FzaCBSYW5qYW4gPHNh
aXByYWthc2gucmFuamFuQGNvZGVhdXJvcmEub3JnPgo+Pj4gU2lnbmVkLW9mZi1ieTogU2FpIFBy
YWthc2ggUmFuamFuIDxzYWlwcmFrYXNoLnJhbmphbkBjb2RlYXVyb3JhLm9yZz4KPj4+IC0tLQo+
Pj4gwqAgZHJpdmVycy9pb21tdS9hcm0tc21tdS1xY29tLmMgfCAzOSArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKwo+Pj4gwqAgZHJpdmVycy9pb21tdS9hcm0tc21tdS5jwqDCoMKg
wqDCoCB8wqAgMyArKysKPj4+IMKgIGRyaXZlcnMvaW9tbXUvYXJtLXNtbXUuaMKgwqDCoMKgwqAg
fMKgIDUgKysrKysKPj4+IMKgIDMgZmlsZXMgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKQo+Pj4K
Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2FybS1zbW11LXFjb20uYyAKPj4+IGIvZHJp
dmVycy9pb21tdS9hcm0tc21tdS1xY29tLmMKPj4+IGluZGV4IDY0YTRhYjI3MGFiNy4uZmY3NDZh
Y2QxYzgxIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9pb21tdS9hcm0tc21tdS1xY29tLmMKPj4+
ICsrKyBiL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUtcWNvbS5jCj4+PiBAQCAtMyw2ICszLDcgQEAK
Pj4+IMKgwqAgKiBDb3B5cmlnaHQgKGMpIDIwMTksIFRoZSBMaW51eCBGb3VuZGF0aW9uLiBBbGwg
cmlnaHRzIHJlc2VydmVkLgo+Pj4gwqDCoCAqLwo+Pj4gwqAgKyNpbmNsdWRlIDxsaW51eC9vZl9k
ZXZpY2UuaD4KPj4+IMKgICNpbmNsdWRlIDxsaW51eC9xY29tX3NjbS5oPgo+Pj4gwqDCoMKgICNp
bmNsdWRlICJhcm0tc21tdS5oIgo+Pj4gQEAgLTExLDYgKzEyLDQzIEBAIHN0cnVjdCBxY29tX3Nt
bXUgewo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgYXJtX3NtbXVfZGV2aWNlIHNtbXU7Cj4+PiDCoCB9
Owo+Pj4gwqAgK3N0YXRpYyBjb25zdCBzdHJ1Y3QgYXJtX3NtbXVfY2xpZW50X21hdGNoX2RhdGEg
cWNvbV9hZHJlbm8gPSB7Cj4+PiArwqDCoMKgIC5kaXJlY3RfbWFwcGluZyA9IHRydWUsCj4+PiAr
fTsKPj4+ICsKPj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGFybV9zbW11X2NsaWVudF9tYXRjaF9k
YXRhIHFjb21fbWRzcyA9IHsKPj4+ICvCoMKgwqAgLmRpcmVjdF9tYXBwaW5nID0gdHJ1ZSwKPj4+
ICt9Owo+Pgo+PiBNaWdodCBpdCBtYWtlIHNlbnNlIHRvIGdyb3VwIHRoZXNlIGJ5IHRoZSBkZXNp
cmVkIFNNTVUgYmVoYXZpb3VyCj4+IHJhdGhlciB0aGFuIChhcHBhcmVudGx5KSB3aGF0IGtpbmQg
b2YgZGV2aWNlIHRoZSBjbGllbnQgaGFwcGVucyB0byBiZSwKPj4gd2hpY2ggc2VlbXMgbGlrZSBh
IGNvbXBsZXRlbHkgYXJiaXRyYXJ5IGRpc3RpbmN0aW9uIGZyb20gdGhlIFNNTVUKPj4gZHJpdmVy
J3MgUG9WPwo+Pgo+IAo+IFNvcnJ5LCBJIGRpZCBub3QgZ2V0IHRoZSAiZ3JvdXBpbmcgYnkgdGhl
IGRlc2lyZWQgU01NVSBiZWhhdmlvdXIiIHRoaW5nLgo+IENvdWxkIHlvdSBwbGVhc2UgZ2l2ZSBz
b21lIG1vcmUgZGV0YWlscz8KCkkgbWVhbiB0aGlzIHBhdHRlcm46CgpkZXZpY2VfYV9kYXRhIHsK
CS50aGluZyA9IHRoaXM7Cn0KCmRldmljZV9iX2RhdGEgewoJLnRoaW5nID0gdGhpczsKfQoKZGV2
aWNlX2NfZGF0YSB7CgkudGhpbmcgPSB0aGF0Owp9CgptYXRjaFtdID0gewoJeyAuY29tcGF0aWJs
ZSA9ICJBIiwgLmRhdGEgPSAmZGV2aWNlX2FfZGF0YSB9LAoJeyAuY29tcGF0aWJsZSA9ICJCIiwg
LmRhdGEgPSAmZGV2aWNlX2JfZGF0YSB9LAoJeyAuY29tcGF0aWJsZSA9ICJDIiwgLmRhdGEgPSAm
ZGV2aWNlX2NfZGF0YSB9LAp9OwoKLi4udnMuIHRoaXMgcGF0dGVybjoKCmRvX3RoaXMgewoJLnRo
aW5nID0gdGhpczsKfQoKZG9fdGhhdCB7CgkudGhpbmcgPSB0aGF0Owp9CgptYXRjaFtdID0gewoJ
eyAuY29tcGF0aWJsZSA9ICJBIiwgLmRhdGEgPSAmZG9fdGhpcyB9LAoJeyAuY29tcGF0aWJsZSA9
ICJCIiwgLmRhdGEgPSAmZG9fdGhpcyB9LAoJeyAuY29tcGF0aWJsZSA9ICJDIiwgLmRhdGEgPSAm
ZG9fdGhhdCB9LAp9OwoKIEZyb20gdGhlIHBlcnNwZWN0aXZlIG9mIHRoZSB0aGluZyBkb2luZyB0
aGUgdGhpbmcsIGdyb3VwaW5nIHRoZSBkYXRhIGJ5IApkZXZpY2UgaXMgbWVhbmluZ2xlc3MgaWYg
YWxsIHRoYXQgbWF0dGVycyBpcyB3aGV0aGVyIHRvIGRvIHRoaXMgb3IgdGhhdC4gClRoZSBzZWNv
bmQgcGF0dGVybiBleHByZXNzZXMgdGhhdCBtb3JlIG5hdHVyYWxseS4KCk9mIGNvdXJzZSBpZiBl
dmVyeSBkZXZpY2UgdHVybnMgb3V0IHRvIG5lZWQgYSB1bmlxdWUgY29tYmluYXRpb24gb2YgCnNl
dmVyYWwgYmVoYXZpb3VycywgdGhlbiB0aGVyZSBlbmRzIHVwIGJlaW5nIG5vIHByYWN0aWNhbCBk
aWZmZXJlbmNlIApleGNlcHQgdGhhdCBpdCdzIHByb2JhYmx5IGVhc2llciB0byBjb21lIHVwIHdp
dGggbmljZSBuYW1lcyB1bmRlciB0aGUgCmZpcnN0IHBhdHRlcm4uIEkgZ3Vlc3MgaXQncyB1cCB0
byBob3cgeW91IHNlZSB0aGlzIGRldmVsb3BpbmcgaW4gZnV0dXJlOyAKd2hldGhlciB5b3UncmUg
bGlrZWx5IHRvIG5lZWQgZmluZS1ncmFpbmVkIHBlci1kZXZpY2UgY29udHJvbCwgb3IgZG9uJ3Qg
CmV4cGVjdCBpdCB0byBnbyBtdWNoIGJleW9uZCBkb21haW4gdHlwZS4KClJvYmluLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
