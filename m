Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 806F036591
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 22:35:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcFNXDAFoy9x/Q4YWpYu3EB5dM7xuph8ylBAsouPXjA=; b=O/XsENEOXM50TC
	73dhsQoyNImsnSwlamV+bknaMjNt4zq3ItPxNTj65yf/mY6XQCzJL284yGOthsN/MsuHaqWWbZV1V
	mElCjfDWjLOyz0lBqdJPUUHLvsw2dm5Ze+B6TS2pgXYcJ/8YTLLcx68LapXN53G6qxu7EHOj7o7cr
	NzbslASQmS7T/mPlCePPX3TinEFGjsrId9wpM7i9lG68DZtRMQezt3QEtD/E/98j/8usex8ccwo9d
	aWDCnJ4rbri0I5r4lYAvt3MkVyI4Q8kNv3m9o2/sBBWDfjZRy6eNYfyiK2SjOdj/2o0CILsN4XBUZ
	/nuEQ9V7nuJfHM9Bu6jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYccw-0007Jq-Nt; Wed, 05 Jun 2019 20:35:18 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYccp-0007J0-E8
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 20:35:13 +0000
Received: by mail-yw1-xc43.google.com with SMTP id y185so5728666ywy.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 13:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=l03+E+1rYHoeHYqvcAbN6UcQV0/t8ZT8Ua4GYoPSknY=;
 b=YWjYKCzNUvXBxodopAhJImDU8t2GnSwlHigPq68mI+bY3lLTg03GzAiy9C3b64VMAd
 /lWQvmyXBGx4rVvjkEDSMZIxmWGzGQb15ioNnK6BWd/Dpc9qCVU50C9Fk6WN0kkepVXK
 ZHx8ic7c0rfHE2SNaISUu3mUpecLHDUO/3qPE6gA6ATPhRWbP237x0nLCDmBa8SGDgyO
 2BN22d2dWejW/FpRu93YfY2noI7nhdmW0pYLgKgkwFsWfIfeVZnuEofHyLfCTFyR0fJM
 d4t/574oDLDtjB+/A8wWIpy/TZDZZ0L6UlFidYeU0Nf5hd19q4JOZoTyzBKVgdnf/Wst
 pBMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=l03+E+1rYHoeHYqvcAbN6UcQV0/t8ZT8Ua4GYoPSknY=;
 b=UMJi9/n+viRu2vw5sZi1mnxgThzjldjF81NbpdpB49BlHnomKQhD0ACY+xdhXzPLJS
 ocqyy4J0F7rmh3+2BYwX4Iy2wU7bDF2+vKUPGvgUfFuevOl8VamliOzMKWfH0BZJHbJL
 P6oABzRYg2DlZlXU0pS0dsdYYLidxSTlpGtdM8kiHmB0KqC64jbmIm2yJsquFVBwUN4k
 /UUijf2XuxywawMOgMQBCkOWuuxLS3GYO4vpZKWnIUgGyEUpHlRwb5iug1+Qf9+YuDWU
 LuGzhCEm+JLbxfsQ6CXzsU7DJhe6izqH33LVPiFRaxNybKXspY35azUAar5EN24dYgcM
 U1sA==
X-Gm-Message-State: APjAAAWvTN8MmZM0MZx3EsmaCe2EVTjofoNPegNKdyzNaAxyVSQ2EDqL
 WHDYZkXEWtnsBmV2Z5X6Od8NZWbfx3VRKFLsWWg=
X-Google-Smtp-Source: APXvYqxQCxoaa23XSM9kh7nxBMVdszGzffy/2HEGfA6pHWSkToo3IshmE6fASP2xWcrw/Z52pr/+OPpkJypCjSyqRh4=
X-Received: by 2002:a81:5f54:: with SMTP id t81mr21100308ywb.234.1559766909845; 
 Wed, 05 Jun 2019 13:35:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190604162959.29199-1-peron.clem@gmail.com>
 <20190604162959.29199-5-peron.clem@gmail.com>
 <20190605095141.psrq6mhk63zto77s@flea>
 <CAJiuCceZa=WEiF8_LK+jDdiXOn1i8+z8Smr6YKCpo9_XftgueQ@mail.gmail.com>
 <20190605200020.tmyom3lg3inu6vvf@flea>
