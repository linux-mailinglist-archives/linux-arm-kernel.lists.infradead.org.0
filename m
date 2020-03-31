Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 342FA198A12
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 04:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gKacfQkWJgOGsweoGyng23mL6T2B1wJ0xqrj3jNQO/U=; b=naStuifggZPUIvWzqIKj/qDhR
	WhbsvlGhhgH+eSi52pVkwleYupCsbK5m1vakVB9b8BHP5ksIALyHIsNZsfQLmFOZT8l3XS9Fej74Q
	N8qhHehUNrpRwI/9pfRujWH3F+R3RGfMCoddRewjqoz2h0tgEAnEXJpXe/Zn6rQjxPMClklJTfCHz
	s3kFRVEBt/Wo+xENi9J+gvWALu/FLwriTQAZ+tLGmq5iABHRTts+QwdbxBj9oHcQZ4OBqc0vNQhpE
	p5S9ZEJdNQKVCzE7JdkoQk7if9R1bXHTt4Sl34CJPEje9l8BI15gmtHIeoZnr2HCzDUFYaeag3L1I
	z0o9SwEFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ6p3-00078X-W1; Tue, 31 Mar 2020 02:40:13 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ6om-000780-E8
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 02:39:58 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585622396; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=F0cnuHPPoBwL4ZXyaNpltI2ZJBgY3zhLpDoVyFkzMWU=;
 b=pn7qrjZChiPaIAdWQvB58KJpnSMoxYfHt7eXxbcHMzSjjmuBlBSaYvFpmq/97iJr9vWzQl63
 2/Nl5zPl70BO9ohZ8J8kecm3wha+fUptIeYuX9EF8QI55uo30T2b0XQzQysMJOUvNqp26AWG
 uMMuMzZQCOymDh1RwQrwve1aeSE=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e82ad6e.7feaa9c41148-smtp-out-n01;
 Tue, 31 Mar 2020 02:39:42 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B0642C433BA; Tue, 31 Mar 2020 02:39:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: tingwei)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 36F9BC433D2;
 Tue, 31 Mar 2020 02:39:42 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 31 Mar 2020 10:39:42 +0800
From: tingwei@codeaurora.org
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: hw_breakpoint: don't clear debug registers in halt
 mode
In-Reply-To: <20200330134218.GB10633@willie-the-truck>
References: <20200328083209.21793-1-tingwei@codeaurora.org>
 <20200330123946.GH1309@C02TD0UTHF1T.local>
 <20200330134218.GB10633@willie-the-truck>
Message-ID: <2f4d076b2b21de3908f0821126d0c61e@codeaurora.org>
X-Sender: tingwei@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_193956_541000_A0C227B8 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

