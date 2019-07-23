Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D68971B04
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 17:03:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGUWzV541/ZxsWL9c0+p5/CmVs78zHFoTeV0N9VgSi0=; b=PEC/onSt7wMIhB
	+YI6kThwbplgb00IvaJBrz5QSsYbvp5JA91hKyUuHm3eMfbxbx9bWgXtnOYIQAAjkwewkbAhoAukj
	SHT1dkfwOuo+Xskwj9I0NRMqRbtO5bqYAHYevfVVggbzFYNJPVsRWEzV35o4TFJYdXHPGU/rufm9G
	NjszAwPH33BvjEK6Z8TxGIylfT3yjVOfr46d84M/lBPoY639hMBEcM5m20VpZa+PAr5iLrCAcaCwo
	iTk2ZshqyfPI3su6SPyrGbiVNFCF39i8MOndrZYilZQIv5Z5K5zP7xyIhAJCo3Vl2efZbJLjFYRRY
	E0shiYdG0fKi5c3VOmZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwJj-0000aj-US; Tue, 23 Jul 2019 15:03:03 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpwJT-0000Za-N5
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 15:02:49 +0000
Received: by mail-qk1-f196.google.com with SMTP id r21so31404385qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 08:02:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=R5M2K4AjBjzXbSZ/zP6imFgwCWLsiDqliCyMwtU6WVA=;
 b=e63AOmb6HSfRZxKZw9xDcwzAbAjChufhqedOiDgPNognJ5wEhrwwg3nQdaVWNZi3E0
 O+IAqs0HqSdGqYmFUd3/bfHUXOPCBsGZrYDJltaIfOKkV17pQQ/tFgopiIOmGdlxmclu
 M/5lmkb6WlIgTZjifNVD+NbmJeczUxAgP3YVMFpmEqKbJDC/clr1NPkqLtd7JlkCObvY
 9EPXn1KenqYUlt6mKjv8k8iXPA1JRgTuSrMXxnZuDo16JxGDFNmOkm10nMSL3P2I6Kdr
 DOLtmudOfbRA7bXAwjFPIdM5T6n9CW1phaam+GSxDin/Fmvr5OXL5Vv6x0mvEb/d1u6I
 zgTA==
X-Gm-Message-State: APjAAAVrt5V/EBBHniJNTT+yFiDgsKd60SBnsxcVyEWLN9TcqS60c7Tn
 J845d4Q9gYFSRRz79lcJY0xpRA==
X-Google-Smtp-Source: APXvYqxzk6SWsTdinjKSsA/de1iMdf+1ZzQW/oUQt2F/o3dsQk8ga4tD5zxAx4DzheYaNy643xaKrA==
X-Received: by 2002:ae9:e20c:: with SMTP id c12mr49989037qkc.210.1563894166621; 
 Tue, 23 Jul 2019 08:02:46 -0700 (PDT)
Received: from redhat.com (bzq-79-181-91-42.red.bezeqint.net. [79.181.91.42])
 by smtp.gmail.com with ESMTPSA id
 s25sm18898787qkm.130.2019.07.23.08.02.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 08:02:45 -0700 (PDT)
