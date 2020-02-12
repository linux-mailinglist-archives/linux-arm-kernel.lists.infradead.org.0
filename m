Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F06BA15A763
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 12:11:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pkxeip7kBrI+ZgQMyq6n5hiE1GrDX31ZgpRGU5Sd0/Q=; b=bR0/zh7OYoSt0Ry8JdI30hN0L
	gA9qBdmHMA8UKQD/+ARkZdBd9ms+KVeegMxR0OxqQtPIi6z+DaTWfysBnMpSVksmcGauNhBRvbyhm
	YS/3EWgQKdsnBoGi5tBOy1CWNpKQQNIER5v8vqxKS9AHLgv909dGeAimSkpscWTS2z5n99eHWBXb4
	yIx33dzgN2sgDe00dRQ8Jn0prmAbwmcyGeg6wzKN5n1dypREUlMeo9+WjNJM07JqesrFowZ1qGJyt
	SsOoQRb7YFWNIHkWv90ixVNdU2ggznzGZrhcdR6chDpTG5HZMX/sLWiV4nNakWAPQ5p5pcmxqkD1b
	XjOR3QocQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pv4-0002VE-7O; Wed, 12 Feb 2020 11:11:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1puv-0002Ui-9S
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 11:10:54 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C267220848;
 Wed, 12 Feb 2020 11:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581505852;
 bh=LlIyVq7WjPeyLskoujzf/DfkF5Lzbz51INctcfhm79E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RDDWxK80jCu8hM2zS0GMo7uXnqEmx0Rv+dXEG71zMiZJm/Y2BjTUA+9b0VhNEjBZg
 ubnSDKtg1FmUuDLeSRNfYQc6TRDT4Udw9UOezOi4nbMOryoAIIX6VdHQS4CCBTwPs9
 LoX9tPVnLqYXTnyCFA4kniVQISYJPT4RDffbRrcs=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1put-004ZNr-3U; Wed, 12 Feb 2020 11:10:51 +0000
MIME-Version: 1.0
Date: Wed, 12 Feb 2020 11:10:51 +0000
From: Marc Zyngier <maz@kernel.org>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v3 7/7] clocksource/drivers/arm_arch_timer: validate
 arch_timer_rate
In-Reply-To: <289c6110-b7ea-1d61-d795-551723263803@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-8-ionela.voinescu@arm.com>
 <89339501-5ee4-e871-3076-c8b02c6fbf6e@arm.com>
 <a24aa6c86e7a565b6269f48d4026bca2@kernel.org>
 <289c6110-b7ea-1d61-d795-551723263803@arm.com>
Message-ID: <f01a6384e7297de87a434e83bd1479d8@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: lukasz.luba@arm.com, ionela.voinescu@arm.com,
 catalin.marinas@arm.com, will@kernel.org, mark.rutland@arm.com,
 suzuki.poulose@arm.com, sudeep.holla@arm.com, valentin.schneider@arm.com,
 rjw@rjwysocki.net, peterz@infradead.org, mingo@redhat.com,
 vincent.guittot@linaro.org, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_031053_375340_78BA80DC 
