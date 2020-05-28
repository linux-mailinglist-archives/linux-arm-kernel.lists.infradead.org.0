Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8CF1E6FE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 01:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vs2vpY4o4+Kz6iO9SUJTlAE8TRkMCvZFb9oJ4xNIx10=; b=EIDgsVJDCQbVKq
	2LzU8Mdv/d8TyZ6z/i9qwjTTr3EVvckrOD3cFLXjkAhcBCh3NigTNBFNrcWWjpbFm7rcNX5VpR4RL
	iKzK5c9lr+af2MBO4RtbQY1qb8QWJ2uTsXNvC2W/bNVo1F8LpzOVk+lopKivLM8ovmn8aW0BiNxeB
	DQ7O8ze47fRT6oaeW+W4lewImq/16/9gHGUELbSWF0Iq2AUBkLjYTS9e5O988jGHGc9ipGlOxIoW5
	mtybk6B6d1+pF3Dg9AV1BjJvU7fLjYxBioyC4Lhua2EOEGEVlncFH2n/bhvuLJIg5XgkGtXv2Qiin
	G4aj5SgSsbTDHeV+MJ3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeRYV-0005MN-Iu; Thu, 28 May 2020 23:03:19 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeRYO-0005Lr-7l
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 23:03:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590706990;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qUIox5FhQJ2z08jhZB7sfNniyrJZwWCLCZ4Ajtdwh7I=;
 b=KbvJi97G0mAEKEK9mXcnqTYPiXH/5BFY7FE8720lC3/HlqMkiKeWaH/yDT1jO4mC0FcxUv
 15B5jDxDVW39ZJOrAquu4DA1bVydrnwhZxjkS7j23/fRVfwY2Ij4OxExESHLK414wnBlqO
 ViXuznoBGuOEnwEeo7lsbuV07g3B4gU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-286-9_wHkkfkNRKqvFNP88Dgeg-1; Thu, 28 May 2020 19:03:06 -0400
X-MC-Unique: 9_wHkkfkNRKqvFNP88Dgeg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CCE351005510;
 Thu, 28 May 2020 23:03:04 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-130.bne.redhat.com
 [10.64.54.130])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 421C860C80;
 Thu, 28 May 2020 23:03:01 +0000 (UTC)
Subject: Re: [PATCH RFCv2 9/9] arm64: Support async page fault
To: Paolo Bonzini <pbonzini@redhat.com>, kvmarm@lists.cs.columbia.edu
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-10-gshan@redhat.com>
 <81adf013-3de7-23e6-7648-8aec821b033c@redhat.com>
 <a6addc25-29af-3690-8392-efa5e8381e98@redhat.com>
 <8ab64c6a-582b-691d-79ab-21cdc0455cd3@redhat.com>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <6a4a82a4-af01-98c2-c854-9199f55f7bd3@redhat.com>
Date: Fri, 29 May 2020 09:02:58 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <8ab64c6a-582b-691d-79ab-21cdc0455cd3@redhat.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_160312_351666_BD1AE7F8 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: maz@kernel.org, linux-kernel@vger.kernel.org, shan.gavin@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGFvbG8sCgpPbiA1LzI4LzIwIDg6NDggUE0sIFBhb2xvIEJvbnppbmkgd3JvdGU6Cj4gT24g
MjgvMDUvMjAgMDg6MTQsIEdhdmluIFNoYW4gd3JvdGU6Cj4+PiAtIGZvciB4ODYgd2UncmUgYWxz
byB0aGlua2luZyBvZiBpbml0aWF0aW5nIHRoZSBwYWdlIGZhdWx0IGZyb20gdGhlCj4+PiBleGNl
cHRpb24gaGFuZGxlciwgcmF0aGVyIHRoYW4gZG9pbmcgc28gZnJvbSB0aGUgaHlwZXJ2aXNvciBi
ZWZvcmUKPj4+IGluamVjdGluZyB0aGUgZXhjZXB0aW9uLsKgIElmIEFSTSBsZWFkcyB0aGUgd2F5
IGhlcmUsIHdlIHdvdWxkIGRvIG91cgo+Pj4gYmVzdCB0byBzaGFyZSBjb2RlIHdoZW4geDg2IGRv
ZXMgdGhlIHNhbWUuCj4+Cj4+IFNvcnJ5LCBQYW9sbywgSSBkb24ndCBmb2xsb3cgeW91ciBpZGVh
IGhlcmUuIENvdWxkIHlvdSBwbGVhc2UgcHJvdmlkZQo+PiBtb3JlIGRldGFpbHM/Cj4gCj4gVGhl
IGlkZWEgaXMgdG8gaW5qZWN0IHN0YWdlMiBwYWdlIGZhdWx0cyBpbnRvIHRoZSBndWVzdCBldmVu
IGJlZm9yZSB0aGUKPiBob3N0IHN0YXJ0cyBwb3B1bGF0ZXMgdGhlIHBhZ2UuICBUaGUgZ3Vlc3Qg
dGhlbiBpbnZva2VzIGEgaHlwZXJjYWxsLAo+IHRlbGxpbmcgdGhlIGhvc3QgdG8gcG9wdWxhdGUg
dGhlIHBhZ2UgdGFibGUgYW5kIGluamVjdCB0aGUgJ3BhZ2UgcmVhZHknCj4gZXZlbnQgKGludGVy
cnVwdCkgd2hlbiBpdCdzIGRvbmUuCj4gCj4gRm9yIHg4NiB0aGUgYWR2YW50YWdlIGlzIHRoYXQg
dGhlIHByb2Nlc3NvciBjYW4gdGFrZSBjYXJlIG9mIHJhaXNpbmcgdGhlCj4gc3RhZ2UyIHBhZ2Ug
ZmF1bHQgaW4gdGhlIGd1ZXN0LCBzbyBpdCdzIGZhc3Rlci4KPiAKSSB0aGluayB0aGVyZSBtaWdo
dCBiZSB0b28gbXVjaCBvdmVyaGVhZCBpZiB0aGUgcGFnZSBjYW4gYmUgcG9wdWxhdGVkCnF1aWNr
bHkgYnkgaG9zdC4gRm9yIGV4YW1wbGUsIGl0J3MgZmFzdCB0byBwb3B1bGF0ZSB0aGUgcGFnZXMg
aWYgc3dhcGluCmlzbid0IGludm9sdmVkLgoKSWYgSSdtIGNvcnJlY3QgZW5vdWdoLCBpdCBzZWVt
cyBhcm02NCBkb2Vzbid0IGhhdmUgc2ltaWxhciBtZWNoYW5pc20sCnJvdXRpbmcgc3RhZ2UyIHBh
Z2UgZmF1bHQgdG8gZ3Vlc3QuCgpUaGFua3MsCkdhdmluCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
