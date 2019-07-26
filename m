Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF449766CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:05:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4vEbXgb0vvbU7PP5FPSHGXbDW9B509sRzP3EJC9LxY=; b=M08aTEflR1TNEe
	4L1YVWXSCIuQnUHW5Slta4BA+JpxM5S9k+HLr44k8g+hC1VR9xfnQ5Cl5Z8wiDkhswZ3BS7nucZ9P
	2kO6nxqXm+s+PnDnX71Iqc6DfFruxNy5B9P0P9b7WClZZ1VgqvCeWhoyDfNhkHPRlMx0I8jlJOqlI
	Y1rqGp55Tq/z90At0lcggKD61Vl1fVWOaKvv+gmdaJto1z2UfZe4Iw+kz7nxIShcp4mYN+Y/tLepz
	niQQLGPrc+JJmR8pLLQzVuBE8khXEw/BlAVVBkhva5C6CRwzYq0OnZz1uyZ0udcPHAfn7A+1Kc8i5
	bTGrvjw2tIl2cDKEoulw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqzun-0004WM-JG; Fri, 26 Jul 2019 13:05:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzub-0004Vl-BJ
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:05:30 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DD94218D4;
 Fri, 26 Jul 2019 13:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564146328;
 bh=PlJaIXLsd7+ROMZXdVipGcdLV0hhbDgStYB8O8oFc0c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RdcUIdd1H+5eq9/3l9EYVMzYIHTMXpCifNslC1KeXnrHabpBGQVVegiqp1oaFoNRa
 dZ9wthH9uc5ZaCamXK2hqB0iYpN0Q6dAXK+IoCEFy4V5umgyxufnEdIhK/4CTLecCl
 7Ghvg4ElsJ5NFty0qQoUitUxckBHjJfa8psJi1lo=
Date: Fri, 26 Jul 2019 14:05:24 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 1/3] arm64: perf: Mark expected switch fall-through
Message-ID: <20190726130523.ftmc2un7fwwcegrr@willie-the-truck>
References: <20190726112716.19104-1-anders.roxell@linaro.org>
 <20190726121056.GA26088@lakrids.cambridge.arm.com>
 <20190726121354.GB26088@lakrids.cambridge.arm.com>
 <20190726122728.jhn4e6wq7rcowyi4@willie-the-truck>
 <1549fe77-367f-fee1-c09c-e429fca91051@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1549fe77-367f-fee1-c09c-e429fca91051@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_060529_427050_52E688F0 
