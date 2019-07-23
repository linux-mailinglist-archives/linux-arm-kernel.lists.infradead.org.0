Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A62F71515
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 11:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ksD+YFwVY6QplIhSUKflfRsB79ghgC4dsqYbT4XZGM=; b=m/UZh0RxmrcCUo
	tY9A1nTqJqu2OzrI+sHvVQiAM/wJEKJHfS10QjXtz9j8S0PPlY5zwkOTxiixrFZBq35YmN7vM2BQF
	VUzh2HZ3HvApJYl6XErVpEdQNnRy7FoAU6JqaZ5fKwyep1mbG1kZsfCDJf1jOkvMb0uadgfZXGjT2
	9xG67B5CkQ1By21yWpOZhsRDkLfInpS4V/YV4hHKrm5O8EjcQniu1H5Bp3GxXZkurCAA+jYpbEYpv
	WsKq8Udf8o2kxBzQnMm3yE64aSw9Aka8DbFqnPwsnJ+ZhJDbf95XTBJrWbQ7q5wvis7HiOtCYtI0R
	fxsECP/meLX4ZtG9QI4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpr4r-0001tu-UI; Tue, 23 Jul 2019 09:27:22 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpr4X-0001sj-On
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 09:27:03 +0000
Received: by mail-qt1-f196.google.com with SMTP id w17so41185912qto.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 02:27:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=w9+uTBVD5eL1yIizEhpB/pr3lxHAjPOpAJ2J7t/uPjY=;
 b=fDgJ3mgWCsGDyMW6GISgydj6/S1l+sVVmAxUN/de2InL4dRAaqOCxGzL4ZdmHwtm/G
 UHnMPbkrZd9yZNinPvqC5Ufqp4hFn5/FcLh0d3GlnkvaIvNC9yPb9qvazlTAZjeyyPiH
 g4g3u5R5y6c19YQKmPqBn5dETI8W4wSgJOeOPsrm4DtQvUSS3A6DFPC7evNEuL4bWWsz
 QvF86EyyKp+k/NNLAG/qZEIJozSKlNitsHx0RoYdgMaDrlnMzfLg0CSOgtzoTPXkpKfX
 As9t6gjVSvuMmmXcYfBtUznDT9YznLsOc1AtF/Gz2Va+c2YTVPq6/0CVD6jR2GIuKJbA
 thcA==
X-Gm-Message-State: APjAAAX404bD58+CI6gTT70dYUPWB3DszG/2JJZBcOgeF9VrN2OOGNuR
 Y4SV7dTf1hu/a4Enk1UnKFsoRA==
X-Google-Smtp-Source: APXvYqznQz1jb6/VqV6QAjRFsQRchbKNzzWw6vrke7ravYfqDHLLyPR0Ru5U5FkLQQwrSBJvjXKcDw==
X-Received: by 2002:ac8:2e5d:: with SMTP id s29mr52712693qta.70.1563874020622; 
 Tue, 23 Jul 2019 02:27:00 -0700 (PDT)
Received: from redhat.com (bzq-79-181-91-42.red.bezeqint.net. [79.181.91.42])
 by smtp.gmail.com with ESMTPSA id
 r5sm19239957qkc.42.2019.07.23.02.26.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 02:26:59 -0700 (PDT)
Date: Tue, 23 Jul 2019 05:26:50 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190723051828-mutt-send-email-mst@kernel.org>
References: <20190721081447-mutt-send-email-mst@kernel.org>
 <85dd00e2-37a6-72b7-5d5a-8bf46a3526cf@redhat.com>
 <20190722040230-mutt-send-email-mst@kernel.org>
 <4bd2ff78-6871-55f2-44dc-0982ffef3337@redhat.com>
 <20190723010019-mutt-send-email-mst@kernel.org>
 <b4696f2e-678a-bdb2-4b7c-fb4ce040ec2a@redhat.com>
 <20190723032024-mutt-send-email-mst@kernel.org>
 <1d14de4d-0133-1614-9f64-3ded381de04e@redhat.com>
 <20190723035725-mutt-send-email-mst@kernel.org>
 <3f4178f1-0d71-e032-0f1f-802428ceca59@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3f4178f1-0d71-e032-0f1f-802428ceca59@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_022701_809548_C1A4E88F 
