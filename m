Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F685148E01
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 19:51:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HvBWFUtdTzf/DvxySDnjGQDdnuVcO2wX/gXRlA3STzg=; b=Miqt1TImH8v732
	WHVNTTWTxrj8K3jOKHJ3uYG0lyS7KJzxWDa45+gFPZkOqWw64LMpAFYPiuDTNS1/iUAZdRMosDovX
	EQNLrzNADUllmCgltISbEkfu5SA/Kmj/OPVXy9lDPnN7yybaSRhngJ7PWWRuga/WFsgv3pLeC95j1
	4P48O0V2ln0J75nxxL8nlJKzH1EV4ZfPk7YwM8cG1oemYszf0AhVcV4uCLSBOT+AuuK7gKPAmx770
	W6uhAOkeiXKgPuV5JS+FDPIfpbCBiaLyAUPpQ15jb64m5m562CrGrQH87OqXWxeGbGNfcvXVGL7uw
	LcPRBcIEOAOAhEEk2JeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv43d-0003VK-MA; Fri, 24 Jan 2020 18:51:53 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv43U-0003V0-U9
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 18:51:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579891902;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XNYcGFHB8MpC+O12qo0g1indJArhKKcDwFGEXrECvxI=;
 b=hkcwQZU2mXIKhsF9u38c6Lbb12NM5TL/xGdZXlX/Xc20CuGq+E1B5qQJvOOKKcFhbnmmUZ
 B2YqxAVtVuTQ/HGH8KLrrVNY2sr62ltbOSogyMfNGRUIfathS6CRx4wO58EGR0Inqjb5RV
 ndAacdHlafpwmpE7I5f5Eo3Gg+2fl8I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-330-iLqwZjl6P8afKnIINf2pVA-1; Fri, 24 Jan 2020 13:51:39 -0500
X-MC-Unique: iLqwZjl6P8afKnIINf2pVA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 94EBE10054E3;
 Fri, 24 Jan 2020 18:51:36 +0000 (UTC)
