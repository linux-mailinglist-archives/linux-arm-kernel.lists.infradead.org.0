Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA436FADD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 10:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAVnuJF9GTM4dnFgMEq5DsVQzPLwWi/A4RzIJPWSLOY=; b=UH/ORSbGNcAffG
	XeE0ukEGeSpqUvlJYwVdW3P9c+bMxGRG2CWm8mhUeTiny2YDFks6rIoHEHfu1FE1q/4OS64rsL3ED
	B6y6JL7lSIT8iZZuWXCuPoj9ul1AL/B+BqPN/rWmESCx09RO4H48qQcfVkBfRFwKCTDoQNzMxMWtR
	r42iU03+jcfU87OO065uHtdhStph1Cw4UOfErI0q7m7SRb/ihpuePsaXUQ2cvWK6qez3yq96GlRjt
	2jLPwcKHf+UxTin93wed/UItE5jWLBUZZLGdHP8e7afN9McYkhSdeNVLChHeOFX6stI8Yjn2FXa8L
	uMT+oOxCqGXC9PsAZIjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpTHL-0007wx-6c; Mon, 22 Jul 2019 08:02:39 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpTH6-0007vH-Ox
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 08:02:26 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 269F7308424C;
 Mon, 22 Jul 2019 08:02:24 +0000 (UTC)
Received: from redhat.com (ovpn-120-233.rdu2.redhat.com [10.10.120.233])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D54DC610A6;
 Mon, 22 Jul 2019 08:02:14 +0000 (UTC)
Date: Mon, 22 Jul 2019 04:02:13 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190722035657-mutt-send-email-mst@kernel.org>
References: <0000000000008dd6bb058e006938@google.com>
 <000000000000964b0d058e1a0483@google.com>
 <20190721044615-mutt-send-email-mst@kernel.org>
 <75c43998-3a1c-676f-99ff-3d04663c3fcc@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <75c43998-3a1c-676f-99ff-3d04663c3fcc@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Mon, 22 Jul 2019 08:02:24 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_010224_851284_D6A44C40 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mhocko@suse.com, peterz@infradead.org, ldv@altlinux.org,
 james.bottomley@hansenpartnership.com, linux-mm@kvack.org, namit@vmware.com,
 mingo@kernel.org, elena.reshetova@intel.com, keescook@chromium.org,
 aarcange@redhat.com, davem@davemloft.net, hch@infradead.org,
 christian@brauner.io,
 syzbot <syzbot+e58112d71f77113ddb7b@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com, jglisse@redhat.com, viro@zeniv.linux.org.uk,
 linux-arm-kernel@lists.infradead.org, wad@chromium.org,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 luto@amacapital.net, ebiederm@xmission.com, akpm@linux-foundation.org,
 guro@fb.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdWwgMjIsIDIwMTkgYXQgMDE6MjE6NTlQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjEg5LiL5Y2INjowMiwgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gT24gU2F0LCBKdWwgMjAsIDIwMTkgYXQgMDM6MDg6MDBBTSAtMDcwMCwgc3l6Ym90IHdy
