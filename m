Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFBB148FF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 22:12:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0fv2Nc1jlzoj2likOfHzewFug3IuNfadYH8yPV080Y=; b=TjfITF6HJoVnP/
	7389CQSx+wQmjzY/5/0HpUNSIFxWrtTsUa4M5p8e+50M2qBgKDBmF5FGt3e7jUleb5m25bBJVGlGP
	gqvk0I+z09aVNPxkNUHeMk7//TES1YPaTvRGZUaZfBPepIef68bUN1MQdg3KSFPTYux3vRW+pyAUI
	BP3rC0uC6h6teAC5GJh+TalsEdcvesCakofSfi7RdblXCv3NN7NDb0czBr30BMRCCq7sAjBOil+9b
	VvGNyJ3M4C902g4zpexZDgVNZG8YnYTw3F3974Q7nbbdvs6pxLaJR+TJvr3Lc+G1CTakrhxyCCr9P
	Hnb7/xe9iXts2h1QfheQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv6G4-0002HR-WF; Fri, 24 Jan 2020 21:12:53 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv6Fr-0002Gj-TQ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 21:12:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579900358;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=r88FQ3jP4tbWAociS00rg3LER5v2m7ImuFP1hdddwiI=;
 b=TpreftUCD3uizI+jCLf1xOu0rNr0HsGT03oP6u86rITfZ/UDAK7rXhr9AThvG8KMHX6nue
 ONGzsYzqcW/0Ug7ATRrxriWMA/o7U1kfLgrDfIUqXPOO3lY6KLMIIF1iXe7SD/Tm3WFl92
 ClyD2W0EKH+ym3Yn0Yo0erocG1d2ejA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-195-ZycLx2YZN7We8FdE4kvvzg-1; Fri, 24 Jan 2020 16:12:35 -0500
X-MC-Unique: ZycLx2YZN7We8FdE4kvvzg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B89218017CC;
 Fri, 24 Jan 2020 21:12:32 +0000 (UTC)
Received: from llong.remote.csb (ovpn-124-92.rdu2.redhat.com [10.10.124.92])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E6C20859AA;
 Fri, 24 Jan 2020 21:12:29 +0000 (UTC)
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
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <edc53126-bfe4-5102-d2eb-2332bf3a68e5@redhat.com>
Date: Fri, 24 Jan 2020 16:12:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <693E6287-E37C-4C5D-BE33-B3D813BE505D@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_131240_248166_0E902FE0 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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

