Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4598149254
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 01:39:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RWuTfsx8z+uuPl/OqcWTWsbvkuC38vrmnAgeoSB/wsA=; b=VPBB74iIOAlcs6
	EAFwD5naCGM/0wrYuVzPPdCuRQCgzEqLZbc7USeawbLEF306DrTW3RfQOg72Aw+xhkU3zEum7huL1
	rlSTNoY4VH7xOhryz+Ouh6zYwmYpyY2P+WtpzjvKZOClOthNThl+CbV6llJiaIaFj/hdIcc2QRk+5
	PYF+Ue16C2yCUBeoIODzEExceYE611+UvCtSe0e4bKshB/hTH/1Lx6iwBowd3MH5coQIn1U5s/+TC
	kFx8fKrDFWC3ByWZAkIueL6N1gJvCU3wlD2x+dxqTUMh8z/K7OVCf0wkcg9ISXW/eefp2rL9Axt0o
	QCViB5ILh8uDS1JWUT+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv9Tl-0002Ql-3h; Sat, 25 Jan 2020 00:39:13 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv9Tc-0002Pv-Bg
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 00:39:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579912739;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gaVYkO70LUTOzuFS15WZNr0COycz0AX51ZXsTP6Rmt8=;
 b=UVP/wIpmTYf/IrjaLDylBCJMy0lygGuHTTLX6FRXZ+jriTc0nD20h39RRsLvXvaEjOd73z
 KO9vhQi9SeOoypnwsGbRQjuJZKffQS75jp21pXOjlTCZs4QIempeVK9uZxghQ4LWe2qR9W
 8SAlfonbbsuz5TsEHWlk1MAT1Lq770I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-410-odkxcsjgM5ePY3Oi8a2QAQ-1; Fri, 24 Jan 2020 19:38:55 -0500
X-MC-Unique: odkxcsjgM5ePY3Oi8a2QAQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4CF51477;
 Sat, 25 Jan 2020 00:38:53 +0000 (UTC)
Received: from llong.remote.csb (ovpn-124-92.rdu2.redhat.com [10.10.124.92])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EF9998CCF6;
 Sat, 25 Jan 2020 00:38:49 +0000 (UTC)
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
To: Alex Kogan <alex.kogan@oracle.com>
References: <20191230194042.67789-1-alex.kogan@oracle.com>
 <20191230194042.67789-5-alex.kogan@oracle.com>
 <20200121132949.GL14914@hirez.programming.kicks-ass.net>
 <cfdf635d-be2e-9d4b-c4ca-6bcbddc6868f@redhat.com>
 <3862F8A1-FF9B-40AD-A88E-2C0BA7AF6F58@oracle.com>
 <20200124075235.GX14914@hirez.programming.kicks-ass.net>
 <2c6741c5-d89d-4b2c-cebe-a7c7f6eed884@redhat.com>
 <48ce49e5-98a7-23cd-09f4-8290a65abbb5@redhat.com>
 <8D3AFB47-B595-418C-9568-08780DDC58FF@oracle.com>
 <714892cd-d96f-4d41-ae8b-d7b7642a6e3c@redhat.com>
 <1669BFDE-A1A5-4ED8-B586-035460BBF68A@oracle.com>
 <45660873-731a-a810-8c57-1a5a19d266b4@redhat.com>
 <693E6287-E37C-4C5D-BE33-B3D813BE505D@oracle.com>
 <edc53126-bfe4-5102-d2eb-2332bf3a68e5@redhat.com>
 <D39064BF-6EF3-4C13-B2D1-34C282A20F5E@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <518185c1-c03a-7e8c-9d09-f67e42c9bc82@redhat.com>
Date: Fri, 24 Jan 2020 19:38:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <D39064BF-6EF3-4C13-B2D1-34C282A20F5E@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_163904_479515_344AB5B9 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
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
Cc: linux-arch@vger.kernel.org, Hanjun Guo <guohanjun@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 dave.dice@oracle.com, Jan Glauber <jglauber@marvell.com>, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, hpa@zytor.com,
 Steven Sistare <steven.sistare@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMS8yNC8yMCA0OjI3IFBNLCBBbGV4IEtvZ2FuIHdyb3RlOgo+Cj4+IE9uIEphbiAyNCwgMjAy
