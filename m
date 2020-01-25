Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4054B1497AE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 20:58:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6wxlnFKdWahy1zwVI3nnuY9R78rQzRb7aiCz4hvOGE=; b=UK1CdIEkuxTiz1
	63ef6UUGTNIBEHR1LD1BQs2HaT0TuifORVwqIS3/uFjW8QnDV9ZM927z5Dn1NUGa0xDqyxRmTw5fr
	QrADtlwqLZijt1OpIsX3G1hFMS7bD6XKHfg6AtZSNw8X9KepR37Z8xS5xZTQgvChpf2iz/5RcSvF4
	fZs9SGh6LT6h4HC0LjV4sVP0bn9e+cT2lIn4sqRSgjn20A51K37wVKr/Z/a8j5tsY+L2GLrxT0bjO
	f9s28Ko5Fqtqyfk/vR8Iq49LP2mlZ0EbQHmH+cfweJnRQv9wMznUyNWYDf6aXGyD0A1jQJk4PmCEa
	wy4W2Gqf9XSehGw9/VSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivRZC-0000DV-UV; Sat, 25 Jan 2020 19:58:02 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivRZ4-0000Cb-2H
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 19:57:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579982272;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rCFExYBqRuTQVgkc1w2zE0sP2/6i9VF6QWac6tDmMtY=;
 b=B5vYXqllSZiA3J+f2Tmkn0heL0SdA2aFsjAl+lg35JiG96m4EW74nj+m6qYHI4rlSePY/f
 e0wdUj19SxsRLYwr3sjIPNBeUYy9jhUTK/sWZqZnVlru+1aiALNVuqkgJOkjAfNoWCcySp
 mChFnsCpV/mvaiu5x2CiokGyAbsOupA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-40Jl93FAMqitlcDrNK8sMg-1; Sat, 25 Jan 2020 14:57:45 -0500
X-MC-Unique: 40Jl93FAMqitlcDrNK8sMg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75D3C10054E3;
 Sat, 25 Jan 2020 19:57:42 +0000 (UTC)
Received: from llong.remote.csb (ovpn-121-36.rdu2.redhat.com [10.10.121.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 83F1F60BEC;
 Sat, 25 Jan 2020 19:57:39 +0000 (UTC)
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
 <b26837a9-d0cd-4413-95ec-1deaca184324@redhat.com>
Organization: Red Hat
Message-ID: <5ffb74f6-c635-cfc8-ab01-fb990f12a93a@redhat.com>
Date: Sat, 25 Jan 2020 14:57:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <b26837a9-d0cd-4413-95ec-1deaca184324@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_115754_193442_73462255 
X-CRM114-Status: GOOD (  12.76  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

T24gMS8yNC8yMCAxOjUxIFBNLCBXYWltYW4gTG9uZyB3cm90ZToKPj4gWW91IGNhbiB1c2UgdGhl
IGluX3Rhc2soKSBtYWNybyBpbiBpbmNsdWRlL2xpbnV4L3ByZWVtcHQuaC4gVGhpcyBpcwo+PiBq
dXN0IGEgcGVyY3B1IHByZWVtcHRfY291bnQgcmVhZCBhbmQgdGVzdC4gSWYgaW5fdGFzaygpIGlz
IGZhbHNlLCBpdAo+PiBpcyBpbiBhIHtzb2Z0fGhhcmR9aXJxIG9yIG5taSBjb250ZXh0LiBJZiBp
dCBpcyB0cnVlLCB5b3UgY2FuIGNoZWNrCj4+IHRoZSBydF90YXNrKCkgbWFjcm8gdG8gc2VlIGlm
IGl0IGlzIGFuIFJUIHRhc2suIFRoYXQgd2lsbCBhY2Nlc3MgdG8KPj4gdGhlIGN1cnJlbnQgdGFz
ayBzdHJ1Y3R1cmUuIFNvIGl0IG1heSBjb3N0IGEgbGl0dGxlIGJpdCBtb3JlIGlmIHlvdQo+PiB3
YW50IHRvIGhhbmRsZSB0aGUgUlQgdGFzayB0aGUgc2FtZSB3YXkuCj4+Cj4gV2UgbWF5IG5vdCBu
ZWVkIHRvIGRvIHRoYXQgZm9yIHNvZnRJUlEgY29udGV4dC4gSWYgdGhhdCBpcyB0aGUgY2FzZSwg
eW91Cj4gY2FuIHVzZSBpbl9pcnEoKSB3aGljaCBjaGVja3MgZm9yIGhhcmRpcnEgYW5kIG5taSBv
bmx5LiBQZXRlciwgd2hhdCBpcwo+IHlvdXIgdGhvdWdodCBvbiB0aGF0PwoKSW4gc2Vjb25kIHRo
b3VnaHQsIHdlIHNob3VsZCBkbyB0aGF0IGZvciBzb2Z0SVJRIGFzIHdlbGwuIEFsc28sIHdlIG1h
eQp3YW50IHRvIGFsc28gY2hlY2sgaWYgaXJxc19kaXNhYmxlZCgpIGlzIHRydWUgYXMgd2VsbCBi
eSBjYWxscyBsaWtlCnNwaW5fbG9ja19pcnEoKSBvciBzcGluX2xvY2tfaXJxc2F2ZSgpLsKgIFdl
IGRvIG5vdCB3YW50IHRvIHVubmVjZXNzYXJpbHkKcHJvbG9uZyB0aGUgaXJxIG9mZiBwZXJpb2Qu
CgpDaGVlcnMsCkxvbmdtYW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
