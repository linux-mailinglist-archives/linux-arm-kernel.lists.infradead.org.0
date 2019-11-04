Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7262DEDAD9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:53:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjbMcfTM6eZQkphb0Cn1SB5Vy5DPySlGhuPV1/GPcjA=; b=cCxQX2dF/50fHy
	tPj8qP2wRWsf9fmH3ZJ1wK8ikYoP2cBNfkTPJWDjWsJJvJGv9AZPt2DI5MVBG6sakGt4APxvfiS9G
	EGIFaOwqTNNCFxiwg/KTYPrgw9GRAh5Oyzbh2NVgeQRVbP5mXtY/X6wtvrtGVmawhDvXTzE8HFjwF
	jvc4FvSJSZZLIKZmmdzSbz/EGPil1qQykJ80jUsxlvjfQnj1i8VDLg+4nV//uMfF+BS1+MCkzJJIi
	iORUzVJMSZ1vEbF0pHT/HtmCGek/uhrakUucfZaDAO/DCbjGt/08puOZUTRoR9vRTP8Ty6Sx5+brz
	SMIhKM/UWEtqhNTqLTcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRY7V-0004k5-Sy; Mon, 04 Nov 2019 08:53:53 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRY7P-0004jR-8B; Mon, 04 Nov 2019 08:53:48 +0000
Received: by mail-oi1-f195.google.com with SMTP id v138so13405074oif.6;
 Mon, 04 Nov 2019 00:53:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ftGbwwjNOfRweFmtue9SSD86OxwGEsa99D0pa3CKj2k=;
 b=JHGcHy8wA/5gdQTEteayCuvxagWDlSOqeN3ageCMABapxYC4WWy78mBJBgB/6VitRu
 BSCn4WhQqMXELgq6/OYoS1WHxEkiBWL+ZmYVl/o5xNPx40EegLBZj/F40QSUyJeUIiJs
 fZFw9I/FgNLAypSJZHu85zVmRquTopjiIl8BQ4OU/UsKT8td6K/KC2+1iy5ni/vTODYF
 LUQAuTsEWVFHZC+XXupk5JaXBp5vMsjxTmar/CRuriwQaGXriUrUGmCH83qjoe58/8zd
 yXSrXf/iGxNNBN7siRTYEVEZ07epaKXEXNe/pOzV93+E3r6Jk3/wAA9TUpGYXf5+roYA
 Mupw==
X-Gm-Message-State: APjAAAUGFbKyiG8qpKha11+gAJAFkaWBuOIVIZvbnXoWvNMlk4NEREA/
 +TOip75hVSpo2Mr56COxLuQViyKwdGvII5Ke9Yw=
X-Google-Smtp-Source: APXvYqwHBlxWvX9baD3gMlRXyGYNGxo8XeR6zpTu9ocP235D46KuJQHptAVE+pdBySSjAAujVU5GG1b4JqAjn27tERM=
X-Received: by 2002:aca:882:: with SMTP id 124mr32125oii.54.1572857625673;
 Mon, 04 Nov 2019 00:53:45 -0800 (PST)
MIME-Version: 1.0
References: <1572850587-20314-1-git-send-email-rppt@kernel.org>
 <1572850587-20314-6-git-send-email-rppt@kernel.org>
In-Reply-To: <1572850587-20314-6-git-send-email-rppt@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 4 Nov 2019 09:53:34 +0100
Message-ID: <CAMuHMdUG3V7uxzhbetw75vVeobeP0-bQySb3r=0V5XujUF123g@mail.gmail.com>
Subject: Re: [PATCH v3 05/13] m68k: mm: use pgtable-nopXd instead of
 4level-fixup
To: Mike Rapoport <rppt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_005347_292823_3674C295 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Linux MM <linux-mm@kvack.org>, sparclinux <sparclinux@vger.kernel.org>,
 Rolf Eike Beer <eike-kernel@sf-tec.de>, Vincent Chen <deanbo422@gmail.com>,
 Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Linux-Arch <linux-arch@vger.kernel.org>, linux-c6x-dev@linux-c6x.org,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Parisc List <linux-parisc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, alpha <linux-alpha@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlrZSwKCk9uIE1vbiwgTm92IDQsIDIwMTkgYXQgNzo1NyBBTSBNaWtlIFJhcG9wb3J0IDxy
