Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD68151F9D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 18:40:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lu+7mB4UgftJILsjCgJqIXRZ/iJBAK89QUOy9fik3zg=; b=TttNjsz5oemlem
	3luDqEcuQw0LYQPuUmoxIlna/MvFkXtZbQ1EDZdQRVApttzwt8XsU67UIJkWLdSffo7g5nmEXxrkJ
	g5IBLnxQXB/PV1W+dhmVJEC+3RW+0E4/aWTU9KmvD31YG2WoauHiuh+ekd301NkROc5G7wc66vUKB
	yGKUBPdZ0roXbijJBBwEpcwozy62KVbXJ3GT5usWTRTpCuiwsXicMyN/E9CbouvABz1I6KGgpIfyc
	sBa1pnTHqAWSqQo1iFJovcpIgiG+DhJp90Fwqy9G3SUNJ4bHxuZJc7pJ04O48uUTrJFg05gtGaYCN
	tf6zT/CYFDjtxsBGJ6UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz2Ax-0008GZ-GD; Tue, 04 Feb 2020 17:39:51 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz2Aq-0008Fe-Sz
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 17:39:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580837980;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rOt4Q7Y7NbeoLNOkgoGRXQ71dvuW8UbbyvbNZ5N5pIs=;
 b=ZTT4euUxQFSfDdi3c8c41iSYOcu+7LTkiq73G4oEfGYSeAWmftOVJe207XU6xaUcH/TZX0
 61sM6VuAQ0c6x+luBqa9xZeO+Spb3YviSKctmqNF1XtVVs/7/Vd1XNOGGCVp5J/lcTsMD9
 K5oA8wnCUzXMJkpL7Hsqso+4XTd4KUw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-233-RFdFYVoNOtmfFcl0m6Qxsg-1; Tue, 04 Feb 2020 12:39:36 -0500
X-MC-Unique: RFdFYVoNOtmfFcl0m6Qxsg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BE0AADB25;
 Tue,  4 Feb 2020 17:39:33 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 17A5660BF4;
 Tue,  4 Feb 2020 17:39:30 +0000 (UTC)
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
To: Peter Zijlstra <peterz@infradead.org>, Alex Kogan <alex.kogan@oracle.com>
References: <8D3AFB47-B595-418C-9568-08780DDC58FF@oracle.com>
 <714892cd-d96f-4d41-ae8b-d7b7642a6e3c@redhat.com>
 <1669BFDE-A1A5-4ED8-B586-035460BBF68A@oracle.com>
 <20200125111931.GW11457@worktop.programming.kicks-ass.net>
 <F32558D8-4ACB-483A-AB4C-F565003A02E7@oracle.com>
 <20200203134540.GA14879@hirez.programming.kicks-ass.net>
 <6d11b22b-2fb5-7dea-f88b-b32f1576a5e0@redhat.com>
 <20200203152807.GK14914@hirez.programming.kicks-ass.net>
 <15fa978d-bd41-3ecb-83d5-896187e11244@redhat.com>
 <83762715-F68C-42DF-9B41-C4C48DF6762F@oracle.com>
 <20200204172758.GF14879@hirez.programming.kicks-ass.net>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <e26b3afa-80d6-71bf-39c8-0fa4b875cbb2@redhat.com>
Date: Tue, 4 Feb 2020 12:39:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200204172758.GF14879@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_093945_012536_BB6E79B3 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
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

