Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA95764E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:49:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OmReHEEVThY0ZOGTbfVFzybSujVwdDfXqM9y+E077P8=; b=mZ9ZAHi2q3dD89
	4gFSS//aW0Cw15kqPlh0Gl6cF7kCA3sPry49j70UqbQE5ycUKRdRgWwTKG2RcKFqfCEKVJ1YZJHzu
	IKTyzg1EwlupIJcyrlvhGjWjQ4odAMpqBf6Vd5nhi13a1aGISWmyMV4My4qTk1n+8M6JUs7DGgeiI
	d5P2/uvkqWAaqkZKZjd3x29rLtxOywRRj+0Iu8es3o6iVB6AzU4PsFo0ZLyQHGRVeGP45q1918znc
	XIN8unLOHN9yMIer+3rBLbupyY/ssFr5BXimtDayqYUkEVOA6B8JzivYk/+EOPJAoUB/QRLLAIpO7
	jumrzvF1Djby2+blvVVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyjP-0004B7-0K; Fri, 26 Jul 2019 11:49:51 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyj6-00049X-9X
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:49:33 +0000
Received: by mail-qt1-f195.google.com with SMTP id h18so52256701qtm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 04:49:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=i8wjsn/J7AjCMbxusJs+A5ywmyPLK0X8wVGP+ZIy8uY=;
 b=CZ56iqRUevQNANJ4BHDqi3dU+hJrh5rCnc8WOiX18Tt//lZBDljpwpIZi43YJndhzb
 TajXWVP5EovyB+fMQcDcocUtgwEmhuLXYNcFOTvXzmsjVd6Ai4WcL6ajuqcMf0AJblHf
 IX3q1Igi82DjTfehJgUzjzp+SwRaZR//9yB43yP/nJHpk7CsZx7814GI3U+MHQUaUTl2
 E1GbvCbjyDb8FuTtJNNQUokIUjh+G9UgNQW0ivOVp+RwV3SOGaDS/jGHGg43ufBdMeYj
 KQg28uH9EmPpNiZDKcHmDTruzpWA53uwhGKVau47oxIadQdmd0kygOyXeWN2AkZwYx7z
 gjag==
X-Gm-Message-State: APjAAAXDdUtzVE8yc2unohufaOuOxLkFlQ3xtyJjMWyNeL8Z67BO0EuM
 +uGSBYzd9xKN3wPemqddHI2uGg==
X-Google-Smtp-Source: APXvYqwMsTGjfM7uQAnObrU4lf6ZCQqoJiT3HpWwMpyDoRsBS/oRMj++843f20ueHHr8c24KKPsFiw==
X-Received: by 2002:ac8:32e8:: with SMTP id a37mr66953459qtb.231.1564141769219; 
 Fri, 26 Jul 2019 04:49:29 -0700 (PDT)
Received: from redhat.com ([212.92.104.165])
 by smtp.gmail.com with ESMTPSA id f14sm21725527qto.11.2019.07.26.04.49.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 04:49:28 -0700 (PDT)
Date: Fri, 26 Jul 2019 07:49:19 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Subject: Re: WARNING in __mmdrop
Message-ID: <20190726074644-mutt-send-email-mst@kernel.org>
References: <20190723035725-mutt-send-email-mst@kernel.org>
 <3f4178f1-0d71-e032-0f1f-802428ceca59@redhat.com>
 <20190723051828-mutt-send-email-mst@kernel.org>
 <caff362a-e208-3468-3688-63e1d093a9d3@redhat.com>
 <20190725012149-mutt-send-email-mst@kernel.org>
 <55e8930c-2695-365f-a07b-3ad169654d28@redhat.com>
 <20190725042651-mutt-send-email-mst@kernel.org>
 <84bb2e31-0606-adff-cf2a-e1878225a847@redhat.com>
 <20190725092332-mutt-send-email-mst@kernel.org>
 <11802a8a-ce41-f427-63d5-b6a4cf96bb3f@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <11802a8a-ce41-f427-63d5-b6a4cf96bb3f@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_044932_329727_19CEC1EB 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