cHB0QGtlcm5lbC5vcmc+IHdyb3RlOgo+IEZyb206IE1pa2UgUmFwb3BvcnQgPHJwcHRAbGludXgu
aWJtLmNvbT4KPiBtNjhrIGhhcyB0d28gb3IgdGhyZWUgbGV2ZWxzIG9mIHBhZ2UgdGFibGVzIGFu
ZCBjYW4gdXNlIGFwcHJvcHJpYXRlCj4gcGd0YWJsZS1ub3BYZCBhbmQgZm9sZGluZyBvZiB0aGUg
dXBwZXIgbGF5ZXJzLgo+Cj4gUmVwbGFjZSB1c2FnZSBvZiBpbmNsdWRlL2FzbS1nZW5lcmljLzRs
ZXZlbC1maXh1cC5oIGFuZCBleHBsaWNpdAo+IGRlZmluaXRpb25zIG9mIF9fUEFHRVRBQkxFX1B4
RF9GT0xERUQgaW4gbTY4ayB3aXRoCj4gaW5jbHVkZS9hc20tZ2VuZXJpYy9wZ3RhYmxlLW5vcG1k
LmggZm9yIHR3by1sZXZlbCBjb25maWd1cmF0aW9ucyBhbmQgd2l0aAo+IGluY2x1ZGUvYXNtLWdl
bmVyaWMvcGd0YWJsZS1ub3B1ZC5oIGZvciB0aHJlZS1sZWx2ZSBjb25maWd1cmF0aW9ucyBhbmQK
PiBhZGp1c3QgcGFnZSB0YWJsZSBtYW5pcHVsYXRpb24gbWFjcm9zIGFuZCBmdW5jdGlvbnMgYWNj
b3JkaW5nbHkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBNaWtlIFJhcG9wb3J0IDxycHB0QGxpbnV4Lmli
bS5jb20+Cj4gQWNrZWQtYnk6IEdyZWcgVW5nZXJlciA8Z2VyZ0BsaW51eC1tNjhrLm9yZz4KClRo
YW5rcyBmb3IgeW91ciBwYXRjaCEKClRoZSBidWlsZCBlcnJvciByZXBvcnRlZCBmb3IgdjEgYnkg
a2J1aWxkIHRlc3Qgcm9ib3Qgd2hlbiBidWlsZGluZyBmb3IKc3VuM3ggaXMgc3RpbGwgdGhlcmUg
KG02OGsgZGVmY29uZmlnIG9yIHN1bjN4X2RlZmNvbmZpZyk6CgogICAgYXJjaC9tNjhrL3N1bjN4
L2R2bWEuYzogSW4gZnVuY3Rpb24g4oCYZHZtYV9tYXBfY3B14oCZOgogICAgYXJjaC9tNjhrL3N1
bjN4L2R2bWEuYzo5ODozMzogZXJyb3I6IHBhc3NpbmcgYXJndW1lbnQgMiBvZgrigJhwbWRfYWxs
b2PigJkgZnJvbSBpbmNvbXBhdGlibGUgcG9pbnRlciB0eXBlClstV2Vycm9yPWluY29tcGF0aWJs
ZS1wb2ludGVyLXR5cGVzXQogICAgICAgaWYoKHBtZCA9IHBtZF9hbGxvYygmaW5pdF9tbSwgcGdk
LCB2YWRkcikpID09IE5VTEwpIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IF5+fgogICAgSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGFyY2gvbTY4ay9zdW4zeC9kdm1hLmM6MTc6
CiAgICBpbmNsdWRlL2xpbnV4L21tLmg6MTg3NTo2MTogbm90ZTogZXhwZWN0ZWQg4oCYcHVkX3Qg
KuKAmSB7YWthIOKAmHN0cnVjdAo8YW5vbnltb3VzPiAq4oCZfSBidXQgYXJndW1lbnQgaXMgb2Yg
dHlwZSDigJhwZ2RfdCAq4oCZIHtha2Eg4oCYc3RydWN0Cjxhbm9ueW1vdXM+ICrigJl9CiAgICAg
c3RhdGljIGlubGluZSBwbWRfdCAqcG1kX2FsbG9jKHN0cnVjdCBtbV9zdHJ1Y3QgKm1tLCBwdWRf
dCAqcHVkLAp1bnNpZ25lZCBsb25nIGFkZHJlc3MpCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB+fn5+fn5+Xn5+CgpUaGlzIGluZGVlZCBi
b290cyBmaW5lIG9uIEFSQW55TSwgd2hpY2ggZW11bGF0ZXMgb24gNjgwNDAuCkl0IHdvdWxkIGJl
IGdvb2QgdG8gaGF2ZSBzb21lIGJvb3QgdGVzdGluZyBvbiAnMDIwLzAzMCwgdG9vLgoKPiAtLS0g
YS9hcmNoL202OGsvbW0va21hcC5jCj4gKysrIGIvYXJjaC9tNjhrL21tL2ttYXAuYwoKPiBAQCAt
MTk2LDE3ICsxOTgsMjEgQEAgdm9pZCBfX2lvbWVtICpfX2lvcmVtYXAodW5zaWduZWQgbG9uZyBw
aHlzYWRkciwgdW5zaWduZWQgbG9uZyBzaXplLCBpbnQgY2FjaGVmbGEKPiAgICAgICAgICAgICAg
ICAgICAgICAgICBwcmludGsgKCJcbnBhPSUjbHggdmE9JSNseCAiLCBwaHlzYWRkciwgdmlydGFk
ZHIpOwo+ICAjZW5kaWYKPiAgICAgICAgICAgICAgICAgcGdkX2RpciA9IHBnZF9vZmZzZXRfayh2
aXJ0YWRkcik7Cj4gLSAgICAgICAgICAgICAgIHBtZF9kaXIgPSBwbWRfYWxsb2MoJmluaXRfbW0s
IHBnZF9kaXIsIHZpcnRhZGRyKTsKPiArICAgICAgICAgICAgICAgcDRkX2RpciA9IHA0ZF9vZmZz
ZXQocGdkX2RpciwgdmlydGFkZHIpOwo+ICsgICAgICAgICAgICAgICBwdWRfZGlyID0gcHVkX29m
ZnNldChwNGRfZGlyLCB2aXJ0YWRkcik7Cj4gKyAgICAgICAgICAgICAgIHBtZF9kaXIgPSBwbWRf
YWxsb2MoJmluaXRfbW0sIHB1ZF9kaXIsIHZpcnRhZGRyKTsKPiAgICAgICAgICAgICAgICAgaWYg
KCFwbWRfZGlyKSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcHJpbnRrKCJpb3JlbWFwOiBu
byBtZW0gZm9yIHBtZF9kaXJcbiIpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBO
VUxMOwo+ICAgICAgICAgICAgICAgICB9Cj4KPiAgICAgICAgICAgICAgICAgaWYgKENQVV9JU18w
MjBfT1JfMDMwKSB7Cj4gKyNpZiBDT05GSUdfUEdUQUJMRV9MRVZFTFMgPT0gMwoKVGhpcyBjaGVj
ayBwdXp6bGVkIG1lIGEgYml0OiB3aGVuIHdlIGdldCBoZXJlLCBDT05GSUdfUEdUQUJMRV9MRVZF
TFMgaXMKYWx3YXlzIHRydWUuCkhvd2V2ZXIsIHRoZSBjaGVjayBjYW5ub3QgYmUgcmVtb3ZlZCwg
YXMgdGhlIGNvZGUgaXQgcHJvdGVjdHMgZmFpbHMgdG8gY29tcGlsZQp3aGVuIGJ1aWxkaW5nIGZv
ciBDb2xkZmlyZS4KClBlcmhhcHMgdGhpcyBjYW4gYmUgbWFkZSBtb3JlIGNsZWFyIGJ5IHJldmVy
dGluZyB0aGUgb3JkZXI/CkkuZS4KCiAgICAjaWYgQ09ORklHX1BHVEFCTEVfTEVWRUxTID09IDMK
ICAgICAgICAgICAgaWYgKENQVV9JU18wMjBfT1JfMDMwKSB7CiAgICAgICAgICAgICAgICAgICAg
Li4uCiAgICAgICAgICAgIH0gZWxzZQogICAgI2VuZGlmCiAgICAgICAgICAgIHsKCk9yIGlzIHRo
ZXJlIHNvbWUgYmV0dGVyIHdheT8KCj4gICAgICAgICAgICAgICAgICAgICAgICAgcG1kX2Rpci0+
cG1kWyh2aXJ0YWRkci9QVFJUUkVFU0laRSkgJiAxNV0gPSBwaHlzYWRkcjsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICBwaHlzYWRkciArPSBQVFJUUkVFU0laRTsKPiAgICAgICAgICAgICAgICAg
ICAgICAgICB2aXJ0YWRkciArPSBQVFJUUkVFU0laRTsKPiAgICAgICAgICAgICAgICAgICAgICAg
ICBzaXplIC09IFBUUlRSRUVTSVpFOwo+ICsjZW5kaWYKPiAgICAgICAgICAgICAgICAgfSBlbHNl
IHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBwdGVfZGlyID0gcHRlX2FsbG9jX2tlcm5lbChw
bWRfZGlyLCB2aXJ0YWRkcik7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgaWYgKCFwdGVfZGly
KSB7Cj4gQEAgLTI1OCwxOSArMjY0LDI0IEBAIHZvaWQgX19pb3VubWFwKHZvaWQgKmFkZHIsIHVu
c2lnbmVkIGxvbmcgc2l6ZSkKPiAgewo+ICAgICAgICAgdW5zaWduZWQgbG9uZyB2aXJ0YWRkciA9
ICh1bnNpZ25lZCBsb25nKWFkZHI7Cj4gICAgICAgICBwZ2RfdCAqcGdkX2RpcjsKPiArICAgICAg
IHA0ZF90ICpwNGRfZGlyOwo+ICsgICAgICAgcHVkX3QgKnB1ZF9kaXI7Cj4gICAgICAgICBwbWRf
dCAqcG1kX2RpcjsKPiAgICAgICAgIHB0ZV90ICpwdGVfZGlyOwo+Cj4gICAgICAgICB3aGlsZSAo
KGxvbmcpc2l6ZSA+IDApIHsKPiAgICAgICAgICAgICAgICAgcGdkX2RpciA9IHBnZF9vZmZzZXRf
ayh2aXJ0YWRkcik7Cj4gLSAgICAgICAgICAgICAgIGlmIChwZ2RfYmFkKCpwZ2RfZGlyKSkgewo+
IC0gICAgICAgICAgICAgICAgICAgICAgIHByaW50aygiaW91bm1hcDogYmFkIHBnZCglMDhseClc
biIsIHBnZF92YWwoKnBnZF9kaXIpKTsKPiAtICAgICAgICAgICAgICAgICAgICAgICBwZ2RfY2xl
YXIocGdkX2Rpcik7Cj4gKyAgICAgICAgICAgICAgIHA0ZF9kaXIgPSBwNGRfb2Zmc2V0KHBnZF9k
aXIsIHZpcnRhZGRyKTsKPiArICAgICAgICAgICAgICAgcHVkX2RpciA9IHB1ZF9vZmZzZXQocDRk
X2RpciwgdmlydGFkZHIpOwo+ICsgICAgICAgICAgICAgICBpZiAocHVkX2JhZCgqcHVkX2Rpcikp
IHsKPiArICAgICAgICAgICAgICAgICAgICAgICBwcmludGsoImlvdW5tYXA6IGJhZCBwZ2QoJTA4
bHgpXG4iLCBwdWRfdmFsKCpwdWRfZGlyKSk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcHVk
X2NsZWFyKHB1ZF9kaXIpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybjsKPiAgICAg
ICAgICAgICAgICAgfQo+IC0gICAgICAgICAgICAgICBwbWRfZGlyID0gcG1kX29mZnNldChwZ2Rf
ZGlyLCB2aXJ0YWRkcik7Cj4gKyAgICAgICAgICAgICAgIHBtZF9kaXIgPSBwbWRfb2Zmc2V0KHB1
ZF9kaXIsIHZpcnRhZGRyKTsKPgo+ICAgICAgICAgICAgICAgICBpZiAoQ1BVX0lTXzAyMF9PUl8w
MzApIHsKPiArI2lmIENPTkZJR19QR1RBQkxFX0xFVkVMUyA9PSAzCgpMaWtld2lzZS4KCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgaW50IHBtZF9vZmYgPSAodmlydGFkZHIvUFRSVFJFRVNJWkUp
ICYgMTU7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgaW50IHBtZF90eXBlID0gcG1kX2Rpci0+
cG1kW3BtZF9vZmZdICYgX0RFU0NUWVBFX01BU0s7Cj4KCj4gQEAgLTM0MSwxNCArMzU1LDE3IEBA
IHZvaWQga2VybmVsX3NldF9jYWNoZW1vZGUodm9pZCAqYWRkciwgdW5zaWduZWQgbG9uZyBzaXpl
LCBpbnQgY21vZGUpCj4KPiAgICAgICAgIHdoaWxlICgobG9uZylzaXplID4gMCkgewo+ICAgICAg
ICAgICAgICAgICBwZ2RfZGlyID0gcGdkX29mZnNldF9rKHZpcnRhZGRyKTsKPiAtICAgICAgICAg
ICAgICAgaWYgKHBnZF9iYWQoKnBnZF9kaXIpKSB7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAg
cHJpbnRrKCJpb2NhY2hlbW9kZTogYmFkIHBnZCglMDhseClcbiIsIHBnZF92YWwoKnBnZF9kaXIp
KTsKPiAtICAgICAgICAgICAgICAgICAgICAgICBwZ2RfY2xlYXIocGdkX2Rpcik7Cj4gKyAgICAg
ICAgICAgICAgIHA0ZF9kaXIgPSBwNGRfb2Zmc2V0KHBnZF9kaXIsIHZpcnRhZGRyKTsKPiArICAg
ICAgICAgICAgICAgcHVkX2RpciA9IHB1ZF9vZmZzZXQocDRkX2RpciwgdmlydGFkZHIpOwo+ICsg
ICAgICAgICAgICAgICBpZiAocHVkX2JhZCgqcHVkX2RpcikpIHsKPiArICAgICAgICAgICAgICAg
ICAgICAgICBwcmludGsoImlvY2FjaGVtb2RlOiBiYWQgcHVkKCUwOGx4KVxuIiwgcHVkX3ZhbCgq
cHVkX2RpcikpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHB1ZF9jbGVhcihwdWRfZGlyKTsK
PiAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm47Cj4gICAgICAgICAgICAgICAgIH0KPiAt
ICAgICAgICAgICAgICAgcG1kX2RpciA9IHBtZF9vZmZzZXQocGdkX2RpciwgdmlydGFkZHIpOwo+
ICsgICAgICAgICAgICAgICBwbWRfZGlyID0gcG1kX29mZnNldChwdWRfZGlyLCB2aXJ0YWRkcik7
Cj4KPiAgICAgICAgICAgICAgICAgaWYgKENQVV9JU18wMjBfT1JfMDMwKSB7Cj4gKyNpZiBDT05G
SUdfUEdUQUJMRV9MRVZFTFMgPT0gMwoKTGlrZXdpc2UKCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgaW50IHBtZF9vZmYgPSAodmlydGFkZHIvUFRSVFJFRVNJWkUpICYgMTU7Cj4KPiAgICAgICAg
ICAgICAgICAgICAgICAgICBpZiAoKHBtZF9kaXItPnBtZFtwbWRfb2ZmXSAmIF9ERVNDVFlQRV9N
QVNLKSA9PSBfUEFHRV9QUkVTRU5UKSB7CgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAg
ICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90
cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29u
YWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBo
YWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInBy
b2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
