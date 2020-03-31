Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B59199BB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:35:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=icUero0mGA/yZF0G1P6oq4r9+5cGglgkSnpcmzuOjyA=; b=nct9SB+CVKNMJaiYGBPaWQ0BN
	f2KfUkTrfJ27PyvUZenOwZYvyWcAtipy14MroxPM2ROZJa13qi2N+ZDUJiB880skLdxr5ETtGOWC9
	EX6s8EeScSL+uTv77UZUKbr05GlI4Yco3GAf3zXUZxJGtMgnXoJse6ae+sfrT+KSuTFzf9MYsEdYk
	kkJM+OIiAgbirs0JdYW4OsfexH2hbTyKch1BJmQdkBJ9AKeWFWtVROqWaH1NTLS/tXjd+x1ZmODV0
	l/tQ+G5onOP+Swf2iywotyw7HYpSDZ6Fq2FHAKXdpt21JvJz5kcLqqX0xcUwxnfAheyijLF48+AMK
	czNdHZAZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJrd-0001wi-HH; Tue, 31 Mar 2020 16:35:45 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJo6-0005Js-2h
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:32:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-ID:References:In-Reply-To:
 Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=vd/RakK25qqtVWxb095aqA3ryPJv6ilQzlxzlSwno2k=; b=ZYIACNjfdUjyEWeMtPrA9eWkvX
 DQb/lMPfyGmF98v6BnHxw3pmV/roLPMGeITBhDiwmUsHop5nmmBuVcdGvOL+hr1szBeer1ZMXGNzW
 vb+OqOCGJSelS4i8Ym2WGobrbCHUf3ujfUJsh7gw2kjaho/Qry0iVVp8uRddRQntGOWdN2FrluXmp
 hHLiDLYC+HmgzGJaJsqglle4f4ztRKFeD8KWoxrKDTIgky9ICl9OUyq4FH2byHXxkQ84xzKFWdD1e
 cCfePH/hdMAB0DrP/19wiCFtWIGvYKVnyG4n9oErta4uNkhVARt7d1rkHZf5h5qYMudzDRFcCCR7q
 IrtWNmcQ==;
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJF9W-0006bi-Oa
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 11:33:58 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585654432; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=vd/RakK25qqtVWxb095aqA3ryPJv6ilQzlxzlSwno2k=;
 b=oJyaSqYGO8PxFtCZSi/nP5MAIxON+v3uTF76qgCS1pVNtUtm6DZH2muHikvgcSLnJ8tNmmde
 MZU9IMgquzfPTafI52qgrCLtM3jBaS7hXYXWb2FnWLaJogTgeOLkQ+xb4gUcas06IOr/2hUu
 aImrUtFfJ7hMN1HI4E86gw+GQ1U=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e832a93.7f76b0e79d50-smtp-out-n03;
 Tue, 31 Mar 2020 11:33:39 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id DB81DC433BA; Tue, 31 Mar 2020 11:33:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: tingwei)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4AFA7C433F2;
 Tue, 31 Mar 2020 11:33:38 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 31 Mar 2020 19:33:38 +0800
From: tingwei@codeaurora.org
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: hw_breakpoint: don't clear debug registers in halt
 mode
In-Reply-To: <20200331074147.GA25612@willie-the-truck>
References: <20200328083209.21793-1-tingwei@codeaurora.org>
 <20200330123946.GH1309@C02TD0UTHF1T.local>
 <20200330134218.GB10633@willie-the-truck>
 <2f4d076b2b21de3908f0821126d0c61e@codeaurora.org>
 <20200331074147.GA25612@willie-the-truck>