In-Reply-To: <20190605200020.tmyom3lg3inu6vvf@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Wed, 5 Jun 2019 22:34:58 +0200
Message-ID: <CAJiuCceuN8JHwLBeoKSzwY2s0-wFJf-N8FbqOGemkhtyax73Eg@mail.gmail.com>
Subject: Re: [PATCH v4 04/13] media: rc: sunxi: Add RXSTA bits definition
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_133511_510254_34BE24DC 
X-CRM114-Status: GOOD (  24.65  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCA1IEp1biAyMDE5IGF0IDIyOjAwLCBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJk
QGJvb3RsaW4uY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgSnVuIDA1LCAyMDE5IGF0IDAyOjQ0OjA2
UE0gKzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+IEhpIE1heGltZSwKPiA+Cj4gPiBP
biBXZWQsIDUgSnVuIDIwMTkgYXQgMTE6NTEsIE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRA
Ym9vdGxpbi5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBUdWUsIEp1biAwNCwgMjAxOSBhdCAw
NjoyOTo1MFBNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiA+ID4gV2UgYXJlIHVz
aW5nIFJYSU5UIGJpdHMgZGVmaW5pdGlvbiB3aGVuIGxvb2tpbmcgYXQgUlhTVEEgcmVnaXN0ZXIu
Cj4gPiA+ID4KPiA+ID4gPiBUaGVzZSBiaXRzIGFyZSBlcXVhbCBidXQgaXQncyBub3QgcmVhbGx5
IHByb3Blci4KPiA+ID4gPgo+ID4gPiA+IEludHJvZHVjZSB0aGUgUlhTVEEgYml0cyBhbmQgdXNl
IHRoZW0gdG8gaGF2ZSBjb2hlcmVuY3kuCj4gPiA+ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBD
bMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+
ICBkcml2ZXJzL21lZGlhL3JjL3N1bnhpLWNpci5jIHwgMTggKysrKysrKysrKysrLS0tLS0tCj4g
PiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+
ID4gPiA+Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMg
Yi9kcml2ZXJzL21lZGlhL3JjL3N1bnhpLWNpci5jCj4gPiA+ID4gaW5kZXggMDUwNGViZmM4MzFm
Li41NzJiZDIyNTdkMzUgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9yYy9zdW54
aS1jaXIuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMKPiA+ID4g
PiBAQCAtNDgsMTEgKzQ4LDExIEBACj4gPiA+ID4KPiA+ID4gPiAgLyogUnggSW50ZXJydXB0IEVu
YWJsZSAqLwo+ID4gPiA+ICAjZGVmaW5lIFNVTlhJX0lSX1JYSU5UX1JFRyAgICAweDJDCj4gPiA+
ID4gLS8qIFJ4IEZJRk8gT3ZlcmZsb3cgKi8KPiA+ID4gPiArLyogUnggRklGTyBPdmVyZmxvdyBJ
bnRlcnJ1cHQgRW5hYmxlICovCj4gPiA+ID4gICNkZWZpbmUgUkVHX1JYSU5UX1JPSV9FTiAgICAg
ICAgICAgICBCSVQoMCkKPiA+ID4gPiAtLyogUnggUGFja2V0IEVuZCAqLwo+ID4gPiA+ICsvKiBS
eCBQYWNrZXQgRW5kIEludGVycnVwdCBFbmFibGUgKi8KPiA+ID4gPiAgI2RlZmluZSBSRUdfUlhJ
TlRfUlBFSV9FTiAgICAgICAgICAgIEJJVCgxKQo+ID4gPiA+IC0vKiBSeCBGSUZPIERhdGEgQXZh
aWxhYmxlICovCj4gPiA+ID4gKy8qIFJ4IEZJRk8gRGF0YSBBdmFpbGFibGUgSW50ZXJydXB0IEVu
YWJsZSAqLwo+ID4gPiA+ICAjZGVmaW5lIFJFR19SWElOVF9SQUlfRU4gICAgICAgICAgICAgQklU
KDQpCj4gPiA+ID4KPiA+ID4gPiAgLyogUnggRklGTyBhdmFpbGFibGUgYnl0ZSBsZXZlbCAqLwo+
ID4gPiA+IEBAIC02MCw2ICs2MCwxMiBAQAo+ID4gPiA+Cj4gPiA+ID4gIC8qIFJ4IEludGVycnVw
dCBTdGF0dXMgKi8KPiA+ID4gPiAgI2RlZmluZSBTVU5YSV9JUl9SWFNUQV9SRUcgICAgMHgzMAo+
ID4gPiA+ICsvKiBSeCBGSUZPIE92ZXJmbG93ICovCj4gPiA+ID4gKyNkZWZpbmUgUkVHX1JYU1RB
X1JPSSAgICAgICAgICAgICAgICAgICAgICAgIEJJVCgwKQo+ID4gPiA+ICsvKiBSeCBQYWNrZXQg
RW5kICovCj4gPiA+ID4gKyNkZWZpbmUgUkVHX1JYU1RBX1JQRSAgICAgICAgICAgICAgICAgICAg
ICAgIEJJVCgxKQo+ID4gPiA+ICsvKiBSeCBGSUZPIERhdGEgQXZhaWxhYmxlICovCj4gPiA+ID4g
KyNkZWZpbmUgUkVHX1JYU1RBX1JBICAgICAgICAgICAgICAgICBCSVQoNCkKPiA+ID4KPiA+ID4g
SSdtIGZpbmUgd2l0aCBpdCBvbiBwcmluY2lwbGUsIGJ1dCBpZiB0aGUgY29uc2lzdGVuY3kgbmVl
ZHMgdG8gYmUKPiA+ID4gbWFpbnRhaW5lZCB0aGVuIHdlIGNvdWxkIGp1c3QgcmV1c2UgdGhlIGFi
b3ZlIGRlZmluZXMKPiA+Cj4gPiBUaGVyZSBpcyBubyBjb21tZW50IHdoeSB3ZSBjYW4gcmV1c2Ug
dGhlbSwgdGhleSBjYW4gYWxzbyBiZSBzb21lIHdyb25nCj4gPiBjYXNlIGZvciBleGFtcGxlIHRo
ZSBSWElOVF9EUlFfRU4gYml0IGlzIG5vdCBwcmVzZW50IGluIFJYU1RBIGFuZCBzYW1lCj4gPiBm
b3IgU1RBVCBiaXQgcHJlc2VudCBpbiBSWFNUQSBhbmQgbm90IHByZXNlbnQgaW4gUlhJTlQuCj4g
Pgo+ID4gSSBoYXZlIGRpc2NvdmVyIGFuZCByZWFkIHRoaXMgY29kZSBhIG1vbnRoIGFnbyBhbmQg
dGhpcyBsb2dpYyBpcwo+ID4gcmVhbGx5IG5vdCBvYnZpb3VzIG5vciBleHBsYWluLgo+ID4KPiA+
IE1heWJlIHRoaXMgaGFjayBjb3VsZCBiZSBkb25lIHdoZW4gd2Ugd2lsbCBpbnRyb2R1Y2UgYSBx
dWlya3MsIGJ1dCBmb3IKPiA+IHRoZSBtb21lbnQgSSByZWFsbHkgdGhpbmsgdGhhdCBpdCdzIG1v
cmUgcHJvcGVyIGFuZCByZWFkYWJsZSB0bwo+ID4gaW50cm9kdWNlIHRoZW0gcHJvcGVybHkuCj4K
PiBJIGRvbid0IHRoaW5rIHdlIHVuZGVyc3Rvb2QgZWFjaCBvdGhlciA6KQo+Cj4gSSB3YXMgdGFs
a2luZyBhYm91dCBoYXZpbmcgc29tZXRoaW5nIGxpa2UKPgo+ICNkZWZpbmUgUkVHX1JYU1RBX1JP
SSAgUkVHX1JYSU5UX1JPSV9FTgpPaywgSSB3aWxsIHNlbmQgYW4gdXBkYXRlLgoKVGhhbmtzIGZv
ciB0aGUgcmV2aWV3LApDbMOpbWVudAoKCj4KPiBNYXhpbWUKPgo+IC0tCj4gTWF4aW1lIFJpcGFy
ZCwgQm9vdGxpbgo+IEVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKPiBodHRw
czovL2Jvb3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
