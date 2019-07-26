Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D0A765AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:27:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpLzvxcEVCYJQGVCiDVP5VUgPpxxMXozBZ36Jp7R5Dc=; b=Z0GI2lr7wy2u9n
	/BHmuWd1MM2lsOuBRYKd4skCm1goq07fKGz5SKHRjF2NkfmxnkliDoYwK50QHRbReFs+ozsHSzCqC
	D3seD7eJD2HAi48JjZhZsjZZd/PfBTpshdwAXjDXgQC67y1xv1QlStAmLW97tNROPnCnHBCzAF/in
	vC3KkGTjBk5ugz3rw7O+Bf5CkdIeIs23tJ65powqu0qArzS0hCrAebiyxVhQIuyrKRNJTtKOXD/ws
	lvLMY+ySPMaX9rBmvCdExsoAvhJGRX5A09FLgmSHdqji4Np3bwOtJABnQPkqagq9nCCmzV5lNbpHL
	RekLQmBT9NXFb1V0Z51A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqzK7-0003VM-8o; Fri, 26 Jul 2019 12:27:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzJu-0003V0-Mh
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:27:36 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82A4D22ADA;
 Fri, 26 Jul 2019 12:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564144054;
 bh=OZObsaiWD9C6Z4j0R2E6zW92OcmQ4NJIcSACVpKktp8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XI94dtPGA09qzd+pPmSHGSws7MyNVI5CHU+LlA3L/oabxDaPBS25r/b8kvkbzzsWR
 /tS3yisVZV+qWyrvZ1rmXxYU+Z9oXdzXzsFQ4pZxGyFPOB8BqdW/TLE0yAiHOs/+lF
 kOjaQ6gZpQr9EJcTdi9mn8n8+55oCIJ/90x1cw9o=
Date: Fri, 26 Jul 2019 13:27:29 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/3] arm64: perf: Mark expected switch fall-through
Message-ID: <20190726122728.jhn4e6wq7rcowyi4@willie-the-truck>
References: <20190726112716.19104-1-anders.roxell@linaro.org>
 <20190726121056.GA26088@lakrids.cambridge.arm.com>
 <20190726121354.GB26088@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726121354.GB26088@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_052734_758195_FD4105C5 
