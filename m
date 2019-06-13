Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD832448BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 19:11:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bwh9LOOOO8wCcacC5nQKnlasixdyb0+hgeIOXnkxocw=; b=XdoBswJtqKPuYw
	SuSpjGT3kWtUboi8iOBgrweiOb8WexCk6LFlu9Fyl7UnUYBCG9XaHvIaUcQMR3XvhgsgOIqgrg1mk
	n4TB0YSndl6bNixr5zQjSbUyp4BXZlQbLqG8Gckohcs9jAQ4wdejGtnNW2d0av0his+JnK5GBgsUb
	zAREZx/j3A8QmWEXJnYz6Gnbj/lmPZvQqWMYLFWjh5WQsLAmZ5c7PT9kRxNa+6tKM4RY0w/nXKfCd
	vn3daFk5UXose5lu+wXnMq1yYSBu1C7J3UBM3xNcckDGOgnJJMwBv/cZfeg/JiYx+2QYPTL6tpwzg
	vPelJw7xEpXPrriNaBGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbTFz-00071N-Cj; Thu, 13 Jun 2019 17:11:23 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbTFn-00070D-Pk
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 17:11:13 +0000
Received: by mail-io1-xd43.google.com with SMTP id w25so18570713ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 10:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=N3qDAZwZqxC4UyoOIhHYUwzcDbIARMSiLNJ2yGeLMdo=;
 b=eh7V3O2aS38SAwQ5ws7fCcM7k/UGKK1pP/guCl6amGOoSv8xMO9mPsRkemReTxX0f8
 xx2EFqshWI2oxUvWtdGYfHdPvA4wmPke6q3t7/A+3I3LDk7zsS9F7tRilD1IE3CCGdv+
 Lcq6hOJvrpMk5XoUy+dh7WdmHsy5baVaSzp90=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=N3qDAZwZqxC4UyoOIhHYUwzcDbIARMSiLNJ2yGeLMdo=;
 b=QXjdoyeJgZ1aYrL7xgjgX8g0NRtd87IDFyL0YTZg1q43YVryuzjpBE0Z+FMWNMRa71
 tmJr4CqZ7CvMjQTW3a4CsiMnB56tj1jBaSTUindB04HxnuifHWC5ygyBmzJfei7OBtgh
 ZGqMeUTzetJDxiSnUyerK+KdqaKXE/yS7OLYgmA5F9lGzonii7EQ+N8keScExdNYSCVD
 O/5L+A9YZDhMxQbG38N82qMGWPIaWhIATV5wSIxIzdejI5YKz88PMu8oXnjLYumqKIki
 nfK6XkbxRxqmhA/7x7DYgCEATuZWKKqaxNCHTuD44sYj1GV3zLCCFYep8w1VUBlSr4NI
 3QCw==
X-Gm-Message-State: APjAAAUYqgcF6WCf4fip96nDcCjSIL3rSAGQHQHspuQW2oN9KsYwsePu
 LsBeKeFMAp4wEnU39KYVFbWQlhFUnh8=
X-Google-Smtp-Source: APXvYqyJE+Qbx3x6EA97UCN9X/Qz18uLLnSNVYdbKJPbhhgYEsEAeSv9sO7qaI/mf+RmUqBuIbzV1A==
X-Received: by 2002:a02:2a0f:: with SMTP id w15mr53124654jaw.52.1560445870217; 
 Thu, 13 Jun 2019 10:11:10 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com.
 [209.85.166.45])
 by smtp.gmail.com with ESMTPSA id r5sm659490iom.42.2019.06.13.10.11.09
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 10:11:09 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id k8so18621188iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 10:11:09 -0700 (PDT)
X-Received: by 2002:a5e:8f08:: with SMTP id c8mr1658529iok.52.1560445869195;
 Thu, 13 Jun 2019 10:11:09 -0700 (PDT)