b3RlOgo+ID4gPiBzeXpib3QgaGFzIGJpc2VjdGVkIHRoaXMgYnVnIHRvOgo+ID4gPiAKPiA+ID4g
Y29tbWl0IDdmNDY2MDMyZGM5ZTVhNjEyMTdmMjJlYTM0YjJkZjkzMjc4NmJiZmMKPiA+ID4gQXV0
aG9yOiBKYXNvbiBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPgo+ID4gPiBEYXRlOiAgIEZyaSBN
YXkgMjQgMDg6MTI6MTggMjAxOSArMDAwMAo+ID4gPiAKPiA+ID4gICAgICB2aG9zdDogYWNjZXNz
IHZxIG1ldGFkYXRhIHRocm91Z2gga2VybmVsIHZpcnR1YWwgYWRkcmVzcwo+ID4gPiAKPiA+ID4g
YmlzZWN0aW9uIGxvZzogIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvYmlzZWN0LnR4
dD94PTE0OWE4YTIwNjAwMDAwCj4gPiA+IHN0YXJ0IGNvbW1pdDogICA2ZDIxYTQxYiBBZGQgbGlu
dXgtbmV4dCBzcGVjaWZpYyBmaWxlcyBmb3IgMjAxOTA3MTgKPiA+ID4gZ2l0IHRyZWU6ICAgICAg
IGxpbnV4LW5leHQKPiA+ID4gZmluYWwgY3Jhc2g6ICAgIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNw
b3QuY29tL3gvcmVwb3J0LnR4dD94PTE2OWE4YTIwNjAwMDAwCj4gPiA+IGNvbnNvbGUgb3V0cHV0
OiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L2xvZy50eHQ/eD0xMjlhOGEyMDYwMDAw
MAo+ID4gPiBrZXJuZWwgY29uZmlnOiAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC8u
Y29uZmlnP3g9MzQzMGExNTFlMTQ1MjMzMQo+ID4gPiBkYXNoYm9hcmQgbGluazogaHR0cHM6Ly9z
eXprYWxsZXIuYXBwc3BvdC5jb20vYnVnP2V4dGlkPWU1ODExMmQ3MWY3NzExM2RkYjdiCj4gPiA+
IHN5eiByZXBybzogICAgICBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L3JlcHJvLnN5
ej94PTEwMTM5ZTY4NjAwMDAwCj4gPiA+IAo+ID4gPiBSZXBvcnRlZC1ieTogc3l6Ym90K2U1ODEx
MmQ3MWY3NzExM2RkYjdiQHN5emthbGxlci5hcHBzcG90bWFpbC5jb20KPiA+ID4gRml4ZXM6IDdm
NDY2MDMyZGM5ZSAoInZob3N0OiBhY2Nlc3MgdnEgbWV0YWRhdGEgdGhyb3VnaCBrZXJuZWwgdmly
dHVhbAo+ID4gPiBhZGRyZXNzIikKPiA+ID4gCj4gPiA+IEZvciBpbmZvcm1hdGlvbiBhYm91dCBi
aXNlY3Rpb24gcHJvY2VzcyBzZWU6IGh0dHBzOi8vZ29vLmdsL3Rwc21FSiNiaXNlY3Rpb24KPiA+
IAo+ID4gT0sgSSBwb2tlZCBhdCB0aGlzIGZvciBhIGJpdCwgSSBzZWUgc2V2ZXJhbCB0aGluZ3Mg
dGhhdAo+ID4gd2UgbmVlZCB0byBmaXgsIHRob3VnaCBJJ20gbm90IHlldCBzdXJlIGl0J3MgdGhl
IHJlYXNvbiBmb3IKPiA+IHRoZSBmYWlsdXJlczoKPiA+IAo+ID4gCj4gPiAxLiBtbXVfbm90aWZp
ZXJfcmVnaXN0ZXIgc2hvdWxkbid0IGJlIGNhbGxlZCBmcm9tIHZob3N0X3ZyaW5nX3NldF9udW1f
YWRkcgo+ID4gICAgIFRoYXQncyBqdXN0IGEgYmFkIGhhY2ssCj4gCj4gCj4gVGhpcyBpcyB1c2Vk
IHRvIGF2b2lkIGhvbGRpbmcgbG9jayB3aGVuIGNoZWNraW5nIHdoZXRoZXIgdGhlIGFkZHJlc3Nl
cyBhcmUKPiBvdmVybGFwcGVkLiBPdGhlcndpc2Ugd2UgbmVlZCB0byB0YWtlIHNwaW5sb2NrIGZv
ciBlYWNoIGludmFsaWRhdGlvbiByZXF1ZXN0Cj4gZXZlbiBpZiBpdCB3YXMgdGhlIHZhIHJhbmdl
IHRoYXQgaXMgbm90IGludGVyZXN0ZWQgZm9yIHVzLiBUaGlzIHdpbGwgYmUgdmVyeQo+IHNsb3cg
ZS5nIGR1cmluZyBndWVzdCBib290LgoKS1ZNIHNlZW1zIHRvIGRvIGV4YWN0bHkgdGhhdC4KSSB0
cmllZCBhbmQgZ3Vlc3QgZG9lcyBub3Qgc2VlbSB0byBib290IGFueSBzbG93ZXIuCkRvIHlvdSBv
YnNlcnZlIGFueSBzbG93ZG93bj8KCk5vdyBJIHRvb2sgYSBoYXJkIGxvb2sgYXQgdGhlIHVhZGRy
IGhhY2tlcnkgaXQgcmVhbGx5IG1ha2VzCm1lIG5lcnZpb3VzLiBTbyBJIHRoaW5rIGZvciB0aGlz
IHJlbGVhc2Ugd2Ugd2FudCBzb21ldGhpbmcKc2FmZSwgYW5kIG9wdGltaXphdGlvbnMgb24gdG9w
LiBBcyBhbiBhbHRlcm5hdGl2ZSByZXZlcnQgdGhlCm9wdGltaXphdGlvbiBhbmQgdHJ5IGFnYWlu
IGZvciBuZXh0IG1lcmdlIHdpbmRvdy4KCgotLSAKTVNUCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