5ZyoIDIwMjAtMDMtMzAgMjE6NDLvvIxXaWxsIERlYWNvbiDlhpnpgZPvvJoKPiBPbiBNb24sIE1h
ciAzMCwgMjAyMCBhdCAwMTozOTo0NlBNICswMTAwLCBNYXJrIFJ1dGxhbmQgd3JvdGU6Cj4+IE9u
IFNhdCwgTWFyIDI4LCAyMDIwIGF0IDA0OjMyOjA5UE0gKzA4MDAsIFRpbmd3ZWkgWmhhbmcgd3Jv
dGU6Cj4+ID4gSWYgZXh0ZXJuYWwgZGVidWdnZXIgc2V0cyBhIGJyZWFrcG9pbnQgZm9yIG9uZSBL
ZXJuZWwgZnVuY3Rpb24KPj4gPiB3aGVuIGRldmljZSBpcyBpbiBib290bG9hZGVyIG1vZGUgYW5k
IGxvYWRzIEtlcm5lbCwgdGhpcyBicmVha3BvaW50Cj4+ID4gd2lsbCBiZSB3aXBlZCBvdXQgaW4g
aHdfYnJlYWtwb2ludF9yZXNldCgpLiBUbyBmaXggdGhpcywgY2hlY2sKPj4gPiBNRFNDUl9FTDEu
SERFIGluIGh3X2JyZWFrcG9pbnRfcmVzZXQoKS4gV2hlbiBNRFNDUl9FTDEuSERFIGlzCj4+ID4g
MGIxLCBoYWx0aW5nIGRlYnVnIGlzIGVuYWJsZWQuIERvbid0IHJlc2V0IGRlYnVnIHJlZ2lzdGVy
cyBpbiB0aGlzCj4gY2FzZS4KPj4gCj4+IEkgZG9uJ3QgdGhpbmsgdGhpcyBpcyBzdWZmaWNpZW50
LCBiZWNhdXNlIHRoZSBrZXJuZWwgY2FuIHN0aWxsCj4+IHN1YnNlcXVlbnRseSBtZXNzIHdpdGgg
YnJlYWtwb2ludHMsIGFuZCB0aGUgSFcgZGVidWdnZXIgbWlnaHQgbm90IGJlCj4+IGF0dGFjaGVk
IGF0IHRoaXMgcG9pbnQgaW4gdGltZSBhbnlob3cuCj4+IAo+PiBJIHJlY2tvbiB0aGlzIHNob3Vs
ZCBoYW5nIG9mZiB0aGUgZXhpc3RpbmcgIm5vZGVidW1vbiIgY29tbWFuZCBsaW5lCj4+IG9wdGlv
biwgYW5kIHdlIHNob3VsZG4ndCB1c2UgSFcgYnJlYWtwb2ludHMgYXQgYWxsIHdoZW4gdGhhdCBp
cyAKPj4gcGFzc2VkLgo+PiBUaGVuIHlvdSBjYW4gcGFzcyB0aGF0IHRvIHByZXZlbnQgdGhlIGtl
cm5lbCBzdG9tcGluZyBvbiB0aGUgZXh0ZXJuYWwKPj4gZGVidWdnZXIuCj4+IAo+PiBXaWxsLCB0
aG91Z2h0cz8KPiAKPiBJIHdhcyBnb2luZyB0byBzdWdnZXN0IHRoZSBzYW1lIHRoaW5nLCBhbHRo
b3VnaCB3ZSB3aWxsIGFsc28gbmVlZCB0byAKPiB0YWtlCj4gY2FyZSB0byByZXNldCB0aGUgcmVn
aXN0ZXJzIGlmICJub2RlYnVnbW9uIiBpcyB0b2dnbGVkIGF0IHJ1bnRpbWUgdmlhIAo+IHRoZQo+
ICJkZWJ1Z19lbmFibGVkIiBmaWxlIGluIGRlYnVnZnMuCj4gCj4gV2lsbAoKVGhhbmtzIGZvciB0
aGUgc3VnZ2VzdGlvbiwgTWFyayBhbmQgV2lsbC4gSXQncyBhIGdyZWF0IGlkZWEgdG8gdXNlCiJu
b2RlYnVnbW9uIi4gV2hlbiAibm9kZWJ1Z21vbiIgaXMgc2V0LCBLZXJuZWwgd29uJ3QgY2hhbmdl
IEhXIApicmVha3BvaW50cy4KCkZvciByZXNldCB0aGUgcmVnaXN0ZXJzIGFmdGVyICJkZWJ1Z19l
bmFibGVkIiBpcyB0b2dnbGVkLCBJJ20gdGhpbmtpbmcgCmlmCndlIGFyZSBhZGRpbmcgdW5uZWNl
c3NhcnkgY29tcGxleGl0eSBoZXJlLklmIHdlIHRha2UgdGhhdCBhcHByb2FjaCwgd2UgCndpbGwK
aG9vayAiZGVidWdfZW5hYmxlZCIgaW50ZXJmYWNlIGFuZCB1c2Ugc21wX2NhbGxfZnVuY3Rpb25f
c2luZ2xlKCkgdG8gCmNhbGwKaHdfYnJlYWtwb2ludF9yZXNldCgpIG9uIGVhY2ggQ1BVLiBXYWl0
IGZvciBhbGwgQ1BVcycgZXhlY3V0aW9uIGRvbmUgYW5kCmNoYW5nZSAiZGVidWdfZW5hYmxlZCIu
IEV4dGVybmFsIGRlYnVnZ2VyIHdvdWxkIGNsZWFyIHRoZSBicmVha3BvaW50cyAKd2hlbgppdCBk
ZXRhY2hlcyB0aGUgZGV2aWNlIGFuZCByZXN0b3JlcyBpdHMgYnJlYWtwb2ludHMgd2hlbiBhdHRh
Y2hlcyB0aGUgCmRldmljZS4KQXNzdW1lIGRlYnVnX2VuYWJsZWQgaXMgY2hhbmdlZCB0byBvbmUg
YWZ0ZXIgZXh0ZXJuYWwgZGVidWdnZXIgZGV0YWNoZXMgCnRoZQpkZXZpY2UuIERlYnVnZ2VyIHdv
dWxkIGFscmVhZHkgY2xlYXIgdGhlIGJyZWFrcG9pbnQgcmVnaXN0ZXJzLiBJZiAKZGViZ2dlciBp
cwpzdGlsbCBhdHRhY2hlZCwgdGhlcmUncyBub3RoaW5nIEtlcm5lbCBjYW4gZG8gdG8gc3RvcCBp
dCAKcmVzdG9yZXMvcHJvZ3JhbXMKdGhlIGJyZWFrcG9pbnQgcmVnaXN0ZXJzLgoKV2hhdCBkbyB5
b3UgdGhpbmsgb2YgdGhpcz8KClRoYW5rcywKVGluZ3dlaQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
