Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FAC1792BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:51:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4+2FRHZmIOfPz2bbdILJ4qMX9zYuU5rqKVkdiTQ2vo=; b=dszK27lACEs/qd
	AxtD91IHURVZICRArPH+1wiGlWcgcK3Ki8X3T4R1DbOn2Mk3SGbQrt0TlWTorVbyubSItzata1nnN
	3W6XbxEhyzKfzg+62QKt3MFO8qJdnyJqu/zZLq7PUhZhTGGve4mW79uf5zMpiscOqypblAScvFXT8
	Fzimgc5goIPxvHQUJ3C9i3ceGXvLSVWCY2+YAwdPdjV5/2/mpDqXq1QK+kDZvq9Z68xtdpQTY15oC
	b0KVqg1LPZFJ2AQ3OReq7l2J7+N1QgqPaphEgtc3k28+uTaGdvFU80EV3bwfe6r41zcL4hkom+fs9
	kvOzQraBehSQlL4KOZmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9VMd-0000xv-LA; Wed, 04 Mar 2020 14:51:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9VMT-0000xQ-0C
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:51:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 789A331B;
 Wed,  4 Mar 2020 06:51:00 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AD56B3F6CF;
 Wed,  4 Mar 2020 06:50:59 -0800 (PST)
Date: Wed, 4 Mar 2020 14:50:57 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: =?utf-8?B?UsOpbWk=?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH] arm64: remove gratuitious/stray .ltorg stanzas
Message-ID: <20200304145057.GH3575@lakrids.cambridge.arm.com>
References: <20200304093546.191052-1-remi@remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304093546.191052-1-remi@remlab.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_065101_089533_409E530C 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, will@kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXIgMDQsIDIwMjAgYXQgMTE6MzU6NDZBTSArMDIwMCwgUsOpbWkgRGVuaXMtQ291
cm1vbnQgd3JvdGU6Cj4gRnJvbTogUmVtaSBEZW5pcy1Db3VybW9udCA8cmVtaS5kZW5pcy5jb3Vy
bW9udEBodWF3ZWkuY29tPgo+IAo+IFRoZXJlIGFyZSBubyBhcHBsaWNhYmxlIGxpdGVyYWxzIGFi
b3ZlIHRoZW0uCj4gCj4gU2lnbmVkLW9mZi1ieTogUmVtaSBEZW5pcy1Db3VybW9udCA8cmVtaS5k
ZW5pcy5jb3VybW9udEBodWF3ZWkuY29tPgoKTG9va3Mgc291bmQgdG8gbWUsIHNvOgoKQWNrZWQt
Ynk6IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+CgpNYXJrLgoKPiAtLS0KPiAg
YXJjaC9hcm02NC9rZXJuZWwvaGVhZC5TICAgICAgICAgIHwgMSAtCj4gIGFyY2gvYXJtNjQva2Vy
bmVsL2hpYmVybmF0ZS1hc20uUyB8IDIgLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAzIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9oZWFkLlMgYi9hcmNoL2Fy
bTY0L2tlcm5lbC9oZWFkLlMKPiBpbmRleCBmYmM3ZTdmZTRiM2IuLjg3M2VhZGE1OTVhNSAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9oZWFkLlMKPiArKysgYi9hcmNoL2FybTY0L2tl
cm5lbC9oZWFkLlMKPiBAQCAtNDA0LDcgKzQwNCw2IEBAIF9fY3JlYXRlX3BhZ2VfdGFibGVzOgo+
ICAKPiAgCXJldAl4MjgKPiAgRU5EUFJPQyhfX2NyZWF0ZV9wYWdlX3RhYmxlcykKPiAtCS5sdG9y
Zwo+ICAKPiAgLyoKPiAgICogVGhlIGZvbGxvd2luZyBmcmFnbWVudCBvZiBjb2RlIGlzIGV4ZWN1
dGVkIHdpdGggdGhlIE1NVSBlbmFibGVkLgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5l
bC9oaWJlcm5hdGUtYXNtLlMgYi9hcmNoL2FybTY0L2tlcm5lbC9oaWJlcm5hdGUtYXNtLlMKPiBp
bmRleCAzOGJjZDRkNGU0M2IuLjY1MzIxMDViM2UzMiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0
L2tlcm5lbC9oaWJlcm5hdGUtYXNtLlMKPiArKysgYi9hcmNoL2FybTY0L2tlcm5lbC9oaWJlcm5h
dGUtYXNtLlMKPiBAQCAtMTEwLDggKzExMCw2IEBAIEVOVFJZKHN3c3VzcF9hcmNoX3N1c3BlbmRf
ZXhpdCkKPiAgCWNiegl4MjQsIDNmCQkvKiBEbyB3ZSBuZWVkIHRvIHJlLWluaXRpYWxpc2UgRUwy
PyAqLwo+ICAJaHZjCSMwCj4gIDM6CXJldAo+IC0KPiAtCS5sdG9yZwo+ICBFTkRQUk9DKHN3c3Vz
cF9hcmNoX3N1c3BlbmRfZXhpdCkKPiAgCj4gIC8qCj4gLS0gCj4gMi4yNS4xCj4gCj4gCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
