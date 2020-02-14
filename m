Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1E215E03B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:13:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9x+EkUBFAJnhiWhjI60piAogCXJm/QBvRm23NRB6pH4=; b=l8UQFWp2Ga5duL
	P+UPilJ4vJCa3y+/H1avY1z1O31J4MRLuPYzvCMf7VqPjR5SCTVDyJHEsDFrjVNv6yOWiAkJterrS
	0qVJYmD9SuY7lipB3iwhLGRlfcweU2kEWKk7+r1IFAu1pnpC9Dp642KrFrvcJNhWhc8UcSRmFA01G
	GCNTsBy6UEDXfz4Ce3BAXqc7JJknyLtw971g+ikZsBOcf6pElH7voTMVJCGrkLBY8jeH2WOC0GJ5c
	2TPbJjm8X0o/Egj0VazzhTwbr2dzPVpp8t3LAtRrRrwmsHj19qH9c1zJtTx97yg+aV3p8B8KNb+HY
	Z/dgqmd+pGP/yWEnGJAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2daa-000525-QJ; Fri, 14 Feb 2020 16:13:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dLf-0002qE-As
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:57:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E40D328;
 Fri, 14 Feb 2020 07:57:46 -0800 (PST)
Received: from localhost (e108754-lin.cambridge.arm.com [10.1.198.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F3AAF3F68E;
 Fri, 14 Feb 2020 07:57:45 -0800 (PST)
Date: Fri, 14 Feb 2020 15:57:44 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v3 7/7] clocksource/drivers/arm_arch_timer: validate
 arch_timer_rate
Message-ID: <20200214155744.GA8784@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-8-ionela.voinescu@arm.com>
 <87mu9mgg41.fsf@nanos.tec.linutronix.de>
 <20200214154525.GA21875@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214154525.GA21875@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075747_497547_D9596580 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com, will@kernel.org,
 valentin.schneider@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpZGF5IDE0IEZlYiAyMDIwIGF0IDE1OjQ1OjI1ICgrMDAwMCksIElvbmVsYSBWb2luZXNj
dSB3cm90ZToKPiBIaSBUaG9tYXMsCj4gCj4gT24gRnJpZGF5IDE0IEZlYiAyMDIwIGF0IDAxOjM1
OjU4ICgrMDEwMCksIFRob21hcyBHbGVpeG5lciB3cm90ZToKPiA+IElvbmVsYSBWb2luZXNjdSA8
aW9uZWxhLnZvaW5lc2N1QGFybS5jb20+IHdyaXRlczoKPiA+IAo+ID4gPiBGcm9tOiBWYWxlbnRp
biBTY2huZWlkZXIgPHZhbGVudGluLnNjaG5laWRlckBhcm0uY29tPgo+ID4gPgo+ID4gPiBVc2lu
ZyBhbiBhcmNoIHRpbWVyIHdpdGggYSBmcmVxdWVuY3kgb2YgbGVzcyB0aGFuIDFNSHogY2FuIHJl
c3VsdCBpbiBhbgo+ID4gPiBpbmNvcnJlY3QgZnVuY3Rpb25hbGl0eSBvZiB0aGUgc3lzdGVtIHdo
aWNoIGFzc3VtZXMgYSByZWFzb25hYmxlIHJhdGUuCj4gPiA+Cj4gPiA+IE9uZSBleGFtcGxlIGlz
IHRoZSB1c2Ugb2YgYWN0aXZpdHkgbW9uaXRvcnMgZm9yIGZyZXF1ZW5jeSBpbnZhcmlhbmNlCj4g
PiA+IHdoaWNoIHVzZXMgdGhlIHJhdGUgb2YgdGhlIGFyY2ggdGltZXIgYXMgdGhlIGtub3duIHJh
dGUgb2YgdGhlIGNvbnN0YW50Cj4gPiA+IGN5Y2xlIGNvdW50ZXIgaW4gY29tcHV0aW5nIGl0cyBy
YXRpbyBjb21wYXJlZCB0byB0aGUgbWF4aW11bSBmcmVxdWVuY3kKPiA+ID4gb2YgYSBDUFUuIEZv
ciBhcmNoIHRpbWVyIGZyZXF1ZW5jaWVzIGxlc3MgdGhhbiAxTUh6IHRoaXMgcmF0aW8gY291bGQK
PiA+ID4gZW5kIHVwIGJlaW5nIDAgd2hpY2ggaXMgYW4gaW52YWxpZCB2YWx1ZSBmb3IgaXRzIHVz
ZS4KPiA+ID4KPiA+ID4gVGhlcmVmb3JlLCB3YXJuIGlmIHRoZSBhcmNoIHRpbWVyIHJhdGUgaXMg
YmVsb3cgMU1IeiB3aGljaCBjb250cmF2ZW5lcwo+ID4gPiB0aGUgcmVjb21tZW5kZWQgYXJjaGl0
ZWN0dXJlIGludGVydmFsIG9mIDEgdG8gNTBNSHouCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6
IElvbmVsYSBWb2luZXNjdSA8aW9uZWxhLnZvaW5lc2N1QGFybS5jb20+Cj4gPiAKPiA+IFNvIHRo
aXMgcGF0Y2ggaXMgZnJvbSBWYWxlbnRpbi4gV2hlcmUgaXMgaGlzIFNpZ25lZC1vZmYtYnk/Cj4g
PiAKPiAKPiBZZXMsIHNvcnJ5IGFib3V0IHRoaXMuIFRoaXMgd2FzIGJhc2VkIG9uIGEgZGlmZiB0
aGF0IFZhbGVudGluIHByb3ZpZGVkCj4gaW4gdjIuIEknbGwgY2hhbmdlIHRoZSBhdXRob3IgYXMg
YWdyZWVkIGF0Ogo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMDAyMTIxMDMyNDku
R0ExOTA0MUBhcm0uY29tLwo+IAo+ID4gPiAgCj4gPiA+ICtzdGF0aWMgaW50IHZhbGlkYXRlX3Rp
bWVyX3JhdGUodm9pZCkKPiA+ID4gK3sKPiA+ID4gKwlpZiAoIWFyY2hfdGltZXJfcmF0ZSkKPiA+
ID4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ICsKPiA+ID4gKwkvKiBBcmNoIHRpbWVyIGZyZXF1
ZW5jeSA8IDFNSHogY2FuIGNhdXNlIHRyb3VibGUgKi8KPiA+ID4gKwlXQVJOX09OKGFyY2hfdGlt
ZXJfcmF0ZSA8IDEwMDAwMDApOwo+ID4gCj4gPiBUaGlzIGRvZXMgbm90IG1ha2Ugc2Vuc2UgdG8g
bWUuIElmIHRoZSByYXRlIGlzIG91dCBvZiBib3VuZHMgdGhlbiB3aHkKPiA+IHdhcm4gYW4ganVz
dCBjb250aW51ZSBpbnN0ZWFkIG9mIG1ha2luZyBpdCBmYWlsPwo+ID4gCj4gCj4gQmVjYXVzZSBp
dCdzIG5vdCBhIGhhcmQgcmVzdHJpY3Rpb24sIGl0J3MganVzdCBhdHlwaWNhbCBmb3IgdGhlIHJh
dGUgdG8KPiBiZSBiZWxvdyAxTWh6LiBUaGUgc3BlYyBvbmx5IG1lbnRpb25zIGEgdHlwaWNhbCBy
YW5nZSBvZiAxIHRvIDUwTUh6IGFuZAo+IHRoZSB3YXJuaW5nIGlzIG9ubHkgaGVyZSB0byBmbGFn
IGEgcG90ZW50aWFsbHkgcHJvYmxlbWF0aWMgcmF0ZSwgYmVsb3cKPiB3aGF0IGlzIGFzc3VtZWQg
dHlwaWNhbCBpbiB0aGUgc3BlYy4KPiAKPiBJbiBbMV0sIHdoZXJlIEknbSBhY3R1YWxseSByZWx5
aW5nIG9uIGFyY2hfdGltZXJfcmF0ZSBiZWluZyBoaWdoZXIgdGhhbgo+IHRoYW4gMS9TQ0hFRF9D
QVBBQ0lUWV9TQ0FMRcKyIG9mIHRoZSBtYXhpbXVtIGZyZXF1ZW5jeSwgSSBhbSBtYWtpbmcgaXQK
PiBmYWlsLCBhcywgZm9yIHRoYXQgc2NlbmFyaW8sIGl0IGlzIGEgaGFyZCByZXN0cmljdGlvbi4K
PiAKPiAKPiArCSAqIFdlIHVzZSBhIGZhY3RvciBvZiAyICogU0NIRURfQ0FQQUNJVFlfU0hJRlQg
LT4gU0NIRURfQ0FQQUNJVFlfU0NBTEXCsgo+ICsJICogaW4gb3JkZXIgdG8gZW5zdXJlIGEgZ29v
ZCByZXNvbHV0aW9uIGZvciBhcmNoX21heF9mcmVxX3NjYWxlIGZvcgo+ICsJICogdmVyeSBsb3cg
YXJjaCB0aW1lciBmcmVxdWVuY2llcyAodXAgdG8gdGhlIEtIeiByYW5nZSB3aGljaCBzaG91bGQg
YmUKPiArCSAqIHVubGlrZWx5KS4KPiArCSAqLwo+ICsJcmF0aW8gPSAodTY0KWFyY2hfdGltZXJf
Z2V0X3JhdGUoKSA8PCAoMiAqIFNDSEVEX0NBUEFDSVRZX1NISUZUKTsKPiArCXJhdGlvID0gZGl2
NjRfdTY0KHJhdGlvLCBtYXhfZnJlcV9oeik7Cj4gKwlpZiAoIXJhdGlvKSB7Cj4gKwkJcHJfZXJy
KCJTeXN0ZW0gdGltZXIgZnJlcXVlbmN5IHRvbyBsb3cuXG4iKTsKPiArCQlyZXR1cm4gLUVJTlZB
TDsKPiArCX0KPiArCj4gCj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvODkzMzk1
MDEtNWVlNC1lODcxLTMwNzYtYzhiMDJjNmZiZjZlQGFybS5jb20vCgpJJ3ZlIG1pc3Rha2VubHkg
cmVmZXJlbmNlZCBhIGJhZCBsaW5rIF4KCkl0IHdhcyBzdXBwb3NlZCB0byBiZToKClsxXSBodHRw
czovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjAwMjExMTg0NTQyLjI5NTg1LTctaW9uZWxhLnZv
aW5lc2N1QGFybS5jb20vCgpUaGFua3MsCklvbmVsYS4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