X-CRM114-Status: GOOD (  22.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, will@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mingo@redhat.com, viresh.kumar@linaro.org, sudeep.holla@arm.com,
 Ionela Voinescu <ionela.voinescu@arm.com>, valentin.schneider@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMi0xMiAxMDo1NSwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4gT24gMi8xMi8yMCAxMDox
MiBBTSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+PiBPbiAyMDIwLTAyLTEyIDEwOjAxLCBMdWthc3og
THViYSB3cm90ZToKPj4+IEhpIElvbmVsYSwgVmFsZW50aW4KPj4+IAo+Pj4gT24gMi8xMS8yMCA2
OjQ1IFBNLCBJb25lbGEgVm9pbmVzY3Ugd3JvdGU6Cj4+Pj4gRnJvbTogVmFsZW50aW4gU2NobmVp
ZGVyIDx2YWxlbnRpbi5zY2huZWlkZXJAYXJtLmNvbT4KPj4+PiAKPj4+PiBVc2luZyBhbiBhcmNo
IHRpbWVyIHdpdGggYSBmcmVxdWVuY3kgb2YgbGVzcyB0aGFuIDFNSHogY2FuIHJlc3VsdCBpbiAK
Pj4+PiBhbgo+Pj4+IGluY29ycmVjdCBmdW5jdGlvbmFsaXR5IG9mIHRoZSBzeXN0ZW0gd2hpY2gg
YXNzdW1lcyBhIHJlYXNvbmFibGUgCj4+Pj4gcmF0ZS4KPj4+PiAKPj4+PiBPbmUgZXhhbXBsZSBp
cyB0aGUgdXNlIG9mIGFjdGl2aXR5IG1vbml0b3JzIGZvciBmcmVxdWVuY3kgaW52YXJpYW5jZQo+
Pj4+IHdoaWNoIHVzZXMgdGhlIHJhdGUgb2YgdGhlIGFyY2ggdGltZXIgYXMgdGhlIGtub3duIHJh
dGUgb2YgdGhlIAo+Pj4+IGNvbnN0YW50Cj4+Pj4gY3ljbGUgY291bnRlciBpbiBjb21wdXRpbmcg
aXRzIHJhdGlvIGNvbXBhcmVkIHRvIHRoZSBtYXhpbXVtIAo+Pj4+IGZyZXF1ZW5jeQo+Pj4+IG9m
IGEgQ1BVLiBGb3IgYXJjaCB0aW1lciBmcmVxdWVuY2llcyBsZXNzIHRoYW4gMU1IeiB0aGlzIHJh
dGlvIGNvdWxkCj4+Pj4gZW5kIHVwIGJlaW5nIDAgd2hpY2ggaXMgYW4gaW52YWxpZCB2YWx1ZSBm
b3IgaXRzIHVzZS4KPj4+PiAKPj4+PiBUaGVyZWZvcmUsIHdhcm4gaWYgdGhlIGFyY2ggdGltZXIg
cmF0ZSBpcyBiZWxvdyAxTUh6IHdoaWNoIAo+Pj4+IGNvbnRyYXZlbmVzCj4+Pj4gdGhlIHJlY29t
bWVuZGVkIGFyY2hpdGVjdHVyZSBpbnRlcnZhbCBvZiAxIHRvIDUwTUh6Lgo+Pj4+IAo+Pj4+IFNp
Z25lZC1vZmYtYnk6IElvbmVsYSBWb2luZXNjdSA8aW9uZWxhLnZvaW5lc2N1QGFybS5jb20+Cj4+
Pj4gQ2M6IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+Cj4+Pj4gQ2M6IE1hcmMg
WnluZ2llciA8bWF6QGtlcm5lbC5vcmc+Cj4+Pj4gLS0tCj4+Pj4gwqAgZHJpdmVycy9jbG9ja3Nv
dXJjZS9hcm1fYXJjaF90aW1lci5jIHwgMTggKysrKysrKysrKysrKysrLS0tCj4+Pj4gwqAgMSBm
aWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Pj4gCj4+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIuYyAKPj4+PiBi
L2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIuYwo+Pj4+IGluZGV4IDlhNTQ2NGM2
MjViNC4uNGZhYTkzMGVhYmY4IDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvY2xvY2tzb3VyY2Uv
YXJtX2FyY2hfdGltZXIuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hf
dGltZXIuYwo+Pj4+IEBAIC04ODUsNiArODg1LDE3IEBAIHN0YXRpYyBpbnQgYXJjaF90aW1lcl9z
dGFydGluZ19jcHUodW5zaWduZWQgaW50IAo+Pj4+IGNwdSkKPj4+PiDCoMKgwqDCoMKgIHJldHVy
biAwOwo+Pj4+IMKgIH0KPj4+PiDCoCArc3RhdGljIGludCB2YWxpZGF0ZV90aW1lcl9yYXRlKHZv
aWQpCj4+Pj4gK3sKPj4+PiArwqDCoMKgIGlmICghYXJjaF90aW1lcl9yYXRlKQo+Pj4+ICvCoMKg
wqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPj4+PiArCj4+Pj4gK8KgwqDCoCAvKiBBcmNoIHRp
bWVyIGZyZXF1ZW5jeSA8IDFNSHogY2FuIGNhdXNlIHRyb3VibGUgKi8KPj4+PiArwqDCoMKgIFdB
Uk5fT04oYXJjaF90aW1lcl9yYXRlIDwgMTAwMDAwMCk7Cj4+PiAKPj4+IEkgZG9uJ3Qgc2VlIGEg
YmlnIHZhbHVlIG9mIGhhdmluZyBhIHBhdGNoIGp1c3QgdG8gYWRkIG9uZSBleHRyYSAKPj4+IHdh
cm5pbmcsCj4+PiBpbiBhIHNpdHVhdGlvbiB3aGljaCB3ZSBoYW5kbGUgaW4gb3VyIGNvZGUgd2l0
aCBpbiA2Lzcgd2l0aDoKPj4+IAo+Pj4gK8KgwqDCoCBpZiAoIXJhdGlvKSB7Cj4+PiArwqDCoMKg
wqDCoMKgwqAgcHJfZXJyKCJTeXN0ZW0gdGltZXIgZnJlcXVlbmN5IHRvbyBsb3cuXG4iKTsKPj4+
ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKPj4+ICvCoMKgwqAgfQo+Pj4gCj4+PiBG
dXJ0aGVybW9yZSwgdGhlIHZhbHVlICcxMDAwMDAnIGhlcmUgaXMgYmVjYXVzZSBvZiBvdXIgY29k
ZSBhbmQKPj4+IGNhbGN1bGF0aW9uIGluIHRoZXJlLCBzbyBpdCBkb2VzIG5vdCBiZWxvbmcgdG8g
YXJjaCB0aW1lci4gU29tZW9uZQo+Pj4gbWlnaHQgYXNrIHdoeSBpdCdzIG5vdCAyMDAwMDAgb3Ig
YSBkZWZpbmUgaW4gb3VyIGhlYWRlci4uLgo+Pj4gT3IgcXVlc3Rpb25zIGFza2luZyB3aHkgZG8g
eW91IHdhcm4gd2hlbiB0aGF0IGFyY2ggdGltZXIgYW5kIGNwdSBpcyAKPj4+IG5vdAo+Pj4gQU1V
IGNhcGFibGUuLi4KPj4gCj4+IEJlY2F1c2UsIGFzIHRoZSBjb21taXQgbWVzc2FnZSBvdXRsaW5l
cyBpdCwgc3VjaCBhIGZyZXF1ZW5jeSBpcyAKPj4gdGVycmlibHkKPj4gb3V0IG9mIHNwZWM/Cj4g
Cj4gSSBkb24ndCBzZWUgaW4gdGhlIFJNIHRoYXQgPCAxTUh6IGlzIHRlcnJpYmx5IG91dCBvZiBz
cGVjLgo+ICdGcmVxdWVuY3kKPiBJbmNyZW1lbnRzIGF0IGEgZml4ZWQgZnJlcXVlbmN5LCB0eXBp
Y2FsbHkgaW4gdGhlIHJhbmdlIDEtNTBNSHouCj4gQ2FuIHN1cHBvcnQgb25lIG9yIG1vcmUgYWx0
ZXJuYXRpdmUgb3BlcmF0aW5nIG1vZGVzIGluIHdoaWNoIGl0Cj4gaW5jcmVtZW50cyBieSBsYXJn
ZXIgYW1vdW50cyBhdCBhCj4gbG93ZXIgZnJlcXVlbmN5LCB0eXBpY2FsbHkgZm9yIHBvd2VyLXNh
dmluZy4nCgpIaW50OiBjb25zdGFudCBhcHBhcmVudCBmcmVxdWVuY3kuCgo+IFRoZXJlIGlzIGV2
ZW4gYW4gZXhhbXBsZSBob3cgdG8gb3BlcmF0ZSBhdCAyMGtIeiBhbmQgaW5jcmVtZW50IGJ5IDUw
MC4KPiAKPiBJIGRvbid0IGtub3cgdGhlIGNvZGUgaWYgaXQncyBzdXBwb3J0ZWQsIHRob3VnaHQu
CgpZb3UncmUgY29tcGxldGVseSBtaXNzaW5nIHRoZSBwb2ludCwgSSdtIGFmcmFpZC4gTm9ib2R5
IGhhcyB0byBrbm93IHRoYXQKdGhpcyBpcyBoYXBwZW5pbmcuIEZvciBhbGwgaW50ZW50IGFuZCBw
dXJwb3NlcywgdGhlIGNvdW50ZXIgaGFzIGFsd2F5cwp0aGUgc2FtZSBmcmVxdWVuY3ksIGV2ZW4g
aWYgdGhlIEhXIGRvZXMgZmV3ZXIgdGlja3Mgb2YgbGFyZ2VyIAppbmNyZW1lbnRzLgoKClsuLi5d
Cgo+Pj4gTGFzdGx5LCB0aGlzIGlzIGFyY2ggdGltZXIuCj4+PiBUbyBpbmNyZWFzZSBjaGFuY2Vz
IG9mIGdldHRpbmcgbWVyZ2Ugc29vbiwgSSB3b3VsZCByZWNvbW1lbmQgdG8gZHJvcAo+Pj4gdGhl
IHBhdGNoIGZyb20gdGhpcyBzZXJpZXMuCj4+IAo+PiBBbmQ/IEl0IHNlZW1zIHRvIGFkZHJlc3Mg
YSBwb3RlbnRpYWwgaXNzdWUgd2hlcmUgdGhlIHRpbWUgZnJlcXVlbmN5Cj4+IGlzIG91dCBvZiBz
cGVjLCBhbmQgbWFrZXMgc3VyZSB3ZSBkb24ndCBlbmQgdXAgd2l0aCBhZGRpdGlvbmFsIAo+PiBw
cm9ibGVtcwo+PiBpbiB0aGUgQU1VIGNvZGUuCj4gCj4gVGhpcyBwYXRjaCBqdXN0IHByaW50cyB3
YXJuaW5nLCBkb2VzIG5vdCBjaGFuZ2UgYW55dGhpbmcgaW4gYm9vdGluZyBvcgo+IGluIGFueSBj
b2RlIHJlbGF0ZWQgdG8gQU1VLgoKSXQgc2VlbXMgdG8gc29sdmUgYW4gaXNzdWUgd2l0aCBhbiBh
c3N1bXB0aW9uIG1hZGUgaW4gdGhlIEFNVSBkcml2ZXIsCmFuZCB3b3VsZCBoZWxwIGRlYnVnZ2lu
ZyB0aGUgcHJvYmxlbSBvbiBicm9rZW4gc3lzdGVtcy4gQXJlIHlvdSBzYXlpbmcKdGhhdCB0aGlz
IGlzIG5vdCB0aGUgY2FzZSBhbmQgdGhhdCB0aGUgQU1VIGNvZGUgY2FuIHBlcmZlY3RseSBjb3Bl
IHdpdGgKdGhlIGZyZXF1ZW5jeSBiZWluZyBsZXNzIHRoYW4gMU1Iej8KCiAgICAgICAgIE0uCi0t
IApKYXp6IGlzIG5vdCBkZWFkLiBJdCBqdXN0IHNtZWxscyBmdW5ueS4uLgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