T24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgMTA6MjU6MjVQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzcvMjUg5LiL5Y2IOToyNiwgTWljaGFlbCBTLiBUc2lya2luIHdyb3Rl
Ogo+ID4gPiBFeGFjdGx5LCBhbmQgdGhhdCdzIHRoZSByZWFzb24gYWN0dWFsbHkgSSB1c2Ugc3lu
Y2hyb25pemVfcmN1KCkgdGhlcmUuCj4gPiA+IAo+ID4gPiBTbyB0aGUgY29uY2VybiBpcyBzdGls
bCB0aGUgcG9zc2libGUgc3luY2hyb25pemVfZXhwZWRpdGVkKCk/Cj4gPiBJIHRoaW5rIHN5bmNo
cm9uaXplX3NyY3VfZXhwZWRpdGVkLgo+ID4gCj4gPiBzeW5jaHJvbml6ZV9leHBlZGl0ZWQgc2Vu
ZHMgbG90cyBvZiBJUEkgYW5kIGlzIGJhZCBmb3IgcmVhbHRpbWUgVk1zLgo+ID4gCj4gPiA+IENh
biBJIGRvIHRoaXMKPiA+ID4gb24gdGhyb3VnaCBhbm90aGVyIHNlcmllcyBvbiB0b3Agb2YgdGhl
IGluY29taW5nIFYyPwo+ID4gPiAKPiA+ID4gVGhhbmtzCj4gPiA+IAo+ID4gVGhlIHF1ZXN0aW9u
IGlzIHRoaXM6IGlzIHRoaXMgc3RpbGwgYSBnYWluIGlmIHdlIHN3aXRjaCB0byB0aGUKPiA+IG1v
cmUgZXhwZW5zaXZlIHNyY3U/IElmIHllcyB0aGVuIHdlIGNhbiBrZWVwIHRoZSBmZWF0dXJlIG9u
LAo+IAo+IAo+IEkgdGhpbmsgd2Ugb25seSBjYXJlIGFib3V0IHRoZSBjb3N0IG9uIHNyY3VfcmVh
ZF9sb2NrKCkgd2hpY2ggbG9va3MgcHJldHR5Cj4gdGlueSBmb3JtIG15IHBvaW50IG9mIHZpZXcu
IFdoaWNoIGlzIGJhc2ljYWxseSBhIFJFQURfT05DRSgpICsgV1JJVEVfT05DRSgpLgo+IAo+IE9m
IGNvdXJzZSBJIGNhbiBiZW5jaG1hcmsgdG8gc2VlIHRoZSBkaWZmZXJlbmNlLgo+IAo+IAo+ID4g
aWYgbm90IHdlJ2xsIHB1dCBpdCBvZmYgdW50aWwgbmV4dCByZWxlYXNlIGFuZCB0aGluawo+ID4g
b2YgYmV0dGVyIHNvbHV0aW9ucy4gcmN1LT5zcmN1IGlzIGp1c3QgYSBmaW5kIGFuZCByZXBsYWNl
LAo+ID4gZG9uJ3Qgc2VlIHdoeSB3ZSBuZWVkIHRvIGRlZmVyIHRoYXQuIGNhbiBiZSBhIHNlcGFy
YXRlIHBhdGNoCj4gPiBmb3Igc3VyZSwgYnV0IHdlIG5lZWQgdG8ga25vdyBob3cgd2VsbCBpdCB3
b3Jrcy4KPiAKPiAKPiBJIHRoaW5rIEkgZ2V0IGhlcmUsIGxldCBtZSB0cnkgdG8gZG8gdGhhdCBp
biBWMiBhbmQgbGV0J3Mgc2VlIHRoZSBudW1iZXJzLgo+IAo+IFRoYW5rcwoKVGhlcmUncyBvbmUg
b3RoZXIgdGhpbmcgdGhhdCBib3RoZXJzIG1lLCBhbmQgdGhhdCBpcyB0aGF0CmZvciBsYXJnZSBy
aW5ncyB3aGljaCBhcmUgbm90IHBoeXNpY2FsbHkgY29udGlndW91cwp3ZSBkb24ndCBpbXBsZW1l
bnQgdGhlIG9wdGltaXphdGlvbi4KCkZvciBzdXJlLCB0aGF0IGNhbiB3YWl0LCBidXQgSSB0aGlu
ayBldmVudHVhbGx5IHdlIHNob3VsZAp2bWFwIGxhcmdlIHJpbmdzLgoKLS0gCk1TVAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
