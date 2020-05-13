Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C360F1D0F9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:22:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWX/nPD4qIV5GmnTL9kJBaEA/jx36Coa02vTbiuttXE=; b=ur9O0MwBMqB368
	o0wODyWA/aTyitWJOmgUYVg56dPILqzkAD8pCKRUxIVg3KcCOGEB8g+Hl5Bx6AYQI6e/EBuQRh1HR
	pWlvS58WfDRYoYEi+qlmHlJwpvrCm10aOlHSnhBw6LgWOCq6nZnhu4KT3eAgdgRK0WRMHkc3BBx+E
	UhTfLnRYCHW0WmjUmy9/4MPOkikG3QcrtHlwuGhR+3gaUeyr7/UaxXYHrMN9yFEchbJaYB/fNgVh1
	4crdfmv8HwxArTlhwKCXtpDBrJ6BSUsk2LkbfSPzLJ2bdi932nUuKCWM+pJbeWSLvN+o1g+bcexhm
	G4dbxDvb2jTzbfNRk/Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYoWj-0007Lg-CQ; Wed, 13 May 2020 10:22:13 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYoWb-0007LE-Hz
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:22:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589365321;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7gMM/jkptvi7rAUxEFZhsRWKyn1QXBxOX7VYN4hwHKI=;
 b=FKs3rGUXR2wOOTEJofYFw+nL86FGdlJDjywoRzQewR66hHiDKtOePILmColyqdjKDBIvuS
 ivt3f9k610hljyBo5v49B3FnKLOXeFxlEv3DF2ZBCVdi5IHNwnGacZJM+D/Y78hjOpGVH5
 uElF8aX7+79vjntGJ9VywOc9BsKFfP4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-77-X9c5PkskMoae-BEYinTIOg-1; Wed, 13 May 2020 06:19:45 -0400
X-MC-Unique: X9c5PkskMoae-BEYinTIOg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 04D6E18FF662;
 Wed, 13 May 2020 10:19:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F11F250DA;
 Wed, 13 May 2020 10:19:43 +0000 (UTC)
Received: from zmail19.collab.prod.int.phx2.redhat.com
 (zmail19.collab.prod.int.phx2.redhat.com [10.5.83.22])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id B8FEC1809542;
 Wed, 13 May 2020 10:19:43 +0000 (UTC)
Date: Wed, 13 May 2020 06:19:43 -0400 (EDT)
From: Veronika Kabatova <vkabatov@redhat.com>
To: Will Deacon <will@kernel.org>, Jan Stancek <jstancek@redhat.com>, 
 Memory Management <mm-qe@redhat.com>
Message-ID: <1322199095.22739428.1589365183678.JavaMail.zimbra@redhat.com>
In-Reply-To: <20200513060321.GA17433@willie-the-truck>
References: <cki.495C39BD1A.T35Z6VDJPY@redhat.com>
 <20200513060321.GA17433@willie-the-truck>
Subject: =?utf-8?Q?Re:_=E2=9D=8C_FAIL:_Test_report_for_kerne?=
 =?utf-8?Q?l=095.7.0-rc5-51f14e2.cki_(arm-next)?=
MIME-Version: 1.0
X-Originating-IP: [10.40.195.119, 10.4.195.27]
Thread-Topic: =?utf-8?B?4p2MIEZBSUw6?= Test report for kernel
 5.7.0-rc5-51f14e2.cki (arm-next)
