Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3D929C95
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 18:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UofCQvi895erGraLVvyUPbX62ZDd2oER9trTx+FbVJU=; b=a8uBvmNiye5VUg
	SkYM5TbnbkwRptfImFVv61j4bzCXaTvqLyqMc+SmViaQoBd+SAQdALUGXxZmzI1i+xHoPqKZ9Re7V
	saxCJJlQ4EDvfsWQH+dP0Z2HVuPbDyHvZR+/U/3dK2WrZsApLn1ohkc4FKC9iD+gLpsJkqG6cPOKr
	1ptZftM2vD4JVJ3ukhKN1Cxbu5W5eqS585zb/rflJioFv9TeAUUQijpaeJLsufYy9udohifetiT1F
	R7L7PzdC8QvsS1LagphxNegEGrAHghw+3dKohscC17tO1UjjwdhMIHEUGdFQ+UpXT1Kj8jY6096/u
	qqdfqs8z31unASKLTcPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUDWS-0004Iw-Cu; Fri, 24 May 2019 16:58:24 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUDWL-0004IF-NY
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 16:58:19 +0000
Received: by mail-it1-x142.google.com with SMTP id a186so7014464itg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 09:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MoMLCOnVhZSHe+BQlTmS5wevE0lJU4Hf7dR7NZTK0SA=;
 b=fPQsvYSJ7q6ZkPN90gdwNY/gQFwW2BaNnP1VwwHH5cSJOM97xQcxAYi/ejEfDdwLUF
 trMZf7pzYgvhyTAZInqDKQOFn1cyKxmEpjkQK/1MUgGJc0EAk98MHydqd/Rdfqiv4HO9
 0rzP7L2tUL2e9UyqcDSFdQltXMrBWBEkqmq1WYe0nGW3kz2bpvkXi25HzKwgIlvyH5RA
 VhfUn2vUXnc2+nxXtlMk7B4ydxKMwlCRIVALMRSTz1D28y7y0KGdSVXiZ4HuPtqH4r8F
 fXM8PL4o8NK3EDm4JmW8FvSjtq3NyfUr4q7VH32Jc1vVX7mKV+4JyWwiGh+JRSiP6zOn
 JKbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MoMLCOnVhZSHe+BQlTmS5wevE0lJU4Hf7dR7NZTK0SA=;
 b=L4N9VcehiG3t6sZM1/jC2njJzGN7WWSXWI9kgfmxtL/0VBTAlAUqBA/3Xk6+ROSeZz
 IwwmlEhkWLyu3PiNtqQ518LcDen6eT2sMzWlZ2o3ib8EhAyqVq+OA/eECF0ACVtecstE
 EGfUKMdOs0bpFjFcUksOjpzes6kNEF8l/axK8AhB9pkSW0ccPmN1wH18rFakjHi1KPz1
 4C0amhXXN4n7/SGGVqhcDLJRUHu4CHeYGOaL5uItS07TGRuTgb2x36Rz9gIIn4zl2rfq
 O04qNPHt6AsGNSKuzOINfO9/PTSiFSFrmpM7CTz7f8RtldI4aPgMMiNtiagc4mpircGR
 2XGg==
X-Gm-Message-State: APjAAAWng/sHZaPl8shiQa/MNy+tM3RO3PHpl3h+H931MMcECmUgfEeU
 T3Ywlkd4ACvJNZ/2hg1+dsghOzt+ZXB9+xkLAAHVVA==
X-Google-Smtp-Source: APXvYqzKAKOCGT1463jp43t7UOHxZ8/WT2omEyVHLyOVE3HNbV4Ak5HVMslMSUYhRfOX/SuzDLSdg7lxhnGTI3w9lSk=
X-Received: by 2002:a05:6638:233:: with SMTP id
 f19mr6778463jaq.24.1558717095212; 
 Fri, 24 May 2019 09:58:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190417152701.23391-1-brgl@bgdev.pl>
 <20190417152701.23391-5-brgl@bgdev.pl>
 <CAHCN7xKVaYqd5LLvRx7i8ik+JnTFdpexZf2WXt0R2N1W1skOJA@mail.gmail.com>
 <CAMpxmJW9yWcQ8497OwOhMN8wj-Cmc3-UP7Rh-yoU_uDaQkVVSw@mail.gmail.com>