X-CRM114-Status: GOOD (  30.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDQ6NDk6MDFQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjMg5LiL5Y2INDoxMCwgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gT24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDM6NTM6MDZQTSArMDgwMCwgSmFzb24gV2Fu
ZyB3cm90ZToKPiA+ID4gT24gMjAxOS83LzIzIOS4i+WNiDM6MjMsIE1pY2hhZWwgUy4gVHNpcmtp
biB3cm90ZToKPiA+ID4gPiA+ID4gUmVhbGx5IGxldCdzIGp1c3QgdXNlIGtmcmVlX3JjdS4gSXQn
cyB3YXkgY2xlYW5lcjogZmlyZSBhbmQgZm9yZ2V0Lgo+ID4gPiA+ID4gTG9va3Mgbm90LCB5b3Ug
bmVlZCByYXRlIGxpbWl0IHRoZSBmaXJlIGFzIHlvdSd2ZSBmaWd1cmVkIG91dD8KPiA+ID4gPiBT
ZWUgdGhlIGRpc2N1c3Npb24gdGhhdCBmb2xsb3dlZC4gQmFzaWNhbGx5IG5vLCBpdCdzIGdvb2Qg
ZW5vdWdoCj4gPiA+ID4gYWxyZWFkeSBhbmQgaXMgb25seSBnb2luZyB0byBiZSBiZXR0ZXIuCj4g
PiA+ID4gCj4gPiA+ID4gPiBBbmQgaW4gZmFjdCwKPiA+ID4gPiA+IHRoZSBzeW5jaHJvbml6YXRp
b24gaXMgbm90IGV2ZW4gbmVlZGVkLCBkb2VzIGl0IGhlbHAgaWYgSSBsZWF2ZSBhIGNvbW1lbnQg
dG8KPiA+ID4gPiA+IGV4cGxhaW4/Cj4gPiA+ID4gTGV0J3MgdHJ5IHRvIGZpZ3VyZSBpdCBvdXQg
aW4gdGhlIG1haWwgZmlyc3QuIEknbSBwcmV0dHkgc3VyZSB0aGUKPiA+ID4gPiBjdXJyZW50IGxv
Z2ljIGlzIHdyb25nLgo+ID4gPiAKPiA+ID4gSGVyZSBpcyB3aGF0IHRoZSBjb2RlIHdoYXQgdG8g
YWNoaWV2ZToKPiA+ID4gCj4gPiA+IC0gVGhlIG1hcCB3YXMgcHJvdGVjdGVkIGJ5IFJDVQo+ID4g
PiAKPiA+ID4gLSBXcml0ZXJzIGFyZTogTU1VIG5vdGlmaWVyIGludmFsaWRhdGlvbiBjYWxsYmFj
a3MsIGZpbGUgb3BlcmF0aW9ucyAoaW9jdGxzCj4gPiA+IGV0YyksIG1ldGFfcHJlZmV0Y2ggKGRh
dGFwYXRoKQo+ID4gPiAKPiA+ID4gLSBSZWFkZXJzIGFyZTogbWVtb3J5IGFjY2Vzc29yCj4gPiA+
IAo+ID4gPiBXcml0ZXIgYXJlIHN5bmNocm9uaXplZCB0aHJvdWdoIG1tdV9sb2NrLiBSQ1UgaXMg
dXNlZCB0byBzeW5jaHJvbml6ZWQKPiA+ID4gYmV0d2VlbiB3cml0ZXJzIGFuZCByZWFkZXJzLgo+
ID4gPiAKPiA+ID4gVGhlIHN5bmNocm9uaXplX3JjdSgpIGluIHZob3N0X3Jlc2V0X3ZxX21hcHMo
KSB3YXMgdXNlZCB0byBzeW5jaHJvbml6ZWQgaXQKPiA+ID4gd2l0aCByZWFkZXJzIChtZW1vcnkg
YWNjZXNzb3JzKSBpbiB0aGUgcGF0aCBvZiBmaWxlIG9wZXJhdGlvbnMuIEJ1dCBpbiB0aGlzCj4g
PiA+IGNhc2UsIHZxLT5tdXRleCB3YXMgYWxyZWFkeSBoZWxkLCB0aGlzIG1lYW5zIGl0IGhhcyBi
ZWVuIHNlcmlhbGl6ZWQgd2l0aAo+ID4gPiBtZW1vcnkgYWNjZXNzb3IuIFRoYXQncyB3aHkgSSB0
aGluayBpdCBjb3VsZCBiZSByZW1vdmVkIHNhZmVseS4KPiA+ID4gCj4gPiA+IEFueXRoaW5nIEkg
bWlzcyBoZXJlPwo+ID4gPiAKPiA+IFNvIGludmFsaWRhdGUgY2FsbGJhY2tzIG5lZWQgdG8gcmVz
ZXQgdGhlIG1hcCwgYW5kIHRoZXkgZG8KPiA+IG5vdCBoYXZlIHZxIG11dGV4LiBIb3cgY2FuIHRo
ZXkgZG8gdGhpcyBhbmQgZnJlZQo+ID4gdGhlIG1hcCBzYWZlbHk/IFRoZXkgbmVlZCBzeW5jaHJv
bml6ZV9yY3Ugb3Iga2ZyZWVfcmN1IHJpZ2h0Pwo+IAo+IAo+IEludmFsaWRhdGlvbiBjYWxsYmFj
a3MgbmVlZCBidXQgZmlsZSBvcGVyYXRpb25zIChlLmcgaW9jdGwpIG5vdC4KPiAKPiAKPiA+IAo+
ID4gQW5kIEkgd29ycnkgc29tZXdoYXQgdGhhdCBzeW5jaHJvbml6ZV9yY3UgaW4gYW4gTU1VIG5v
dGlmaWVyCj4gPiBpcyBhIHByb2JsZW0sIE1NVSBub3RpZmllcnMgYXJlIHN1cHBvc2VkIHRvIGJl
IHF1aWNrOgo+IAo+IAo+IExvb2tzIG5vdCwgc2luY2UgaXQgY2FuIGFsbG93IHRvIGJlIGJsb2Nr
ZWQgYW5kIGxvdHMgb2YgZHJpdmVyIGRlcGVuZHMgb24KPiB0aGlzLiAoRS5nIG1tdV9ub3RpZmll
cl9yYW5nZV9ibG9ja2FibGUoKSkuCgpSaWdodCwgdGhleSBjYW4gYmxvY2suIFNvIHdoeSBkb24n
dCB3ZSB0YWtlIGEgVlEgbXV0ZXggYW5kIGJlCmRvbmUgd2l0aCBpdCB0aGVuPyBObyBSQ1UgdHJp
Y2tzLgoKPiAKPiA+IHRoZXkgYXJlIG9uIGEgcmVhZCBzaWRlIGNyaXRpY2FsIHNlY3Rpb24gb2Yg
U1JDVS4KPiA+IAo+ID4gSWYgd2UgY291bGQgZ2V0IHJpZCBvZiBSQ1UgdGhhdCB3b3VsZCBiZSBl
dmVuIGJldHRlci4KPiA+IAo+ID4gQnV0IG5vdyBJIHdvbmRlcjoKPiA+IAlpbnZhbGlkYXRlX3N0
YXJ0IGhhcyB0byBtYXJrIHBhZ2UgYXMgZGlydHkKPiA+IAkodGhpcyBpcyB3aGF0IG15IHBhdGNo
IGFkZGVkLCBjdXJyZW50IGNvZGUgbWlzc2VzIHRoaXMpLgo+IAo+IAo+IE5vcGUsIGN1cnJlbnQg
Y29kZSBkaWQgdGhpcyBidXQgbm90IHRoZSBjYXNlIHdoZW4gbWFwIG5lZWQgdG8gYmUgaW52YWxp
ZGF0ZWQKPiBpbiB0aGUgdmhvc3QgY29udHJvbCBwYXRoIChpb2N0bCBldGMpLgo+IAo+IAo+ID4g
Cj4gPiAJYXQgdGhhdCBwb2ludCBrZXJuZWwgY2FuIGNvbWUgYW5kIG1ha2UgdGhlIHBhZ2UgY2xl
YW4gYWdhaW4uCj4gPiAKPiA+IAlBdCB0aGF0IHBvaW50IFZRIGhhbmRsZXJzIGNhbiBrZWVwIGEg
Y29weSBvZiB0aGUgbWFwCj4gPiAJYW5kIGNoYW5nZSB0aGUgcGFnZSBhZ2Fpbi4KPiAKPiAKPiBX
ZSB3aWxsIGluY3JlYXNlIGludmFsaWRhdGVfY291bnQgd2hpY2ggcHJldmVudCB0aGUgcGFnZSBi
ZWluZyB1c2VkIGJ5IG1hcC4KPiAKPiBUaGFua3MKCk9LIEkgdGhpbmsgSSBnb3QgaXQsIHRoYW5r
cyEKCgo+IAo+ID4gCj4gPiAKPiA+IEF0IHRoaXMgcG9pbnQgSSBkb24ndCB1bmRlcnN0YW5kIGhv
dyB3ZSBjYW4gbWFyayBwYWdlIGRpcnR5Cj4gPiBzYWZlbHkuCj4gPiAKPiA+ID4gPiA+ID4gPiBC
dHcsIGZvciBrdm0gaW9jdGwgaXQgc3RpbGwgdXNlcyBzeW5jaHJvbml6ZV9yY3UoKSBpbiBrdm1f
dmNwdV9pb2N0bCgpLAo+ID4gPiA+ID4gPiA+IChqdXN0IGEgbGl0dGxlIGJpdCBtb3JlIGhhcmQg
dG8gdHJpZ2dlcik6Cj4gPiA+ID4gPiA+IEFGQUlLIHRoZXNlIG5ldmVyIHJ1biBpbiByZXNwb25z
ZSB0byBndWVzdCBldmVudHMuCj4gPiA+ID4gPiA+IFNvIHRoZXkgY2FuIHRha2UgdmVyeSBsb25n
IGFuZCBndWVzdHMgc3RpbGwgd29uJ3QgY3Jhc2guCj4gPiA+ID4gPiBXaGF0IGlmIGd1ZXN0IG1h
bmFnZXMgdG8gZXNjYXBlIHRvIHFlbXU/Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoYW5rcwo+ID4g
PiA+IFRoZW4gaXQncyBnb2luZyB0byBiZSBzbG93LiBXaHkgZG8gd2UgY2FyZT8KPiA+ID4gPiBX
aGF0IHdlIGRvIG5vdCB3YW50IGlzIHN5bmNocm9uaXplX3JjdSB0aGF0IGd1ZXN0IGlzIGJsb2Nr
ZWQgb24uCj4gPiA+ID4gCj4gPiA+IE9rLCB0aGlzIGxvb2tzIGxpa2UgdGhhdCBJIGhhdmUgc29t
ZSBtaXN1bmRlcnN0YW5kaW5nIGhlcmUgb2YgdGhlIHJlYXNvbiB3aHkKPiA+ID4gc3luY2hyb25p
emVfcmN1KCkgaXMgbm90IHByZWZlcmFibGUgaW4gdGhlIHBhdGggb2YgaW9jdGwuIEJ1dCBpbiBr
dm0gY2FzZSwKPiA+ID4gaWYgcmN1X2V4cGVkaXRlZCBpcyBzZXQsIGl0IGNhbiB0cmlnZ2VycyBJ
UElzIEFGQUlLLgo+ID4gPiAKPiA+ID4gVGhhbmtzCj4gPiA+IAo+ID4gWWVzLCBleHBlZGl0ZWQg
aXMgbm90IGdvb2QgZm9yIHNvbWV0aGluZyBndWVzdCBjYW4gdHJpZ2dlci4KPiA+IExldCdzIGp1
c3QgdXNlIGtmcmVlX3JjdSBpZiB3ZSBjYW4uIFBhdWwgc2FpZCBldmVuIHRob3VnaAo+ID4gZG9j
dW1lbnRhdGlvbiBzdGlsbCBzYXlzIGl0IG5lZWRzIHRvIGJlIHJhdGUtbGltaXRlZCwgdGhhdAo+
ID4gcGFydCBpcyBiYXNpY2FsbHkgc3RhbGUgYW5kIHdpbGwgZ2V0IHVwZGF0ZWQuCj4gPiAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