Thread-Index: CtSTqRVDaqaioGJOAWPCV364AVfM7A==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_032205_671215_42015A6C 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, CKI Project <cki-project@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgotLS0tLSBPcmlnaW5hbCBNZXNzYWdlIC0tLS0tCj4gRnJvbTogIldpbGwgRGVhY29uIiA8d2ls
bEBrZXJuZWwub3JnPgo+IFRvOiAiQ0tJIFByb2plY3QiIDxja2ktcHJvamVjdEByZWRoYXQuY29t
Pgo+IENjOiAiY2F0YWxpbiBtYXJpbmFzIiA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+LCAiTWVt
b3J5IE1hbmFnZW1lbnQiIDxtbS1xZUByZWRoYXQuY29tPiwgIkphbiBTdGFuY2VrIgo+IDxqc3Rh
bmNla0ByZWRoYXQuY29tPiwgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4g
U2VudDogV2VkbmVzZGF5LCBNYXkgMTMsIDIwMjAgODoxMjoyNyBBTQo+IFN1YmplY3Q6IFJlOiDi
nYwgRkFJTDogVGVzdCByZXBvcnQgZm9yIGtlcm5lbAk1LjcuMC1yYzUtNTFmMTRlMi5ja2kgKGFy
bS1uZXh0KQo+IAo+IEhpIENLSSBmb2xrcywKPiAKPiBPbiBXZWQsIE1heSAxMywgMjAyMCBhdCAw
MzowMTozNkFNIC0wMDAwLCBDS0kgUHJvamVjdCB3cm90ZToKPiA+IFdlIHJhbiBhdXRvbWF0ZWQg
dGVzdHMgb24gYSByZWNlbnQgY29tbWl0IGZyb20gdGhpcyBrZXJuZWwgdHJlZToKPiA+IAo+ID4g
ICAgICAgIEtlcm5lbCByZXBvOgo+ID4gICAgICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybTY0L2xpbnV4LmdpdAo+ID4gICAgICAgICAgICAgQ29t
bWl0OiA1MWYxNGUyYzAyZTggLSBNZXJnZSBicmFuY2ggJ2Zvci1uZXh0L2NvcmUnIGludG8KPiA+
ICAgICAgICAgICAgIGZvci1rZXJuZWxjaQo+ID4gCj4gPiBUaGUgcmVzdWx0cyBvZiB0aGVzZSBh
dXRvbWF0ZWQgdGVzdHMgYXJlIHByb3ZpZGVkIGJlbG93Lgo+ID4gCj4gPiAgICAgT3ZlcmFsbCBy
ZXN1bHQ6IEZBSUxFRCAoc2VlIGRldGFpbHMgYmVsb3cpCj4gPiAgICAgICAgICAgICAgTWVyZ2U6
IE9LCj4gPiAgICAgICAgICAgIENvbXBpbGU6IE9LCj4gPiAgICAgICAgICAgICAgVGVzdHM6IEZB
SUxFRAo+ID4gCj4gPiBBbGwga2VybmVsIGJpbmFyaWVzLCBjb25maWcgZmlsZXMsIGFuZCBsb2dz
IGFyZSBhdmFpbGFibGUgZm9yIGRvd25sb2FkCj4gPiBoZXJlOgo+ID4gCj4gPiAgIGh0dHBzOi8v
Y2tpLWFydGlmYWN0cy5zMy51cy1lYXN0LTIuYW1hem9uYXdzLmNvbS9pbmRleC5odG1sP3ByZWZp
eD1kYXRhd2FyZWhvdXNlLzIwMjAvMDUvMTIvNTY0OTEwCj4gPiAKPiA+IE9uZSBvciBtb3JlIGtl
cm5lbCB0ZXN0cyBmYWlsZWQ6Cj4gPiAKPiA+ICAgICBhYXJjaDY0Ogo+ID4gICAgICDinYwgTFRQ
Cj4gCj4gWy4uLl0KPiAKPiA+ICAgICBIb3N0IDI6Cj4gPiAgICAgICAg4pyFIEJvb3QgdGVzdAo+
ID4gICAgICAgIOKchSBQb2RtYW4gc3lzdGVtIGludGVncmF0aW9uIHRlc3QgLSBhcyByb290Cj4g
PiAgICAgICAg4pyFIFBvZG1hbiBzeXN0ZW0gaW50ZWdyYXRpb24gdGVzdCAtIGFzIHVzZXIKPiA+
ICAgICAgICDinYwgTFRQCj4gCj4gSSdtIHN0cnVnZ2xpbmcgYSBiaXQgd2l0aCB0aGlzIG9uZSwg
cGxlYXNlIGNhbiB5b3UgY29uZmlybSB0aGF0IGl0J3Mgbm90Cj4gYW4gaXNzdWUgb24geW91ciBl
bmQ/IFRoZSBmYWlsdXJlcyBhcmUgcmVsYXRlZCB0byAvZGV2L2NwdXNldDoKPiAKPiAgIG1lbS5j
Ojc2MDogQlJPSzogbW91bnQgL2Rldi9jcHVzZXQ6IEVCVVNZICgxNikKPiAgIC4uLgo+ICAgc2Fm
ZV9tYWNyb3MuYzoxNzI6IEJST0s6IG1lbS5jOjc1MDogbWtkaXIoL2Rldi9jcHVzZXQsMDc3Nykg
ZmFpbGVkOiBFRVhJU1QKPiAgICgxNykKPiAKPiAgIGh0dHBzOi8vY2tpLWFydGlmYWN0cy5zMy51
cy1lYXN0LTIuYW1hem9uYXdzLmNvbS9kYXRhd2FyZWhvdXNlLzIwMjAvMDUvMTIvNTY0OTEwL0xU
UC9hYXJjaDY0XzJfbHRwX21tLmZhaWwubG9nCj4gCj4gQnV0IHdlIGhhdmVuJ3QgYmVlbiBhbnl3
aGVyZSBuZWFyIHRoYXQgaW4gdGhlIGFybTY0IHRyZWUgYWZhaWsuCj4gCgpIaSwKCkkgc3VzcGVj
dCB0aGlzIGlzIGFuIExUUCBidWc6CgpodHRwczovL2dpdGh1Yi5jb20vbGludXgtdGVzdC1wcm9q
ZWN0L2x0cC9pc3N1ZXMvNjExCgpUaGUgb3JpZ2luYWwgaXNzdWUgd2Fzbid0IG1hbmlmZXN0aW5n
IHdpdGgga3NtMDIgdGVzdCB0aGF0IGZhaWxlZAp0aG91Z2guCgpASmFuIG9yIEBMaSwgY2FuIHlv
dSBjb25maXJtIHdoZXRoZXIgdGhpcyBpcyB0aGUgY2FzZSBhbmQgd2Ugc2hvdWxkCmRpc2FibGUg
dGhlc2UgdGVzdHMgYXMgd2VsbD8gV2UndmUgZm91bmQgc29tZSBoaWRkZW4ga2VybmVsIGJ1Z3Mg
d2l0aApMVFAgYW5kIEkgY2FuJ3Qgc2VlIGFueSByZWNlbnQgc2ltaWxhciB1cHN0cmVhbSBmYWls
dXJlcyBzbyBJJ20gaGVzaXRhbnQKdG8gbWFyayBpdCBhcyBhIHRlc3QgYnVnIHJpZ2h0IGF3YXku
CgpUaGFua3MsClZlcm9uaWthCgo+IENoZWVycywKPiAKPiBXaWxsCj4gCj4gCj4gCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