T24gMS8yNC8yMCAzOjA5IFBNLCBBbGV4IEtvZ2FuIHdyb3RlOgo+Pj4gV2UgYWxzbyBwcm9iYWJs
eSBkbyBub3Qgd2FudCB0aG9zZSDigJxwcmlvcml0aXplZOKAnSB0aHJlYWRzIHRvIGRpc3J1cHQK
Pj4+IG5vcm1hbAo+Pj4gQ05BIG9wZXJhdGlvbi4gRS5nLiwgaWYgdGhlIG1haW4gcXVldWUgbG9v
a3MgbGlrZSBUMV8xLCBQMl8xLCBUMV8yLAo+Pj4g4oCmLCB3aGVyZQo+Pj4gVDFfeCBpcyBhIHRo
cmVhZCBydW5uaW5nIG9uIG5vZGUgMSBhbmQgUDJfMSBpcyBhIHByaW9yaXRpemVkIHRocmVhZAo+
Pj4gcnVubmluZwo+Pj4gb24gbm9kZSAyLCB3ZSB3YW50IHRvIHBhc3MgdGhlIGxvY2sgZnJvbSBU
MV8xIHRvIFAyXzEgYW5kIHRoZW4gdG8gVDFfMgo+Pj4gKHJhdGhlciB0aGFuIGhhdmUgUDJfMSB0
byBzY2FuIGZvciBhbm90aGVyIHRocmVhZCBvbiBub2RlIDIpLgo+Pj4KPj4+IFRoZXJlIGlzIGEg
d2F5IHRvIGFjaGlldmUgdGhhdCDigJQgd2hlbiB3ZSBwYXNzIHRoZSBsb2NrIHRvIFAyXzEsCj4+
PiB3ZSBjYW4gc2V0IGl0cyBudW1hIG5vZGUgZmllbGQgdG8gMS4gVGhpcyBtZWFucyB0aGF0IHdl
IG5lZWQgdG8KPj4+IHJlc2V0IHRoZSBudW1hCj4+PiBub2RlIGZpZWxkIGluIGNuYV9pbml0X25v
ZGUoKSwgYnV0IEFGQUlDVCB0aGlzIGlzIHJlbGF0aXZlbHkgY2hlYXAuCj4+PiBUaGUgcmVzdAo+
Pj4gb2YgdGhlIENOQSBsb2dpYyBzaG91bGQgbm90IGNoYW5nZS4KPj4KPj4gSSB3b24ndCByZWNv
bW1lbmQgZG9pbmcgdGhhdC4gSWYgdGhlIGxvY2sgY2FjaGVsaW5lIGhhcyBiZWVuIG1vdmVkCj4+
IGZyb20gbm9kZSAxIHRvIDIsIEkgd2lsbCBzYXkgaXQgaXMgYmV0dGVyIHRvIHN0aWNrIHdpdGgg
bm9kZSAyIHJhdGhlcgo+PiB0aGFuIHN3aXRjaGluZyBiYWNrIHRvIG5vZGUgMS4gVGhhdCB3aWxs
IG1lYW4gdGhhdCB0aGUgc2Vjb25kYXJ5Cj4+IHF1ZXVlIG1heSBjb250YWluIGxvY2sgd2FpdGVy
cyBmcm9tIHRoZSBzYW1lIG5vZGVzLCBidXQgdGhleSB3aWxsCj4+IGV2ZW50dWFsbHkgYmUgZmx1
c2hlZCBiYWNrIHRvIHRoZSBwcmltYXJ5IHF1ZXVlLgo+Pgo+IFRoYXTigJlzIHJpZ2h0LCBhc3N1
bWluZyB3ZSBkbyBub3QgcmVzZXQgaW50cmFfbm9kZSBjb3VudCB3aGVuCj4gdHJhbnNmZXJyaW5n
IHRoZQo+IGxvY2sgdG8gYSBwcmlvcml0aXplZCB0aHJlYWQgZnJvbSBhbm90aGVyIG5vZGUuIE90
aGVyd2lzZSwgd2UgbWF5IHN0YXJ2ZQo+IHdhaXRlcnMgaW4gdGhlIHNlY29uZGFyeSBxdWV1ZS7C
oAo+Cj4gU3RpbGwsIHRoYXQgY2FuIG1ha2UgdGhlIGxvY2sgZXZlbiBsZXNzIGZhaXIgdG8gbm9u
LXByaW9yaXRpemVkCj4gdGhyZWFkcy4gV2hlbgo+IHlvdSBmbHVzaCB0aGUgc2Vjb25kYXJ5IHF1
ZXVlLCB0aGUgcHJlZmVyZW5jZSBtYXkgcmVtYWluIHdpdGggdGhlIHNhbWUKPiBub2RlLiBUaGlz
IHdpbGwgbm90IGhhcHBlbiBpbiB0aGUgY3VycmVudCBmb3JtIG9mIENOQSwgYXMgd2UgbmV2ZXIg
Z2V0wqAKPiB0aHJlYWRzIGZyb20gdGhlIHByZWZlcnJlZCBub2RlIGluIHRoZSBzZWNvbmRhcnkg
cXVldWUuCgpUaGF0IGlzIHRydWUuCgpIb3dldmVyLCBpdCBpcyBubyBkaWZmZXJlbnQgZnJvbSB0
aGUgY3VycmVudCBzY2hlbWUgdGhhdCBhIHdhaXRlciBmcm9tCmFub3RoZXIgbm9kZSBtYXkgaGF2
ZSB0byB3YWl0IGZvciA2NGsgb3RoZXIgd2FpdGVycyB0byBnbyBmaXJzdCBiZWZvcmUKaXQgaGFz
IGEgY2hhbmNlIHRvIGdldCBpdC4gTm93IHRoYXQgd2FpdGVyIGNhbiBiZSBmcm9tIHRoZSBzYW1l
IG5vZGUgYXMKd2VsbC4KCj4KPiBCZXNpZGVzLCBJIHRoaW5rIHRoYXQgd2lsbCBkZWNyZWFzZSB0
aGUgYmVuZWZpdCBvZiBDTkEsIGVzcGVjaWFsbHkgaWYgc3VjaAo+IHByaW9yaXRpemVkIHRocmVh
ZHMgYXJlIGZyZXF1ZW50LCBzd2l0Y2hpbmcgdGhlIHByZWZlcmVuY2UgZnJvbSBvbmUgbm9kZQo+
IHRvIGFub3RoZXIuIEJ1dCB0aGlzIGlzIHNvbWV0aGluZyBJIGNhbiBldmFsdWF0ZSwgdW5sZXNz
Cj4gdGhlcmUgaXMgc29tZSBmdW5kYW1lbnRhbCBvYmplY3Rpb24gdG8gdGhlIGlkZWEgb2YgdHdl
YWtpbmcgdGhlIG51bWEKPiBub2RlIG9mIHByaW9yaXRpemVkIHRocmVhZHMuCgpVc3VhbGx5IHRo
ZSBsb2NrcyB1c2VkIGluIGludGVycnVwdCBjb250ZXh0IGFyZSBub3QgdGhhdCBjb250ZW5kZWQg
dG8KdGhlIHBvaW50IHRoYXQgQ05BIGNhbiBraWNrIGluLiBPZiBjb3Vyc2UsIHRoZXJlIGFyZSBl
eGNlcHRpb25zIGluIHNvbWUKY2lyY3Vtc3RhbmNlcyBhbmQgd2UgZG8gbm90IHdhbnQgdG8gaW50
cm9kdWNlIGFkZGl0aW9uYWwgbGF0ZW5jeSB0bwp0aGVpciBsb2NrIHdhaXRpbmcgdGltZS4KCkNo
ZWVycywKTG9uZ21hbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
