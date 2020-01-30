Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0520914DE93
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 17:12:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HjpCJM619ZStBOnQ3kOMaE2jOpLs/cZVJOkSj9RST6A=; b=sHM09Aa8zhOD2B
	730iRu4douTgMt23PeDihUlQKSafKt1J8fFvxVqg0BNCeBOqdyIqhJWA7DmVqNe+9YnBaGyNt019B
	X3W8i51XBuaVVLU7CsgZ7V9zLpMJpWkH0hJgM6Lt1LgBkv89Sut65TZYTfYixHcj+G2paKex6UZfY
	DL4geQ5sYjx6kACeeJhQ2vE5H8cMbW2xdjH6bCL/560US2WheASfRTYORibZ3yQG5Sf/Z3ZClyceO
	Arjnwi04GISB+TKLwqoL3TeIXIr2jpdju2c4qxqvLi6DIhpugn531KK27ee72hhrutOsUT3JI313w
	0tauf9X9wqLvxaFUZGng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixCQK-00044t-5N; Thu, 30 Jan 2020 16:12:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixCQC-00042r-Bf
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 16:12:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F92931B;
 Thu, 30 Jan 2020 08:11:59 -0800 (PST)
Received: from [10.1.194.46] (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B92C03F67D;
 Thu, 30 Jan 2020 08:11:57 -0800 (PST)
Subject: Re: [PATCH v2 6/6] arm64: use activity monitors for frequency
 invariance
To: Ionela Voinescu <ionela.voinescu@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-7-ionela.voinescu@arm.com>
 <96fdead6-9896-5695-6744-413300d424f5@arm.com>
 <3ed9af08-82ef-e30c-b1ec-3a1dac0d2091@arm.com>
 <20200130154923.GB5208@arm.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <ec71a41d-5274-c29c-a391-4ed92839d58f@arm.com>
Date: Thu, 30 Jan 2020 16:11:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200130154923.GB5208@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_081200_436052_A34236C2 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 sudeep.holla@arm.com, will@kernel.org, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzAvMDEvMjAyMCAxNTo0OSwgSW9uZWxhIFZvaW5lc2N1IHdyb3RlOgo+IE9rYXksIEknbGwg
YWRkIHRoaXMgYXMgYSBzZXBhcmF0ZSBwYXRjaCB0byB0aGUgc2VyaWVzIGFuZCBwdXQgeW91IGFz
Cj4gYXV0aG9yLiBUaGF0IGlzIGlmIHlvdSB3YW50IG1lIHRvIHRpZSB0aGlzIGNoZWNrIHRvIHRo
aXMgdXNlY2FzZSB0aGF0Cj4gcHJvdmVzIGl0cyB1c2VmdWxuZXNzLiBPdGhlcndpc2UgaXQgY2Fu
IHN0YW5kIG9uIGl0cyBvd24gYXMgd2VsbCBpZgo+IHlvdSB3YW50IHRvIHN1Ym1pdCBpdCBzZXBh
cmF0ZWx5Lgo+IAoKSXQncyBwcmV0dHkgbXVjaCBzdGFuZGFsb25lLCBidXQgaXQgZG9lcyBtYWtl
IHNlbnNlIHRvIGJ1bmRsZSBpdCB3aXRoIHRoaXMKc2VyaWVzLCBJIHRoaW5rLiBGZWVsIGZyZWUg
dG8gZ3JhYiBvd25lcnNoaXAgKEkgZGlkbid0IHRlc3QgaXQpIDspCgo+IEluIHJlZ2FyZHMgdG8g
dGhlIHJhdGlvIGNvbXB1dGF0aW9uIGZvciBmcmVxdWVuY3kgaW52YXJpYW5jZSB3aGVyZSB0aGlz
Cj4gcGxheXMgYSByb2xlLCBJJ2xsIGRvIGEgY2hlY2sgYW5kIGJhaWwgb3V0IGlmIHRoZSByYXRp
byBpcyAwLCB3aGljaCBJJ20KPiBhc2hhbWVkIHRvIG5vdCBoYXZlIGFkZGVkIGJlZm9yZSA6KS4K
ClRoYXQgZG9lcyBzb3VuZCBsaWtlIHNvbWV0aGluZyB3ZSB2ZXJ5IG11Y2ggd2FudCB0byBoYXZl
LgoKPiAKPiBUaGFua3MsCj4gSW9uZWxhLgo+IAo+IAo+Pj4gTG9uZyBzdG9yeSBzaG9ydCwgd2Un
cmUgcHJvYmFibHkgZmluZSwgYnV0IGl0IHdvdWxkIG5pY2UgdG8gc2hvdmUgc29tZSBvZgo+Pj4g
dGhlIGFib3ZlIGludG8gY29tbWVudHMgKGVzcGVjaWFsbHkgdGhlIFNDSEVEX0NBUEFDSVRZX1ND
QUxFwrIgdHJpY2spCj4+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
