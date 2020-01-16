Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC82E13E00C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:27:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBZ9lrp1EHeDWXoGtwTVs+ApxyO6jL+WWSESCOScHuY=; b=m69syyaZjgdoAa
	WQ/xZWXMun6FYrLI6E7adQ3iZ7YQ+SWrIwMhM9X6BGa4IWgMu7P9cGP1ntA/Xf/kmq3F4HWvQmvul
	NcoIw02R+6J9P/D8enT7MIIEAfszEzmHbtpreCwaymqi6EVm6jH2Om8W1+v5ReGBzA65P1WdLGnKM
	VxvcHCF1caqZdCEkd9X93OQaPJ0DaNaXtZWvvqJL7VNS6yIM9qo9IFGoWDUgC0bsCGRx9udn20Lbv
	jtE5asSB7kQaAylfqyCT9H3lSHC9v2b53/HVoX3BWxSlu/I++XgjQs8hGitgf+lVKqNBd1It8oUv6
	EEiFApLdeNRl9k98YSug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is7z5-0008NI-6d; Thu, 16 Jan 2020 16:27:03 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is7yr-0008Mi-Sz
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579192008;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=02HQxuUGU6JrSp46igLPV3mnlFVybkO0dK30lnk1SjM=;
 b=Yrojnz5iyIjcVBHPjkyXshLzuNdSf05k+odgTZqkllaeWFIFZmeJnDejnyoOBC0U/WQPtc
 bJveWdptANA1jgapPeL+AYAVTAKKN9KJLlXixsKWwlXhcG7fqvgE2+onmRH4Ugwy8MdrEX
 A7E8etl8RnNmVp12QGAZ1kF5dHe0cpQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-146--nqAQp3fNdCqKn37YGmAlg-1; Thu, 16 Jan 2020 11:26:45 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA0D1107ACC9;
 Thu, 16 Jan 2020 16:26:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BE36B19C5B;
 Thu, 16 Jan 2020 16:26:43 +0000 (UTC)
Received: from zmail19.collab.prod.int.phx2.redhat.com
 (zmail19.collab.prod.int.phx2.redhat.com [10.5.83.22])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7321C845F1;
 Thu, 16 Jan 2020 16:26:43 +0000 (UTC)
Date: Thu, 16 Jan 2020 11:26:43 -0500 (EST)
From: Veronika Kabatova <vkabatov@redhat.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will@kernel.org>
Message-ID: <201475144.2454906.1579192003349.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAKv+Gu_BqEz_Q1H9CXe1ZTCkExEnAtsrdEQcPXZthsgGhWxK9A@mail.gmail.com>
References: <cki.1A6A8CC1CF.1989HWSEIM@redhat.com>
 <CAKv+Gu-CEGOdTvektx_pqD=WqUXFi3YKXmj=pka5CiHc-6dCSQ@mail.gmail.com>
 <1309735432.2414024.1579184089001.JavaMail.zimbra@redhat.com>
 <20200116143348.GA17679@willie-the-truck>
 <CAKv+Gu_BqEz_Q1H9CXe1ZTCkExEnAtsrdEQcPXZthsgGhWxK9A@mail.gmail.com>
Subject: =?utf-8?Q?Re:_=E2=9D=8C_FAIL:_Test_report_for_kerne?=
 =?utf-8?Q?l_5.5.0-rc6-40f39e8.cki_(arm-next)?=
MIME-Version: 1.0
X-Originating-IP: [10.40.205.244, 10.4.195.1]
Thread-Topic: =?utf-8?B?4p2MIEZBSUw6?= Test report for kernel
 5.5.0-rc6-40f39e8.cki (arm-next)
Thread-Index: FKFBDaPqp5RWnuE1FHA4uKKLP6uuoA==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: -nqAQp3fNdCqKn37YGmAlg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_082651_489284_83A87DBE 
X-CRM114-Status: GOOD (  27.48  )
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
Cc: Jianwen Ji <jiji@redhat.com>, Hangbin Liu <haliu@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jianlin Shi <jishi@redhat.com>,
 CKI Project <cki-project@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgotLS0tLSBPcmlnaW5hbCBNZXNzYWdlIC0tLS0tCj4gRnJvbTogIkFyZCBCaWVzaGV1dmVsIiA8
