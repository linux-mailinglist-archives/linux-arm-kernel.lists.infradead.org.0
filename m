Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC4E7297F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LmLxJ42GcldRD4RJWelii/bTp+yoIiahOqllILxITfk=; b=GaYKAUUU2lv52p
	WW5fsjKVrvT6P/Dw4U24AdEfLsNvOgi3hmtqafaH/uMcy5Etk7XGBHbPRoGYMUaP+DHfSpZRgclp5
	6HJtoJdggOwNIzMyN5+ghuim4NLTF16tIKGPFp/62KQtVIHDzSKwcK3fr69eTrkyHJWFXTKB8L7kV
	+hRYpXES/xWXqgo8WU0y6XAPWPJPl+aCz/7go+5aEs8sEuulEXHKBme6njJcNFmehzTXRobZ0tF4V
	rVl4V8f6Z3Ze5ewQU9Mjwv6DRRHqwClkyGGLOKuyB0tEmZTtOgkXwzDlfmtFmNwjq9bxEHGTCOCMQ
	02cJ6Abv6q1gu3oXlmOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCHm-0001BX-EM; Wed, 24 Jul 2019 08:06:06 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCHB-00012H-6g
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:05:31 +0000
Received: by mail-qt1-f195.google.com with SMTP id n11so44586303qtl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 01:05:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=474FJ4CjTLJhnSN+huYP4Jd3bf8v5qgo4+UVMvlOmIY=;
 b=G4+iKZG/1nhGvAqbz6TkTzazmkQhFa16mq3L2TOEc98WZAfIGEpyVfCosNyh35tN6E
 g85gGDRb3SIyv+8g95uVle+kTtDilW2uXZqaM7n0gd3PataYwryg+Ah9DgVF4ucXLVtH
 EmgvVHujClz/okNkaJlTfXou7UxlWgMj6ayNFlq9Tpuw3p+zIZoe9Of7Ez+mnbfAkdnD
 3kXQKEb2J71EhIZ17SfJ+2LicPnnQYt6Qn4mZvIb02klx16Xm73IRsNzuE4QwDXzzIvC
 wmW8g9i+ZEPj21AXhJ3l/DRkq6rKC/AKPJ1OQfQ8YcrXlemvnUCO/TNq5W9JCqjSYF1E
 r3bQ==
X-Gm-Message-State: APjAAAV+eJfnZD9ThQE1+MThViMahaQkElgqPxnDi6h0xyrAkOOGPp8h
 6GviuC+znc82bICfjOoOdL/zTA==
X-Google-Smtp-Source: APXvYqw6ZQ1xEgGDaGfr+FokaUeYzIX8sH8l8tvdJOvhZHCA1+JFXeX8ZY5yCCc6YIRs25mpDti6IA==
X-Received: by 2002:ac8:1106:: with SMTP id c6mr4002540qtj.332.1563955526892; 
 Wed, 24 Jul 2019 01:05:26 -0700 (PDT)
Received: from redhat.com (bzq-79-181-91-42.red.bezeqint.net. [79.181.91.42])
 by smtp.gmail.com with ESMTPSA id
 u11sm19337738qkk.76.2019.07.24.01.05.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 01:05:25 -0700 (PDT)
Date: Wed, 24 Jul 2019 04:05:17 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190724040238-mutt-send-email-mst@kernel.org>
References: <20190722035657-mutt-send-email-mst@kernel.org>
 <cfcd330d-5f4a-835a-69f7-c342d5d0d52d@redhat.com>
 <20190723010156-mutt-send-email-mst@kernel.org>
 <124be1a2-1c53-8e65-0f06-ee2294710822@redhat.com>
 <20190723032800-mutt-send-email-mst@kernel.org>
 <e2e01a05-63d8-4388-2bcd-b2be3c865486@redhat.com>
 <20190723062221-mutt-send-email-mst@kernel.org>
 <9baa4214-67fd-7ad2-cbad-aadf90bbfc20@redhat.com>
 <20190723110219-mutt-send-email-mst@kernel.org>
 <e0c91b89-d1e8-9831-00fe-23fe92d79fa2@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0c91b89-d1e8-9831-00fe-23fe92d79fa2@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_010529_330592_10C2025E 