In-Reply-To: <CAMpxmJW9yWcQ8497OwOhMN8wj-Cmc3-UP7Rh-yoU_uDaQkVVSw@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 24 May 2019 18:58:04 +0200
Message-ID: <CAMRc=Me9hwsLdpDVfs+cb_rqrWs=+bJOa9nEFY+xs_vs5LAXXA@mail.gmail.com>
Subject: Re: [PATCH v5 4/5] ARM: dts: da850-evm: enable cpufreq
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_095817_903932_5BFA19B3 
X-CRM114-Status: GOOD (  25.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>, Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Adam Ford <aford173@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

d3QuLCAyMyBrd2kgMjAxOSBvIDExOjE1IEJhcnRvc3ogR29sYXN6ZXdza2kKPGJnb2xhc3pld3Nr
aUBiYXlsaWJyZS5jb20+IG5hcGlzYcWCKGEpOgo+Cj4gxZtyLiwgMTcga3dpIDIwMTkgbyAxOTow
OSBBZGFtIEZvcmQgPGFmb3JkMTczQGdtYWlsLmNvbT4gbmFwaXNhxYIoYSk6Cj4gPgo+ID4gT24g
V2VkLCBBcHIgMTcsIDIwMTkgYXQgMTA6MjcgQU0gQmFydG9zeiBHb2xhc3pld3NraSA8YnJnbEBi
Z2Rldi5wbD4gd3JvdGU6Cj4gPiA+Cj4gPiA+IEZyb206IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJn
b2xhc3pld3NraUBiYXlsaWJyZS5jb20+Cj4gPiA+Cj4gPiA+IEVuYWJsZSBjcHVmcmVxLWR0IHN1
cHBvcnQgZm9yIGRhODUwLWV2bS4gVGhlIGN2ZGQgaXMgc3VwcGxpZWQgYnkgdGhlCj4gPiA+IHRw
czY1MDcwIHBtaWMgd2l0aCBjb25maWd1cmFibGUgb3V0cHV0IHZvbHRhZ2UuIEJ5IGRlZmF1bHQg
ZGE4NTAtZXZtCj4gPiA+IGJvYXJkcyBzdXBwb3J0IGZyZXF1ZW5jaWVzIHVwIHRvIDM3NU1IeiBz
byBlbmFibGUgdGhpcyBvcGVyYXRpbmcKPiA+ID4gcG9pbnQuCj4gPgo+ID4gSGF2ZSB5b3UgZG9u
ZSBhbnkgdGVzdGluZyB3aXRoIHRoZSBMQ0Qgb24gYW55IG9mIHRoZSBkZXZpY2VzIHlvdSBoYXZl
Pwo+ID4KPiA+IEkgZW5hYmxlZCB0aGUgb25kZW1hbmQgZ292ZXJub3IsIGFuZCBJIGdvdCBhIGJ1
bmNoIG9mIHNwbGF0IGZyb20gdGhlCj4gPiBMQ0QgY29udHJvbGxlcjoKPiA+Cj4gPiB0aWxjZGMg
MWUxMzAwMC5kaXNwbGF5OiBlZmZlY3RpdmUgcGl4ZWwgY2xvY2sgcmF0ZSAoNTAwMDAwMDBIeikK
PiA+IGRpZmZlcnMgZnJvbSB0aGUgY2FsY3VsYXRlZCByYXRlICg1NDAwMDAwMEh6KQo+ID4gdGls
Y2RjIDFlMTMwMDAuZGlzcGxheTogdGlsY2RjX2NydGNfaXJxKDB4MDAwMDAxNjEpOiBGSUZPIHVu
ZGVyZmxvdwo+ID4gdGlsY2RjIDFlMTMwMDAuZGlzcGxheTogdGlsY2RjX2NydGNfaXJxKDB4MDAw
MDAxNjEpOiBGSUZPIHVuZGVyZmxvdwo+ID4gLi4uIFsgc25pcF0KPiA+IHRpbGNkYyAxZTEzMDAw
LmRpc3BsYXk6IGVmZmVjdGl2ZSBwaXhlbCBjbG9jayByYXRlICg1MDAwMDAwMEh6KQo+ID4gZGlm
ZmVycyBmcm9tIHRoZSBjYWxjdWxhdGVkIHJhdGUgKDU0MDAwMDAwSHopCj4gPiB0aWxjZGMgMWUx
MzAwMC5kaXNwbGF5OiBlZmZlY3RpdmUgcGl4ZWwgY2xvY2sgcmF0ZSAoNTAwMDAwMDBIeikKPiA+
IGRpZmZlcnMgZnJvbSB0aGUgY2FsY3VsYXRlZCByYXRlICg1NDAwMDAwMEh6KQo+ID4gdGlsY2Rj
IDFlMTMwMDAuZGlzcGxheTogdGlsY2RjX2NydGNfaXJxKDB4MDAwMDAxNjEpOiBGSUZPIHVuZGVy
Zmxvdwo+ID4KPiA+IEl0IGFwcGVhcnMgdG8gZ28gb24gZm9yZXZlci4gIEkgZG9uJ3QgbmVjZXNz
YXJpbHkgd2FudCB0byBob2xkIGl0IHVwLAo+ID4gYnV0IEkgZG9uJ3Qga25vdyB0aGUgY2xvY2tp
bmcgc3lzdGVtIHdlbGwgZW5vdWdoIHRvIGtub3cgd2hlcmUgdG8gZ28KPiA+IGludmVzdGlnYXRl
IGl0LiAgSSBjYW4gY2VydGFpbmx5IGxpdmUgd2l0aG91dCBvbmRlbWFuZC4gIFVzaW5nCj4gPiB1
c2Vyc3BhY2UgYXMgdGhlIGRlZmF1bHQgZ292ZXJub3IgaXMgZmluZSBmb3IgbWUgZm9yIG5vdy4K
PiA+Cj4gPiBhZGFtCj4KPiBIaSBBZGFtLAo+Cj4gSSBkaWQgdGVzdCB0aGUgdGlsY2RjIG9uIGRh
ODUwLWxjZGsuIFRoZSBvbmx5IG1lc3NhZ2UgSSdtIGdldHRpbmcKPiBkdXJpbmcgdHJhbnNpdGlv
bnMgaXMgYSBzaW5nbGU6Cj4KPiB0aWxjZGMgPG5hbWU+OiB0aWxjZGNfY3J0Y19pcnEoPGFkZHJl
c3M+KTogRklGTyB1bmRlcmZsb3cKPgo+IGJ1dCB0aGlzIGlzIGZhaXJseSBub3JtYWwgLSB3ZSBh
bHNvIGdldCB0aGlzIGR1cmluZyBtb2Rlc2V0IGFuZCBpdAo+IGRvZXNuJ3QgYWZmZWN0IHRoZSBk
aXNwbGF5Lgo+Cj4gVGhlIHByb2JsZW0gd2l0aCB0aGUgcGl4ZWwgY2xvY2sgbWF5IGNvbWUgZnJv
bSB0aGUgYm9vdGxvYWRlciAtIGFyZQo+IHlvdSB1c2luZyBhIHJlY2VudCB2ZXJzaW9uIG9mIHUt
Ym9vdD8KPgo+IEJhcnQKPgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBCYXJ0b3N6IEdvbGFz
emV3c2tpIDxiZ29sYXN6ZXdza2lAYmF5bGlicmUuY29tPgo+ID4gPiBSZXZpZXdlZC1ieTogQWRh
bSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgYXJjaC9hcm0vYm9v
dC9kdHMvZGE4NTAtZXZtLmR0cyB8IDEzICsrKysrKysrKysrKysKPiA+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAxMyBpbnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9i
b290L2R0cy9kYTg1MC1ldm0uZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvZGE4NTAtZXZtLmR0cwo+
ID4gPiBpbmRleCBmMDRiYzNlMTUzMzIuLmY5NGJiMzhmZGFkOSAxMDA2NDQKPiA+ID4gLS0tIGEv
YXJjaC9hcm0vYm9vdC9kdHMvZGE4NTAtZXZtLmR0cwo+ID4gPiArKysgYi9hcmNoL2FybS9ib290
L2R0cy9kYTg1MC1ldm0uZHRzCj4gPiA+IEBAIC0xOTEsNiArMTkxLDE5IEBACj4gPiA+ICAgICAg
ICAgfTsKPiA+ID4gIH07Cj4gPiA+Cj4gPiA+ICsmY3B1IHsKPiA+ID4gKyAgICAgICBjcHUtc3Vw
cGx5ID0gPCZ2ZGNkYzNfcmVnPjsKPiA+ID4gK307Cj4gPiA+ICsKPiA+ID4gKy8qCj4gPiA+ICsg
KiBUaGUgc3RhbmRhcmQgZGE4NTAtZXZtIGtpdHMgYW5kIFNPTSdzIGFyZSAzNzVNSHogc28gZW5h
YmxlIHRoaXMgb3BlcmF0aW5nCj4gPiA+ICsgKiBwb2ludCBieSBkZWZhdWx0LiBIaWdoZXIgZnJl
cXVlbmNpZXMgbXVzdCBiZSBlbmFibGVkIGZvciBjdXN0b20gYm9hcmRzIHdpdGgKPiA+ID4gKyAq
IG90aGVyIHZhcmlhbnRzIG9mIHRoZSBTb0MuCj4gPiA+ICsgKi8KPiA+ID4gKyZvcHBfMzc1IHsK
PiA+ID4gKyAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiA+ICt9Owo+ID4gPiArCj4gPiA+ICAm
c2F0YSB7Cj4gPiA+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gPiAgfTsKPiA+ID4gLS0K
PiA+ID4gMi4yMS4wCj4gPiA+CgpIaSBBZGFtLAoKZGlkIHlvdSBmaWd1cmUgb3V0IHRoZSBwcm9i
bGVtIGJ5IGNoYW5jZT8gQXJlIHlvdSBPSyB3aXRoIG1lcmdpbmcgdGhpcyBzZXJpZXM/CgpCYXJ0
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
