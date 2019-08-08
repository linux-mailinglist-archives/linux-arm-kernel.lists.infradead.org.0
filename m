Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3482485BB7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 09:42:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G8U1MpurjXfgGW0JMYjIvU7c+HFL5VxQfci6Ie1DwtY=; b=t3yKYkYWJ+TqEs
	ZrBPLanMOvVFpZzpkOBeZLBiT/nb1Hf05QLhMiMEUOBJ/hjPvnG5Y6XoVyPuvaKMTNXEU1qLaplBv
	frRbOXPDu7jYoPL0fVn9nvaAM+RefmbziS9dSAYJwhd0ezMnHBJg41MmW+uy+naoS/JETLcLp2rkj
	5+Qfh5nsqbUNPEsywel/gvW78afNm2mo0Lqy5HDLnOFcPi18YtlLqdSwFsX681mQts8/v8Ri7U1KI
	/boIQtWrQ1Q2oJXkLT14bUbQICPYknIEvdqh+fL20gjOeZPOeGgmkz3sspzq+DPOhBbkgOteHu3Ts
	ftaG7af0XnzqYvZYIxUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvd3r-0007A2-PO; Thu, 08 Aug 2019 07:42:11 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvd35-00079b-A4
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 07:41:24 +0000
Received: by mail-ot1-x342.google.com with SMTP id l15so57689851oth.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 00:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IngtmsHwu9gnFB43lssfDLWSkL176YIsJ9vKXeaVWC4=;
 b=BUP5OmRS+yTdCFOhHeQyg7Sm7K9gB9rfyd5jTP6G/6XEqK+QpDhLUbQGGqIiWUjkQX
 hY6Z5hbPGS2gwfs54RpC8YU4cXLO6SG1UGpmq1lBsSRYtBSDo9m67IWAiKOC8J3bBFkk
 9dpTi2s8dsrFYaIXsvI9CcCa3MLuk27JUDq/HdkQXRXyXOZZVp3NHbXkM2PHTG5LmXk6
 nVohO90P8uIDZ1TjttsqWl7rIL+Ym9JT0+tbhOQNAge9qJG8a5uY/lanKszjDXU6kQBj
 /I9x9sHKy7Ql4ZMZexEWa0cfle42FpVPeOIyVIE6RYjlsHHKSQhJJG66UDMdTbBKLnKs
 7o7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IngtmsHwu9gnFB43lssfDLWSkL176YIsJ9vKXeaVWC4=;
 b=Qzbx3yOjFHIzx0ebyg2TY4CoqawNYn5aYTLbgpZaHDRni/QQMBiT4Dh5yUpQwjDq4q
 zOBGYgMV9gtmTtchpYm/8Ltfx0/t4DbPyTDXuA6SOunD6m/i9KuPbMXUxZ/TZeGkezYo
 XTBj81swvwwBly23CVzfB7nXVsrGycS0sbbZq5ECkMqDzv00Yz3aa5nzuMKiiKGyzxJE
 1yIo+W0NFJxxsw/LKQ/YlTuyjXYKBaAFEh7LOn2G+42CtjHBGn3qYidcPYNXtllq50oI
 OO9EbCJ6HFqY9/DvKHO4jg0kpf6MKyF6z7+sksevcjl+/SbE3bTDhpV8aDWJ9/Pro5y1
 13vQ==
X-Gm-Message-State: APjAAAXQGi6JhEitCgjMkknISmK1Fo5OGsMiVXhDPkY7td9wGdLH6ozJ
 yuQhcNFA7Ew75dj/KTBEH/yOBBumlKcF6OShbb5b1w==
X-Google-Smtp-Source: APXvYqzEP4UJJeVOwojRyt4X8cuuhbcAnFAAQObvIlCAtYm5szbosS6hphi792ozs++3WLH8oxk/9jRqQzS+kzLLcic=
X-Received: by 2002:a5e:8a48:: with SMTP id o8mr4781623iom.287.1565250082034; 
 Thu, 08 Aug 2019 00:41:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190722131748.30319-1-brgl@bgdev.pl>
 <CAMRc=Mes8dEwscGU8LLQ5CcxmUnhBwt2iP0wk1qNRjRwy8CcFA@mail.gmail.com>
 <9e5704a3-8169-1575-4027-61d36c5e39b4@ti.com>