X-CRM114-Status: GOOD (  23.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
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

T24gV2VkLCBKdWwgMjQsIDIwMTkgYXQgMTA6MTc6MTRBTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjMg5LiL5Y2IMTE6MDIsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90
ZToKPiA+IE9uIFR1ZSwgSnVsIDIzLCAyMDE5IGF0IDA5OjM0OjI5UE0gKzA4MDAsIEphc29uIFdh
bmcgd3JvdGU6Cj4gPiA+IE9uIDIwMTkvNy8yMyDkuIvljYg2OjI3LCBNaWNoYWVsIFMuIFRzaXJr
aW4gd3JvdGU6Cj4gPiA+ID4gPiBZZXMsIHNpbmNlIHRoZXJlIGNvdWxkIGJlIG11bHRpcGxlIGNv
LWN1cnJlbnQgaW52YWxpZGF0aW9uIHJlcXVlc3RzLiBXZSBuZWVkCj4gPiA+ID4gPiBjb3VudCB0
aGVtIHRvIG1ha2Ugc3VyZSB3ZSBkb24ndCBwaW4gd3JvbmcgcGFnZXMuCj4gPiA+ID4gPiAKPiA+
ID4gPiA+IAo+ID4gPiA+ID4gPiBJIGFsc28gd29uZGVyIGFib3V0IG9yZGVyaW5nLiBrdm0gaGFz
IHRoaXM6Cj4gPiA+ID4gPiA+ICAgICAgICAgICAvKgo+ID4gPiA+ID4gPiAgICAgICAgICAgICAq
IFVzZWQgdG8gY2hlY2sgZm9yIGludmFsaWRhdGlvbnMgaW4gcHJvZ3Jlc3MsIG9mIHRoZSBwZm4g
dGhhdCBpcwo+ID4gPiA+ID4gPiAgICAgICAgICAgICAqIHJldHVybmVkIGJ5IHBmbl90b19wZm5f
cHJvdCBiZWxvdy4KPiA+ID4gPiA+ID4gICAgICAgICAgICAgKi8KPiA+ID4gPiA+ID4gICAgICAg
ICAgICBtbXVfc2VxID0ga3ZtLT5tbXVfbm90aWZpZXJfc2VxOwo+ID4gPiA+ID4gPiAgICAgICAg
ICAgIC8qCj4gPiA+ID4gPiA+ICAgICAgICAgICAgICogRW5zdXJlIHRoZSByZWFkIG9mIG1tdV9u
b3RpZmllcl9zZXEgaXNuJ3QgcmVvcmRlcmVkIHdpdGggUFRFIHJlYWRzIGluCj4gPiA+ID4gPiA+
ICAgICAgICAgICAgICogZ2ZuX3RvX3Bmbl9wcm90KCkgKHdoaWNoIGNhbGxzIGdldF91c2VyX3Bh
Z2VzKCkpLCBzbyB0aGF0IHdlIGRvbid0Cj4gPiA+ID4gPiA+ICAgICAgICAgICAgICogcmlzayB0
aGUgcGFnZSB3ZSBnZXQgYSByZWZlcmVuY2UgdG8gZ2V0dGluZyB1bm1hcHBlZCBiZWZvcmUgd2Ug
aGF2ZSBhCj4gPiA+ID4gPiA+ICAgICAgICAgICAgICogY2hhbmNlIHRvIGdyYWIgdGhlIG1tdV9s
b2NrIHdpdGhvdXQgbW11X25vdGlmaWVyX3JldHJ5KCkgbm90aWNpbmcuCj4gPiA+ID4gPiA+ICAg
ICAgICAgICAgICoKPiA+ID4gPiA+ID4gICAgICAgICAgICAgKiBUaGlzIHNtcF9ybWIoKSBwYWly
cyB3aXRoIHRoZSBlZmZlY3RpdmUgc21wX3dtYigpIG9mIHRoZSBjb21iaW5hdGlvbgo+ID4gPiA+
ID4gPiAgICAgICAgICAgICAqIG9mIHRoZSBwdGVfdW5tYXBfdW5sb2NrKCkgYWZ0ZXIgdGhlIFBU
RSBpcyB6YXBwZWQsIGFuZCB0aGUKPiA+ID4gPiA+ID4gICAgICAgICAgICAgKiBzcGluX2xvY2so
KSBpbiBrdm1fbW11X25vdGlmaWVyX2ludmFsaWRhdGVfPHBhZ2V8cmFuZ2VfZW5kPigpIGJlZm9y
ZQo+ID4gPiA+ID4gPiAgICAgICAgICAgICAqIG1tdV9ub3RpZmllcl9zZXEgaXMgaW5jcmVtZW50
ZWQuCj4gPiA+ID4gPiA+ICAgICAgICAgICAgICovCj4gPiA+ID4gPiA+ICAgICAgICAgICAgc21w
X3JtYigpOwo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gZG9lcyB0aGlzIGFwcGx5IHRvIHVzPyBD
YW4ndCB3ZSB1c2UgYSBzZXFsb2NrIGluc3RlYWQgc28gd2UgZG8KPiA+ID4gPiA+ID4gbm90IG5l
ZWQgdG8gd29ycnk/Cj4gPiA+ID4gPiBJJ20gbm90IGZhbWlsaWFyIHdpdGgga3ZtIE1NVSBpbnRl
cm5hbHMsIGJ1dCB3ZSBkbyBldmVyeXRoaW5nIHVuZGVyIG9mCj4gPiA+ID4gPiBtbXVfbG9jay4K
PiA+ID4gPiA+IAo+ID4gPiA+ID4gVGhhbmtzCj4gPiA+ID4gSSBkb24ndCB0aGluayB0aGlzIGhl
bHBzIGF0IGFsbC4KPiA+ID4gPiAKPiA+ID4gPiBUaGVyZSdzIG5vIGxvY2sgYmV0d2VlbiBjaGVj
a2luZyB0aGUgaW52YWxpZGF0ZSBjb3VudGVyIGFuZAo+ID4gPiA+IGdldCB1c2VyIHBhZ2VzIGZh
c3Qgd2l0aGluIHZob3N0X21hcF9wcmVmZXRjaC4gU28gaXQncyBwb3NzaWJsZQo+ID4gPiA+IHRo
YXQgZ2V0IHVzZXIgcGFnZXMgZmFzdCByZWFkcyBQVEVzIHNwZWN1bGF0aXZlbHkgYmVmb3JlCj4g
PiA+ID4gaW52YWxpZGF0ZSBpcyByZWFkLgo+ID4gPiA+IAo+ID4gPiA+IC0tIAo+ID4gPiAKPiA+
ID4gSW4gdmhvc3RfbWFwX3ByZWZldGNoKCkgd2UgZG86Cj4gPiA+IAo+ID4gPiAgwqDCoMKgwqDC
oMKgwqAgc3Bpbl9sb2NrKCZ2cS0+bW11X2xvY2spOwo+ID4gPiAKPiA+ID4gIMKgIMKgIMKgIMKg
IC4uLgo+ID4gPiAKPiA+ID4gIMKgwqDCoMKgwqDCoMKgIGVyciA9IC1FRkFVTFQ7Cj4gPiA+ICDC
oMKgwqDCoMKgwqDCoCBpZiAodnEtPmludmFsaWRhdGVfY291bnQpCj4gPiA+ICDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBlcnI7Cj4gPiA+IAo+ID4gPiAgwqDCoMKgwqDCoMKg
wqAgLi4uCj4gPiA+IAo+ID4gPiAgwqDCoMKgwqDCoMKgwqAgbnBpbm5lZCA9IF9fZ2V0X3VzZXJf
cGFnZXNfZmFzdCh1YWRkci0+dWFkZHIsIG5wYWdlcywKPiA+ID4gIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB1YWRkci0+d3JpdGUsIHBhZ2VzKTsKPiA+ID4gCj4gPiA+ICDCoMKgwqDCoMKgwqDCoCAu
Li4KPiA+ID4gCj4gPiA+ICDCoMKgwqAgwqDCoMKgIHNwaW5fdW5sb2NrKCZ2cS0+bW11X2xvY2sp
Owo+ID4gPiAKPiA+ID4gSXMgdGhpcyBub3Qgc3VmZmljaWVudD8KPiA+ID4gCj4gPiA+IFRoYW5r
cwo+ID4gU28gd2hhdCBvcmRlcnMgX19nZXRfdXNlcl9wYWdlc19mYXN0IHdydCBpbnZhbGlkYXRl
X2NvdW50IHJlYWQ/Cj4gCj4gCj4gU28gaW4gaW52YWxpZGF0ZV9lbmQoKSBjYWxsYmFjayB3ZSBo
YXZlOgo+IAo+IHNwaW5fbG9jaygmdnEtPm1tdV9sb2NrKTsKPiAtLXZxLT5pbnZhbGlkYXRlX2Nv
dW50Owo+IMKgwqDCoMKgwqDCoMKgIHNwaW5fdW5sb2NrKCZ2cS0+bW11X2xvY2spOwo+IAo+IAo+
IFNvIGV2ZW4gUFRFIGlzIHJlYWQgc3BlY3VsYXRpdmVseSBiZWZvcmUgcmVhZGluZyBpbnZhbGlk
YXRlX2NvdW50IChvbmx5IGluCj4gdGhlIGNhc2Ugb2YgaW52YWxpZGF0ZV9jb3VudCBpcyB6ZXJv
KS4gVGhlIHNwaW5sb2NrIGhhcyBndWFyYW50ZWVkIHRoYXQgd2UKPiB3b24ndCByZWFkIGFueSBz
dGFsZSBQVEVzLgo+IAo+IFRoYW5rcwoKSSdtIHNvcnJ5IEkganVzdCBkbyBub3QgZ2V0IHRoZSBh
cmd1bWVudC4KSWYgeW91IHdhbnQgdG8gb3JkZXIgdHdvIHJlYWRzIHlvdSBuZWVkIGFuIHNtcF9y
bWIKb3Igc3Ryb25nZXIgYmV0d2VlbiB0aGVtIGV4ZWN1dGVkIG9uIHRoZSBzYW1lIENQVS4KCkV4
ZWN1dGluZyBhbnkga2luZCBvZiBiYXJyaWVyIG9uIGFub3RoZXIgQ1BVCndpbGwgaGF2ZSBubyBv
cmRlcmluZyBlZmZlY3Qgb24gdGhlIDFzdCBvbmUuCgoKU28gaWYgQ1BVMSBydW5zIHRoZSBwcmVm
ZXRjaCwgYW5kIENQVTIgcnVucyBpbnZhbGlkYXRlCmNhbGxiYWNrLCByZWFkIG9mIGludmFsaWRh
dGUgY291bnRlciBvbiBDUFUxIGNhbiBieXBhc3MKcmVhZCBvZiBQVEUgb24gQ1BVMSB1bmxlc3Mg
dGhlcmUncyBhIGJhcnJpZXIKaW4gYmV0d2VlbiwgYW5kIG5vdGhpbmcgQ1BVMiBkb2VzIGNhbiBh
ZmZlY3QgdGhhdCBvdXRjb21lLgoKCldoYXQgZGlkIEkgbWlzcz8KCj4gCj4gPiAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