X-CRM114-Status: GOOD (  21.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anders Roxell <anders.roxell@linaro.org>, Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDE6Mzg6MjRQTSArMDEwMCwgUm9iaW4gTXVycGh5IHdy
b3RlOgo+IE9uIDI2LzA3LzIwMTkgMTM6MjcsIFdpbGwgRGVhY29uIHdyb3RlOgo+ID4gT24gRnJp
LCBKdWwgMjYsIDIwMTkgYXQgMDE6MTM6NTRQTSArMDEwMCwgTWFyayBSdXRsYW5kIHdyb3RlOgo+
ID4gPiBPbiBGcmksIEp1bCAyNiwgMjAxOSBhdCAwMToxMDo1N1BNICswMTAwLCBNYXJrIFJ1dGxh
bmQgd3JvdGU6Cj4gPiA+ID4gT24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDE6Mjc6MTZQTSArMDIw
MCwgQW5kZXJzIFJveGVsbCB3cm90ZToKPiA+ID4gPiA+IFdoZW4gZmFsbC10aHJvdWdoIHdhcm5p
bmdzIHdhcyBlbmFibGVkIGJ5IGRlZmF1bHQsIGNvbW1pdCBkOTM1MTJlZjBmMGUKPiA+ID4gPiA+
ICgiTWFrZWZpbGU6IEdsb2JhbGx5IGVuYWJsZSBmYWxsLXRocm91Z2ggd2FybmluZyIpLCB0aGUg
Zm9sbG93aW5nCj4gPiA+ID4gPiB3YXJuaW5ncyB3YXMgc3RhcnRpbmcgdG8gc2hvdyB1cDoKPiA+
ID4gPiA+IAo+ID4gPiA+ID4gLi4vYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtwb2ludC5jOiBJ
biBmdW5jdGlvbiDigJhod19icmVha3BvaW50X2FyY2hfcGFyc2XigJk6Cj4gPiA+ID4gPiAuLi9h
cmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmM6NTQwOjc6IHdhcm5pbmc6IHRoaXMgc3Rh
dGVtZW50IG1heSBmYWxsCj4gPiA+ID4gPiAgIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91
Z2g9XQo+ID4gPiA+ID4gICAgICBpZiAoaHctPmN0cmwubGVuID09IEFSTV9CUkVBS1BPSU5UX0xF
Tl8xKQo+ID4gPiA+ID4gICAgICAgICBeCj4gPiA+ID4gPiAuLi9hcmNoL2FybTY0L2tlcm5lbC9o
d19icmVha3BvaW50LmM6NTQyOjM6IG5vdGU6IGhlcmUKPiA+ID4gPiA+ICAgICBjYXNlIDI6Cj4g
PiA+ID4gPiAgICAgXn5+fgo+ID4gPiA+ID4gLi4vYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtw
b2ludC5jOjU0NDo3OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbAo+ID4gPiA+ID4g
ICB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KPiA+ID4gPiA+ICAgICAgaWYgKGh3
LT5jdHJsLmxlbiA9PSBBUk1fQlJFQUtQT0lOVF9MRU5fMikKPiA+ID4gPiA+ICAgICAgICAgXgo+
ID4gPiA+ID4gLi4vYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtwb2ludC5jOjU0NjozOiBub3Rl
OiBoZXJlCj4gPiA+ID4gPiAgICAgZGVmYXVsdDoKPiA+ID4gPiA+ICAgICBefn5+fn5+Cj4gPiA+
ID4gPiAKPiA+ID4gPiA+IFJld29yayBzbyB0aGF0IHRoZSBjb21waWxlciBkb2Vzbid0IHdhcm4g
YWJvdXQgZmFsbC10aHJvdWdoLiBSZXdvcmsgc28KPiA+ID4gPiA+IHRoZSBjb2RlIGxvb2tzIGxp
a2UgdGhlIGFybSBjb2RlLiBTaW5jZSB0aGUgY29tbWVudCBpbiB0aGUgZnVuY3Rpb24KPiA+ID4g
PiA+IGluZGljYXRlcyB0YWh0IHRoaXMgaXMgc3VwcG9zZWQgdG8gYmVoYXZlIHRoZSBzYW1lIHdh
eSBhcyBhcm0zMiBiZWNhdXNlCj4gPiA+ID4gCj4gPiA+ID4gVHlwbzogcy90YWh0L3RoYXQvCj4g
PiA+ID4gCj4gPiA+ID4gPiBpdCBoYW5kbGVzIDMyLWJpdCB0YXNrcyBhbHNvLgo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAjIHYzLjE2Kwo+ID4gPiA+ID4g
Rml4ZXM6IDZlZTMzYzI3MTJmYyAoIkFSTTogaHdfYnJlYWtwb2ludDogY29ycmVjdCBhbmQgc2lt
cGxpZnkgYWxpZ25tZW50IGZpeHVwIGNvZGUiKQo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQW5k
ZXJzIFJveGVsbCA8YW5kZXJzLnJveGVsbEBsaW5hcm8ub3JnPgo+ID4gPiA+IAo+ID4gPiA+IFRo
ZSBwYXRjaCBpdHNlbGYgbG9va3MgZmluZSwgYnV0IEkgZG9uJ3QgdGhpbmsgdGhpcyBuZWVkcyBh
IENDIHRvCj4gPiA+ID4gc3RhYmxlLCBub3IgZG9lcyBpdCByZXF1aXJlIHRoYXQgZml4ZXMgdGFn
LCBhcyB0aGVyZSdzIG5vIGZ1bmN0aW9uYWwKPiA+ID4gPiBwcm9ibGVtLgo+ID4gPiAKPiA+ID4g
SG1tLi4uIEkgbm93IHNlZSBJIHNwb2tlIHRvbyBzb29uLCBhbmQgdGhpcyBpcyBtYWtpbmcgdGhl
IDEtYnl0ZQo+ID4gPiBicmVha3BvaW50IHdvcmsgYXQgYSAzLWJ5dGUgb2Zmc2V0Lgo+ID4gCj4g
PiBJIHN0aWxsIGRvbid0IHRoaW5rIGl0J3MgcXVpdGUgcmlnaHQgdGhvdWdoLCBzaW5jZSBpdCBm
b3JiaWRzIGEgMi1ieXRlCj4gPiB3YXRjaHBvaW50IG9uIGEgYnl0ZS1hbGlnbmVkIGFkZHJlc3Mu
Cj4gCj4gUGx1cywgQUZBSUNTLCBhIDEtYnl0ZSB3YXRjaHBvaW50IG9uIGEgMi1ieXRlLWFsaWdu
ZWQgYWRkcmVzcy4KPiAKPiBOb3QgdGhhdCBJIGtub3cgYW55dGhpbmcgYWJvdXQgdGhpcyBjb2Rl
LCBidXQgaXQgZG9lcyBzdGFydCB0byBsb29rIGxpa2UgaXQKPiBtaWdodCB3YW50IHJld3JpdGlu
ZyB3aXRob3V0IHRoZSBvZmZlbmRpbmcgc3dpdGNoIHN0YXRlbWVudCBhbnl3YXkuIEF0IGEKPiBn
bGFuY2UsIGl0IGxvb2tzIGxpa2UgdGhlIGludGVuZGVkIHNlbWFudGljIG1pZ2h0IGJvaWwgZG93
biB0bzoKPiAKPiAJaWYgKGh3LT5jdHJsLmxlbiA+IG9mZnNldCkKPiAJCXJldHVybiAtRUlOVkFM
OwoKR2l2ZW4gdGhhdCBpdCdzIGNvbXBhdCBjb2RlLCBJIHRoaW5rIGl0J3Mgd29ydGggc3RheWlu
ZyBhcyBjbG9zZSB0byB0aGUKYXJjaC9hcm0vIGltcGxlbWVudGF0aW9uIGFzIHdlIGNhbi4gQWxz
bywgYmV3YXJlIHRoYXQgdGhlCkFSTV9CUkVBS1BPSU5UX0xFTl8qIGRlZmluaXRpb25zIGFyZSBt
YXNrcyBiZWNhdXNlIG9mIHRoZSBCQVMgZmllbGRzIGluCnRoZSBkZWJ1ZyBhcmNoaXRlY3R1cmUu
CgpXaWxsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