In-Reply-To: <9e5704a3-8169-1575-4027-61d36c5e39b4@ti.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 8 Aug 2019 09:41:11 +0200
Message-ID: <CAMRc=MeTgNf5Xsv6dSY0LJbsAOuoHcfB-x1riMwQkWtVc7wddQ@mail.gmail.com>
Subject: Re: [RESEND PATCH 00/10] ARM: davinci: use the new clocksource driver
To: Sekhar Nori <nsekhar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_004123_377122_DB387EA6 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xZtyLiwgNyBzaWUgMjAxOSBvIDIxOjI4IFNla2hhciBOb3JpIDxuc2VraGFyQHRpLmNvbT4gbmFw
aXNhxYIoYSk6Cj4KPiBPbiAwNS8wOC8xOSAxOjU5IFBNLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdy
b3RlOgo+ID4gcG9uLiwgMjIgbGlwIDIwMTkgbyAxNToxNyBCYXJ0b3N6IEdvbGFzemV3c2tpIDxi
cmdsQGJnZGV2LnBsPiBuYXBpc2HFgihhKToKPiA+Pgo+ID4+IEZyb206IEJhcnRvc3ogR29sYXN6
ZXdza2kgPGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+Cj4gPj4KPiA+PiBTZWtoYXIsCj4gPj4K
PiA+PiB0aGUgZm9sbG93aW5nIHBhdGNoZXMgc3dpdGNoIERhVmluY2kgdG8gdXNpbmcgdGhlIG5l
dyBjbG9ja3NvdXJjZSBkcml2ZXIgd2hpY2gKPiA+PiBpcyBub3cgdXBzdHJlYW0uIFRoZXkgYXJl
IHJlYmFzZWQgb24gdG9wIG9mIHY1LjMtcmMxLiBBZGRpdGlvbmFsbHkgdGhlCj4gPj4gZm9sbG93
aW5nIHR3byBwYXRjaGVzIHdlcmUgcmV2ZXJ0ZWQgbG9jYWxseSBkdWUgdG8gYSByZWdyZXNzaW9u
IGluIHY1LjMtcmMxCj4gPj4gYWJvdXQgd2hpY2ggdGhlIHJlbGV2YW50IG1haW50YWluZXJzIGhh
dmUgYmVlbiBhbHJlYWR5IG5vdGlmaWVkOgo+ID4+Cj4gPj4gICAyZWVmMTM5OWE4NjYgbW9kdWxl
czogZml4IEJVRyB3aGVuIGxvYWQgbW9kdWxlIHdpdGggcm9kYXRhPW4KPiA+PiAgIDkzNjUxZjgw
ZGNiNiBtb2R1bGVzOiBmaXggY29tcGlsZSBlcnJvciBpZiBkb24ndCBoYXZlIHN0cmljdCBtb2R1
bGUgcnd4Cj4gPj4KPiA+PiBCYXJ0b3N6IEdvbGFzemV3c2tpICgxMCk6Cj4gPj4gICBBUk06IGRh
dmluY2k6IGVuYWJsZSB0aGUgY2xvY2tzb3VyY2UgZHJpdmVyIGZvciBEVCBtb2RlCj4gPj4gICBB
Uk06IGRhdmluY2k6IFdBUk5fT04oKSBpZiBjbGtfZ2V0KCkgZmFpbHMKPiA+PiAgIEFSTTogZGF2
aW5jaTogZGE4NTA6IHN3aXRjaCB0byB1c2luZyB0aGUgY2xvY2tzb3VyY2UgZHJpdmVyCj4gPj4g
ICBBUk06IGRhdmluY2k6IGRhODMwOiBzd2l0Y2ggdG8gdXNpbmcgdGhlIGNsb2Nrc291cmNlIGRy
aXZlcgo+ID4+ICAgQVJNOiBkYXZpbmNpOiBtb3ZlIHRpbWVyIGRlZmluaXRpb25zIHRvIGRhdmlu
Y2kuaAo+ID4+ICAgQVJNOiBkYXZpbmNpOiBkbTM1NTogc3dpdGNoIHRvIHVzaW5nIHRoZSBjbG9j
a3NvdXJjZSBkcml2ZXIKPiA+PiAgIEFSTTogZGF2aW5jaTogZG0zNjU6IHN3aXRjaCB0byB1c2lu
ZyB0aGUgY2xvY2tzb3VyY2UgZHJpdmVyCj4gPj4gICBBUk06IGRhdmluY2k6IGRtNjQ0eDogc3dp
dGNoIHRvIHVzaW5nIHRoZSBjbG9ja3NvdXJjZSBkcml2ZXIKPiA+PiAgIEFSTTogZGF2aW5jaTog
ZG02NDZ4OiBzd2l0Y2ggdG8gdXNpbmcgdGhlIGNsb2Nrc291cmNlIGRyaXZlcgo+ID4+ICAgQVJN
OiBkYXZpbmNpOiByZW1vdmUgbGVnYWN5IHRpbWVyIHN1cHBvcnQKPiA+Pgo+ID4+ICBhcmNoL2Fy
bS9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsKPiA+PiAgYXJjaC9h
cm0vbWFjaC1kYXZpbmNpL01ha2VmaWxlICAgICAgICAgICAgICB8ICAgMyArLQo+ID4+ICBhcmNo
L2FybS9tYWNoLWRhdmluY2kvZGE4MzAuYyAgICAgICAgICAgICAgIHwgIDQ1ICstLQo+ID4+ICBh
cmNoL2FybS9tYWNoLWRhdmluY2kvZGE4NTAuYyAgICAgICAgICAgICAgIHwgIDUwICstLQo+ID4+
ICBhcmNoL2FybS9tYWNoLWRhdmluY2kvZGF2aW5jaS5oICAgICAgICAgICAgIHwgICAzICsKPiA+
PiAgYXJjaC9hcm0vbWFjaC1kYXZpbmNpL2RldmljZXMtZGE4eHguYyAgICAgICB8ICAgMSAtCj4g
Pj4gIGFyY2gvYXJtL21hY2gtZGF2aW5jaS9kZXZpY2VzLmMgICAgICAgICAgICAgfCAgMTkgLQo+
ID4+ICBhcmNoL2FybS9tYWNoLWRhdmluY2kvZG0zNTUuYyAgICAgICAgICAgICAgIHwgIDI4ICst
Cj4gPj4gIGFyY2gvYXJtL21hY2gtZGF2aW5jaS9kbTM2NS5jICAgICAgICAgICAgICAgfCAgMjYg
Ky0KPiA+PiAgYXJjaC9hcm0vbWFjaC1kYXZpbmNpL2RtNjQ0eC5jICAgICAgICAgICAgICB8ICAy
OCArLQo+ID4+ICBhcmNoL2FybS9tYWNoLWRhdmluY2kvZG02NDZ4LmMgICAgICAgICAgICAgIHwg
IDI4ICstCj4gPj4gIGFyY2gvYXJtL21hY2gtZGF2aW5jaS9pbmNsdWRlL21hY2gvY29tbW9uLmgg
fCAgMTcgLQo+ID4+ICBhcmNoL2FybS9tYWNoLWRhdmluY2kvaW5jbHVkZS9tYWNoL3RpbWUuaCAg
IHwgIDM1IC0tCj4gPj4gIGFyY2gvYXJtL21hY2gtZGF2aW5jaS90aW1lLmMgICAgICAgICAgICAg
ICAgfCA0MTQgLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+PiAgMTQgZmlsZXMgY2hhbmdlZCwgMTEw
IGluc2VydGlvbnMoKyksIDU4OCBkZWxldGlvbnMoLSkKPiA+PiAgZGVsZXRlIG1vZGUgMTAwNjQ0
IGFyY2gvYXJtL21hY2gtZGF2aW5jaS9pbmNsdWRlL21hY2gvdGltZS5oCj4gPj4gIGRlbGV0ZSBt
b2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLWRhdmluY2kvdGltZS5jCj4gPj4KPiA+PiAtLQo+ID4+
IDIuMjEuMAo+ID4+Cj4gPgo+ID4gSGkgU2VraGFyLAo+ID4KPiA+IGEgZ2VudGxlIHBpbmcuIElz
IHRoaXMgc2VyaWVzIGdvb2QgdG8gZ28gaW4gZm9yIHY1LjQ/Cj4KPiBIaSBCYXJ0b3N6LCBhIHF1
aWNrIHRlc3Qgc2hvd3MgdGhhdCBETTM2NSBmYWlscyB0byBib290IGFmdGVyIHRoaXMuIENhbgo+
IHlvdSBwbGVhc2Ugc2VlIGlmIHRoZXJlIGlzIGFueXRoaW5nIG9idmlvdXNseSB3cm9uZyBmb3Ig
dGhhdCBTb0MuIFJlc3QKPiBzZWVtcyB0byBiZSBva2F5Lgo+Cj4gVGhhbmtzLAo+IFNla2hhcgoK
SGkgU2VraGFyLAoKanVzdCB2ZXJpZmllZCBvbiBLZXZpbidzIGRtMzY1LWV2bSByZWJhc2VkIG9u
IHRvcCBvZiB2NS4zLXJjMyBhbmQgaXQKYm9vdHMgZmluZS4gSSBrbm93IHRoYXQgZGF2aW5jaSBm
YWlsZWQgdG8gYm9vdCBhdCB2NS4zLXJjMS4KCkxldCBtZSBrbm93IGlmIEkgY2FuIGhlbHAgd2l0
aCBkZWJ1Z2dpbmcuCgpCYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
