Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A93B1508EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 15:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbrsGrcEd6dyK3AV3urxsCM27MN4VLi7tszbUhilq54=; b=YIF2aXZGDxIKsO
	CZZ+79f1brm7ffMeL3JhwuTpflHeoF7b0A1eyOqezMmOd4pJUBkqACDtd+53HC1boCKsW2tJFJA5n
	e7GKYaqcN1BL/d8qmkRYwN1tbYveOHu25QnucxLAv56QzOxCuhhzCHcikj8E1ExsuMOA8huPjgsoP
	NeG2oc2+GseW3/6b+pWeY5L34GH4mWzC38GJEsYKQxh0HRb15qIoQkB5JIQKtxvWVv0QFEF/VvNX5
	D4qOskgpWd0b+06gK8KG3yNpS23KKILn8nHCvroAAmSal04fz6F+H4r0noBVGua2Z4/b6D7mkr+rR
	p/soso+ZmJyNLUZrxvgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iydCP-00058k-3q; Mon, 03 Feb 2020 14:59:41 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iydC9-0004y5-Uj
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 14:59:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580741962;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9bj1VW0D0sqI3fU0UHoqSbGmPMpku6KBJ1NMQqD1DEE=;
 b=Sq2FjV21w3Y6chLmti0T/xwE/5kWuLQD6YgbT8cCOBq6iCwpWFsku6DDdo9C/kMqOaopIQ
 /wWS3vur5Hx/6JMTy63d7UGiGZ824OBz6Dah4SsxlYKGBqj3D7Zt5jcNw0raei3zmDSVm/
 EuTWQyJ2ulWRs2LEKaxlGA3d94MwxII=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-AQ28BhP9OMiZy0cL1mIydQ-1; Mon, 03 Feb 2020 09:59:18 -0500
X-MC-Unique: AQ28BhP9OMiZy0cL1mIydQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 81DD71800D41;
 Mon,  3 Feb 2020 14:59:15 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E429219C58;
 Mon,  3 Feb 2020 14:59:12 +0000 (UTC)
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
To: Peter Zijlstra <peterz@infradead.org>, Alex Kogan <alex.kogan@oracle.com>
References: <cfdf635d-be2e-9d4b-c4ca-6bcbddc6868f@redhat.com>
 <3862F8A1-FF9B-40AD-A88E-2C0BA7AF6F58@oracle.com>
 <20200124075235.GX14914@hirez.programming.kicks-ass.net>
 <2c6741c5-d89d-4b2c-cebe-a7c7f6eed884@redhat.com>
 <48ce49e5-98a7-23cd-09f4-8290a65abbb5@redhat.com>
 <8D3AFB47-B595-418C-9568-08780DDC58FF@oracle.com>
 <714892cd-d96f-4d41-ae8b-d7b7642a6e3c@redhat.com>
 <1669BFDE-A1A5-4ED8-B586-035460BBF68A@oracle.com>
 <20200125111931.GW11457@worktop.programming.kicks-ass.net>
 <F32558D8-4ACB-483A-AB4C-F565003A02E7@oracle.com>
 <20200203134540.GA14879@hirez.programming.kicks-ass.net>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <6d11b22b-2fb5-7dea-f88b-b32f1576a5e0@redhat.com>
Date: Mon, 3 Feb 2020 09:59:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200203134540.GA14879@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_065926_093795_C9FF418F 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, Hanjun Guo <guohanjun@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>, dave.dice@oracle.com,
 Jan Glauber <jglauber@marvell.com>, x86@kernel.org,
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

