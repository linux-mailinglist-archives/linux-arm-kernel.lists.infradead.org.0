Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2E41709F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 07:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZVTJJCGbTOr5yn4x/ZHFs8XQqpO6U5imkwTHrwT49U=; b=lV4LQpyVobZPzs
	HDR27GZmLgLE6YuRBVP/xQ9MPLb+qdouq/rtX6dUITWVc0lL7SejP9ZuCXE1vMtwJOaT/G31R6pvR
	Ct1ZQUWqcB/uSI3w/mNCYNMZunAbBJlGWDBX6Lc0KKPjyApRpTu8/TReYxczGmTGmGZR/VXyS7I+4
	+Za1HXA74wEomwj8N6o7JaSiQyDSRtIS3odF59ucZkJoaLbDXOsegSOjsSfvx7p5Z6UxbVYatldkn
	vVGo8RDYi7YqgkQi9hM6j+AUgeWIJwZ2zx0U11UeJ0AxLUdbi6CB4rZgeHOmKZsmOFtzIIKswlVa+
	pFdKvoglQ3sAfN6QL1cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOFZX-0001Vu-Hn; Wed, 08 May 2019 05:56:55 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOFZP-0001Ub-RJ
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 05:56:49 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 22:56:46 -0700
X-ExtLoop1: 1
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.198])
 ([10.237.72.198])
 by fmsmga001.fm.intel.com with ESMTP; 07 May 2019 22:56:43 -0700
Subject: Re: [PATCH 2/2] mmc: sdhci-iproc: Set NO_HISPD bit to fix HS50 data
 hold time problem
To: Scott Branden <scott.branden@broadcom.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Stefan Wahren <stefan.wahren@i2se.com>
References: <20190506170115.10840-1-scott.branden@broadcom.com>
 <20190506170115.10840-3-scott.branden@broadcom.com>
 <673b3d25-0256-9cd7-c89a-673546e69f3a@intel.com>
 <293b4f12-c74f-35fe-80d7-fdb25405e499@broadcom.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <1c091a34-b678-af8b-fb15-89aca485d3b0@intel.com>