MIME-Version: 1.0
References: <c2e6af51-5676-3715-6666-c3f18df7b992@free.fr>
 <CAK8P3a1_WvHYW243MR5-NdFm3cSt+cVGM5EJmOM8uiQMQ3vQjQ@mail.gmail.com>
 <a732f522-5e65-3ac4-de04-802ef5455747@free.fr>
 <CAD=FV=U+Ky1bAuAuuY+eBdTP9U3kbuH0tfwyN0Zs-iw0GNUFyQ@mail.gmail.com>
 <13cb7357-0d10-fe43-bee1-b2142d01684c@free.fr>
In-Reply-To: <13cb7357-0d10-fe43-bee1-b2142d01684c@free.fr>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 13 Jun 2019 10:10:57 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xb1kum3z72Gzt1ROMJWNkkscAMgMkcXEFqnovOVbv=5Q@mail.gmail.com>
Message-ID: <CAD=FV=Xb1kum3z72Gzt1ROMJWNkkscAMgMkcXEFqnovOVbv=5Q@mail.gmail.com>
Subject: Re: [PATCH v1] iopoll: Tweak readx_poll_timeout sleep range
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_101111_842922_06082794 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Bjorn Helgaas <helgaas@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgoKT24gVGh1LCBKdW4gMTMsIDIwMTkgYXQgOTozNyBBTSBNYXJjIEdvbnphbGV6IDxtYXJj
LncuZ29uemFsZXpAZnJlZS5mcj4gd3JvdGU6Cj4KPiBPbiAxMy8wNi8yMDE5IDE4OjExLCBEb3Vn
IEFuZGVyc29uIHdyb3RlOgo+Cj4gPiBPbiBUaHUsIEp1biAxMywgMjAxOSBhdCA5OjA0IEFNIE1h
cmMgR29uemFsZXogd3JvdGU6Cj4gPgo+ID4+IEhtbW0sIEkgZXhwZWN0IHRoZSB0eXBpY2FsIHVz
ZS1jYXNlIHRvIGJlOgo+ID4+ICJIVyBtYW51YWwgc3RhdGVzIG9wZXJhdGlvbiBYIGNvbXBsZXRl
cyBpbiAxMDAgwrVzLgo+ID4+IExldCdzIGNhbGwgdXNsZWVwX3JhbmdlKDEwMCwgZm9vKTsgYmVm
b3JlIGhpdHRpbmcgdGhlIHJlZy4iCj4gPj4KPiA+PiBBbmQgZm9vIG5lZWRzIHRvIGJlIGEgInJl
YXNvbmFibGUiIHZhbHVlOiBiaWcgZW5vdWdoIHRvIGJlIGFibGUKPiA+PiB0byBtZXJnZSBzZXZl
cmFsIHJlcXVlc3RzLCBsb3cgZW5vdWdoIG5vdCB0byB3YWl0IHRvbyBsb25nIGFmdGVyCj4gPj4g
dGhlIEhXIGlzIHJlYWR5Lgo+ID4+Cj4gPj4gSW4gdGhpcyBjYXNlLCBJJ2Qgc2F5IHVzbGVlcF9y
YW5nZSgxMDAsIDIwMCk7IG1ha2VzIHNlbnNlLgo+ID4+Cj4gPj4gQ29tZSB0byB0aGluayBvZiBp
dCwgSSdtIG5vdCBzdXJlIG1pbj0yNiAob3IgbWluPTUwKSBtYWtlcyBzZW5zZS4uLgo+ID4+IFdo
eSB3YWl0ICpsZXNzKiB0aGFuIHdoYXQgdGhlIHVzZXIgc3BlY2lmaWVkPwo+ID4KPiA+IElJUkMg
dXNsZWVwX3JhbmdlKCkgbmVhcmx5IGFsd2F5cyB0cmllcyB0byBzbGVlcCBmb3IgdGhlIG1heC4g
IE15Cj4gPiByZWNvbGxlY3Rpb24gb2YgdGhlIGRlc2lnbiBpcyB0aGF0IHlvdSBvbmx5IGVuZCB1
cCB3aXRoIHNvbWV0aGluZyBsZXNzCj4gPiB0aGFuIHRoZSBtYXggaWYgdGhlIHN5c3RlbSB3YXMg
Z29pbmcgdG8gd2FrZSB1cCBhbnl3YXkuICBJbiBzdWNoIGEKPiA+IGNhc2UgaXQgc2VlbXMgbGlr
ZSBpdCB3b3VsZG4ndCBiZSBpbnNhbmUgdG8gZ28gYW5kIGNoZWNrIGlmIHRoZQo+ID4gY29uZGl0
aW9uIGlzIGFscmVhZHkgdHJ1ZSBpZiAyNSUgb2YgdGhlIHRpbWUgaGFzIHBhc3NlZC4gIE1heWJl
IHlvdSdsbAo+ID4gZ2V0IGx1Y2t5IGFuZCB5b3UgY2FuIHJldHVybiBlYXJseS4KPiA+Cj4gPiBB
cmUgeW91IGFjdHVhbGx5IHNlZWluZyBwcm9ibGVtcyB3aXRoIHRoZSAvIDQsIG9yIGlzIHRoaXMg
cGF0Y2gganVzdCBhCj4gPiByZXN1bHQgb2YgY29kZSBpbnNwZWN0aW9uPwo+Cj4gTm8gYWN0dWFs
IGlzc3VlLiBJIGp1c3QgcmFuIGludG8gYSBkcml2ZXIgY2FsbGluZzoKPgo+ICAgICAgICAgcmVh
ZGxfcG9sbF90aW1lb3V0KHN0YXR1cywgdmFsLCB2YWwgJiBtYXNrLCAxLCAxMDAwKTsKPgo+IGFu
ZCBpdCBzZWVtZWQuLi4gdW53aXNlKD8pIHRvIGNhbGwgdXNsZWVwX3JhbmdlKDEsIDEpOwo+Cj4g
QnV0IGlmLCBhcyB5b3Ugc2F5LCB1c2xlZXBfcmFuZ2UoKSBhaW1zIGZvciB0aGUgbWF4CgpJdCB3
YXMgY2VydGFpbmx5IHdoYXQgd2UgZm91bmQgaW46CgpodHRwczovL2xrbWwua2VybmVsLm9yZy9y
LzE0NDQyNjUzMjEtMTY3NjgtNi1naXQtc2VuZC1lbWFpbC1kaWFuZGVyc0BjaHJvbWl1bS5vcmcK
Ci4uLmluIGZhY3QsIGF0IG9uZSBwb2ludCBpbiB0aW1lIEkgaGFkIGEgcGF0Y2ggY29va2VkIHVw
IHRoYXQgd291bGQKY2hhbmdlIHRoZSBiZWhhdmlvciBkdXJpbmcgYm9vdCB3aGVyZSAocHJlc3Vt
YWJseSkgd2UnZCByYXRoZXIgYm9vdApmYXN0ZXIuICAuLi5idXQgYWZ0ZXIgZml4aW5nIGR3YzIg
aXQgZGlkbid0IGFjdHVhbGx5IGhhdmUgbXVjaCBvZiBhbgppbXBhY3QgZWxzZXdoZXJlLgoKCj4g
dGhlbiBJIGd1ZXNzIGl0J3MKPiBub3QgYSBiaWcgZGVhbCB0byBpc3N1ZSBhbiBlYXJseSByZWFk
IG9yIDMuLi4gTWVoCgpJTU8gaXQgc2VlbXMgbGlrZSB0aGUgZHJpdmVyIHNob3VsZCBiZSBmaXhl
ZC4gIEl0IHNob3VsZCBlaXRoZXIgc3BlY2lmeToKCmEpIHRoZSAod2VsbCBkZWZpbmVkKSAwIGZv
ciB0aGUgZGVsYXksIHdoaWNoIG1lYW5zIG5vIGRlbGF5LgoKYikgYSBtb3JlIHNhbmUgZGVsYXkK
CgotRG91ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
