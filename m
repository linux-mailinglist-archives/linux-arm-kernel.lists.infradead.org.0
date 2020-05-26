Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F541E25F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 17:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lm8N0oxtC6vuD3BDp4UMtQR/W1dDHycYoPIXP6NjVJY=; b=WhMDL92kc1jood
	xDbfT26tYnfNpB841zzKSVZWQlAfi+I5xCt4EhfV2qMr0DNDNSA349vjtHxDZ4j19hq933uSMuwnX
	9gWaQP/4oHuL+D2p++TNkK6j8v6ExP5COa2ALajBc6yhkYoxH5AIUfRoxiyg3nhwNGmuxgZIiwE4d
	j1OYqy6mVwhJoojBvDKCn6FTBaxnCjBLFyXII55DKYwhkCl2quG6iJqBpxI8G+8XYJiHA7RsnVw13
	I0ledRyaolqa7beke9W6BFk7+iUp5EXY1nXHR+KfPe+CQP4SVX1XKXTfIU7JuW0QOWwIOnrvB2U/3
	nQ6LP/58+8Wm0x6dW9Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdbqS-00068o-Kn; Tue, 26 May 2020 15:50:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdbqJ-00068I-O7
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 15:50:17 +0000
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
 [209.85.210.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32B56207FB
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 15:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590508215;
 bh=n9OM2fFSf16C1I2b0d7pMlEO5gt8rUveka5ZBWsVLKg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2FhOafBucGNwl+pSFTBvtxIsVpQx+bpBff0YXT6n7Rma5X8IYNpOt4W+CU4mSBkxu
 d5GbrmX6AxLQmawQNKLMXk5i/0SDlcuRQdetZ6LkCFfQMjL6HwWViVAyv9N1X/hoiV
 aw9eXn+xu0fwItal3fevZR9MAfvkNh12Lz2LfpGk=
Received: by mail-ot1-f51.google.com with SMTP id 69so16688123otv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 08:50:15 -0700 (PDT)
X-Gm-Message-State: AOAM5300RAdgN78yy2E3rC4KX2rgqACdqEWnpKQomS5VnbBdF2Lg4GlP
 5UKben7MBdSkUJludsw0yGC23KIfEePwekvegA==
X-Google-Smtp-Source: ABdhPJwAp7On1Gynih3RH+9t/TRqpx2YKtctrng2hJWHE/pPchcJNoyQ8L1Q44zI4Uqfdk/rQ3mZnFPxBrfD02PzMms=
X-Received: by 2002:a05:6830:3104:: with SMTP id
 b4mr1361062ots.192.1590508214285; 
 Tue, 26 May 2020 08:50:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200513103016.130417-1-andre.przywara@arm.com>
 <20200513103016.130417-2-andre.przywara@arm.com>
 <CAMuHMdXkHF3ioOVzDZQARiO2i1z8rVjdN_Q0VggaVD4Ln7J+Dw@mail.gmail.com>
 <6e2cc3e9-b14f-2b50-0390-addcc82389e0@arm.com>
In-Reply-To: <6e2cc3e9-b14f-2b50-0390-addcc82389e0@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 26 May 2020 09:49:38 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJpe_EMC4cqXVtxY9XVrVfqDNU3=-1_47wmirFLtA1Lcg@mail.gmail.com>
Message-ID: <CAL_JsqJpe_EMC4cqXVtxY9XVrVfqDNU3=-1_47wmirFLtA1Lcg@mail.gmail.com>
Subject: Re: [PATCH v3 01/20] dt-bindings: arm: gic: Allow combining
 arm,gic-400 compatible strings
To: =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_085015_826191_5405F859 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Marc Zyngier <maz@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMzoyMCBBTSBBbmRyw6kgUHJ6eXdhcmEgPGFuZHJlLnBy
enl3YXJhQGFybS5jb20+IHdyb3RlOgo+Cj4gT24gMTkvMDUvMjAyMCAwODozOSwgR2VlcnQgVXl0
dGVyaG9ldmVuIHdyb3RlOgo+Cj4gSGkgR2VlcnQsCj4KPgo+ID4gT24gV2VkLCBNYXkgMTMsIDIw
MjAgYXQgMTI6MzEgUE0gQW5kcmUgUHJ6eXdhcmEgPGFuZHJlLnByenl3YXJhQGFybS5jb20+IHdy
b3RlOgo+ID4+IFRoZSBhcm0sZ2ljLTQwMCBjb21wYXRpYmxlIGlzIHByb2JhYmx5IHRoZSBiZXN0
IG1hdGNoaW5nIHN0cmluZyBmb3IgdGhlCj4gPj4gR0lDIGluIG1vc3QgbW9kZXJuIFNvQ3MsIGJ1
dCB3YXMgb25seSBpbnRyb2R1Y2VkIGxhdGVyIGludG8gdGhlIGtlcm5lbC4KPiA+PiBGb3IgaGlz
dG9yaWMgcmVhc29ucyBhbmQgdG8ga2VlcCBjb21wYXRpYmlsaXR5LCBzb21lIFNvQyBEVHMgd2Vy
ZSB0aHVzCj4gPj4gdXNpbmcgYSBjb21iaW5hdGlvbiBvZiB0aGlzIG5hbWUgYW5kIG9uZSBvZiB0
aGUgb2xkZXIgc3RyaW5ncywgd2hpY2gKPiA+PiBjdXJyZW50bHkgdGhlIGJpbmRpbmcgZGVuaWVz
Lgo+ID4+Cj4gPj4gQWRkIGEgc3RhbnphIHRvIHRoZSBEVCBiaW5kaW5nIHRvIGFsbG93ICJhcm0s
Z2ljLTQwMCIsIGZvbGxvd2VkIGJ5Cj4gPj4gZWl0aGVyICJhcm0sY29ydGV4LWExNS1naWMiIG9y
ICJhcm0sY29ydGV4LWE3LWdpYyIuIFRoaXMgZml4ZXMgYmluZGluZwo+ID4+IGNvbXBsaWFuY2Ug
Zm9yIHF1aXRlIHNvbWUgU29DIC5kdHNpIGZpbGVzIGluIHRoZSBrZXJuZWwgdHJlZS4KPiA+Pgo+
ID4+IFNpZ25lZC1vZmYtYnk6IEFuZHJlIFByenl3YXJhIDxhbmRyZS5wcnp5d2FyYUBhcm0uY29t
Pgo+ID4KPiA+IFRoYW5rcyBmb3IgeW91ciBwYXRjaCwgSSB3YXMganVzdCBsb29raW5nIGludG8g
dGhpcyBpc3N1ZSA7LSkKPiA+Cj4gPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybSxnaWMueWFtbAo+ID4+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0sZ2lj
LnlhbWwKPiA+PiBAQCAtMzksNiArMzksMTIgQEAgcHJvcGVydGllczoKPiA+PiAgICAgICAgICAg
ICAgICAtIHFjb20sbXNtLTg2NjAtcWdpYwo+ID4+ICAgICAgICAgICAgICAgIC0gcWNvbSxtc20t
cWdpYzIKPiA+Pgo+ID4+ICsgICAgICAtIGl0ZW1zOgo+ID4+ICsgICAgICAgICAgLSBjb25zdDog
YXJtLGdpYy00MDAKPiA+PiArICAgICAgICAgIC0gZW51bToKPiA+PiArICAgICAgICAgICAgIC0g
YXJtLGNvcnRleC1hMTUtZ2ljCj4gPj4gKyAgICAgICAgICAgICAtIGFybSxjb3J0ZXgtYTctZ2lj
Cj4gPj4gKwo+ID4+ICAgICAgICAtIGl0ZW1zOgo+ID4+ICAgICAgICAgICAgLSBjb25zdDogYXJt
LGFybTExNzZqemYtZGV2Y2hpcC1naWMKPiA+PiAgICAgICAgICAgIC0gY29uc3Q6IGFybSxhcm0x
MW1wLWdpYwo+ID4KPiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2FyY2gvYXJtL2Jvb3QvZHRzL3I5YTA2ZzAz
Mi5kdHNpI24xNzcKPiA+IGhhcyB0aGVtIGluIHRoZSBvdGhlciBvcmRlci4KPiA+Cj4gPiBXaGF0
IGRvIHlvdSB0aGluayBpcyB0aGUgcHJlZmVycmVkIHNvbHV0aW9uOiByZXZlcnRpbmcgdGhlIG9y
ZGVyLCBvciBkcm9wcGluZwo+ID4gb25lIG9yIHRoZSBvdGhlcj8KPgo+IFJldmVydGluZyB0aGUg
b3JkZXIgd291bGQgYmUgdGhlIHJpZ2h0IHRoaW5nLiBUaGVvcmV0aWNhbGx5IHRoaXMgbWlnaHQK
PiBjaGFuZ2Ugd2hhdCB0aGUgZHJpdmVycyBtYXRjaCBhZ2FpbnN0LCBidXQgdGhlcmUgc2hvdWxk
IGJlIG5vIGRpZmZlcmVuY2UKPiBiZXR3ZWVuIHRob3NlIHN0cmluZ3MgYW55d2F5LiBBbmQgY2Vy
dGFpbmx5IExpbnV4IGRvZXMgbm90IGNhcmUgd2hpY2ggb2YKPiB0aGUgbWFueSBzdHJpbmdzIGl0
IHNlZXMuCj4KPiBUaGUgcHJvcGVyIG9yZGVyIGlzIG5vdCByZWFsbHkgb2J2aW91cyBoZXJlLCBi
dXQgdGhlIGNvcnRleC1hezE1LDd9LWdpYwo+IG5hbWVzIHNlcnZlIGFzIHRoZSBtaXNzaW5nICJh
cm0sZ2ljLXYyIiBnZW5lcmljIGZhbGxiYWNrIHN0cmluZyBoZXJlLCBJCj4gdGhpbmsganVzdCBm
b3IgaGlzdG9yaWNhbCByZWFzb25zLgoKUmVhbGx5LCB0aGV5IHByb2JhYmx5IHNob3VsZCBoYXZl
IGJlZW4gbXV0dWFsbHkgZXhjbHVzaXZlIGdpdmVuIGFuCmltcGxlbWVudGF0aW9uIGhhcyBvbmUg
b3IgdGhlIG90aGVyLiBTaW5jZSB3ZSBoYXZlIGJvdGgsIHRoZSBvcmRlciBpbgp0aGUgc2NoZW1h
IGlzIGNvcnJlY3QgZ2l2ZW4gZ2ljLTQwMCBpcyBhIHN1cGVyc2V0IChtdWx0aS1jbHVzdGVyKSBh
bmQKdGhlIGNvbXBhdGlibGUgY2FtZSBsYXRlciBpbiB0aW1lLgoKUm9iCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
