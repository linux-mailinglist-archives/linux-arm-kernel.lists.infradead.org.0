Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C551E5797
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 08:34:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEdgS8Kep8Rb9eZcbkJaKAhVYOFhYLCaYAX/zkGLO1w=; b=WKV+UeW2MdAp8j
	pFuexzuBSc/B/n22yhJuIYFjEI70DyxGqco4k7c59X5e6d0CI7VAXiqRRsDs1I+OjHAUMdfYIG6TU
	aV26gwpARGh5CNNbOs0m2B5GBRtlydi+XH1/rlyALbDDhmTie7P0LV7eP6o356XRNdVwe/5jE81B0
	FR5XNJbXR6C3+3UEJ1wrYZDGWvHE6S6O9OHIaPFnD1gd+mmafLKWBANHQy1Y8MfUlCf4bpSQcJ7J1
	kAw39nkSO0S32Conh79DgrBEQzjqksEas0IHOxJYp1UMjvh1r9NYyNp1Q6E3+TKeos0dq3zoQAsB/
	s/FIbrp0DYP1DJBN+fjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeC7i-0004dL-89; Thu, 28 May 2020 06:34:38 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeC7T-0004cQ-F9
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 06:34:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590647661;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=A0TbfU1Wtk9UqNPHb2mnR7GHgRz5NlicH2MG30iIhdQ=;
 b=VsV0QST905S4tMvkjo0SHOkTplx3OIbLeSeuZraqEAfr0gVBasVA1Po4REFa/j3BjWIk+4
 iD9t9SYvhdbaPRoKV6DMUnfdUmUStpz29LMW0V81yf6A0YCtBWi8Y4zymnQ/obo3V73LbP
 VO4CIMLSQfvfmhAgayeGWXSuUyqFtOk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-337-V0gHZIGzPNaVCuaWjLDYHA-1; Thu, 28 May 2020 02:34:16 -0400
X-MC-Unique: V0gHZIGzPNaVCuaWjLDYHA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9313E1005510;
 Thu, 28 May 2020 06:34:14 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-130.bne.redhat.com
 [10.64.54.130])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 048385C1B0;
 Thu, 28 May 2020 06:34:07 +0000 (UTC)
Subject: Re: [PATCH RFCv2 3/9] kvm/arm64: Rename kvm_vcpu_get_hsr() to
 kvm_vcpu_get_esr()
To: Marc Zyngier <maz@kernel.org>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-4-gshan@redhat.com>
 <20200526104249.GB1363@C02TD0UTHF1T.local>
 <2e4dd03f-656a-c32b-5e87-ca28583999ef@redhat.com>
 <359dad5546a428ea963781f2728e70bf@kernel.org>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <e71af813-7f72-9d2e-2419-f4e03cf35369@redhat.com>
Date: Thu, 28 May 2020 16:34:05 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <359dad5546a428ea963781f2728e70bf@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_233423_586139_7D1AB62C 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, aarcange@redhat.com,
 drjones@redhat.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com, james.morse@arm.com,
 shan.gavin@gmail.com, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8yNy8yMCA1OjIwIFBNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gT24gMjAyMC0wNS0yNyAw
Mzo0MywgR2F2aW4gU2hhbiB3cm90ZToKPj4gSGkgTWFyaywKPj4KPj4gT24gNS8yNi8yMCA4OjQy
IFBNLCBNYXJrIFJ1dGxhbmQgd3JvdGU6Cj4+PiBPbiBGcmksIE1heSAwOCwgMjAyMCBhdCAwMToy
OToxM1BNICsxMDAwLCBHYXZpbiBTaGFuIHdyb3RlOgo+Pj4+IFNpbmNlIGt2bS9hcm0zMiB3YXMg
cmVtb3ZlZCwgdGhpcyByZW5hbWVzIGt2bV92Y3B1X2dldF9oc3IoKSB0bwo+Pj4+IGt2bV92Y3B1
X2dldF9lc3IoKSB0byBpdCBhIGJpdCBtb3JlIHNlbGYtZXhwbGFpbmluZyBiZWNhdXNlIHRoZQo+
Pj4+IGZ1bmN0aW9ucyByZXR1cm5zIEVTUiBpbnN0ZWFkIG9mIEhTUiBvbiBhYXJjaDY0LiBUaGlz
IHNob3VsZG4ndAo+Pj4+IGNhdXNlIGFueSBmdW5jdGlvbmFsIGNoYW5nZXMuCj4+Pj4KPj4+PiBT
aWduZWQtb2ZmLWJ5OiBHYXZpbiBTaGFuIDxnc2hhbkByZWRoYXQuY29tPgo+Pj4KPj4+IEkgdGhp
bmsgdGhhdCB0aGlzIHdvdWxkIGJlIGEgbmljZSBjbGVhbnVwIG9uIGl0cyBvd24sIGFuZCBjb3Vs
ZCBiZSB0YWtlbgo+Pj4gaW5kZXBlbmRlbnRseSBvZiB0aGUgcmVzdCBvZiB0aGlzIHNlcmllcyBp
ZiBpdCB3ZXJlIHJlYmFzZWQgYW5kIHNlbnQgYXMKPj4+IGEgc2luZ2xlIHBhdGNoLgo+Pj4KPj4K
Pj4gWWVhaCwgSSdsbCBzZWUgaG93IFBBVENIWzMsNCw1XSBjYW4gYmUgcG9zdGVkIGluZGVwZW5k
ZW50bHkKPj4gYXMgcGFydCBvZiB0aGUgcHJlcGFyYXRvcnkgd29yaywgd2hpY2ggaXMgc3VnZ2Vz
dGVkIGJ5IHlvdQo+PiBpbiBhbm90aGVyIHJlcGx5Lgo+Pgo+PiBCeSB0aGUgd2F5LCBJIGFzc3Vt
ZSB0aGUgY2xlYW51cCBwYXRjaGVzIGFyZSBnb29kIGVub3VnaCB0bwo+PiB0YXJnZXQgNS44LnJj
MS9yYzIgaWYgeW91IGFncmVlLgo+IAo+IEl0J3MgZmluZSB0byBiYXNlIHRoZW0gb24gLXJjMSBv
ciAtcmMyLiBUaGV5IHdpbGwgbm90IGJlIG1lcmdlZAo+IGJlZm9yZSA1LjkgdGhvdWdoLgo+IAo+
IFRoYW5rcywKPiAKPiAgwqDCoMKgwqDCoMKgwqAgTS4KClN1cmUsIFRoYW5rcywgTWFyYyEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