MCwgYXQgNDoxMiBQTSwgV2FpbWFuIExvbmcgPGxvbmdtYW5AcmVkaGF0LmNvbT4gd3JvdGU6Cj4+
Cj4+IE9uIDEvMjQvMjAgMzowOSBQTSwgQWxleCBLb2dhbiB3cm90ZToKPj4+Pj4gV2UgYWxzbyBw
cm9iYWJseSBkbyBub3Qgd2FudCB0aG9zZSDigJxwcmlvcml0aXplZOKAnSB0aHJlYWRzIHRvIGRp
c3J1cHQKPj4+Pj4gbm9ybWFsCj4+Pj4+IENOQSBvcGVyYXRpb24uIEUuZy4sIGlmIHRoZSBtYWlu
IHF1ZXVlIGxvb2tzIGxpa2UgVDFfMSwgUDJfMSwgVDFfMiwKPj4+Pj4g4oCmLCB3aGVyZQo+Pj4+
PiBUMV94IGlzIGEgdGhyZWFkIHJ1bm5pbmcgb24gbm9kZSAxIGFuZCBQMl8xIGlzIGEgcHJpb3Jp
dGl6ZWQgdGhyZWFkCj4+Pj4+IHJ1bm5pbmcKPj4+Pj4gb24gbm9kZSAyLCB3ZSB3YW50IHRvIHBh
c3MgdGhlIGxvY2sgZnJvbSBUMV8xIHRvIFAyXzEgYW5kIHRoZW4gdG8gVDFfMgo+Pj4+PiAocmF0
aGVyIHRoYW4gaGF2ZSBQMl8xIHRvIHNjYW4gZm9yIGFub3RoZXIgdGhyZWFkIG9uIG5vZGUgMiku
Cj4+Pj4+Cj4+Pj4+IFRoZXJlIGlzIGEgd2F5IHRvIGFjaGlldmUgdGhhdCDigJQgd2hlbiB3ZSBw
YXNzIHRoZSBsb2NrIHRvIFAyXzEsCj4+Pj4+IHdlIGNhbiBzZXQgaXRzIG51bWEgbm9kZSBmaWVs
ZCB0byAxLiBUaGlzIG1lYW5zIHRoYXQgd2UgbmVlZCB0bwo+Pj4+PiByZXNldCB0aGUgbnVtYQo+
Pj4+PiBub2RlIGZpZWxkIGluIGNuYV9pbml0X25vZGUoKSwgYnV0IEFGQUlDVCB0aGlzIGlzIHJl
bGF0aXZlbHkgY2hlYXAuCj4+Pj4+IFRoZSByZXN0Cj4+Pj4+IG9mIHRoZSBDTkEgbG9naWMgc2hv
dWxkIG5vdCBjaGFuZ2UuCj4+Pj4gSSB3b24ndCByZWNvbW1lbmQgZG9pbmcgdGhhdC4gSWYgdGhl
IGxvY2sgY2FjaGVsaW5lIGhhcyBiZWVuIG1vdmVkCj4+Pj4gZnJvbSBub2RlIDEgdG8gMiwgSSB3
aWxsIHNheSBpdCBpcyBiZXR0ZXIgdG8gc3RpY2sgd2l0aCBub2RlIDIgcmF0aGVyCj4+Pj4gdGhh
biBzd2l0Y2hpbmcgYmFjayB0byBub2RlIDEuIFRoYXQgd2lsbCBtZWFuIHRoYXQgdGhlIHNlY29u
ZGFyeQo+Pj4+IHF1ZXVlIG1heSBjb250YWluIGxvY2sgd2FpdGVycyBmcm9tIHRoZSBzYW1lIG5v
ZGVzLCBidXQgdGhleSB3aWxsCj4+Pj4gZXZlbnR1YWxseSBiZSBmbHVzaGVkIGJhY2sgdG8gdGhl
IHByaW1hcnkgcXVldWUuCj4+Pj4KPj4+IFRoYXTigJlzIHJpZ2h0LCBhc3N1bWluZyB3ZSBkbyBu
b3QgcmVzZXQgaW50cmFfbm9kZSBjb3VudCB3aGVuCj4+PiB0cmFuc2ZlcnJpbmcgdGhlCj4+PiBs
b2NrIHRvIGEgcHJpb3JpdGl6ZWQgdGhyZWFkIGZyb20gYW5vdGhlciBub2RlLiBPdGhlcndpc2Us
IHdlIG1heSBzdGFydmUKPj4+IHdhaXRlcnMgaW4gdGhlIHNlY29uZGFyeSBxdWV1ZS4gCj4+Pgo+
Pj4gU3RpbGwsIHRoYXQgY2FuIG1ha2UgdGhlIGxvY2sgZXZlbiBsZXNzIGZhaXIgdG8gbm9uLXBy
aW9yaXRpemVkCj4+PiB0aHJlYWRzLiBXaGVuCj4+PiB5b3UgZmx1c2ggdGhlIHNlY29uZGFyeSBx
dWV1ZSwgdGhlIHByZWZlcmVuY2UgbWF5IHJlbWFpbiB3aXRoIHRoZSBzYW1lCj4+PiBub2RlLiBU
aGlzIHdpbGwgbm90IGhhcHBlbiBpbiB0aGUgY3VycmVudCBmb3JtIG9mIENOQSwgYXMgd2UgbmV2
ZXIgZ2V0IAo+Pj4gdGhyZWFkcyBmcm9tIHRoZSBwcmVmZXJyZWQgbm9kZSBpbiB0aGUgc2Vjb25k
YXJ5IHF1ZXVlLgo+PiBUaGF0IGlzIHRydWUuCj4+Cj4+IEhvd2V2ZXIsIGl0IGlzIG5vIGRpZmZl
cmVudCBmcm9tIHRoZSBjdXJyZW50IHNjaGVtZSB0aGF0IGEgd2FpdGVyIGZyb20KPj4gYW5vdGhl
ciBub2RlIG1heSBoYXZlIHRvIHdhaXQgZm9yIDY0ayBvdGhlciB3YWl0ZXJzIHRvIGdvIGZpcnN0
IGJlZm9yZQo+PiBpdCBoYXMgYSBjaGFuY2UgdG8gZ2V0IGl0LiBOb3cgdGhhdCB3YWl0ZXIgY2Fu
IGJlIGZyb20gdGhlIHNhbWUgbm9kZSBhcwo+PiB3ZWxsLgo+IFRoZSBkaWZmZXJlbmNlIGlzIHRo
YXQgaW4gdGhlIGN1cnJlbnQgZm9ybSBvZiBDTkEsIHRoZSBwcmVmZXJyZWQgbm9kZSBfd2lsbAo+
IGNoYW5nZSBhZnRlciA2NGsgbG9jayB0cmFuc2l0aW9ucy4gSW4gdGhlIGNoYW5nZSB5b3UgcHJv
cG9zZSwgdGhpcyBpcyBubwo+IGxvbmdlciB0aGUgY2FzZS4gSXQgbWF5IHRha2UgYW5vdGhlciB+
NjRrIHRyYW5zaXRpb25zIGZvciB0aGF0IHRvIGhhcHBlbi4KPiBNb3JlIGdlbmVyYWxseSwgSSB0
aGluayB0aGlzIG1ha2VzIHRoZSBhbmFseXNpcyBvZiB0aGUgbG9jayBiZWhhdmlvciBtb3JlCj4g
Y29udm9sdXRlZC4KPgo+IEkgdGhpbmsgd2Ugc2hvdWxkIHRyZWF0IHRob3NlIHByaW9yaXRpemVk
IHRocmVhZHMgYXMg4oCcd2lsZOKAnSBjYXJkcywgcGFzc2luZyB0aGUgCj4gbG9jayB0aHJvdWdo
IHRoZW0sIGJ1dCBrZWVwaW5nIHRoZSBwcmVmZXJyZWQgbm9kZSBpbnRhY3QuIFRoaXMgd2lsbCBw
b3RlbnRpYWxseQo+IGNvc3Qgb25lIGV4dHJhIGxvY2sgbWlncmF0aW9uLCBidXQgd2lsbCBtYWtl
IHJlYXNvbmluZyBhYm91dCB0aGUgbG9jawo+IGJlaGF2aW9yIGVhc2llci4KCkl0IHNlZW1zIGxp
a2UgeW91IHByZWZlciBtYXRoZW1hdGljYWwgcHVyaXR5IHRoYW4gcHJhY3RpY2FsCmNvbnNpZGVy
YXRpb24uIEkgd29uJ3Qgb2JqZWN0IHRvIHRoYXQgaWYgeW91IGluc2lzdCB0aGF0IGlzIHRoZSBy
aWdodAp3YXkgdG8gZ28uIEp1c3QgYmUgbWluZGZ1bCB0aGF0IHlvdSBtYXkgbmVlZCB0byBhZGQg
YSBwcmVmZXJyZWQgbm9kZQp2YWx1ZSB0byBkbyB0aGF0LiBJdCB3aWxsIGFsc28gY29tcGxpY2F0
ZSB0aGUgY29kZSwgYnV0IGl0IGlzIHlvdXIgY2hvaWNlLgoKQ2hlZXJzLApMb25nbWFuCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