X-CRM114-Status: GOOD (  17.07  )
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
Cc: Anders Roxell <anders.roxell@linaro.org>, Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDE6MTM6NTRQTSArMDEwMCwgTWFyayBSdXRsYW5kIHdy
b3RlOgo+IE9uIEZyaSwgSnVsIDI2LCAyMDE5IGF0IDAxOjEwOjU3UE0gKzAxMDAsIE1hcmsgUnV0
bGFuZCB3cm90ZToKPiA+IE9uIEZyaSwgSnVsIDI2LCAyMDE5IGF0IDAxOjI3OjE2UE0gKzAyMDAs
IEFuZGVycyBSb3hlbGwgd3JvdGU6Cj4gPiA+IFdoZW4gZmFsbC10aHJvdWdoIHdhcm5pbmdzIHdh
cyBlbmFibGVkIGJ5IGRlZmF1bHQsIGNvbW1pdCBkOTM1MTJlZjBmMGUKPiA+ID4gKCJNYWtlZmls
ZTogR2xvYmFsbHkgZW5hYmxlIGZhbGwtdGhyb3VnaCB3YXJuaW5nIiksIHRoZSBmb2xsb3dpbmcK
PiA+ID4gd2FybmluZ3Mgd2FzIHN0YXJ0aW5nIHRvIHNob3cgdXA6Cj4gPiA+IAo+ID4gPiAuLi9h
cmNoL2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmM6IEluIGZ1bmN0aW9uIOKAmGh3X2JyZWFr
cG9pbnRfYXJjaF9wYXJzZeKAmToKPiA+ID4gLi4vYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtw
b2ludC5jOjU0MDo3OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbAo+ID4gPiAgdGhy
b3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCj4gPiA+ICAgICBpZiAoaHctPmN0cmwubGVu
ID09IEFSTV9CUkVBS1BPSU5UX0xFTl8xKQo+ID4gPiAgICAgICAgXgo+ID4gPiAuLi9hcmNoL2Fy
bTY0L2tlcm5lbC9od19icmVha3BvaW50LmM6NTQyOjM6IG5vdGU6IGhlcmUKPiA+ID4gICAgY2Fz
ZSAyOgo+ID4gPiAgICBefn5+Cj4gPiA+IC4uL2FyY2gvYXJtNjQva2VybmVsL2h3X2JyZWFrcG9p
bnQuYzo1NDQ6Nzogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwKPiA+ID4gIHRocm91
Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQo+ID4gPiAgICAgaWYgKGh3LT5jdHJsLmxlbiA9
PSBBUk1fQlJFQUtQT0lOVF9MRU5fMikKPiA+ID4gICAgICAgIF4KPiA+ID4gLi4vYXJjaC9hcm02
NC9rZXJuZWwvaHdfYnJlYWtwb2ludC5jOjU0NjozOiBub3RlOiBoZXJlCj4gPiA+ICAgIGRlZmF1
bHQ6Cj4gPiA+ICAgIF5+fn5+fn4KPiA+ID4gCj4gPiA+IFJld29yayBzbyB0aGF0IHRoZSBjb21w
aWxlciBkb2Vzbid0IHdhcm4gYWJvdXQgZmFsbC10aHJvdWdoLiBSZXdvcmsgc28KPiA+ID4gdGhl
IGNvZGUgbG9va3MgbGlrZSB0aGUgYXJtIGNvZGUuIFNpbmNlIHRoZSBjb21tZW50IGluIHRoZSBm
dW5jdGlvbgo+ID4gPiBpbmRpY2F0ZXMgdGFodCB0aGlzIGlzIHN1cHBvc2VkIHRvIGJlaGF2ZSB0
aGUgc2FtZSB3YXkgYXMgYXJtMzIgYmVjYXVzZQo+ID4gCj4gPiBUeXBvOiBzL3RhaHQvdGhhdC8K
PiA+IAo+ID4gPiBpdCBoYW5kbGVzIDMyLWJpdCB0YXNrcyBhbHNvLgo+ID4gPiAKPiA+ID4gQ2M6
IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgIyB2My4xNisKPiA+ID4gRml4ZXM6IDZlZTMzYzI3MTJm
YyAoIkFSTTogaHdfYnJlYWtwb2ludDogY29ycmVjdCBhbmQgc2ltcGxpZnkgYWxpZ25tZW50IGZp
eHVwIGNvZGUiKQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94
ZWxsQGxpbmFyby5vcmc+Cj4gPiAKPiA+IFRoZSBwYXRjaCBpdHNlbGYgbG9va3MgZmluZSwgYnV0
IEkgZG9uJ3QgdGhpbmsgdGhpcyBuZWVkcyBhIENDIHRvCj4gPiBzdGFibGUsIG5vciBkb2VzIGl0
IHJlcXVpcmUgdGhhdCBmaXhlcyB0YWcsIGFzIHRoZXJlJ3Mgbm8gZnVuY3Rpb25hbAo+ID4gcHJv
YmxlbS4KPiAKPiBIbW0uLi4gSSBub3cgc2VlIEkgc3Bva2UgdG9vIHNvb24sIGFuZCB0aGlzIGlz
IG1ha2luZyB0aGUgMS1ieXRlCj4gYnJlYWtwb2ludCB3b3JrIGF0IGEgMy1ieXRlIG9mZnNldC4K
Ckkgc3RpbGwgZG9uJ3QgdGhpbmsgaXQncyBxdWl0ZSByaWdodCB0aG91Z2gsIHNpbmNlIGl0IGZv
cmJpZHMgYSAyLWJ5dGUKd2F0Y2hwb2ludCBvbiBhIGJ5dGUtYWxpZ25lZCBhZGRyZXNzLgoKSSB0
aGluayB0aGUgYXJtNjQgY29kZSBtYXRjaGVzIHdoYXQgd2UgaGFkIG9uIDMyLWJpdCBwcmlvciB0
bwpkOTY4ZDJiODAxZDggKCJBUk06IDc0OTcvMTogaHdfYnJlYWtwb2ludDogYWxsb3cgc2luZ2xl
LWJ5dGUgd2F0Y2hwb2ludHMKb24gYWxsIGFkZHJlc3NlcyIpLCBzbyB3ZSBzaG91bGQgaGF2ZSBv
bmUgcGF0Y2ggYnJpbmdpbmcgdXMgdXAgdG8gc3BlZWQKd2l0aCB0aGF0IGNoYW5nZSwgYW5kIHRo
ZW4gYW5vdGhlciBhbm5vdGF0aW5nIHRoZSBmYWxsdGhyb3VnaHMuCgpXaWxsCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
