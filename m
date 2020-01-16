Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A62713DEDD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 16:34:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ou+XR3cqeHoC5KI+bvvzq7JMP7uix6ZO3b03Xtgc+Uw=; b=c7bAe1CqQimrOGHuPHaFGqPp3
	AfbgZFLbO8aokB6deGWwmQmts8OM4M8DHF97YIfwWRZd1ib4jTNPNzKR4/OllzZjVVxa1UZkIwMdt
	FAjjCxmcOiAqoF7YiqfJ96NOn5qwSB1Yswf37TA7D5qJ206W1/ITB3l++KSAhG6hAdCeASTfWtomX
	epm3BOu+vzqrpQrzZjdOhswhPfmTMAm8a5Mh67lpaK5VXwKhaAdxWq0NXIJ/qanXFq5Yw9oifprua
	0yg+IKJ1SJ/Ag4i+faJD0GBHmh/1rusL0drDh3vBIDthJ+eO0H+k0/27epRX63WGC5pK3bzPo0EqJ
	W/MNPntgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7A0-0006kN-Pb; Thu, 16 Jan 2020 15:34:16 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is79q-0006ju-Mp
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 15:34:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579188844;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2Till62eAFb1bufZiPPW+H8FL09kvMk7/Y+jfeSLdUI=;
 b=Uv+E6IfI682aI9DYtUddqAbBnf0tuzL4eE5dhDy3xNUm8hZgFHCU8DEf/oyQMyCvlFTqO+
 b5Xd34QCLeXuoNcIO6aFROo8XuH09xBzGp9GXzWh0Eu5qkYL2vN6mm2BYTNJeCnhxZOrWO
 dQjZPEI3vtfX/R2bAXAmclTeV2Mv6UE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-11-9nK9QWudPFqTbhLTgDI9vw-1; Thu, 16 Jan 2020 10:31:50 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2F88B18A6EC0;
 Thu, 16 Jan 2020 15:31:49 +0000 (UTC)
Received: from jracek.brq.csb (ovpn-205-211.brq.redhat.com [10.40.205.211])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A29A97DB4F;
 Thu, 16 Jan 2020 15:31:43 +0000 (UTC)
Date: Thu, 16 Jan 2020 16:31:40 +0100
From: Jakub Racek <jracek@redhat.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: =?utf-8?B?4p2MIEZBSUw=?= =?utf-8?Q?=3A?= Test report for kernel
 5.5.0-rc6-40f39e8.cki (arm-next)
Message-ID: <20200116153140.gj7mgtq2jibutyuc@jracek.brq.csb>
X-OS: Linux jracek.brq.csb 4.18.0-147.3.1.el8_1.x86_64 x86_64
References: <cki.1A6A8CC1CF.1989HWSEIM@redhat.com>
 <CAKv+Gu-CEGOdTvektx_pqD=WqUXFi3YKXmj=pka5CiHc-6dCSQ@mail.gmail.com>
 <1309735432.2414024.1579184089001.JavaMail.zimbra@redhat.com>
 <CAKv+Gu_Q5tpf1UakSHuDKq7_3BgMavpwucK6cz_k=VcDD0y8dw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu_Q5tpf1UakSHuDKq7_3BgMavpwucK6cz_k=VcDD0y8dw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: 9nK9QWudPFqTbhLTgDI9vw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_073406_820922_DDE6C570 