Date: Wed, 8 May 2019 08:56:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <293b4f12-c74f-35fe-80d7-fdb25405e499@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_225647_933253_73EAD119 
X-CRM114-Status: GOOD (  24.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-mmc@vger.kernel.org, Trac Hoang <trac.hoang@broadcom.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gOC8wNS8xOSAxOjQ2IEFNLCBTY290dCBCcmFuZGVuIHdyb3RlOgo+IEhpIEFkcmlhbiwKPiAK
PiBPbiAyMDE5LTA1LTA2IDExOjMxIHAubS4sIEFkcmlhbiBIdW50ZXIgd3JvdGU6Cj4+IE9uIDYv
MDUvMTkgODowMSBQTSwgU2NvdHQgQnJhbmRlbiB3cm90ZToKPj4+IEZyb206IFRyYWMgSG9hbmcg
PHRyYWMuaG9hbmdAYnJvYWRjb20uY29tPgo+Pj4KPj4+IFRoZSBpcHJvYyBob3N0IGVNTUMvU0Qg
Y29udHJvbGxlciBob2xkIHRpbWUgZG9lcyBub3QgbWVldCB0aGUKPj4+IHNwZWNpZmljYXRpb24g
aW4gdGhlIEhTNTAgbW9kZS7CoCBUaGlzIHByb2JsZW0gY2FuIGJlIG1pdGlnYXRlZAo+Pj4gYnkg
ZGlzYWJsaW5nIHRoZSBISVNQRCBiaXQ7IHRodXMgZm9yY2luZyB0aGUgY29udHJvbGxlciBvdXRw
dXQKPj4+IGRhdGEgdG8gYmUgZHJpdmVuIG9uIHRoZSBmYWxsaW5nIGNsb2NrIGVkZ2VzIHJhdGhl
ciB0aGFuIHRoZQo+Pj4gcmlzaW5nIGNsb2NrIGVkZ2VzLgo+Pj4KPj4+IEZpeGVzOiBmNWY5Njhm
MjM3MWMgKCJtbWM6IHNkaGNpLWlwcm9jOiBzdXBwcmVzcyBzcHVyaW91cyBpbnRlcnJ1cHQgd2l0
aAo+Pj4gTXVsdGlibG9jayByZWFkIikKPj4gSXMgdGhpcyBmaXhlcyB0YWcgY29ycmVjdCwgYmVj
YXVzZSBpdCBkb2Vzbid0IHNlZW0gcmVsYXRlZC7CoCBNYXliZSBleHBsYWluCj4+IHRoYXQgaW4g
dGhlIGNvbW1pdCBtZXNzYWdlLgo+IAo+IEkgY2hvc2UgdGhpcyB0YWcgdG8gYXNzaXN0IHN0YWJs
ZSBrZXJuZWwgbWFpbnRhaW5lcnMgc28gdGhhdCB0aGUgY2hhbmdlIGRvZXMKPiBub3QgcHJvZHVj
ZSBtZXJnZSBjb25mbGljdHMgYmFja3BvcnRpbmcgdG8gb2xkZXIga2VybmVsIHZlcnNpb25zLgo+
IAo+IEluIHJlYWxpdHksIHRoZSB0aW1pbmcgYnVnIGV4aXN0ZWQgc2luY2UgdGhlIGRyaXZlciB3
YXMgZmlyc3QgaW50cm9kdWNlZCBidXQKPiB0aGVyZSBpcyBubyBuZWVkIGZvciB0aGlzIGRyaXZl
ciB0byBiZSBzdXBwb3J0ZWQgaW4ga2VybmVsIHZlcnNpb25zIHRoYXQgb2xkLgoKWW91IGRvbid0
IG5lZWQgdG8gdXNlIHRoZSBGaXhlcyB0YWcgZm9yIHRoYXQuICBZb3UgY2FuIHB1dCBpdCBvbiB0
aGUgQ2MgbGluZQplLmcuCgpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAjIHY0LjEyKwoKPiBE
byB5b3Ugd2FudCBtZSB0byBhZGQgc3VjaCB0byB0aGUgY29tbWl0IG1lc3NhZ2U/CgpZZXMgcGxl
YXNlLgoKPiAKPj4KPj4+IFNpZ25lZC1vZmYtYnk6IFRyYWMgSG9hbmcgPHRyYWMuaG9hbmdAYnJv
YWRjb20uY29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogU2NvdHQgQnJhbmRlbiA8c2NvdHQuYnJhbmRl
bkBicm9hZGNvbS5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvbW1jL2hvc3Qvc2RoY2ktaXBy
b2MuYyB8IDMgKystCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2hvc3Qvc2RoY2ktaXBy
b2MuYyBiL2RyaXZlcnMvbW1jL2hvc3Qvc2RoY2ktaXByb2MuYwo+Pj4gaW5kZXggOWQ0MDcxYzQx
Yzk0Li4yZmViNGVmMzIwMzUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL21tYy9ob3N0L3NkaGNp
LWlwcm9jLmMKPj4+ICsrKyBiL2RyaXZlcnMvbW1jL2hvc3Qvc2RoY2ktaXByb2MuYwo+Pj4gQEAg
LTIyMCw3ICsyMjAsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHNkaGNpX2lwcm9jX2RhdGEKPj4+
IGlwcm9jX2N5Z251c19kYXRhID0gewo+Pj4gwqAgwqAgc3RhdGljIGNvbnN0IHN0cnVjdCBzZGhj
aV9wbHRmbV9kYXRhIHNkaGNpX2lwcm9jX3BsdGZtX2RhdGEgPSB7Cj4+PiDCoMKgwqDCoMKgIC5x
dWlya3MgPSBTREhDSV9RVUlSS19EQVRBX1RJTUVPVVRfVVNFU19TRENMSyB8Cj4+PiAtwqDCoMKg
wqDCoMKgwqDCoMKgIFNESENJX1FVSVJLX01VTFRJQkxPQ0tfUkVBRF9BQ01EMTIsCj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgIFNESENJX1FVSVJLX01VTFRJQkxPQ0tfUkVBRF9BQ01EMTIgfAo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoCBTREhDSV9RVUlSS19OT19ISVNQRF9CSVQsCj4+PiDCoMKgwqDC
oMKgIC5xdWlya3MyID0gU0RIQ0lfUVVJUksyX0FDTUQyM19CUk9LRU4sCj4+PiDCoMKgwqDCoMKg
IC5vcHMgPSAmc2RoY2lfaXByb2Nfb3BzLAo+Pj4gwqAgfTsKPj4+Cj4gCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