Date: Tue, 23 Jul 2019 11:02:37 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190723110219-mutt-send-email-mst@kernel.org>
References: <20190721044615-mutt-send-email-mst@kernel.org>
 <75c43998-3a1c-676f-99ff-3d04663c3fcc@redhat.com>
 <20190722035657-mutt-send-email-mst@kernel.org>
 <cfcd330d-5f4a-835a-69f7-c342d5d0d52d@redhat.com>
 <20190723010156-mutt-send-email-mst@kernel.org>
 <124be1a2-1c53-8e65-0f06-ee2294710822@redhat.com>
 <20190723032800-mutt-send-email-mst@kernel.org>
 <e2e01a05-63d8-4388-2bcd-b2be3c865486@redhat.com>
 <20190723062221-mutt-send-email-mst@kernel.org>
 <9baa4214-67fd-7ad2-cbad-aadf90bbfc20@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9baa4214-67fd-7ad2-cbad-aadf90bbfc20@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_080248_189688_24BB59E7 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
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

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDk6MzQ6MjlQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjMg5LiL5Y2INjoyNywgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gPiBZZXMsIHNpbmNlIHRoZXJlIGNvdWxkIGJlIG11bHRpcGxlIGNvLWN1cnJlbnQgaW52
YWxpZGF0aW9uIHJlcXVlc3RzLiBXZSBuZWVkCj4gPiA+IGNvdW50IHRoZW0gdG8gbWFrZSBzdXJl
IHdlIGRvbid0IHBpbiB3cm9uZyBwYWdlcy4KPiA+ID4gCj4gPiA+IAo+ID4gPiA+IEkgYWxzbyB3
b25kZXIgYWJvdXQgb3JkZXJpbmcuIGt2bSBoYXMgdGhpczoKPiA+ID4gPiAgICAgICAgICAvKgo+
ID4gPiA+ICAgICAgICAgICAgKiBVc2VkIHRvIGNoZWNrIGZvciBpbnZhbGlkYXRpb25zIGluIHBy
b2dyZXNzLCBvZiB0aGUgcGZuIHRoYXQgaXMKPiA+ID4gPiAgICAgICAgICAgICogcmV0dXJuZWQg
YnkgcGZuX3RvX3Bmbl9wcm90IGJlbG93Lgo+ID4gPiA+ICAgICAgICAgICAgKi8KPiA+ID4gPiAg
ICAgICAgICAgbW11X3NlcSA9IGt2bS0+bW11X25vdGlmaWVyX3NlcTsKPiA+ID4gPiAgICAgICAg
ICAgLyoKPiA+ID4gPiAgICAgICAgICAgICogRW5zdXJlIHRoZSByZWFkIG9mIG1tdV9ub3RpZmll
cl9zZXEgaXNuJ3QgcmVvcmRlcmVkIHdpdGggUFRFIHJlYWRzIGluCj4gPiA+ID4gICAgICAgICAg
ICAqIGdmbl90b19wZm5fcHJvdCgpICh3aGljaCBjYWxscyBnZXRfdXNlcl9wYWdlcygpKSwgc28g
dGhhdCB3ZSBkb24ndAo+ID4gPiA+ICAgICAgICAgICAgKiByaXNrIHRoZSBwYWdlIHdlIGdldCBh
IHJlZmVyZW5jZSB0byBnZXR0aW5nIHVubWFwcGVkIGJlZm9yZSB3ZSBoYXZlIGEKPiA+ID4gPiAg
ICAgICAgICAgICogY2hhbmNlIHRvIGdyYWIgdGhlIG1tdV9sb2NrIHdpdGhvdXQgbW11X25vdGlm
aWVyX3JldHJ5KCkgbm90aWNpbmcuCj4gPiA+ID4gICAgICAgICAgICAqCj4gPiA+ID4gICAgICAg
ICAgICAqIFRoaXMgc21wX3JtYigpIHBhaXJzIHdpdGggdGhlIGVmZmVjdGl2ZSBzbXBfd21iKCkg
b2YgdGhlIGNvbWJpbmF0aW9uCj4gPiA+ID4gICAgICAgICAgICAqIG9mIHRoZSBwdGVfdW5tYXBf
dW5sb2NrKCkgYWZ0ZXIgdGhlIFBURSBpcyB6YXBwZWQsIGFuZCB0aGUKPiA+ID4gPiAgICAgICAg
ICAgICogc3Bpbl9sb2NrKCkgaW4ga3ZtX21tdV9ub3RpZmllcl9pbnZhbGlkYXRlXzxwYWdlfHJh
bmdlX2VuZD4oKSBiZWZvcmUKPiA+ID4gPiAgICAgICAgICAgICogbW11X25vdGlmaWVyX3NlcSBp
cyBpbmNyZW1lbnRlZC4KPiA+ID4gPiAgICAgICAgICAgICovCj4gPiA+ID4gICAgICAgICAgIHNt
cF9ybWIoKTsKPiA+ID4gPiAKPiA+ID4gPiBkb2VzIHRoaXMgYXBwbHkgdG8gdXM/IENhbid0IHdl
IHVzZSBhIHNlcWxvY2sgaW5zdGVhZCBzbyB3ZSBkbwo+ID4gPiA+IG5vdCBuZWVkIHRvIHdvcnJ5
Pwo+ID4gPiBJJ20gbm90IGZhbWlsaWFyIHdpdGgga3ZtIE1NVSBpbnRlcm5hbHMsIGJ1dCB3ZSBk
byBldmVyeXRoaW5nIHVuZGVyIG9mCj4gPiA+IG1tdV9sb2NrLgo+ID4gPiAKPiA+ID4gVGhhbmtz
Cj4gPiBJIGRvbid0IHRoaW5rIHRoaXMgaGVscHMgYXQgYWxsLgo+ID4gCj4gPiBUaGVyZSdzIG5v
IGxvY2sgYmV0d2VlbiBjaGVja2luZyB0aGUgaW52YWxpZGF0ZSBjb3VudGVyIGFuZAo+ID4gZ2V0
IHVzZXIgcGFnZXMgZmFzdCB3aXRoaW4gdmhvc3RfbWFwX3ByZWZldGNoLiBTbyBpdCdzIHBvc3Np
YmxlCj4gPiB0aGF0IGdldCB1c2VyIHBhZ2VzIGZhc3QgcmVhZHMgUFRFcyBzcGVjdWxhdGl2ZWx5
IGJlZm9yZQo+ID4gaW52YWxpZGF0ZSBpcyByZWFkLgo+ID4gCj4gPiAtLSAKPiAKPiAKPiBJbiB2
aG9zdF9tYXBfcHJlZmV0Y2goKSB3ZSBkbzoKPiAKPiDCoMKgwqDCoMKgwqDCoCBzcGluX2xvY2so
JnZxLT5tbXVfbG9jayk7Cj4gCj4gwqAgwqAgwqAgwqAgLi4uCj4gCj4gwqDCoMKgwqDCoMKgwqAg
ZXJyID0gLUVGQVVMVDsKPiDCoMKgwqDCoMKgwqDCoCBpZiAodnEtPmludmFsaWRhdGVfY291bnQp
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gZXJyOwo+IAo+IMKgwqDCoMKg
wqDCoMKgIC4uLgo+IAo+IMKgwqDCoMKgwqDCoMKgIG5waW5uZWQgPSBfX2dldF91c2VyX3BhZ2Vz
X2Zhc3QodWFkZHItPnVhZGRyLCBucGFnZXMsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVhZGRy
LT53cml0ZSwgcGFnZXMpOwo+IAo+IMKgwqDCoMKgwqDCoMKgIC4uLgo+IAo+IMKgwqDCoCDCoMKg
wqAgc3Bpbl91bmxvY2soJnZxLT5tbXVfbG9jayk7Cj4gCj4gSXMgdGhpcyBub3Qgc3VmZmljaWVu
dD8KPiAKPiBUaGFua3MKClNvIHdoYXQgb3JkZXJzIF9fZ2V0X3VzZXJfcGFnZXNfZmFzdCB3cnQg
aW52YWxpZGF0ZV9jb3VudCByZWFkPwoKLS0gCk1TVAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