YXJkLmJpZXNoZXV2ZWxAbGluYXJvLm9yZz4KPiBUbzogIldpbGwgRGVhY29uIiA8d2lsbEBrZXJu
ZWwub3JnPgo+IENjOiAiSmlhbndlbiBKaSIgPGppamlAcmVkaGF0LmNvbT4sICJWZXJvbmlrYSBL
YWJhdG92YSIgPHZrYWJhdG92QHJlZGhhdC5jb20+LCAiSGFuZ2JpbiBMaXUiIDxoYWxpdUByZWRo
YXQuY29tPiwKPiAiQ2F0YWxpbiBNYXJpbmFzIiA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+LCAi
SmlhbmxpbiBTaGkiIDxqaXNoaUByZWRoYXQuY29tPiwgIkNLSSBQcm9qZWN0Igo+IDxja2ktcHJv
amVjdEByZWRoYXQuY29tPiwgImxpbnV4LWFybS1rZXJuZWwiIDxsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmc+Cj4gU2VudDogVGh1cnNkYXksIEphbnVhcnkgMTYsIDIwMjAgMzo1
NjowNSBQTQo+IFN1YmplY3Q6IFJlOiDinYwgRkFJTDogVGVzdCByZXBvcnQgZm9yIGtlcm5lbCA1
LjUuMC1yYzYtNDBmMzllOC5ja2kgKGFybS1uZXh0KQo+IAo+IE9uIFRodSwgMTYgSmFuIDIwMjAg
YXQgMTU6MzMsIFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IEhp
IFZlcm9uaWthLAo+ID4KPiA+IE9uIFRodSwgSmFuIDE2LCAyMDIwIGF0IDA5OjE0OjQ5QU0gLTA1
MDAsIFZlcm9uaWthIEthYmF0b3ZhIHdyb3RlOgo+ID4gPiA+IE9uIFRodSwgMTYgSmFuIDIwMjAg
YXQgMTQ6MjAsIENLSSBQcm9qZWN0IDwgY2tpLXByb2plY3RAcmVkaGF0LmNvbSA+Cj4gPiA+ID4g
d3JvdGU6Cj4gPiA+ID4gPiBPbmUgb3IgbW9yZSBrZXJuZWwgdGVzdHMgZmFpbGVkOgo+ID4gPiA+
Cj4gPiA+Cj4gPiA+ID4gPiBhYXJjaDY0Ogo+ID4gPiA+Cj4gPiA+ID4gPiDinYwgTmV0d29ya2lu
ZyB0dW5uZWw6IGdyZSBiYXNpYwo+ID4gPiA+Cj4gPiA+ID4gPiDinYwgTmV0d29ya2luZyB0dW5u
ZWw6IHZ4bGFuIGJhc2ljCj4gPiA+ID4KPiA+ID4gPiBNYXkgSSBraW5kbHkgc3VnZ2VzdCB0aGF0
IHlvdSBzdG9wIGNjJ2luZyB0aGUgbWFpbGluZyBsaXN0IG9uCj4gPiA+ID4gYXV0b21hdGVkLAo+
ID4gPiA+IHVubW9kZXJhdGVkIENJIHJlc3VsdHM/Cj4gPiA+Cj4gPiA+ID4gSXQncyBncmVhdCB0
aGF0IHlvdSBydW4gYSBDSSBzeXN0ZW0sIGJ1dCB5b3Ugc2hvdWxkIHJlYWxseSBoYXZlIHRoZQo+
ID4gPiA+IG1pbmltYWwKPiA+ID4gPiBjb3VydGVzeSB0byBkb3VibGUgY2hlY2sgZmFpbHVyZSBy
ZXBvcnRzIGJlZm9yZSBzZW5kaW5nIHRoZW0gb3V0IGludG8KPiA+ID4gPiB0aGUKPiA+ID4gPiB3
b3JsZC4KPiA+ID4KPiA+ID4gd2UgYXJlIHNvcnJ5IGFib3V0IHRoYXQuIFRoZSB0ZXN0aW5nIGFu
ZCBlbWFpbHMgdG8gdGhlIGxpc3Qgd2VyZQo+ID4gPiByZXF1ZXN0ZWQKPiA+ID4gYnkgV2lsbCBh
IHdoaWxlIGFnby4gSWYgaGUgb3IgQ2F0YWxpbiBjaGFuZ2UgdGhlaXIgbWluZHMgYWJvdXQgdGhl
bSB3ZQo+ID4gPiB3aWxsCj4gPiA+IHN0b3Agc2VuZGluZyB0aGVtLCBpbiB0aGUgbWVhbndoaWxl
IHlvdSBjYW4gYWx3YXlzIHNldCB1cCBhIGZpbHRlci4KPiA+Cj4gPiBUaGUgcmVzdWx0cyBhcmUg
dXN1YWxseSB2ZXJ5IHVzZWZ1bCAodGhhbmtzISksIGFuZCBJIHRoaW5rIGl0J3MgZ29vZCB0bwo+
ID4gaGF2ZSB0aGVtIG9uIHRoZSBsaXN0IHNvIHRoYXQgcGVvcGxlIGNhbiBzZWUgdGhlbSBhbmQg
cmVwbHkgdG8gdGhlbSwgaWYKPiA+IG5lY2Vzc2FyeS4gSSBkb24ndCAvdGhpbmsvIGFueWJvZHkg
aXMgZGlzYWdyZWVpbmcgd2l0aCB0aGF0Lgo+ID4KCldlJ3JlIGdsYWQgdG8gaGVhciB0aGF0IQoK
PiA+IEhvd2V2ZXIsIGluIHRoaXMgc3BlY2lmaWMgY2FzZSwgdGhlIHJlc3VsdHMgYXJlbid0IHZl
cnkgdXNlZnVsIGJlY2F1c2UgdGhlCj4gPiBpbmZyYXN0cnVjdHVyZSBpcyBwbGF5aW5nIHVwLCBz
byBJIHRoaW5rIHRoYXQncyB3aGF0IEFyZCBpcyBnZXR0aW5nIGF0IHdoZW4KPiA+IGhlIHNheXMg
InVubW9kZXJhdGVkIi4KPiA+Cj4gCj4gQXBvbG9naWVzIGZvciB0aGUga25lZWplcmsgcmVhY3Rp
b24sIGJ1dCB0aGVyZSBhcmUgcXVpdGUgYSBudW1iZXIgb2YKPiBib3RzIGhlbHBmdWxseSBjYydp
bmcgdGhlIHdvcmxkIG9uIHRoZWlyIHJlcG9ydHMgdGhlc2UgZGF5cywgYW5kIHRoZQo+IGZhY3Qg
dGhhdCB0aGVzZSBwYXJ0aWN1bGFyIG9uZXMgYXJlIGtub3duIHRvIGJlIGZhbHNlIHBvc2l0aXZl
cwo+IHRyaWdnZXJlZCBteSB1bmZpbHRlcmVkIHJlc3BvbnNlLgo+IAo+IAoKTm8gd29ycmllcyEK
CldlJ3JlIHdvcmtpbmcgd2l0aCBLZXJuZWxDSSB0byBzdHJlYW1saW5lIHRoZSB1cHN0cmVhbSB0
ZXN0aW5nIGVmZm9ydHMuCkFzIGV2ZXJ5dGhpbmcgaXMgbW92aW5nIGZvcndhcmQsIHlvdSBzaG91
bGQgc2VlIGxlc3MgYm90cyBvbiB0aGUgbGlzdAooYXQgbGVhc3QgZnJvbSBwZW9wbGUgd2hvIGFy
ZSBhbHNvIHdvcmtpbmcgd2l0aCB0aGUgcHJvamVjdCkuCgpUaGVzZSBwYXJ0aWN1bGFyIHByb2Js
ZW1zIHdlIHJhbiBpbnRvIHdlcmUgaGFyZGVyIHRvIGRlYnVnIHdpdGhvdXQgZXh0cmEKaW5mb3Jt
YXRpb24gKGFuZCBub3QgY2F1c2VkIGJ5IG91ciBjb2RlIGJ1dCBhIHByb2plY3Qgd2UgZGVwZW5k
IG9uKSBzbwp3ZSB3ZXJlbid0IGFibGUgdG8gZmlsdGVyIHRoZW0gb3V0IGF1dG9tYXRpY2FsbHku
Cgo+IAo+ID4gPiBXZSBhcmUgbm90IHBhaWQgYnkgQVJNIHNvIHRoZSB0ZXN0aW5nIGlzIGEgInN0
cml2ZSBmb3IgdGhlIGJlc3QiIGVmZm9ydCwKPiA+ID4gYXMgd2UgaGF2ZSBhIGJ1bmNoIG9mIEFS
TSBtYWNoaW5lcyB3ZSdyZSB3aWxsaW5nIHRvIGxlbmQgdG8gY29tbXVuaXR5IGZvcgo+ID4gPiBl
eHRyYSBjb3ZlcmFnZS4gV2UgYWx3YXlzIGNjIHRoZSB0ZXN0IG1haW50YWluZXJzIGFuZCBhbHNv
IHVzIHRvIHRha2UgYQo+ID4gPiBsb29rIGF0IHRoZSBpc3N1ZXMgaWYgdGhleSBkbyBvY2N1ci4g
QXMgUmFjaGVsIG1lbnRpb25lZCwgd2UgYWxyZWFkeSBwdXQKPiA+ID4gYSB3b3JrYXJvdW5kIGlu
IHBsYWNlIHRvIHByZXZlbnQgdGhlc2UgaXNzdWVzIGZyb20gaGFwcGVuaW5nIGZ1cnRoZXIgc28K
PiA+ID4gaG9wZWZ1bGx5IHlvdSB3b24ndCBnZXQgbW9yZSBlbWFpbHMgYmVjYXVzZSBvZiB0aGVz
ZSBCZWFrZXIgYnVncy4KPiA+Cj4gPiBUaGFua3MuIElmIHlvdSBnZXQgYSBjaGFuY2UsIHRoZW4g
aXQgd291bGQgYmUgZ29vZCB0byBzdG9wIHRoZSB0ZXN0IGVtYWlscwo+ID4gZ29pbmcgb3V0IHRv
IHRoZSBtYWlsaW5nIGxpc3Qgd2hpbGUgdGhlIGluZnJhc3RydWN0dXJlIGlzIGtub3duIHRvIGJl
Cj4gPiBicm9rZW4sIG90aGVyd2lzZSBpdCBjYW4gZGlzdHJhY3QgcGVvcGxlIGludG8gaW52ZXN0
aWdhdGluZyBmYWlsdXJlcyB0aGF0Cj4gPiBhcmVuJ3QgYWN0dWFsbHkgY2F1c2VkIGJ5IGNoYW5n
ZXMgdG8gdGhlIGtlcm5lbC4KPiA+CgpJIGFncmVlLgoKV2UgZG8gaGF2ZSBhIGZldyB0aGluZ3Mg
aW4gbWluZCB0byByZWR1Y2UgdGhlIGZhbHNlIHBvc2l0aXZlcyAod2hpY2ggd291bGQKYWxzbyBm
aWx0ZXIgb3V0IHRoZXNlIG9uZXMpIGFuZCBwaXBlbGluZSBzdGFiaWxpemF0aW9uIGluIGdlbmVy
YWwuIFRoaXMKaW5jbHVkZXMgYSBzd2l0Y2ggdG8gc3RvcCB0aGUgYXV0b21hdGljIHJlcG9ydHMg
d2hlbiB3ZSBkZXRlY3QgYSByZW9jY3VycmluZwppbmZyYSBwcm9ibGVtIGFuZCBjYW4ndCBlYXNp
bHkgd29yayBhcm91bmQgaXQuCgoKVGhhbmtzLApWZXJvbmlrYQoKPiA+IENoZWVycywKPiA+Cj4g
PiBXaWxsCj4gCj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