Message-ID: <518d9ca9652c23bfc0e1831306144418@codeaurora.org>
X-Sender: tingwei@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_123355_100720_86B6C839 
X-CRM114-Status: GOOD (  36.85  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

5ZyoIDIwMjAtMDMtMzEgMTU6NDHvvIxXaWxsIERlYWNvbiDlhpnpgZPvvJoKPiBPbiBUdWUsIE1h
ciAzMSwgMjAyMCBhdCAxMDozOTo0MkFNICswODAwLCB0aW5nd2VpQGNvZGVhdXJvcmEub3JnIHdy
b3RlOgo+PiDlnKggMjAyMC0wMy0zMCAyMTo0Mu+8jFdpbGwgRGVhY29uIOWGmemBk++8mgo+PiA+
IE9uIE1vbiwgTWFyIDMwLCAyMDIwIGF0IDAxOjM5OjQ2UE0gKzAxMDAsIE1hcmsgUnV0bGFuZCB3
cm90ZToKPj4gPiA+IE9uIFNhdCwgTWFyIDI4LCAyMDIwIGF0IDA0OjMyOjA5UE0gKzA4MDAsIFRp
bmd3ZWkgWmhhbmcgd3JvdGU6Cj4+ID4gPiA+IElmIGV4dGVybmFsIGRlYnVnZ2VyIHNldHMgYSBi
cmVha3BvaW50IGZvciBvbmUgS2VybmVsIGZ1bmN0aW9uCj4+ID4gPiA+IHdoZW4gZGV2aWNlIGlz
IGluIGJvb3Rsb2FkZXIgbW9kZSBhbmQgbG9hZHMgS2VybmVsLCB0aGlzIGJyZWFrcG9pbnQKPj4g
PiA+ID4gd2lsbCBiZSB3aXBlZCBvdXQgaW4gaHdfYnJlYWtwb2ludF9yZXNldCgpLiBUbyBmaXgg
dGhpcywgY2hlY2sKPj4gPiA+ID4gTURTQ1JfRUwxLkhERSBpbiBod19icmVha3BvaW50X3Jlc2V0
KCkuIFdoZW4gTURTQ1JfRUwxLkhERSBpcwo+PiA+ID4gPiAwYjEsIGhhbHRpbmcgZGVidWcgaXMg
ZW5hYmxlZC4gRG9uJ3QgcmVzZXQgZGVidWcgcmVnaXN0ZXJzIGluIHRoaXMKPj4gPiBjYXNlLgo+
PiA+ID4KPj4gPiA+IEkgZG9uJ3QgdGhpbmsgdGhpcyBpcyBzdWZmaWNpZW50LCBiZWNhdXNlIHRo
ZSBrZXJuZWwgY2FuIHN0aWxsCj4+ID4gPiBzdWJzZXF1ZW50bHkgbWVzcyB3aXRoIGJyZWFrcG9p
bnRzLCBhbmQgdGhlIEhXIGRlYnVnZ2VyIG1pZ2h0IG5vdCBiZQo+PiA+ID4gYXR0YWNoZWQgYXQg
dGhpcyBwb2ludCBpbiB0aW1lIGFueWhvdy4KPj4gPiA+Cj4+ID4gPiBJIHJlY2tvbiB0aGlzIHNo
b3VsZCBoYW5nIG9mZiB0aGUgZXhpc3RpbmcgIm5vZGVidW1vbiIgY29tbWFuZCBsaW5lCj4+ID4g
PiBvcHRpb24sIGFuZCB3ZSBzaG91bGRuJ3QgdXNlIEhXIGJyZWFrcG9pbnRzIGF0IGFsbCB3aGVu
IHRoYXQgaXMKPj4gPiA+IHBhc3NlZC4KPj4gPiA+IFRoZW4geW91IGNhbiBwYXNzIHRoYXQgdG8g
cHJldmVudCB0aGUga2VybmVsIHN0b21waW5nIG9uIHRoZSBleHRlcm5hbAo+PiA+ID4gZGVidWdn
ZXIuCj4+ID4gPgo+PiA+ID4gV2lsbCwgdGhvdWdodHM/Cj4+ID4KPj4gPiBJIHdhcyBnb2luZyB0
byBzdWdnZXN0IHRoZSBzYW1lIHRoaW5nLCBhbHRob3VnaCB3ZSB3aWxsIGFsc28gbmVlZCB0bwo+
PiA+IHRha2UKPj4gPiBjYXJlIHRvIHJlc2V0IHRoZSByZWdpc3RlcnMgaWYgIm5vZGVidWdtb24i
IGlzIHRvZ2dsZWQgYXQgcnVudGltZSB2aWEKPj4gPiB0aGUKPj4gPiAiZGVidWdfZW5hYmxlZCIg
ZmlsZSBpbiBkZWJ1Z2ZzLgo+PiA+Cj4+IFRoYW5rcyBmb3IgdGhlIHN1Z2dlc3Rpb24sIE1hcmsg
YW5kIFdpbGwuIEl0J3MgYSBncmVhdCBpZGVhIHRvIHVzZQo+PiAibm9kZWJ1Z21vbiIuIFdoZW4g
Im5vZGVidWdtb24iIGlzIHNldCwgS2VybmVsIHdvbid0IGNoYW5nZSBIVwo+PiBicmVha3BvaW50
cy4KPj4gCj4+IEZvciByZXNldCB0aGUgcmVnaXN0ZXJzIGFmdGVyICJkZWJ1Z19lbmFibGVkIiBp
cyB0b2dnbGVkLCBJJ20gdGhpbmtpbmcgCj4+IGlmCj4+IHdlIGFyZSBhZGRpbmcgdW5uZWNlc3Nh
cnkgY29tcGxleGl0eSBoZXJlLklmIHdlIHRha2UgdGhhdCBhcHByb2FjaCwgd2UKPj4gd2lsbAo+
PiBob29rICJkZWJ1Z19lbmFibGVkIiBpbnRlcmZhY2UgYW5kIHVzZSBzbXBfY2FsbF9mdW5jdGlv
bl9zaW5nbGUoKSB0byAKPj4gY2FsbAo+PiBod19icmVha3BvaW50X3Jlc2V0KCkgb24gZWFjaCBD
UFUuIFdhaXQgZm9yIGFsbCBDUFVzJyBleGVjdXRpb24gZG9uZSAKPj4gYW5kCj4+IGNoYW5nZSAi
ZGVidWdfZW5hYmxlZCIuIEV4dGVybmFsIGRlYnVnZ2VyIHdvdWxkIGNsZWFyIHRoZSBicmVha3Bv
aW50cyAKPj4gd2hlbgo+PiBpdCBkZXRhY2hlcyB0aGUgZGV2aWNlIGFuZCByZXN0b3JlcyBpdHMg
YnJlYWtwb2ludHMgd2hlbiBhdHRhY2hlcyB0aGUKPj4gZGV2aWNlLgo+PiBBc3N1bWUgZGVidWdf
ZW5hYmxlZCBpcyBjaGFuZ2VkIHRvIG9uZSBhZnRlciBleHRlcm5hbCBkZWJ1Z2dlciAKPj4gZGV0
YWNoZXMKPj4gdGhlCj4+IGRldmljZS4gRGVidWdnZXIgd291bGQgYWxyZWFkeSBjbGVhciB0aGUg
YnJlYWtwb2ludCByZWdpc3RlcnMuIElmIAo+PiBkZWJnZ2VyCj4+IGlzCj4+IHN0aWxsIGF0dGFj
aGVkLCB0aGVyZSdzIG5vdGhpbmcgS2VybmVsIGNhbiBkbyB0byBzdG9wIGl0IAo+PiByZXN0b3Jl
cy9wcm9ncmFtcwo+PiB0aGUgYnJlYWtwb2ludCByZWdpc3RlcnMuCj4+IAo+PiBXaGF0IGRvIHlv
dSB0aGluayBvZiB0aGlzPwo+IAo+IEl0J3MgYWxsIGEgYml0IG9mIGEgbWVzcy4gTG9va2luZyBh
dCBpdCBzb21lIG1vcmUsIHdoeSBjYW4ndCB0aGUgCj4gZXh0ZXJuYWwKPiBkZWJ1Z2dlciBzaW1w
bHkgdHJhcCBhY2Nlc3MgdG8gdGhlIGRlYnVnIHJlZ2lzdGVycyB1c2luZyBFRFNDUi5UREE/IAo+
IFRoYXQKPiB3YXksIHdlIGRvbid0IGhhdmUgdG8gY2hhbmdlIGFueXRoaW5nIGluIHRoZSBrZXJu
ZWwuCj4gCj4gV2lsbAoKRXh0ZXJuYWwgZGVidWdnZXIgaGFzIHRoZSBmdW5jdGlvbiB0byB0cmFw
IGFjY2VzcyB0byBkZWJ1ZyByZWdpc3RlcnMgCm5vdy4KV2hhdCBkbyB3ZSBleHBlY3QgZGVidWdn
ZXIgdG8gZG8gYWZ0ZXIgY29yZSBpcyBzdG9wcGVkPyBTa2lwIHRoYXQgbXNyCmluc3RydWN0aW9u
IGFuZCBjb250aW51ZSB0byBydW4/CgpUaW5nd2VpCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