T24gMi80LzIwIDEyOjI3IFBNLCBQZXRlciBaaWpsc3RyYSB3cm90ZToKPiBPbiBUdWUsIEZlYiAw
NCwgMjAyMCBhdCAxMTo1NDowMkFNIC0wNTAwLCBBbGV4IEtvZ2FuIHdyb3RlOgo+Pj4gT24gRmVi
IDMsIDIwMjAsIGF0IDEwOjQ3IEFNLCBXYWltYW4gTG9uZyA8bG9uZ21hbkByZWRoYXQuY29tPiB3
cm90ZToKPj4+Cj4+PiBPbiAyLzMvMjAgMTA6MjggQU0sIFBldGVyIFppamxzdHJhIHdyb3RlOgo+
Pj4+IE9uIE1vbiwgRmViIDAzLCAyMDIwIGF0IDA5OjU5OjEyQU0gLTA1MDAsIFdhaW1hbiBMb25n
IHdyb3RlOgo+Pj4+PiBPbiAyLzMvMjAgODo0NSBBTSwgUGV0ZXIgWmlqbHN0cmEgd3JvdGU6Cj4+
Pj4+PiBQcmVzdW1hYmx5IHlvdSBoYXZlIGEgd29ya2xvYWQgd2hlcmUgQ05BIGlzIGFjdHVhbGx5
IGEgd2luPyBUaGF0IGlzLAo+Pj4+Pj4gd2hhdCBpbnNwaXJlZCB5b3UgdG8gZ28gZG93biB0aGlz
IHJvYWQ/IFdoaWNoIGFjdHVhbCBrZXJuZWwgbG9jayBpcyBzbwo+Pj4+Pj4gY29udGVuZGVkIG9u
IE5VTUEgbWFjaGluZXMgdGhhdCB3ZSBuZWVkIHRvIGRvIHRoaXM/Cj4+IFRoZXJlIGFyZSBxdWl0
ZSBhIGZldyBhY3R1YWxseS4gZmlsZXNfc3RydWN0LmZpbGVfbG9jaywgZmlsZV9sb2NrX2NvbnRl
eHQuZmxjX2xvY2sKPj4gYW5kIGxvY2tyZWYubG9jayBhcmUgc29tZSBjb25jcmV0ZSBleGFtcGxl
cyB0aGF0IGdldCB2ZXJ5IGhvdCBpbiB3aWxsLWl0LXNjYWxlCj4+IGJlbmNobWFya3MuIAo+IFJp
Z2h0LCB0aGF0J3MgYWxsIGEgdmFyaWFudCBvZiBiYW5naW5nIG9uIHRoZSBzYW1lIHJlc291cmNl
cyBhY3Jvc3MKPiBub2Rlcy4gSSdtIG5vdCBzdXJlIHRoZXJlJ3MgYW55dGhpbmcgZnVuZGFtZW50
YWwgd2UgY2FuIGZpeCB0aGVyZS4KPgo+PiBBbmQgdGhlbiB0aGVyZSBhcmUgc3BpbmxvY2tzIGlu
IF9fZnV0ZXhfZGF0YS5xdWV1ZXMsIAo+PiB3aGljaCBnZXQgaG90IHdoZW4gYXBwbGljYXRpb25z
IGhhdmUgY29udGVuZGVkIChwdGhyZWFkKSBsb2NrcyDigJQgCj4+IExldmVsREIgaXMgYW4gZXhh
bXBsZS4KPiBBIG51bWEgYXdhcmUgcmV3b3JrIG9mIGZ1dGV4ZXMgaGFzIGJlZW4gb24gdGhlIHRv
ZG8gbGlzdCBmb3IgeWVhcnMgOi8KTm93LCB3ZSBhcmUgZ29pbmcgdG8gZ2V0IHRoYXQgZm9yIGZy
ZWUgd2l0aCB0aGlzIHBhdGNoc2V0Oi0pCj4KPj4gT3VyIGluaXRpYWwgbW90aXZhdGlvbiB3YXMg
YmFzZWQgb24gYW4gb2JzZXJ2YXRpb24gdGhhdCBrZXJuZWwgcXNwaW5sb2NrIGlzIG5vdCAKPj4g
TlVNQS1hd2FyZS4gU28gd2hhdCwgeW91IG1heSBhc2suIE11Y2ggbGlrZSBwZW9wbGUgcmVhbGl6
ZWQgaW4gdGhlIHBhc3QgdGhhdAo+PiBnbG9iYWwgc3Bpbm5pbmcgaXMgYmFkIGZvciBwZXJmb3Jt
YW5jZSwgYW5kIHRoZXkgc3dpdGNoZWQgZnJvbSB0aWNrZXQgbG9jayB0bwo+PiBsb2NrcyB3aXRo
IGxvY2FsIHNwaW5uaW5nIChlLmcuLCBNQ1MpLCBJIHRoaW5rIGV2ZXJ5b25lIHdvdWxkIGFncmVl
IHRoZXNlIGRheXMgdGhhdAo+PiBib3VuY2luZyBhIGxvY2sgKGFuZCBjYWNoZSBsaW5lcyBpbiBn
ZW5lcmFsKSBhY3Jvc3MgbnVtYSBub2RlcyBpcyBzaW1pbGFybHkgYmFkLgo+PiBBbmQgYXMgQ05B
IGRlbW9uc3RyYXRlcywgd2UgYXJlIGVhc2lseSBsZWF2aW5nIDItM3ggc3BlZWR1cHMgb24gdGhl
IHRhYmxlIGJ5Cj4+IGRvaW5nIGp1c3QgdGhhdCB3aXRoIHRoZSBjdXJyZW50IHFzcGlubG9jay4K
PiBBY3R1YWwgYmVuY2htYXJrcyB3aXRoIHBlcmZvcm1hbmNlIG51bWJlcnMgYXJlIHJlcXVpcmVk
LiBJdCBoZWxwcwo+IG1vdGl2YXRlIHRoZSBwYXRjaGVzIGFzIHdlbGwgYXMgZ2l2ZXMgcmV2aWV3
ZXJzIGNsdWVzIG9uIGhvdyB0bwo+IHJlcHJvZHVjZSAvIGluc3BlY3QgdGhlIGNsYWltcyBtYWRl
Lgo+CkkgdGhpbmsgdGhlIGNvdmVyLWxldHRlciBkb2VzIGhhdmUgc29tZSBiZW5jaG1hcmsgcmVz
dWx0cyBsaXN0ZWQuwqAgQXJlCnlvdSBzYXlpbmcgdGhhdCBzb21lIGJlbmNobWFyayByZXN1bHRz
IHNob3VsZCBiZSBwdXQgaW50byBpbmRpdmlkdWFsCnBhdGNoZXMgdGhlbXNlbHZlcz8KCkNoZWVy
cywKTG9uZ21hbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