Received: from llong.remote.csb (ovpn-124-92.rdu2.redhat.com [10.10.124.92])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4C3C58681F;
 Fri, 24 Jan 2020 18:51:34 +0000 (UTC)
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
From: Waiman Long <longman@redhat.com>
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
Organization: Red Hat
Message-ID: <b26837a9-d0cd-4413-95ec-1deaca184324@redhat.com>
Date: Fri, 24 Jan 2020 13:51:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <45660873-731a-a810-8c57-1a5a19d266b4@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_105145_045658_037E5D26 
X-CRM114-Status: GOOD (  22.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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

T24gMS8yNC8yMCAxOjQwIFBNLCBXYWltYW4gTG9uZyB3cm90ZToKPiBPbiAxLzI0LzIwIDE6MTkg
UE0sIEFsZXggS29nYW4gd3JvdGU6Cj4+Cj4+Cj4+PiBPbiBKYW4gMjQsIDIwMjAsIGF0IDExOjQ2
IEFNLCBXYWltYW4gTG9uZyA8bG9uZ21hbkByZWRoYXQuY29tCj4+PiA8bWFpbHRvOmxvbmdtYW5A
cmVkaGF0LmNvbT4+IHdyb3RlOgo+Pj4KPj4+IE9uIDEvMjQvMjAgMTE6MjkgQU0sIEFsZXggS29n
YW4gd3JvdGU6Cj4+Pj4KPj4+Pgo+Pj4+PiBPbiBKYW4gMjQsIDIwMjAsIGF0IDEwOjE5IEFNLCBX
YWltYW4gTG9uZyA8bG9uZ21hbkByZWRoYXQuY29tCj4+Pj4+IDxtYWlsdG86bG9uZ21hbkByZWRo
YXQuY29tPj4gd3JvdGU6Cj4+Pj4+Cj4+Pj4+IE9uIDEvMjQvMjAgOTo0MiBBTSwgV2FpbWFuIExv
bmcgd3JvdGU6Cj4+Pj4+PiBPbiAxLzI0LzIwIDI6NTIgQU0sIFBldGVyIFppamxzdHJhIHdyb3Rl
Ogo+Pj4+Pj4+IE9uIFRodSwgSmFuIDIzLCAyMDIwIGF0IDA0OjMzOjU0UE0gLTA1MDAsIEFsZXgg
S29nYW4gd3JvdGU6Cj4+Pj4+Pj4+IExldCBtZSBwdXQgdGhpcyBxdWVzdGlvbiB0byB5b3UuIFdo
YXQgZG8geW91IHRoaW5rIHRoZSBudW1iZXIKPj4+Pj4+Pj4gc2hvdWxkIGJlPwo+Pj4+Pj4+IEkg
dGhpbmsgaXQgd291bGQgYmUgdmVyeSBnb29kIHRvIGtlZXAgdGhlIGludGVyLW5vZGUgbGF0ZW5j
eQo+Pj4+Pj4+IGJlbG93IDFtcy4KPj4+Pj4+IEl0IGlzIGhhcmQgdG8gZ3VhcmFudGVlIHRoYXQg
Z2l2ZW4gdGhhdCBsb2NrIGhvbGQgdGltZXMgY2FuIHZhcnkKPj4+Pj4+IHF1aXRlIGEKPj4+Pj4+
IGxvdCBkZXBlbmRpbmcgb24gdGhlIHdvcmtsb2FkLiBXaGF0IHdlIGNhbiBjb250cm9sIGlzIGp1
c3QgaG93IG1hbnkKPj4+Pj4+IGxhdGVyIGxvY2sgd2FpdGVycyBjYW4ganVtcCBhaGVhZCBiZWZv
cmUgYSBnaXZlbiB3YWl0ZXIuCj4+Pj4gSSB0b3RhbGx5IGFncmVlLiBJIGRvIG5vdCB0aGluayB5
b3UgY2FuIGd1YXJhbnRlZSB0aGF0IGxhdGVuY3kgZXZlbgo+Pj4+IHRvZGF5Lgo+Pj4+IFdpdGgg
dGhlIGV4aXN0aW5nIHNwaW5sb2NrLCB5b3Ugam9pbiB0aGUgcXVldWUgYW5kIHdhaXQgZm9yIGFz
IGxvbmcKPj4+PiBhcyBpdCB0YWtlcwo+Pj4+IGZvciBlYWNoIGFuZCBldmVyeSB0aHJlYWQgaW4g
ZnJvbnQgb2YgeW91IHRvIGV4ZWN1dGUgaXRzIGNyaXRpY2FsCj4+Pj4gc2VjdGlvbi4KPj4+Pgo+
Pj4+Pj4+IEJ1dCB0byByZWFsaXplIHRoYXQgd2UgbmVlZCBkYXRhIG9uIHRoZSBsb2NrIGhvbGQg
dGltZXMuCj4+Pj4+Pj4gU3BlY2lmaWNhbGx5Cj4+Pj4+Pj4gZm9yIHRoZSBoZWF2aWx5IGNvbnRl
bmRlZCBsb2NrcyB0aGF0IG1ha2UgQ05BIHdvcnRoIGl0IGluIHRoZSBmaXJzdAo+Pj4+Pj4+IHBs
YWNlLgo+Pj4+Pj4+Cj4+Pj4+Pj4gSSBkb24ndCBzZWUgdGhhdCBkYXRhLCBzbyBJIGRvbid0IHNl
ZSBob3cgd2UgY2FuIGFyZ3VlIGFib3V0Cj4+Pj4+Pj4gdGhpcyBsZXQKPj4+Pj4+PiBhbG9uZSBj
YWxsIHNvbWV0aGluZyByZWFzb25hYmxlLgo+Pj4+Pj4+Cj4+Pj4+PiBJbiBlc3NlbmNlLCBDTkEg
bG9jayBpcyBmb3IgaW1wcm92aW5nIHRocm91Z2hwdXQgb24gTlVNQSBtYWNoaW5lcwo+Pj4+Pj4g
YXQgdGhlCj4+Pj4+PiBleHBlbnNlIG9mIGluY3JlYXNpbmcgd29yc3QgY2FzZSBsYXRlbmN5LiBJ
ZiBsb3cgbGF0ZW5jeSBpcwo+Pj4+Pj4gaW1wb3J0YW50LAo+Pj4+Pj4gaXQgc2hvdWxkIGJlIGRp
c2FibGVkLiBJZiBDT05GSUdfUFJFRU1QVF9SVCBpcyBvbiwKPj4+Pj4+IENPTkZJR19OVU1BX0FX
QVJFX1NQSU5MT0NLUyBzaG91bGQgYmUgb2ZmLgo+Pj4+Pgo+Pj4+PiBBY3R1YWxseSwgd2hhdCB3
ZSBhcmUgd29ycnlpbmcgYWJvdXQgaXMgdGhlIGFkZGl0aW9uYWwgbGF0ZW5jeQo+Pj4+PiB0aGF0
IGNhbgo+Pj4+PiBiZSBhZGRlZCB0byBpbXBvcnRhbnQgdGFza3Mgb3IgZXhlY3V0aW9uIGNvbnRl
eHRzIHRoYXQgYXJlIHdhaXRpbmcKPj4+Pj4gZm9yIGEKPj4+Pj4gbG9jay4gTWF5YmUgd2UgY2Fu
IG1ha2UgQ05BIGxvY2sgYmVoYXZlcyBzb21ld2hhdCBsaWtlIHFyd2xvY2sgaXMgdGhhdAo+Pj4+
PiByZXF1ZXN0cyBmcm9tIGludGVycnVwdCBjb250ZXh0IGFyZSBnaXZpbmcgcHJpb3JpdHkuIFdl
IGNvdWxkIGFkZCBhCj4+Pj4+IHByaW9yaXR5IGZsYWcgaW4gdGhlIENOQSBub2RlLiBJZiB0aGUg
ZmxhZyBpcyBzZXQsIHdlIHdpbGwgbmV2ZXIKPj4+Pj4gcHV0IGl0Cj4+Pj4+IGludG8gdGhlIHNl
Y29uZGFyeSBxdWV1ZS4gSW4gZmFjdCwgd2UgY2FuIHRyYW5zZmVyIGNvbnRyb2wgbmV4dCB0byBp
dAo+Pj4+PiBldmVuIGlmIGl0IGlzIG5vdCBvbiB0aGUgc2FtZSBub2RlLiBXZSBtYXkgYWxzbyBz
ZXQgdGhlIHByaW9yaXR5Cj4+Pj4+IGZsYWcgaWYKPj4+Pj4gaXQgaXMgYSBSVCB0YXNrIHRoYXQg
aXMgdHJ5aW5nIHRvIGFjcXVpcmUgdGhlIGxvY2suCj4+Pj4gSSB0aGluayB0aGlzIGlzIHBvc3Np
YmxlLCBhbmQgaW4gZmFjdCwgd2UgaGF2ZSBiZWVuIHRoaW5raW5nIGFsb25nCj4+Pj4gdGhvc2Ug
bGluZXMKPj4+PiBhYm91dCB3YXlzIHRvIGJldHRlciBzdXBwb3J0IFJUIHRhc2tzIHdpdGggQ05B
LiBIb3dldmVyLCB0aGlzIHdpbGwKPj4+PiBfcHJvYmFibHkKPj4+PiByZXF1aXJlIGNoYW5nZXMg
dG8gQVBJIGFuZCB3aWxsIF9jZXJ0YWlubHkgY29tcGxpY2F0ZSB0aGUgY29kZQo+Pj4+IHF1aXRl
IGEgYml0Lgo+Pj4KPj4+IFdoYXQgeW91IG5lZWQgdG8gZG8gaXMgdG8gbW9kaWZ5IGNuYV9pbml0
X25vZGUoKSB0byBjaGVjayB0aGUKPj4+IGN1cnJlbnQgbG9ja2luZyBjb250ZXh0IGFuZCBzZXQg
dGhlIHByaW9yaXR5IGZsYWcgYWNjb3JkaW5nbHkuCj4+Pgo+PiBJcyB0aGVyZSBhIGxpZ2h0d2Vp
Z2h0IHdheSB0byBpZGVudGlmeSBzdWNoIGEg4oCccHJpb3JpdGl6ZWTigJ0gdGhyZWFkPwo+Cj4g
WW91IGNhbiB1c2UgdGhlIGluX3Rhc2soKSBtYWNybyBpbiBpbmNsdWRlL2xpbnV4L3ByZWVtcHQu
aC4gVGhpcyBpcwo+IGp1c3QgYSBwZXJjcHUgcHJlZW1wdF9jb3VudCByZWFkIGFuZCB0ZXN0LiBJ
ZiBpbl90YXNrKCkgaXMgZmFsc2UsIGl0Cj4gaXMgaW4gYSB7c29mdHxoYXJkfWlycSBvciBubWkg
Y29udGV4dC4gSWYgaXQgaXMgdHJ1ZSwgeW91IGNhbiBjaGVjawo+IHRoZSBydF90YXNrKCkgbWFj
cm8gdG8gc2VlIGlmIGl0IGlzIGFuIFJUIHRhc2suIFRoYXQgd2lsbCBhY2Nlc3MgdG8KPiB0aGUg
Y3VycmVudCB0YXNrIHN0cnVjdHVyZS4gU28gaXQgbWF5IGNvc3QgYSBsaXR0bGUgYml0IG1vcmUg
aWYgeW91Cj4gd2FudCB0byBoYW5kbGUgdGhlIFJUIHRhc2sgdGhlIHNhbWUgd2F5Lgo+CldlIG1h
eSBub3QgbmVlZCB0byBkbyB0aGF0IGZvciBzb2Z0SVJRIGNvbnRleHQuIElmIHRoYXQgaXMgdGhl
IGNhc2UsIHlvdQpjYW4gdXNlIGluX2lycSgpIHdoaWNoIGNoZWNrcyBmb3IgaGFyZGlycSBhbmQg
bm1pIG9ubHkuIFBldGVyLCB3aGF0IGlzCnlvdXIgdGhvdWdodCBvbiB0aGF0PwoKQ2hlZXJzLApM
b25nbWFuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