T24gMi8zLzIwIDg6NDUgQU0sIFBldGVyIFppamxzdHJhIHdyb3RlOgo+IE9uIFRodSwgSmFuIDMw
LCAyMDIwIGF0IDA1OjA1OjI4UE0gLTA1MDAsIEFsZXggS29nYW4gd3JvdGU6Cj4+PiBPbiBKYW4g
MjUsIDIwMjAsIGF0IDY6MTkgQU0sIFBldGVyIFppamxzdHJhIDxwZXRlcnpAaW5mcmFkZWFkLm9y
Zz4gd3JvdGU6Cj4+Pgo+Pj4gT24gRnJpLCBKYW4gMjQsIDIwMjAgYXQgMDE6MTk6MDVQTSAtMDUw
MCwgQWxleCBLb2dhbiB3cm90ZToKPj4+Cj4+Pj4gSXMgdGhlcmUgYSBsaWdodHdlaWdodCB3YXkg
dG8gaWRlbnRpZnkgc3VjaCBhIOKAnHByaW9yaXRpemVk4oCdIHRocmVhZD8KPj4+IE5vOyBwZW9w
bGUgbWlnaHQgZm9yIGluc3RhbmNlIGNhcmUgYWJvdXQgdGFpbCBsYXRlbmNpZXMgYmV0d2VlbiB0
aGVpcgo+Pj4gaWRlbnRpY2FsbHkgc3BlYydlZCB3b3JrZXIgdGFza3MuCj4+IEkgd291bGQgYXJn
dWUgdGhhdCB0aG9zZSB1c2VycyBuZWVkIHRvIHR1bmUvcmVkdWNlIHRoZSBpbnRyYS1ub2RlIGhh
bmRvZmYKPj4gdGhyZXNob2xkIGZvciB0aGVpciBuZWVkcy4gT3IgZGlzYWJsZSBDTkEgYWx0b2dl
dGhlci4KPiBJIHJlYWxseSBkb24ndCBsaWtlIGJvb3QgdGltZSBhcmd1bWVudHMgKG9yIHR1bmFi
bGVzIGluIGdlbmVyaWMpIGZvciBhCj4gbWFjaGluZSB0byB3b3JrIGFzIGl0IHNob3VsZC4KPgo+
IFRoZSBkZWZhdWx0IHJlYWxseSBzaG91bGQgJ2p1c3Qgd29yaycuClRoYXQgd2lsbCBiZSB0aGUg
aWRlYWwgY2FzZS4gSW4gcmVhbGl0eSwgaXQgdXN1YWxseSB0YWtlcyBhIHdoaWxlIGZvcgp0aGUg
Y29kZSB0byBtYXR1cmUgZW5vdWdoIHRvIGRvIHNvbWUga2luZCBvZiBzZWxmIHR1bmluZy4gSW4g
dGhlIG1lYW4KdGltZSwgaGF2aW5nIHNvbWUgY29uZmlndXJhdGlvbiBvcHRpb25zIGF2YWlsYWJs
ZSBhbGxvd3MgdXMgdG8gaGF2ZSBtb3JlCnRpbWUgdG8gZmlndXJlIHdoYXQgdGhlIGJlc3QgY29u
ZmlndXJhdGlvbiBvcHRpb25zIHRvIGJlLgo+PiBJbiBnZW5lcmFsLCBQZXRlciwgc2VlbXMgbGlr
ZSB5b3UgYXJlIG5vdCBvbiBib2FyZCB3aXRoIHRoZSB3YXkgTG9uZ21hbgo+PiBzdWdnZXN0ZWQg
dG8gaGFuZGxlIHByaW9yaXRpemVkIHRocmVhZHMuIEFtIEkgcmlnaHQ/Cj4gUmlnaHQuCj4KPiBQ
cmVzdW1hYmx5IHlvdSBoYXZlIGEgd29ya2xvYWQgd2hlcmUgQ05BIGlzIGFjdHVhbGx5IGEgd2lu
PyBUaGF0IGlzLAo+IHdoYXQgaW5zcGlyZWQgeW91IHRvIGdvIGRvd24gdGhpcyByb2FkPyBXaGlj
aCBhY3R1YWwga2VybmVsIGxvY2sgaXMgc28KPiBjb250ZW5kZWQgb24gTlVNQSBtYWNoaW5lcyB0
aGF0IHdlIG5lZWQgdG8gZG8gdGhpcz8KClRvZGF5LCBhIDItc29ja2V0IFJvbWUgc2VydmVyIGNh
biBoYXZlIDEyOCBjb3JlcyBhbmQgMjU2IHRocmVhZHMuIElmIHdlCnNjYWxlIHVwIG1vcmUsIHdl
IGNvdWxkIGVhc2lseSBoYXZlIG1vcmUgdGhhbiAxMDAwIHRocmVhZHMgaW4gYSBzeXN0ZW0uCldp
dGggdGhhdCBtYW55IGxvZ2ljYWwgY3B1cyBhdmFpbGFibGUsIGl0IGlzIGVhc3kgdG8gZW52aXNp
b24gc29tZSBoZWF2eQpzcGlubG9jayBjb250ZW50aW9uIGNhbiBoYXBwZW4gZmFpcmx5IHJlZ3Vs
YXJseS4gVGhpcyBwYXRjaCBjYW4KYWxsZXZpYXRlIHRoZSBjb25nZXN0aW9uIGFuZCBpbXByb3Zl
IHBlcmZvcm1hbmNlIHVuZGVyIHRoYXQKY2lyY3Vtc3RhbmNlLiBPZiBjb3Vyc2UsIHRoZSBzcGVj
aWZpYyBsb2NrcyB0aGF0IGFyZSBjb250ZW5kZWQgd2lsbApkZXBlbmQgb24gdGhlIHdvcmtsb2Fk
cy4KCkNoZWVycywKTG9uZ21hbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