X-CRM114-Status: GOOD (  23.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jianwen Ji <jiji@redhat.com>, Veronika Kabatova <vkabatov@redhat.com>,
 Hangbin Liu <haliu@redhat.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Jianlin Shi <jishi@redhat.com>, CKI Project <cki-project@redhat.com>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJkLAorKysgQXJkIEJpZXNoZXV2ZWwgWzE2LzAxLzIwIDE1OjI3ICswMTAwXToKPjQwMTcw
NTkgV2FybiBSdW5uaW5nIGNraUBnaXRsYWI6Mzg1Mjc0IDUuNS4wLXJjNi00MGYzOWU4LmNraUBh
cm0gYWFyY2g2NAo+Cj5PbiBUaHUsIDE2IEphbiAyMDIwIGF0IDE1OjE0LCBWZXJvbmlrYSBLYWJh
dG92YSA8dmthYmF0b3ZAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Cj4+IC0tLS0tIE9yaWdpbmFsIE1l
c3NhZ2UgLS0tLS0KPj4KPj4gPiBGcm9tOiAiQXJkIEJpZXNoZXV2ZWwiIDxhcmQuYmllc2hldXZl
bEBsaW5hcm8ub3JnPgo+PiA+IFRvOiAiQ0tJIFByb2plY3QiIDxja2ktcHJvamVjdEByZWRoYXQu
Y29tPgo+PiA+IENjOiAiSmlhbndlbiBKaSIgPGppamlAcmVkaGF0LmNvbT4sICJIYW5nYmluIExp
dSIgPGhhbGl1QHJlZGhhdC5jb20+LAo+PiA+ICJDYXRhbGluIE1hcmluYXMiIDxjYXRhbGluLm1h
cmluYXNAYXJtLmNvbT4sICJKaWFubGluIFNoaSIKPj4gPiA8amlzaGlAcmVkaGF0LmNvbT4sICJX
aWxsIERlYWNvbiIgPHdpbGxAa2VybmVsLm9yZz4sICJsaW51eC1hcm0ta2VybmVsIgo+PiA+IDxs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc+Cj4+ID4gU2VudDogVGh1cnNkYXks
IEphbnVhcnkgMTYsIDIwMjAgMjozMDowNiBQTQo+PiA+IFN1YmplY3Q6IFJlOiDinYwgRkFJTDog
VGVzdCByZXBvcnQgZm9yIGtlcm5lbCA1LjUuMC1yYzYtNDBmMzllOC5ja2kgKGFybS1uZXh0KQo+
Pgo+PiA+IE9uIFRodSwgMTYgSmFuIDIwMjAgYXQgMTQ6MjAsIENLSSBQcm9qZWN0IDwgY2tpLXBy
b2plY3RAcmVkaGF0LmNvbSA+IHdyb3RlOgo+Pgo+PiA+ID4gSGVsbG8sCj4+ID4KPj4KPj4gPiA+
IFdlIHJhbiBhdXRvbWF0ZWQgdGVzdHMgb24gYSByZWNlbnQgY29tbWl0IGZyb20gdGhpcyBrZXJu
ZWwgdHJlZToKPj4gPgo+Pgo+PiA+ID4gS2VybmVsIHJlcG86IGdpdDovLyBnaXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYXJtNjQvbGludXguZ2l0Cj4+ID4KPj4gPiA+IENv
bW1pdDogNDBmMzllODM3MmZlIC0gTWVyZ2UgYnJhbmNoICdmb3ItbmV4dC9jb3JlJyBpbnRvIGZv
ci1rZXJuZWxjaQo+PiA+Cj4+Cj4+ID4gPiBUaGUgcmVzdWx0cyBvZiB0aGVzZSBhdXRvbWF0ZWQg
dGVzdHMgYXJlIHByb3ZpZGVkIGJlbG93Lgo+PiA+Cj4+Cj4+ID4gPiBPdmVyYWxsIHJlc3VsdDog
RkFJTEVEIChzZWUgZGV0YWlscyBiZWxvdykKPj4gPgo+PiA+ID4gTWVyZ2U6IE9LCj4+ID4KPj4g
PiA+IENvbXBpbGU6IE9LCj4+ID4KPj4gPiA+IFRlc3RzOiBGQUlMRUQKPj4gPgo+Pgo+PiA+ID4g
QWxsIGtlcm5lbCBiaW5hcmllcywgY29uZmlnIGZpbGVzLCBhbmQgbG9ncyBhcmUgYXZhaWxhYmxl
IGZvciBkb3dubG9hZAo+PiA+ID4gaGVyZToKPj4gPgo+Pgo+PiA+ID4gaHR0cHM6Ly9hcnRpZmFj
dHMuY2tpLXByb2plY3Qub3JnL3BpcGVsaW5lcy8zODUyNzQKPj4gPgo+Pgo+PiA+ID4gT25lIG9y
IG1vcmUga2VybmVsIHRlc3RzIGZhaWxlZDoKPj4gPgo+Pgo+PiA+ID4gYWFyY2g2NDoKPj4gPgo+
PiA+ID4g4p2MIE5ldHdvcmtpbmcgdHVubmVsOiBncmUgYmFzaWMKPj4gPgo+PiA+ID4g4p2MIE5l
dHdvcmtpbmcgdHVubmVsOiB2eGxhbiBiYXNpYwo+PiA+Cj4+Cj4+ID4gPiBXZSBob3BlIHRoYXQg
dGhlc2UgbG9ncyBjYW4gaGVscCB5b3UgZmluZCB0aGUgcHJvYmxlbSBxdWlja2x5LiBGb3IgdGhl
IGZ1bGwKPj4gPgo+PiA+ID4gZGV0YWlsIG9uIG91ciB0ZXN0aW5nIHByb2NlZHVyZXMsIHBsZWFz
ZSBzY3JvbGwgdG8gdGhlIGJvdHRvbSBvZiB0aGlzCj4+ID4gPiBtZXNzYWdlLgo+PiA+Cj4+Cj4+
ID4gPiBQbGVhc2UgcmVwbHkgdG8gdGhpcyBlbWFpbCBpZiB5b3UgaGF2ZSBhbnkgcXVlc3Rpb25z
IGFib3V0IHRoZSB0ZXN0cyB0aGF0Cj4+ID4gPiB3ZQo+PiA+Cj4+ID4gPiByYW4gb3IgaWYgeW91
IGhhdmUgYW55IHN1Z2dlc3Rpb25zIG9uIGhvdyB0byBtYWtlIGZ1dHVyZSB0ZXN0cyBtb3JlCj4+
ID4gPiBlZmZlY3RpdmUuCj4+ID4KPj4KPj4gPiBNYXkgSSBraW5kbHkgc3VnZ2VzdCB0aGF0IHlv
dSBzdG9wIGNjJ2luZyB0aGUgbWFpbGluZyBsaXN0IG9uIGF1dG9tYXRlZCwKPj4gPiB1bm1vZGVy
YXRlZCBDSSByZXN1bHRzPwo+Pgo+PiA+IEl0J3MgZ3JlYXQgdGhhdCB5b3UgcnVuIGEgQ0kgc3lz
dGVtLCBidXQgeW91IHNob3VsZCByZWFsbHkgaGF2ZSB0aGUgbWluaW1hbAo+PiA+IGNvdXJ0ZXN5
IHRvIGRvdWJsZSBjaGVjayBmYWlsdXJlIHJlcG9ydHMgYmVmb3JlIHNlbmRpbmcgdGhlbSBvdXQg
aW50byB0aGUKPj4gPiB3b3JsZC4KPj4KPj4gSGkgQXJkLAo+Pgo+PiB3ZSBhcmUgc29ycnkgYWJv
dXQgdGhhdC4gVGhlIHRlc3RpbmcgYW5kIGVtYWlscyB0byB0aGUgbGlzdCB3ZXJlIHJlcXVlc3Rl
ZAo+PiBieSBXaWxsIGEgd2hpbGUgYWdvLiBJZiBoZSBvciBDYXRhbGluIGNoYW5nZSB0aGVpciBt
aW5kcyBhYm91dCB0aGVtIHdlIHdpbGwKPj4gc3RvcCBzZW5kaW5nIHRoZW0sIGluIHRoZSBtZWFu
d2hpbGUgeW91IGNhbiBhbHdheXMgc2V0IHVwIGEgZmlsdGVyLgo+Pgo+Cj5GYWlyIGVub3VnaC4g
SSB3YXNuJ3QgYXdhcmUgdGhhdCB0aGV5IGV4cGxpY2l0bHkgYXNrZWQgeW91IHRvIGNjIHRoZQo+
bWFpbGluZyBsaXN0IG9uIHRoZXNlIGVtYWlscy4KPgo+PiBXZSBhcmUgbm90IHBhaWQgYnkgQVJN
IHNvIHRoZSB0ZXN0aW5nIGlzIGEgInN0cml2ZSBmb3IgdGhlIGJlc3QiIGVmZm9ydCwKPj4gYXMg
d2UgaGF2ZSBhIGJ1bmNoIG9mIEFSTSBtYWNoaW5lcyB3ZSdyZSB3aWxsaW5nIHRvIGxlbmQgdG8g
Y29tbXVuaXR5IGZvcgo+PiBleHRyYSBjb3ZlcmFnZS4gV2UgYWx3YXlzIGNjIHRoZSB0ZXN0IG1h
aW50YWluZXJzIGFuZCBhbHNvIHVzIHRvIHRha2UgYQo+PiBsb29rIGF0IHRoZSBpc3N1ZXMgaWYg
dGhleSBkbyBvY2N1ci4gQXMgUmFjaGVsIG1lbnRpb25lZCwgd2UgYWxyZWFkeSBwdXQKPj4gYSB3
b3JrYXJvdW5kIGluIHBsYWNlIHRvIHByZXZlbnQgdGhlc2UgaXNzdWVzIGZyb20gaGFwcGVuaW5n
IGZ1cnRoZXIgc28KPj4gaG9wZWZ1bGx5IHlvdSB3b24ndCBnZXQgbW9yZSBlbWFpbHMgYmVjYXVz
ZSBvZiB0aGVzZSBCZWFrZXIgYnVncy4KPj4KPgo+SSBkbyBhcHByZWNpYXRlIHRoZSB0ZXN0aW5n
IGVmZm9ydCwgaXQganVzdCBzZWVtcyB0byBiZSBhIHdhc3RlIG9mIG5vdAo+anVzdCB5b3VyIHRp
bWUgdG8gc2VuZCBvdXQgaGFsZiBiYWtlZCBmYWxzZSBwb3NpdGl2ZSByZXBvcnRzIHRvIHN1Y2gg
YQo+d2lkZSBhdWRpZW5jZS4KCkFzIG1lbnRpb25lZCBhYm92ZSwgd2Ugd2VyZSBhc2tlZCB0byBz
ZW5kIHRoZXNlIHJlcG9ydHMsIGJlY2F1c2Ugd2UndmUgY2F1Z2h0CmJ1Z3MgaW4gdGhlIGtlcm5l
bCBiZWZvcmUuIEkgaG9uZXN0bHkgYmVsaWV2ZSB3ZSBjYW4gZG8gYSBsb3Qgb2YgZ29vZCwKZXNw
ZWNpYWxseSBpZiB3ZSBjb250aW51ZSB3b3JraW5nIHdpdGggdGhlIGNvbW11bml0eSBhbmQgb3Bl
bnNvdXJjaW5nCm91ciB3b3JrIGZvciBldmVyeW9uZSdzIGJlbmVmaXQuCgpJIGRvbid0IHJlY2Fs
bCBhbnkgY29tcGxhaW50cyBmb3IgcXVpdGUgc29tZSB0aW1lLCBzbyBJIGRvbid0IHRoaW5rIGl0
J3MgZmFpcgp0byBjYWxsIGl0IGhhbGYtYmFrZWQgYmVjYXVzZSBhIGZhbHNlIHBvc2l0aXZlIHdh
cyBzZW50LgpJIHRoaW5rIHRoYXQganVzdCBzd2F5cyBoZWFydHMgYW5kIG1pbmRzIG9mIHBlb3Bs
ZSBpbiB0aGUgd3Jvbmcgd2F5IGFuZCAKcHJldmVudHMgY29vcGVyYXRpb24uIERvZXMgdGhhdCBt
YWtlIHNlbnNlPwoKU29ycnksIGJ1dCBhcyBvbmUgb2YgdGhlIHBlb3BsZSB3b3JraW5nIG9uIHRo
ZSBwcm9qZWN0LCBJIGZlZWwgdGhlCm5lZWQgdG8gc3RlcCBvdXQgYXMgd2VsbCBhbmQgbWFrZSBh
IGNvbW1lbnQuCgpCZXN0IHJlZ2FyZHMsCkpha3ViCj4KPgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
