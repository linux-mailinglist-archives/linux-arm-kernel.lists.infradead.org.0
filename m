Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 329B0A773E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 00:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/b6mjmHpSrzwwrRdOzkv1s+DlJDrcLv7exJuU9FwSE=; b=VMQWtOUpbUiaUU
	cbZ9pU0dQbN7XVT7IG/iX6xSnwZoJ2zofsFzf96OljyjzlZNKxHHmzlpgcgcz2GGd2Pbp2hUWCoBO
	90LiTEsyU0aYoHHEQIzR6XMYQUcYqHuuHqzhdeCRQ/PRwW0M9lW9qRx++q0m9TG8HxeWMmbkWQImP
	85nNfZ3nr+JdyiKNCf/k17KLPk/0Hm2k+gqR3Mccl9gByTP48WIkwlqbCJE8+0PPSB+O8W9hFc/XX
	Ju2i0QsUHve9WndHY5viqWc1VE5NxJhI+sW4LdlH+OjzNHv3Xl5SmBUZNRTrCVtNKxJZfwtsIikNT
	LhDw8O/L/HCJAbIOOh7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5HaK-0003QD-4z; Tue, 03 Sep 2019 22:47:36 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5HZu-0003PQ-Hb
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 22:47:13 +0000
Received: by mail-qk1-x743.google.com with SMTP id d26so10183131qkk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 15:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4ZqExDYU6GEvX4tbG0Oq5t6w9Hxh61eKo21ZJDwTDMA=;
 b=uudw3G8qsvFOf7VU6hdmlYDXLaW5cI2WxsB103eEtRyH/MmU2uI/IQL4aD5dCiqq6i
 dvunIRP8tbfIc+jPQVFr4iJq1JQI3//OKofBriFrSM4B0/TNDRn9tiP+mPlXSHs13wuz
 TebsnsmargFELbQpJHRBwUuZDTSB6K8MwgIdkzFjBwTxLA40Uo+gmcJ4gocwXNXYNsbx
 0d4iAVjxxYkYGsB288UTj9AqL4cpvOU4SVZqa0p5NwxE02C2DpC/6NMWu8I1wGBMEjG1
 3e5gdEZNX18rVjfhBmUC0VKJLpR4qN6bp/YleeE2qgx6tb/lTgap1b9iCLqgVe5CQV9f
 EpFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4ZqExDYU6GEvX4tbG0Oq5t6w9Hxh61eKo21ZJDwTDMA=;
 b=UkJVebm4ST7aZDjgsVyguKNuiegY+aa9Lilk+mM7Sf65QRRQWmgeFqyCLF7BokAtdF
 PsxGAaTk2fNGUQNU6l8z6GAuvz0fRWC/S5djyKc5NcvFK0x0k2n/WK+/z71eIxI5M5Af
 QL/BrOmNdgdW6jYGbgpCWThLf2mEK/ddu6l+N/AXZgkTTQ24DNUaL7UoZLMGZAq52F/r
 +QoHyfihuZonTVwJogAM7UCoYqi9ztjH6tYebrh/wrSh6ukignIOynSmMqnlpr1ujoBV
 tKWmGPPy4Xrtz/ql3EnkisCqu5mY7+Erq2OeVO9sEj9rZMmjC850I9jz3/feJjffJMVD
 s1wQ==
X-Gm-Message-State: APjAAAXK+caILJa4n8wDJYiNoMc1oSWIY0kpF2G0ukTaoPzrxrQQ38sZ
 jQO0VEaMF+1epdCzZc/Y3w4iIVjd/FLWPEGSqiOFn10H
X-Google-Smtp-Source: APXvYqyBJF05vO/S5Xv4peJCN9fT+8c5Us03R9pGbVZs1xzG9O17qp7YfDtWkAYCNJVck1YHWQUMYJ0VBF9sm+ob3Do=
X-Received: by 2002:a37:4d16:: with SMTP id a22mr37322449qkb.482.1567550828416; 
 Tue, 03 Sep 2019 15:47:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190829213321.4092-1-mike.leach@linaro.org>
 <20190829213321.4092-12-mike.leach@linaro.org>
 <20190903193807.GA25787@xps15>
In-Reply-To: <20190903193807.GA25787@xps15>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 3 Sep 2019 23:46:56 +0100
Message-ID: <CAJ9a7VhM1H+yGWCXw5q4ONELQfPX2Z+dhLqxPJ95CENV3MUarA@mail.gmail.com>
Subject: Re: [PATCH v2 11/11] coresight: etm4x: docs: Adds detailed document
 for programming etm4x.
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_154710_594388_41F2EB63 
X-CRM114-Status: GOOD (  30.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Coresight ML <coresight@lists.linaro.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF0aGlldSwKCk9uIFR1ZSwgMyBTZXAgMjAxOSBhdCAyMDozOCwgTWF0aGlldSBQb2lyaWVy
IDxtYXRoaWV1LnBvaXJpZXJAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBIaSBNaWtlLAo+Cj4gT24g
VGh1LCBBdWcgMjksIDIwMTkgYXQgMTA6MzM6MjFQTSArMDEwMCwgTWlrZSBMZWFjaCB3cm90ZToK
PiA+IEFkZCBpbiBkZXRhaWxlZCBwcm9ncmFtbWVycyByZWZlcmVuY2UgZm9yIHVzZXJzIHdhbnRp
bmcgdG8gcHJvZ3JhbSB0aGUKPiA+IENvcmVTaWdodCBFVE0gNC54IGRyaXZlciB1c2luZyBzeXNm
cy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWtlIExlYWNoIDxtaWtlLmxlYWNoQGxpbmFyby5v
cmc+Cj4gPiAtLS0KPiA+ICAuLi4vY29yZXNpZ2h0L2NvcmVzaWdodC1ldG00eC1yZWZlcmVuY2Uu
dHh0ICAgfCA0NTggKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQ1OCBp
bnNlcnRpb25zKCspCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vdHJhY2Uv
Y29yZXNpZ2h0L2NvcmVzaWdodC1ldG00eC1yZWZlcmVuY2UudHh0Cj4gPgo+ID4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vdHJhY2UvY29yZXNpZ2h0L2NvcmVzaWdodC1ldG00eC1yZWZlcmVu
Y2UudHh0IGIvRG9jdW1lbnRhdGlvbi90cmFjZS9jb3Jlc2lnaHQvY29yZXNpZ2h0LWV0bTR4LXJl
ZmVyZW5jZS50eHQKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAw
MDAuLmYwYzM3MDg3MDk5Mgo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvRG9jdW1lbnRhdGlv
bi90cmFjZS9jb3Jlc2lnaHQvY29yZXNpZ2h0LWV0bTR4LXJlZmVyZW5jZS50eHQKPiA+IEBAIC0w
LDAgKzEsNDU4IEBACj4gPiArRVRNdjQgc3lzZnMgbGludXggZHJpdmVyIHByb2dyYW1taW5nIHJl
ZmVyZW5jZSAtIHYyLgo+ID4gKz09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0KPiA+ICsKPiA+ICtTdXBwbGVtZW50IHRvIGV4aXN0aW5nIEVUTXY0IGRy
aXZlciBkb2N1bWVudGF0aW9uLgo+ID4gKwo+ID4gK1N5c2ZzIGZpbGVzIGFuZCBkaXJlY3Rvcmll
cwo+ID4gKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gKwo+ID4gK1Jvb3Q6IC9zeXMv
YnVzL2NvcmVzaWdodC9kZXZpY2VzL2V0bTxOPgo+ID4gKwo+ID4gKwo+ID4gK1RoZSBmb2xsb3dp
bmcgcGFyYWdyYXBocyBleHBsYWluIHRoZSBhc3NvY2lhdGlvbiBiZXR3ZWVuIHN5c2ZzIGZpbGVz
IGFuZCB0aGUKPiA+ICtFVE12NCByZWdpc3RlcnMgdGhhdCB0aGV5IGVmZmVjdC4gTm90ZSB0aGUg
cmVnaXN0ZXIgbmFtZXMgYXJlIGdpdmVuIHdpdGhvdXQKPiA+ICt0aGUg4oCYVFJD4oCZIHByZWZp
eC4KPiA+ICsKPiA+ICtGaWxlICAgICAgICAgOiBtb2RlIChydykKPiA+ICtUcmFjZSBSZWdpc3Rl
cnMgICAgICA6IHtDT05GSUdSICsgb3RoZXJzfQo+ID4gK05vdGVzICAgICAgICAgICAgICAgIDog
Qml0IHNlbGVjdCB0cmFjZSBmZWF0dXJlcy4gU2VlIOKAmG1vZGXigJkgc2VjdGlvbiBiZWxvdy4g
Qml0cwo+ID4gKyAgICAgICAgICAgICBpbiB0aGlzIHdpbGwgY2F1c2UgZXF1aXZhbGVudCBwcm9n
cmFtbWluZyBvZiB0cmFjZSBjb25maWcgYW5kCj4gPiArICAgICAgICAgICAgIG90aGVyIHJlZ2lz
dGVycyB0byBlbmFibGUgdGhlIGZlYXR1cmVzIHJlcXVlc3RlZC4KPiA+ICtTeW50YXggJiBlZyAg
OiAnZWNobyBiaXRmaWVsZCA+IG1vZGUnCj4gPiArICAgICAgICAgICAgIGJpdGZpZWxkIHVwIHRv
IDMyIGJpdHMgc2V0dGluZyB0cmFjZSBmZWF0dXJlcy4KPiA+ICtFeGFtcGxlICAgICAgICAgICAg
ICA6ICQ+IGVjaG8gMHggPiBtb2RlCj4KPiBJIHN1c3BlY3QgdGhpbmdzIGxvb2sgZGlmZmVyZW50
IG9uIHlvdXIgZW5kIHRoYW4gdGhleSBkbyBvbiBtaW5lLiAgVGhlIGJpZ2dlc3QKPiBwcm9ibGVt
IGlzIHJlbGF0ZWQgdG8gbXVsdGktbGluZSBmaWVsZHMuICBGb3IgaW5zdGFuY2UgdGhlIGFib3Zl
IGxvb2tzIGxpa2UgdGhpcwo+IG9uIG15IHNpZGU6Cj4KPiBGaWxlICAgICAgICAgICAgOiBtb2Rl
IChydykKPiBUcmFjZSBSZWdpc3RlcnMgOiB7Q09ORklHUiArIG90aGVyc30KPiBOb3RlcyAgICAg
ICAgICAgOiBCaXQgc2VsZWN0IHRyYWNlIGZlYXR1cmVzLiBTZWUg4oCYbW9kZeKAmSBzZWN0aW9u
IGJlbG93LiBCaXRzCj4gICAgICAgICAgICAgICAgIGluIHRoaXMgd2lsbCBjYXVzZSBlcXVpdmFs
ZW50IHByb2dyYW1taW5nIG9mIHRyYWNlIGNvbmZpZyBhbmQKPiAgICAgICAgICAgICAgICAgb3Ro
ZXIgcmVnaXN0ZXJzIHRvIGVuYWJsZSB0aGUgZmVhdHVyZXMgcmVxdWVzdGVkLgo+IFN5bnRheCAm
IGVnICAgICA6ICdlY2hvIGJpdGZpZWxkID4gbW9kZScKPiAgICAgICAgICAgICAgICAgYml0Zmll
bGQgdXAgdG8gMzIgYml0cyBzZXR0aW5nIHRyYWNlIGZlYXR1cmVzLgo+IEV4YW1wbGUgICAgICAg
ICA6ICQ+IGVjaG8gMHggPiBtb2RlCj4KPiBJdCB3b3VsZCBiZSBuaWNlciB0byBoYXZlIG11bHRp
LWxpbmUgZmllbGRzIGFsaWduZWQgd2l0aCB0aGUgZmlyc3QgbGluZSwgc3VjaAo+IGFzOgo+Cj4g
RmlsZSAgICAgICAgICAgIDogbW9kZSAocncpCj4gVHJhY2UgUmVnaXN0ZXJzIDoge0NPTkZJR1Ig
KyBvdGhlcnN9Cj4gTm90ZXMgICAgICAgICAgIDogQml0IHNlbGVjdCB0cmFjZSBmZWF0dXJlcy4g
U2VlIOKAmG1vZGXigJkgc2VjdGlvbiBiZWxvdy4gQml0cwo+ICAgICAgICAgICAgICAgICAgIGlu
IHRoaXMgd2lsbCBjYXVzZSBlcXVpdmFsZW50IHByb2dyYW1taW5nIG9mIHRyYWNlIGNvbmZpZyBh
bmQKPiAgICAgICAgICAgICAgICAgICBvdGhlciByZWdpc3RlcnMgdG8gZW5hYmxlIHRoZSBmZWF0
dXJlcyByZXF1ZXN0ZWQuCj4gU3ludGF4ICYgZWcgICAgIDogJ2VjaG8gYml0ZmllbGQgPiBtb2Rl
Jwo+ICAgICAgICAgICAgICAgICAgIGJpdGZpZWxkIHVwIHRvIDMyIGJpdHMgc2V0dGluZyB0cmFj
ZSBmZWF0dXJlcy4KPiBFeGFtcGxlICAgICAgICAgOiAkPiBlY2hvIDB4ID4gbW9kZQo+CgpQcm9i
bGVtIGlzIEkgYW0gbm90IHNlZWluZyBhbnkgZGlmZmVyZW5jZSBiZXR3ZWVuIHdoYXQgeW91IHNh
eSBJIGFtCndyaXRpbmcgYW5kIHdoYXQgeW91IHByZWZlci4gV2hlbiBpIGxvb2tlZCBhdCB0aGUg
ZmlsZSBpbiBteSB0ZXh0CmVkaXRvciB0aGUgZmllbGRzIHdoZXJlIGFsaWduZWQgLSBJIHdvdWxk
IG5vdCBoYXZlIHN1Ym1pdHRlZCBpdApvdGhlcndpc2UuCkkgYW0gaGFwcHkgdG8gcmV2aXNpdCBp
dCBidXQgd2UgbmVlZCBhIHdheSBvZiBzZWVpbmcgYSBjb21tb24gdmlldy4KCgo+IEknbSBhbHNv
IG5vdCBzdXJlIGFib3V0IHRoZSBwcm9tcHQsIGkuZSAiJD4iLiAgSSBzdXNwZWN0IGl0IHNob3Vs
ZCBiZSAiJCIgYW5kCj4gYW4gYWRkaXRpb25hbCAiPiIgZ290IGluc2VydGVkLgoKcHJvbXB0IGNh
bWUgZnJvbSBleGFtcGxlcyBsaWZ0ZWQgZnJvbSBhIERCNDEwIHNlc3Npb24uIERvbid0IHJlYWxs
eQpoYXZlIGFueSBzdHJvbmcgcHJlZmVyZW5jZSBmb3Igd2hhdCByZXByZXNlbnRzIGEgcHJvbXB0
IGluIHRoZSBkb2NzLApzbyBoYXBweSB0byBjaGFuZ2UgaXQgdG8gYW55dGhpbmcgYXBwcm9wcmlh
dGUuCgpSZWdhcmRzCgpNaWtlCgo+Cj4gSSB3YW50ZWQgdG8gcmVhZCBvbiBidXQgaXMgaXQgdG9v
IGRpZmZpY3VsdCB0byBrbm93IHdoYXQgaXMgaW50ZW50aW9uYWwgYW5kIHdoYXQKPiBpc24ndC4g
IFBsZWFzZSBhZGRyZXNzIGFuZCByZXNlbmQuCj4KPiBUaGFua3MsCj4gTWF0aGlldQo+Cj4gPiAr
Cj4gPiArRmlsZSAgICAgICAgIDogcmVzZXQgKHdvKQo+ID4gK1RyYWNlIFJlZ2lzdGVycyAgICAg
IDogQWxsCj4gPiArTm90ZXMgICAgICAgICAgICAgICAgOiBSZXNldCBhbGwgcHJvZ3JhbW1pbmcg
dG8gdHJhY2Ugbm90aGluZyAvIG5vIGxvZ2ljIHByb2dyYW1tZWQuCj4gPiArU3ludGF4ICAgICAg
ICAgICAgICAgOiAnZWNobyAxID4gcmVzZXQnCj4gPiArCj4gPiArRmlsZSAgICAgICAgIDogZW5h
YmxlX3NvdXJjZSAod28pCj4gPiArVHJhY2UgUmVnaXN0ZXJzICAgICAgOiBQUkdDVExSLCBBbGwg
aGFyZHdhcmUgcmVncy4KPiA+ICtOb3RlcyAgICAgICAgICAgICAgICA6ICA+MDogUHJvZ3JhbXMg
dXAgdGhlIGhhcmR3YXJlIHdpdGggdGhlIGN1cnJlbnQgdmFsdWVzIGhlbGQgaW4KPiA+ICsgICAg
ICAgICAgICAgdGhlIGRyaXZlciBhbmQgZW5hYmxlcyB0cmFjZS4KPiA+ICsgICAgICAgICAgICAg
MDogZGlzYWJsZSB0cmFjZSBoYXJkd2FyZS4KPiA+ICtTeW50YXggICAgICAgICAgICAgICA6ICdl
Y2hvIDEgPiBlbmFibGVfc291cmNlJwo+ID4gKwo+ID4gK0ZpbGUgICAgICAgICA6IGNwdSAocm8p
Cj4gPiArVHJhY2UgUmVnaXN0ZXJzICAgICAgOiBOb25lLgo+ID4gK05vdGVzICAgICAgICAgICAg
ICAgIDogQ1BVIElEIHRoYXQgdGhpcyBFVE0gaXMgYXR0YWNoZWQgdG8uCj4gPiArRXhhbXBsZSAg
ICAgICAgICAgICAgOiQ+IGNhdCBjcHUKPiA+ICsgICAgICAgICAgICAgJD4gMAo+ID4gKwo+ID4g
K0ZpbGUgICAgICAgICA6IGFkZHJfaWR4IChydykKPiA+ICtUcmFjZSBSZWdpc3RlcnMgICAgICA6
IE5vbmUuCj4gPiArTm90ZXMgICAgICAgICAgICAgICAgOiBWaXJ0dWFsIHJlZ2lzdGVyIHRvIGlu
ZGV4IGFkZHJlc3MgY29tcGFyYXRvciBhbmQgcmFuZ2UKPiA+ICsgICAgICAgICAgICAgZmVhdHVy
ZXMuIFNldCBpbmRleCBmb3IgZmlyc3Qgb2YgdGhlIHBhaXIgaW4gYSByYW5nZS4KPiA+ICtTeW50
YXggICAgICAgICAgICAgICA6ICdlY2hvIGlkeCA+IGFkZHJfaWR4Jwo+ID4gKyAgICAgICAgICAg
ICBXaGVyZSBpZHggPCAgbnJfYWRkcl9jbXAgeCAyCj4gPiArCj4gPiArRmlsZSAgICAgICAgIDog
YWRkcl9yYW5nZSAocncpCj4gPiArVHJhY2UgUmVnaXN0ZXJzICAgICAgOiBBQ1ZSW2lkeCwgaWR4
KzFdLCBWSUlFQ1RMUgo+ID4gK05vdGVzICAgICAgICAgICAgICAgIDogUGFpciBvZiBhZGRyZXNz
ZXMgZm9yIGEgcmFuZ2Ugc2VsZWN0ZWQgYnkgYWRkcl9pZHguIEluY2x1ZGUKPiA+ICsgICAgICAg
ICAgICAgLyBleGNsdWRlIGFjY29yZGluZyB0byB0aGUgb3B0aW9uYWwgcGFyYW1ldGVyLCBvciBp
ZiBvbWl0dGVkCj4gPiArICAgICAgICAgICAgIHVzZXMgdGhlIGN1cnJlbnQg4oCYbW9kZeKAmSBz
ZXR0aW5nLiBTZWxlY3QgY29tcGFyYXRvciByYW5nZSBpbgo+ID4gKyAgICAgICAgICAgICBjb250
cm9sIHJlZ2lzdGVyLiBFcnJvciBpZiBpbmRleCBpcyBvZGQgdmFsdWUuCj4gPiArRGVwZW5kcyAg
ICAgICAgICAgICAgOiBtb2RlLCBhZGRyX2lkeAo+ID4gK1N5bnRheCAgICAgICAgICAgICAgIDog
J2VjaG8gYWRkcjEgYWRkcjIgW2V4Y2x1ZGVdID4gYWRkcl9yYW5nZScKPiA+ICsgICAgICAgICAg
ICAgV2hlcmUgYWRkcjEgYW5kIGFkZHIyIGRlZmluZSB0aGUgcmFuZ2UgYW5kIGFkZHIxIDwgYWRk
cjIuCj4gPiArICAgICAgICAgICAgIE9wdGlvbmFsIGV4Y2x1ZGUgdmFsdWUgLSAwIGZvciBpbmNs
dWRlLCAxIGZvciBleGNsdWRlLgo+ID4gK0V4YW1wbGUgICAgICAgICAgICAgIDogJD4gZWNobyAw
eDAwMDAgMHgyMDAwIDAgPiBhZGRyX3JhbmdlCj4gPiArCj4gPiArRmlsZSAgICAgICAgIDogYWRk
cl9zaW5nbGUgKHJ3KQo+ID4gK1RyYWNlIFJlZ2lzdGVycyAgICAgIDogQUNWUltpZHhdCj4gPiAr
Tm90ZXMgICAgICAgICAgICAgICAgOiBTZXQgYSBzaW5nbGUgYWRkcmVzcyBjb21wYXJhdG9yIGFj
Y29yZGluZyB0byBhZGRyX2lkeC4gVGhpcwo+ID4gKyAgICAgICAgICAgICBpcyB1c2VkIGlmIHRo
ZSBhZGRyZXNzIGNvbXBhcmF0b3IgaXMgdXNlZCBhcyBwYXJ0IG9mIGV2ZW50Cj4gPiArICAgICAg
ICAgICAgIGdlbmVyYXRpb24gbG9naWMgZXRjLgo+ID4gK0RlcGVuZHMgICAgICAgICAgICAgIDog
YWRkcl9pZHgKPiA+ICtTeW50YXggICAgICAgICAgICAgICA6ICdlY2hvIGFkZHIxID4gYWRkcl9z
aW5nbGUnCj4gPiArCj4gPiArRmlsZSAgICAgICAgIDogYWRkcl9zdGFydCAocncpCj4gPiArVHJh
Y2UgUmVnaXN0ZXJzICAgICAgOiBBQ1ZSW2lkeF0sIFZJU1NDVExSCj4gPiArTm90ZXMgICAgICAg
ICAgICAgICAgOiBTZXQgYSB0cmFjZSBzdGFydCBhZGRyZXNzIGNvbXBhcmF0b3IgYWNjb3JkaW5n
IHRvIGFkZHJfaWR4Lgo+ID4gKyAgICAgICAgICAgICBTZWxlY3QgY29tcGFyYXRvciBpbiBjb250
cm9sIHJlZ2lzdGVyLgo+ID4gK0RlcGVuZHMgICAgICAgICAgICAgIDogYWRkcl9pZHgKPiA+ICtT
eW50YXggICAgICAgICAgICAgICA6ICdlY2hvIGFkZHIxID4gYWRkcl9zdGFydCcKPiA+ICsKPiA+
ICtGaWxlICAgICAgICAgOiBhZGRyX3N0b3AgKHJ3KQo+ID4gK1RyYWNlIFJlZ2lzdGVycyAgICAg
IDogQUNWUltpZHhdLCBWSVNTQ1RMUgo+ID4gK05vdGVzICAgICAgICAgICAgICAgIDogU2V0IGEg
dHJhY2Ugc3RvcCBhZGRyZXNzIGNvbXBhcmF0b3IgYWNjb3JkaW5nIHRvIGFkZHJfaWR4Lgo+ID4g
KyAgICAgICAgICAgICBTZWxlY3QgY29tcGFyYXRvciBpbiBjb250cm9sIHJlZ2lzdGVyLgo+ID4g
K0RlcGVuZHMgICAgICAgICAgICAgIDogYWRkcl9pZHgKPiA+ICtTeW50YXggICAgICAgICAgICAg
ICA6ICdlY2hvIGFkZHIxID4gYWRkcl9zdG9wJwo+ID4gKwo+ID4gK0ZpbGUgICAgICAgICA6IGFk
ZHJfY29udGV4dCAocncpCj4gPiArVHJhY2UgUmVnaXN0ZXJzICAgICAgOiBBQ0FUUltpZHgsezY6
NH1dCj4gPiArTm90ZXMgICAgICAgICAgICAgICAgOiBMaW5rIGNvbnRleHQgSUQgY29tcGFyYXRv
ciB0byBhZGRyZXNzIGNvbXBhcmF0b3IgYWRkcl9pZHgKPiA+ICtEZXBlbmRzICAgICAgICAgICAg
ICA6IGFkZHJfaWR4Lgo+ID4gK1N5bnRheCAgICAgICAgICAgICAgIDogJ2VjaG8gY3R4dF9pZHgg
PiBhZGRyX2NvbnRleHQnCj4gPiArICAgICAgICAgICAgIFdoZXJlIGN0eHRfaWR4IGlzIHRoZSBp
bmRleCBvZiB0aGUgbGlua2VkIGNvbnRleHQgaWQgLyB2bWlkCj4gPiArICAgICAgICAgICAgIGNv
bXBhcmF0b3IuCj4gPiArCj4gPiArRmlsZSAgICAgICAgIDogYWRkcl9jdHh0eXBlIChydykKPiA+
ICtUcmFjZSBSZWdpc3RlcnMgICAgICA6IEFDQVRSW2lkeCx7MzoyfV0KPiA+ICtOb3RlcyAgICAg
ICAgICAgICAgICA6IElucHV0IHZhbHVlIHN0cmluZy4gU2V0IHR5cGUgZm9yIGxpbmtlZCBjb250
ZXh0IElEIGNvbXBhcmF0b3IKPiA+ICtEZXBlbmRzICAgICAgICAgICAgICA6IGFkZHJfaWR4Cj4g
PiArU3ludGF4ICAgICAgICAgICAgICAgOiAnZWNobyB0eXBlID4gYWRkcl9jdHh0eXBlJwo+ID4g
KyAgICAgICAgICAgICBUeXBlIG9uZSBvZiB7YWxsLCB2bWlkLCBjdHhpZCwgbm9uZX0KPiA+ICtF
eGFtcGxlICAgICAgICAgICAgICA6ICQ+IGVjaG8gY3R4aWQgPiBhZGRyX2N0eHR5cGUKPiA+ICsK
PiA+ICtGaWxlICAgICAgICAgOiBhZGRyX2V4bGV2ZWxfc19ucyAocncpCj4gPiArVHJhY2UgUmVn
aXN0ZXJzICAgICAgOiBBQ0FUUltpZHgsezE0Ojh9XQo+ID4gK05vdGVzICAgICAgICAgICAgICAg
IDogU2V0IHRoZSBFTHggc2VjdXJlIGFuZCBub24tc2VjdXJlIG1hdGNoaW5nIGJpdHMgZm9yIHRo
ZQo+ID4gKyAgICAgICAgICAgICBzZWxlY3RlZCBhZGRyZXNzIGNvbXBhcmF0b3IKPiA+ICtEZXBl
bmRzICAgICAgICAgICAgICA6IGFkZHJfaWR4Cj4gPiArU3ludGF4ICAgICAgICAgICAgICAgOiAn
ZWNobyB2YWwgPiBhZGRyX2V4bGV2ZWxfc19ucycKPiA+ICsgICAgICAgICAgICAgdmFsIGlzIGEg
NyBiaXQgdmFsdWUgZm9yIGV4Y2VwdGlvbiBsZXZlbHMgdG8gZXhjbHVkZS4gSW5wdXQKPiA+ICsg
ICAgICAgICAgICAgdmFsdWUgc2hpZnRlZCB0byBjb3JyZWN0IGJpdHMgaW4gcmVnaXN0ZXIuCj4g
PiArRXhhbXBsZSAgICAgICAgICAgICAgOiAkPiBlY2hvIDB4NEYgPiBhZGRyX2V4bGV2ZWxfc19u
cwo+ID4gKwo+ID4gK0ZpbGUgICAgICAgICA6IGFkZHJfaW5zdGRhdGF0eXBlIChydykKPiA+ICtU
cmFjZSBSZWdpc3RlcnMgICAgICA6IEFDQVRSW2lkeCx7MTowfV0KPiA+ICtOb3RlcyAgICAgICAg
ICAgICAgICA6IFNldCB0aGUgY29tcGFyYXRvciBhZGRyZXNzIHR5cGUgZm9yIG1hdGNoaW5nLiBE
cml2ZXIgb25seQo+ID4gKyAgICAgICAgICAgICBzdXBwb3J0cyBzZXR0aW5nIGluc3RydWN0aW9u
IGFkZHJlc3MgdHlwZS4KPiA+ICtEZXBlbmRzICAgICAgICAgICAgICA6IGFkZHJfaWR4Cj4gPiAr
Cj4gPiArRmlsZSAgICAgICAgIDogYWRkcl9jbXBfdmlldyAocm8pCj4gPiArVHJhY2UgUmVnaXN0
ZXJzICAgICAgOiBBQ1ZSW2lkeCwgaWR4KzFdLCBBQ0FUUltpZHhdLCBWSUlFQ1RMUgo+ID4gK05v
dGVzICAgICAgICAgICAgICAgIDogUmVhZCB0aGUgY3VycmVudGx5IHNlbGVjdGVkIGFkZHJlc3Mg
Y29tcGFyYXRvci4gSWYgcGFydCBvZgo+ID4gKyAgICAgICAgICAgICBhZGRyZXNzIHJhbmdlIHRo
ZW4gZGlzcGxheSBib3RoIGFkZHJlc3Nlcy4KPiA+ICtEZXBlbmRzICAgICAgICAgICAgICA6IGFk
ZHJfaWR4Cj4gPiArU3ludGF4ICAgICAgICAgICAgICAgOiAnY2F0IGFkZHJfY21wX3ZpZXcnCj4g
PiArRXhhbXBsZSAgICAgICAgICAgICAgOiAkPiBjYXQgYWRkcl9jbXBfdmlldwo+ID4gKyAgICAg
ICAgICAgICBhZGRyX2NtcFswXSByYW5nZSAweDAgMHhmZmZmZmZmZmZmZmZmZmZmIGluY2x1ZGUg
Y3RybCgweDRiMDApCj4gPiArCj4gPiArRmlsZSAgICAgICAgIDogbnJfYWRkcl9jbXAgKHJvKQo+
ID4gK1RyYWNlIFJlZ2lzdGVycyAgICAgIDogRnJvbSBJRFI0Cj4gPiArTm90ZXMgICAgICAgICAg
ICAgICAgOiBOdW1iZXIgb2YgYWRkcmVzcyBjb21wYXJhdG9yIHBhaXJzCj4gPiArCj4gPiArRmls
ZSAgICAgICAgIDogc3Nob3RfaWR4IChydykKPiA+ICtUcmFjZSBSZWdpc3RlcnMgICAgICA6IE5v
bmUKPiA+ICtOb3RlcyAgICAgICAgICAgICAgICA6IFNlbGVjdCAgc2luZ2xlIHNob3QgcmVnaXN0
ZXIgc2V0Lgo+ID4gKwo+ID4gK0ZpbGUgICAgICAgICA6IHNzaG90X2N0cmwgKHJ3KQo+ID4gK1Ry
YWNlIFJlZ2lzdGVycyAgICAgIDogU1NDQ1JbaWR4XQo+ID4gK05vdGVzICAgICAgICAgICAgICAg
IDogQWNjZXNzIGEgc2luZ2xlIHNob3QgY29tcGFyYXRvciBjb250cm9sIHJlZ2lzdGVyLgo+ID4g
K0RlcGVuZHMgICAgICAgICAgICAgIDogc3Nob3RfaWR4Cj4gPiArU3ludGF4ICAgICAgICAgICAg
ICAgOiAnZWNobyB2YWwgPiBzc2hvdF9jdHJsJwo+ID4gKyAgICAgICAgICAgICBXcml0ZXMgdmFs
IGludG8gdGhlIHNlbGVjdGVkIGNvbnRyb2wgcmVnaXN0ZXIuCj4gPiArCj4gPiArRmlsZSAgICAg
ICAgIDogc3Nob3Rfc3RhdHVzIChybykKPiA+ICtUcmFjZSBSZWdpc3RlcnMgICAgICA6IFNTQ1NS
W2lkeF0KPiA+ICtOb3RlcyAgICAgICAgICAgICAgICA6IFJlYWQgYSBzaW5nbGUgc2hvdCBjb21w
YXJhdG9yIHN0YXR1cyByZWdpc3Rlcgo+ID4gK0RlcGVuZHMgICAgICAgICAgICAgIDogc3Nob3Rf
aWR4Cj4gPiArU3ludGF4ICAgICAgICAgICAgICAgOiAnY2F0IHNzaG90X3N0YXR1cycKPiA+ICsg
ICAgICAgICAgICAgUmVhZCBzdGF0dXMuCj4gPiArRXhhbXBsZSAgICAgICAgICAgICAgOiAkPiBj
YXQgc3Nob3Rfc3RhdHVzCj4gPiArICAgICAgICAgICAgIDB4MQo+ID4gKwo+ID4gK0ZpbGUgICAg
ICAgICA6IHNzaG90X3BlX2N0cmwgKHJ3KQo+ID4gK1RyYWNlIFJlZ2lzdGVycyAgICAgIDogU1NQ
Q0lDUltpZHhdCj4gPiArTm90ZXMgICAgICAgICAgICAgICAgOiBBY2Nlc3MgYSBzaW5nbGUgc2hv
dCBQRSBjb21wYXJhdG9yIGlucHV0IGNvbnRyb2wgcmVnaXN0ZXIuCj4gPiArRGVwZW5kcyAgICAg
ICAgICAgICAgOiBzc2hvdF9pZHgKPiA+ICtTeW50YXggICAgICAgICAgICAgICA6IGVjaG8gdmFs
ID4gc3Nob3RfcGVfY3RybAo+ID4gKyAgICAgICAgICAgICBXcml0ZXMgdmFsIGludG8gdGhlIHNl
bGVjdGVkIGNvbnRyb2wgcmVnaXN0ZXIuCj4gPiArCj4gPiArRmlsZSAgICAgICAgIDogbnNfZXhs
ZXZlbF92aW5zdCAocncpCj4gPiArVHJhY2UgUmVnaXN0ZXJzICAgICAgOiBWSUNUTFJ7MjM6MjB9
Cj4gPiArTm90ZXMgICAgICAgICAgICAgICAgOiBQcm9ncmFtIG5vbi1zZWN1cmUgZXhjZXB0aW9u
IGxldmVsIGZpbHRlcnMuIFNldCAvIGNsZWFyIE5TCj4gPiArICAgICAgICAgICAgIGV4Y2VwdGlv
biBmaWx0ZXIgYml0cy4gU2V0dGluZyDigJgx4oCZIGV4Y2x1ZGVzIHRyYWNlIGZyb20gdGhlCj4g
PiArICAgICAgICAgICAgIGV4Y2VwdGlvbiBsZXZlbC4KPiA+ICtTeW50YXggICAgICAgICAgICAg
ICA6ICdlY2hvIGJpdGZpZWxkID4gbnNfZXhsZXZlbF92aWluc3QnCj4gPiArICAgICAgICAgICAg
IFdoZXJlIGJpdGZpZWxkIGNvbnRhaW5zIGJpdHMgdG8gc2V0IGNsZWFyIGZvciBFTDAgdG8gRUwy
Cj4gPiArRXhhbXBsZSAgICAgICAgICAgICAgOiAlPiBlY2hvIDB4NCA+IG5zX2V4bGV2ZWxfdmlp
bnN0Cj4gPiArICAgICAgICAgICAgIDsgRXhjbHVkZSBFTDIgTlMgdHJhY2UuCj4gPiArCj4gPiAr
RmlsZSAgICAgICAgIDogdmluc3RfcGVfY21wX3N0YXJ0X3N0b3AgKHJ3KQo+ID4gK1RyYWNlIFJl
Z2lzdGVycyAgICAgIDogVklQQ1NTQ1RMUgo+ID4gK05vdGVzICAgICAgICAgICAgICAgIDogQWNj
ZXNzIFBFIHN0YXJ0IHN0b3AgY29tcGFyYXRvciBpbnB1dCBjb250cm9sIHJlZ2lzdGVycwo+ID4g
Kwo+ID4gK0ZpbGUgICAgICAgICA6IGJiX2N0cmwgKHJ3KQo+ID4gK1RyYWNlIFJlZ2lzdGVycyAg
ICAgIDogQkJDVExSCj4gPiArTm90ZXMgICAgICAgICAgICAgICAgOiBEZWZpbmUgcmFuZ2VzIHRo
YXQgQnJhbmNoIEJyb2FkY2FzdCB3aWxsIG9wZXJhdGUgaW4uCj4gPiArICAgICAgICAgICAgIERl
ZmF1bHQgKDB4MCkgaXMgYWxsIGFkZHJlc3Nlcy4KPiA+ICtEZXBlbmRzICAgICAgICAgICAgICA6
IEJCIGVuYWJsZWQuCj4gPiArCj4gPiArRmlsZSAgICAgICAgIDogY3ljX3RocmVzaG9sZCAocncp
Cj4gPiArVHJhY2UgUmVnaXN0ZXJzICAgICAgOiBDQ0NUTFIKPiA+ICtOb3RlcyAgICAgICAgICAg
ICAgICA6IFNldCB0aGUgdGhyZXNob2xkIGZvciB3aGljaCBjeWNsZSBjb3VudHMgd2lsbCBiZSBl
bWl0dGVkLgo+ID4gKyAgICAgICAgICAgICBFcnJvciBpZiBhdHRlbXB0IHRvIHNldCBiZWxvdyBt
aW5pbXVtIGRlZmluZWQgaW4gSURSMywgbWFza2VkCj4gPiArICAgICAgICAgICAgIHRvIHdpZHRo
IG9mIHZhbGlkIGJpdHMuCj4gPiArRGVwZW5kcyAgICAgICAgICAgICAgOiBDQyBlbmFibGVkLgo+
ID4gKwo+ID4gK0ZpbGUgICAgICAgICA6IHN5bmNmcmVxIChydykKPiA+ICtUcmFjZSBSZWdpc3Rl
cnMgICAgICA6IFNZTkNQUgo+ID4gK05vdGVzICAgICAgICAgICAgICAgIDogU2V0IHRyYWNlIHN5
bmNocm9uaXNhdGlvbiBwZXJpb2QuIFBvd2VyIG9mIDIgdmFsdWUsIDAgKG9mZikKPiA+ICsgICAg
ICAgICAgICAgb3IgOC0yMC4gRHJpdmVyIGRlZmF1bHRzIHRvIDEyIChldmVyeSA0MDk2IGJ5dGVz
KS4KPiA+ICsKPiA+ICtGaWxlICAgICAgICAgOiBjbnRyX2lkeCAocncpCj4gPiArVHJhY2UgUmVn
aXN0ZXJzICAgICAgOiBub25lCj4gPiArTm90ZXMgICAgICAgICAgICAgICAgOiBTZWxlY3QgdGhl
IGNvdW50ZXIgdG8gYWNjZXNzCj4gPiArU3ludGF4ICAgICAgICAgICAgICAgOiAnZWNobyBpZHgg
PiBjbnRyX2lkeCcKPiA+ICsgICAgICAgICAgICAgV2hlcmUgaWR4IDwgIG5yX2NudHIKPiA+ICsK
PiA+ICtGaWxlICAgICAgICAgOiBjbnRyX2N0cmwgKHJ3KQo+ID4gK1RyYWNlIFJlZ2lzdGVycyAg
ICAgIDogQ05UQ1RMUltpZHhdCj4gPiArTm90ZXMgICAgICAgICAgICAgICAgOiBTZXQgY291bnRl
ciBjb250cm9sIHZhbHVlCj4gPiArRGVwZW5kcyAgICAgICAgICAgICAgOiBjbnRyX2lkeAo+ID4g
K1N5bnRheCAgICAgICAgICAgICAgIDogJ2VjaG8gdmFsID4gY250cl9jdHJsJwo+ID4gKyAgICAg
ICAgICAgICBXaGVyZSB2YWwgaXMgcGVyIEVUTXY0IHNwZWMuCj4gPiArCj4gPiArRmlsZSAgICAg
ICAgIDogY250cmxkdnIgKHJ3KQo+ID4gK1RyYWNlIFJlZ2lzdGVycyAgICAgIDogQ05UUkxEVlJb
aWR4XQo+ID4gK05vdGVzICAgICAgICAgICAgICAgIDogU2V0IGNvdW50ZXIgcmVsb2FkIHZhbHVl
Cj4gPiArRGVwZW5kcyAgICAgICAgICAgICAgOiBjbnRyX2lkeAo+ID4gK1N5bnRheCAgICAgICAg
ICAgICAgIDogJ2VjaG8gdmFsID4gY250cmxkdnInCj4gPiArICAgICAgICAgICAgIFdoZXJlIHZh
bCBpcyBwZXIgRVRNdjQgc3BlYy4KPiA+ICsKPiA+ICtGaWxlICAgICAgICAgOiBucl9jbnRyIChy
bykKPiA+ICtUcmFjZSBSZWdpc3RlcnMgICAgICA6IEZyb20gSURSNQo+ID4gK05vdGVzICAgICAg
ICAgICAgICAgIDogTnVtYmVyIG9mIGNvdW50ZXJzIGltcGxlbWVudGVkLgo+ID4gKwo+ID4gK0Zp
bGUgICAgICAgICA6IGN0eGlkX2lkeCAocncpCj4gPiArVHJhY2UgUmVnaXN0ZXJzICAgICAgOiBO
b25lCj4gPiArTm90ZXMgICAgICAgICAgICAgICAgOiBTZWxlY3QgdGhlIGNvbnRleHQgSUQgY29t
cGFyYXRvciB0byBhY2Nlc3MKPiA+ICtTeW50YXggICAgICAgICAgICAgICA6ICdlY2hvIGlkeCA+
IGN0eGlkX2lkeCcKPiA+ICsgICAgICAgICAgICAgV2hlcmUgaWR4IDwgIG51bWNpZGMKPiA+ICsK
PiA+ICtGaWxlICAgICAgICAgOiBjdHhpZF9waWQgKHJ3KQo+ID4gK1RyYWNlIFJlZ2lzdGVycyAg
ICAgIDogQ0lEQ1ZSW2lkeF0KPiA+ICtOb3RlcyAgICAgICAgICAgICAgICA6IFNldCB0aGUgY29u
dGV4dCBJRCBjb21wYXJhdG9yIHZhbHVlCj4gPiArRGVwZW5kcyAgICAgICAgICAgICAgOiBjdHhp
ZF9pZHgKPiA+ICsKPiA+ICtGaWxlICAgICAgICAgOiBjdHhpZF9tYXNrcyAocncpCj4gPiArVHJh
Y2UgUmVnaXN0ZXJzICAgICAgOiBDSURDQ1RMUjAsIENJRENDVExSMSwgQ0lEQ1ZSPDAtNz4KPiA+
ICtOb3RlcyAgICAgICAgICAgICAgICA6IFBhaXIgb2YgdmFsdWVzIHRvIHNldCB0aGUgYnl0ZSBt
YXNrcyBmb3IgMS04IGNvbnRleHQgSUQKPiA+ICsgICAgICAgICAgICAgY29tcGFyYXRvcnMuIEF1
dG9tYXRpY2FsbHkgY2xlYXJzIG1hc2tlZCBieXRlcyB0byAwIGluIENJRAo+ID4gKyAgICAgICAg
ICAgICB2YWx1ZSByZWdpc3RlcnMuCj4gPiArU3ludGF4ICAgICAgICAgICAgICAgOiAnZWNobyBt
M20ybTFtMCBbbTdtNm01bTRdID4gY3R4aWRfbWFza3MnCj4gPiArICAgICAgICAgICAgIDMyIGJp
dCB2YWx1ZXMgbWFkZSB1cCBvZiBtYXNrIGJ5dGVzLCB3aGVyZSBtTiByZXByZXNlbnRzIGEKPiA+
ICsgICAgICAgICAgICAgYnl0ZSBtYXNrIHZhbHVlIGZvciBDdHh0IElEIGNvbXBhcmF0b3IgTi4K
PiA+ICsgICAgICAgICAgICAgU2Vjb25kIHZhbHVlIG5vdCByZXF1aXJlZCBvbiBzeXN0ZW1zIHRo
YXQgaGF2ZSBmZXdlciB0aGFuIDQKPiA+ICsgICAgICAgICAgICAgY29udGV4dCBJRCBjb21wYXJh
dG9ycwo+ID4gKwo+ID4gK0ZpbGUgICAgICAgICA6IG51bWNpZGMgKHJvKQo+ID4gK1RyYWNlIFJl
Z2lzdGVycyAgICAgIDogRnJvbSBJRFI0Cj4gPiArTm90ZXMgICAgICAgICAgICAgICAgOiBOdW1i
ZXIgb2YgQ29udGV4dCBJRCBjb21wYXJhdG9ycwo+ID4gKwo+ID4gK0ZpbGUgICAgICAgICA6IHZt
aWRfaWR4IChydykKPiA+ICtUcmFjZSBSZWdpc3RlcnMgICAgICA6IE5vbmUKPiA+ICtOb3RlcyAg
ICAgICAgICAgICAgICA6IFNlbGVjdCB0aGUgVk0gSUQgY29tcGFyYXRvciB0byBhY2Nlc3MuCj4g
PiArU3ludGF4ICAgICAgICAgICAgICAgOiAnZWNobyBpZHggPiB2bWlkX2lkeCcKPiA+ICsgICAg
ICAgICAgICAgV2hlcmUgaWR4IDwgIG51bXZtaWRjCj4gPiArCj4gPiArRmlsZSAgICAgICAgIDog
dm1pZF92YWwgKHJ3KQo+ID4gK1RyYWNlIFJlZ2lzdGVycyAgICAgIDogVk1JRENWUltpZHhdCj4g
PiArTm90ZXMgICAgICAgICAgICAgICAgOiBTZXQgdGhlIFZNIElEIGNvbXBhcmF0b3IgdmFsdWUK
PiA+ICtEZXBlbmRzICAgICAgICAgICAgICA6IHZtaWRfaWR4Cj4gPiArCj4gPiArRmlsZSAgICAg
ICAgIDogdm1pZF9tYXNrcyAocncpCj4gPiArVHJhY2UgUmVnaXN0ZXJzICAgICAgOiBWTUlEQ0NU
TFIwLCBWTUlEQ0NUTFIxLCBWTUlEQ1ZSPDAtNz4KPiA+ICtOb3RlcyAgICAgICAgICAgICAgICA6
IFBhaXIgb2YgdmFsdWVzIHRvIHNldCB0aGUgYnl0ZSBtYXNrcyBmb3IgMS04IFZNIElECj4gPiAr
ICAgICAgICAgICAgIGNvbXBhcmF0b3JzLiBBdXRvbWF0aWNhbGx5IGNsZWFycyBtYXNrZWQgYnl0
ZXMgdG8gMCBpbiBWTUlECj4gPiArICAgICAgICAgICAgIHZhbHVlIHJlZ2lzdGVycy4KPiA+ICtT
eW50YXggICAgICAgICAgICAgICA6ICdlY2hvIG0zbTJtMW0wIFttN202bTVtNF0gPiB2bWlkX21h
c2tzJwo+ID4gKyAgICAgICAgICAgICBXaGVyZSBtTiByZXByZXNlbnRzIGEgYnl0ZSBtYXNrIHZh
bHVlIGZvciBWTUlEIGNvbXBhcmF0b3IgTi4KPiA+ICsgICAgICAgICAgICAgU2Vjb25kIHZhbHVl
IG5vdCByZXF1aXJlZCBvbiBzeXN0ZW1zIHRoYXQgaGF2ZSBmZXdlciB0aGFuCj4gPiArICAgICAg
ICAgICAgIDQgVk1JRCBjb21wYXJhdG9ycy4KPiA+ICsKPiA+ICtGaWxlICAgICAgICAgOiBudW12
bWlkYyAocm8pCj4gPiArVHJhY2UgUmVnaXN0ZXJzICAgICAgOiBGcm9tIElEUjQKPiA+ICtOb3Rl
cyAgICAgICAgICAgICAgICA6IE51bWJlciBvZiBWTUlEIGNvbXBhcmF0b3JzCj4gPiArCj4gPiAr
RmlsZSAgICAgICAgIDogcmVzX2lkeCAocncpCj4gPiArVHJhY2UgUmVnaXN0ZXJzICAgICAgOiBO
b25lLgo+ID4gK05vdGVzICAgICAgICAgICAgICAgIDogU2VsZWN0IHRoZSByZXNvdXJjZSBzZWxl
Y3RvciBjb250cm9sIHRvIGFjY2Vzcy4gTXVzdCBiZSAyIG9yCj4gPiArICAgICAgICAgICAgIGhp
Z2hlciBhcyBzZWxlY3RvcnMgMCBhbmQgMSBhcmUgaGFyZHdpcmVkLgo+ID4gK1N5bnRheCAgICAg
ICAgICAgICAgIDogJ2VjaG8gaWR4ID4gcmVzX2lkeCcKPiA+ICsgICAgICAgICAgICAgV2hlcmUg
MiA8PSBpZHggPCBucl9yZXNvdXJjZSB4IDIKPiA+ICsKPiA+ICtGaWxlICAgICAgICAgOiByZXNf
Y3RybCAocncpCj4gPiArVHJhY2UgUmVnaXN0ZXJzICAgICAgOiBSU0NUTFJbaWR4XQo+ID4gK05v
dGVzICAgICAgICAgICAgICAgIDogU2V0IHJlc291cmNlIHNlbGVjdG9yIGNvbnRyb2wgdmFsdWUu
IFZhbHVlIHBlciBFVE12NCBzcGVjLgo+ID4gK0RlcGVuZHMgICAgICAgICAgICAgIDogcmVzX2lk
eAo+ID4gK1N5bnRheCAgICAgICAgICAgICAgIDogJ2VjaG8gdmFsID4gcmVzX2NudHInCj4gPiAr
ICAgICAgICAgICAgIFdoZXJlIHZhbCBpcyBwZXIgRVRNdjQgc3BlYy4KPiA+ICsKPiA+ICtGaWxl
ICAgICAgICAgOiBucl9yZXNvdXJjZSAocm8pCj4gPiArVHJhY2UgUmVnaXN0ZXJzICAgICAgOiBG
cm9tIElEUjQKPiA+ICtOb3RlcyAgICAgICAgICAgICAgICA6IE51bWJlciBvZiByZXNvdXJjZSBz
ZWxlY3RvciBwYWlycwo+ID4gKwo+ID4gK0ZpbGUgICAgICAgICA6IGV2ZW50IChydykKPiA+ICtU
cmFjZSBSZWdpc3RlcnMgICAgICA6IEVWRU5UQ1RSTDBSCj4gPiArTm90ZXMgICAgICAgICAgICAg
ICAgOiBTZXQgdXAgdG8gNCBpbXBsZW1lbnRlZCBldmVudCBmaWVsZHMuCj4gPiArU3ludGF4ICAg
ICAgICAgICAgICAgOiAnZWNobyBldjNldjJldjFldjAgPiBldmVudCcKPiA+ICsgICAgICAgICAg
ICAgV2hlcmUgZXZOIGlzIGFuIDggYml0IGV2ZW50IGZpZWxkLiBVcCB0byA0IGV2ZW50IGZpZWxk
cyBtYWtlIHVwCj4gPiArICAgICAgICAgICAgIHRoZSAzMmJpdCBpbnB1dCB2YWx1ZS4gTnVtYmVy
IG9mIHZhbGlkIGZpZWxkcyBpbXBsZW1lbnRhdGlvbgo+ID4gKyAgICAgICAgICAgICBkZXBlbmRl
bnQgZGVmaW5lZCBpbiBJRFIwLgo+ID4gKwo+ID4gK0ZpbGUgICAgICAgICA6IGV2ZW50X2luc3Ry
ZW4gKHJ3KQo+ID4gK1RyYWNlIFJlZ2lzdGVycyAgICAgIDogRVZFTlRDVFJMMVIKPiA+ICtOb3Rl
cyAgICAgICAgICAgICAgICA6IENob29zZSBldmVudHMgd2hpY2ggaW5zZXJ0IGV2ZW50IHBhY2tl
dHMgaW50byB0cmFjZSBzdHJlYW0uCj4gPiArRGVwZW5kcyAgICAgICAgICAgICAgOiBFVkVOVENU
UkwwUgo+ID4gK1N5bnRheCAgICAgICAgICAgICAgIDogJ2VjaG8gYml0ZmllbGQgPiBldmVudF9p
bnN0cmVuJwo+ID4gKyAgICAgICAgICAgICBXaGVyZSBiaXRmaWVsZCBpcyB1cCB0byA0IGJpdHMg
YWNjb3JkaW5nIHRvIG51bWJlciBvZiBldmVudAo+ID4gKyAgICAgICAgICAgICBmaWVsZHMuCj4g
PiArCj4gPiArRmlsZSAgICAgICAgIDogZXZlbnRfdHMgKHJ3KQo+ID4gK1RyYWNlIFJlZ2lzdGVy
cyAgICAgIDogVFNDVExSCj4gPiArTm90ZXMgICAgICAgICAgICAgICAgOiBTZXQgdGhlIGV2ZW50
IHRoYXQgd2lsbCBnZW5lcmF0ZSB0aW1lc3RhbXAgcmVxdWVzdHMuCj4gPiArRGVwZW5kcyAgICAg
ICAgICAgICAgOiBUUyBhY3RpdmF0ZWQKPiA+ICtTeW50YXggICAgICAgICAgICAgICA6ICdlY2hv
IGV2ZmllbGQgPiBldmVudF90cycKPiA+ICsgICAgICAgICAgICAgV2hlcmUgZXZmaWVsZCBpcyBh
biA4IGJpdCBldmVudCBzZWxlY3Rvci4KPiA+ICsKPiA+ICtGaWxlICAgICAgICAgOiBzZXFfaWR4
IChydykKPiA+ICtUcmFjZSBSZWdpc3RlcnMgICAgICA6IE5vbmUKPiA+ICtOb3RlcyAgICAgICAg
ICAgICAgICA6IFNlcXVlbmNlciBldmVudCByZWdpc3RlciBzZWxlY3QgLSAwIHRvIDIKPiA+ICsK
PiA+ICsKPiA+ICtGaWxlICAgICAgICAgOiBzZXFfc3RhdGUgKHJ3KQo+ID4gK1RyYWNlIFJlZ2lz
dGVycyAgICAgIDogU0VRU1RSCj4gPiArTm90ZXMgICAgICAgICAgICAgICAgOiBTZXF1ZW5jZXIg
Y3VycmVudCBzdGF0ZSAtIDAgdG8gMy4KPiA+ICsKPiA+ICtGaWxlICAgICAgICAgOiBzZXFfZXZl
bnQgKHJ3KQo+ID4gK1RyYWNlIFJlZ2lzdGVycyAgICAgIDogU0VRRVZSW2lkeF0KPiA+ICtOb3Rl
cyAgICAgICAgICAgICAgICA6IFN0YXRlIHRyYW5zaXRpb24gZXZlbnQgcmVnaXN0ZXJzCj4gPiAr
RGVwZW5kcyAgICAgICAgICAgICAgOiBzZXFfaWR4Cj4gPiArU3ludGF4ICAgICAgICAgICAgICAg
OiAnZWNobyBldkJldkYgPiBzZXFfZXZlbnQnCj4gPiArICAgICAgICAgICAgIFdoZXJlIGV2QmV2
RiBpcyBhIDE2IGJpdCB2YWx1ZSBtYWRlIHVwIG9mIHR3byBldmVudCBzZWxlY3RvcnMsCj4gPiAr
ICAgICAgICAgICAgIGV2QiAtIGJhY2ssIGV2RiAtIGZvcndhcmRzLgo+ID4gKwo+ID4gK0ZpbGUg
ICAgICAgICA6IHNlcV9yZXNldF9ldmVudCAocncpCj4gPiArVHJhY2UgUmVnaXN0ZXJzICAgICAg
OiBTRVFSU1RFVlIKPiA+ICtOb3RlcyAgICAgICAgICAgICAgICA6IFNlcXVlbmNlciByZXNldCBl
dmVudAo+ID4gK1N5bnRheCAgICAgICAgICAgICAgIDogJ2VjaG8gZXZmaWVsZCA+IHNlcV9yZXNl
dF9ldmVudCcKPiA+ICsgICAgICAgICAgICAgV2hlcmUgZXZmaWVsZCBpcyBhbiA4IGJpdCBldmVu
dCBzZWxlY3Rvci4KPiA+ICsKPiA+ICtGaWxlICAgICAgICAgOiBucnNlcXN0YXRlIChybykKPiA+
ICtUcmFjZSBSZWdpc3RlcnMgICAgICA6IEZyb20gSURSNQo+ID4gK05vdGVzICAgICAgICAgICAg
ICAgIDogTnVtYmVyIG9mIHNlcXVlbmNlciBzdGF0ZXMgKDAgb3IgNCkKPiA+ICsKPiA+ICtGaWxl
ICAgICAgICAgOiBucl9wZV9jbXAgKHJvKQo+ID4gK1RyYWNlIFJlZ2lzdGVycyAgICAgIDogRnJv
bSBJRFI0Cj4gPiArTm90ZXMgICAgICAgICAgICAgICAgOiBOdW1iZXIgb2YgUEUgY29tcGFyYXRv
ciBpbnB1dHMKPiA+ICsKPiA+ICtGaWxlICAgICAgICAgOiBucl9leHRfaW5wIChybykKPiA+ICtU
cmFjZSBSZWdpc3RlcnMgICAgICA6IEZyb20gSURSNQo+ID4gK05vdGVzICAgICAgICAgICAgICAg
IDogTnVtYmVyIG9mIGV4dGVybmFsIGlucHV0cwo+ID4gKwo+ID4gK0ZpbGUgICAgICAgICA6IG5y
X3NzX2NtcCAocm8pCj4gPiArVHJhY2UgUmVnaXN0ZXJzICAgICAgOiBGcm9tIElEUjQKPiA+ICtO
b3RlcyAgICAgICAgICAgICAgICA6IE51bWJlciBvZiBTaW5nbGUgU2hvdCBjb250cm9sIHJlZ2lz
dGVycwo+ID4gKwo+ID4gK05vdGU6IFdoZW4gcHJvZ3JhbW1pbmcgYW55IGFkZHJlc3MgY29tcGFy
YXRvciB0aGUgZHJpdmVyIHdpbGwgdGFnIHRoZQo+ID4gK2NvbXBhcmF0b3Igd2l0aCBhIHR5cGUg
dXNlZCAtIGkuZS4gUkFOR0UsIFNJTkdMRSwgU1RBUlQsIFNUT1AuIE9uY2UgdGhpcyB0YWcKPiA+
ICtpcyBzZXQsIHRoZW4gb25seSB0aGUgdmFsdWVzIGNhbiBiZSBjaGFuZ2VkIHVzaW5nIHRoZSBz
YW1lIHN5c2ZzIGZpbGUgLyB0eXBlCj4gPiArdXNlZCB0byBwcm9ncmFtIGl0Lgo+ID4gKwo+ID4g
K1RodXM6LQo+ID4gKyUgZWNobyAwID4gYWRkcl9pZHggICAgICAgICAgICAgIDsgc2VsZWN0IGFk
ZHJlc3MgY29tcGFyYXRvciAwCj4gPiArJSBlY2hvIDB4MTAwMCAweDUwMDAgMCA+IGFkZHJfcmFu
Z2UgOyBzZXQgYWRkcmVzcyByYW5nZSBvbiBjb21wYXJhdG9ycyAwIGFuZCAxLgo+ID4gKyUgZWNo
byAweDIwMDAgPiBhZGRyX3N0YXJ0ICAgICAgIDsgdGhpcyB3aWxsIGVycm9yIGFzIGNvbXBhcmF0
b3IgMCBpcyBhCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOyByYW5nZSBj
b21wYXJhdG9yCj4gPiArJSBlY2hvIDIgPiBhZGRyX2lkeCAgICAgICAgICAgICAgOyBzZWxlY3Qg
YWRkcmVzcyBjb21wYXJhdG9yIDIKPiA+ICslIGVjaG8gMHgyMDAwID4gYWRkcl9zdGFydCAgICAg
ICA7IHRoaXMgaXMgT0sgYXMgY29tcGFyYXRvciAyIGlzIHVudXNlZCwKPiA+ICslIGVjaG8gMHgz
MDAwID4gYWRkcl9zdG9wICAgICAgICA7IHRoaXMgd2lsbCBlcnJvciBhcyBjb21wYXJhdG9yIDIg
YSBzdGFydAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDsgYWRkcmVzcyBj
b21wYXJhdG9yCj4gPiArJSBlY2hvIDIgPiBhZGRyX2lkeCAgICAgICAgICAgICAgOyBzZWxlY3Qg
YWRkcmVzcyBjb21wYXJhdG9yIDMKPiA+ICslIGVjaG8gMHgzMDAwID4gYWRkcl9zdG9wICAgICAg
ICA7IHRoaXMgaXMgT0sKPiA+ICsKPiA+ICtUbyByZW1vdmUgcHJvZ3JhbW1pbmcgb24gYWxsIHRo
ZSBjb21wYXJhdG9ycyAoYW5kIGFsbCB0aGUgb3RoZXIgaGFyZHdhcmUpIHVzZQo+ID4gK3RoZSBy
ZXNldCBwYXJhbWV0ZXI6Cj4gPiArCj4gPiArJSBlY2hvIDEgPiByZXNldAo+ID4gKwo+ID4gK1Ro
ZSDigJhtb2Rl4oCZIHN5c2ZzIHBhcmFtZXRlci4KPiA+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiA+ICsKPiA+ICtUaGlzIGlzIGEgYml0ZmllbGQgc2VsZWN0aW9uIHBhcmFtZXRlciB0
aGF0IHNldHMgdGhlIG92ZXJhbGwgdHJhY2UgbW9kZSBmb3IgdGhlCj4gPiArRVRNLiBUaGUgdGFi
bGUgYmVsb3cgZGVzY3JpYmVzIHRoZSBiaXRzLCB1c2luZyB0aGUgZGVmaW5lcyBmcm9tIHRoZSBk
cml2ZXIKPiA+ICtzb3VyY2UgZmlsZSwgYWxvbmcgd2l0aCBhIGRlc2NyaXB0aW9uIG9mIHRoZSBm
ZWF0dXJlIHRoZXNlIHJlcHJlc2VudC4gTWFueQo+ID4gK2ZlYXR1cmVzIGFyZSBvcHRpb25hbCBh
bmQgdGhlcmVmb3JlIGRlcGVuZGVudCBvbiBpbXBsZW1lbnRhdGlvbiBpbiB0aGUKPiA+ICtoYXJk
d2FyZS4KPiA+ICsKPiA+ICtCaXQgYXNzaWduZW1lbnRzIHNob3duIGJlbG93Oi0KPiA+ICsKPiA+
ICtiaXQgKDApICAgICAgICAgIDogI2RlZmluZSBFVE1fTU9ERV9FWENMVURFCj4gPiArZGVzY3Jp
cHRpb24gOiBUaGlzIGlzIHRoZSBkZWZhdWx0IHZhbHVlIGZvciB0aGUgaW5jbHVkZSAvIGV4Y2x1
ZGUgZnVuY3Rpb24gd2hlbgo+ID4gKyAgICAgICAgICAgc2V0dGluZyBhZGRyZXNzIHJhbmdlcy4g
U2V0IDEgZm9yIGV4Y2x1ZGUgcmFuZ2UuIFdoZW4gdGhlIG1vZGUKPiA+ICsgICAgICAgICAgIHBh
cmFtZXRlciBpcyBzZXQgdGhpcyB2YWx1ZSBpcyBhcHBsaWVkIHRvIHRoZSBjdXJyZW50bHkgaW5k
ZXhlZAo+ID4gKyAgICAgICAgICAgYWRkcmVzcyByYW5nZS4KPiA+ICsKPiA+ICtiaXQgKDQpICAg
ICAgICAgIDogI2RlZmluZSBFVE1fTU9ERV9CQgo+ID4gK2Rlc2NyaXB0aW9uIDogU2V0IHRvIGVu
YWJsZSBicmFuY2ggYnJvYWRjYXN0IGlmIHN1cHBvcnRlZCBpbiBoYXJkd2FyZSBbSURSMF0uCj4g
PiArCj4gPiArYml0ICg1KSAgICAgICAgICA6ICNkZWZpbmUgRVRNdjRfTU9ERV9DWUNBQ0MKPiA+
ICtkZXNjcmlwdGlvbiA6IFNldCB0byBlbmFibGUgY3ljbGUgYWNjdXJhdGUgdHJhY2UgaWYgc3Vw
cG9ydGVkIFtJRFIwXS4KPiA+ICsKPiA+ICtiaXQgKDYpICAgICAgICAgIDogRVRNdjRfTU9ERV9D
VFhJRAo+ID4gK2Rlc2NyaXB0aW9uIDogU2V0IHRvIGVuYWJsZSBjb250ZXh0IElEIHRyYWNpbmcg
aWYgc3VwcG9ydGVkIGluIGhhcmR3YXJlIFtJRFIyXS4KPiA+ICsKPiA+ICtiaXQgKDcpICAgICAg
ICAgIDogRVRNX01PREVfVk1JRAo+ID4gK2Rlc2NyaXB0aW9uIDogU2V0IHRvIGVuYWJsZSB2aXJ0
dWFsIG1hY2hpbmUgSUQgdHJhY2luZyBpZiBzdXBwb3J0ZWQgW0lEUjJdLgo+ID4gKwo+ID4gK2Jp
dCAoMTEpICAgIDogRVRNdjRfTU9ERV9USU1FU1RBTVAKPiA+ICtkZXNjcmlwdGlvbiA6IFNldCB0
byBlbmFibGUgdGltZXN0YW1wIGdlbmVyYXRpb24gaWYgc3VwcG9ydGVkIFtJRFIwXS4KPiA+ICsK
PiA+ICtiaXQgKDEyKSAgICA6IEVUTV9NT0RFX1JFVFVSTlNUQUNLCj4gPiArZGVzY3JpcHRpb24g
OiBTZXQgdG8gZW5hYmxlIHRyYWNlIHJldHVybiBzdGFjayB1c2UgaWYgc3VwcG9ydGVkIFtJRFIw
XS4KPiA+ICsKPiA+ICtiaXQgKDEzLTE0KSA6IEVUTV9NT0RFX1FFTEVNKHZhbCkKPiA+ICtkZXNj
cmlwdGlvbiA6IOKAmHZhbOKAmSBkZXRlcm1pbmVzIGxldmVsIG9mIFEgZWxlbWVudCBzdXBwb3J0
IGVuYWJsZWQgaWYKPiA+ICsgICAgICAgICBpbXBsZW1lbnRlZCBieSB0aGUgRVRNIFtJRFIwXQo+
ID4gKwo+ID4gK2JpdCAoMTkpICAgIDogRVRNX01PREVfQVRCX1RSSUdHRVIKPiA+ICtkZXNjcmlw
dGlvbiA6IFNldCB0byBlbmFibGUgdGhlIEFUQlRSSUdHRVIgYml0IGluIHRoZSBldmVudCBjb250
cm9sIHJlZ2lzdGVyCj4gPiArICAgICAgICAgW0VWRU5UQ1RMUjFdIGlmIHN1cHBvcnRlZCBbSURS
NV0uCj4gPiArCj4gPiArYml0ICgyMCkgICAgOiBFVE1fTU9ERV9MUE9WRVJSSURFCj4gPiArZGVz
Y3JpcHRpb24gOiBTZXQgdG8gZW5hYmxlIHRoZSBMUE9WRVJSSURFIGJpdCBpbiB0aGUgZXZlbnQg
Y29udHJvbCByZWdpc3Rlcgo+ID4gKyAgICAgICAgIFtFVkVOVENUTFIxXSwgaWYgc3VwcG9ydGVk
IFtJRFI1XS4KPiA+ICsKPiA+ICtiaXQgKDIxKSAgICA6IEVUTV9NT0RFX0lTVEFMTF9FTgo+ID4g
K2Rlc2NyaXB0aW9uIDogU2V0IHRvIGVuYWJsZSB0aGUgSVNUQUxMIGJpdCBpbiB0aGUgc3RhbGwg
Y29udHJvbCByZWdpc3Rlcgo+ID4gKyAgICAgICAgIFtTVEFMTENUTFJdCj4gPiArCj4gPiArYml0
ICgyMykgICAgOiBFVE1fTU9ERV9JTlNUUFJJTwo+ID4gK2Rlc2NyaXB0aW9uIDogU2V0IHRvIGVu
YWJsZSB0aGUgSU5TVFBSSU9SSVRZIGJpdCBpbiB0aGUgc3RhbGwgY29udHJvbCByZWdpc3Rlcgo+
ID4gKyAgICAgICAgIFtTVEFMTENUTFJdICwgaWYgc3VwcG9ydGVkIFtJRFIwXS4KPiA+ICsKPiA+
ICtiaXQgKDI0KSAgICA6IEVUTV9NT0RFX05PT1ZFUkZMT1cKPiA+ICtkZXNjcmlwdGlvbiA6IFNl
dCB0byBlbmFibGUgdGhlIE5PT1ZFUkZMT1cgYml0IGluIHRoZSBzdGFsbCBjb250cm9sIHJlZ2lz
dGVyCj4gPiArICAgICAgICAgW1NUQUxMQ1RMUl0sIGlmIHN1cHBvcnRlZCBbSURSM10uCj4gPiAr
Cj4gPiArYml0ICgyNSkgICAgOiBFVE1fTU9ERV9UUkFDRV9SRVNFVAo+ID4gK2Rlc2NyaXB0aW9u
IDogU2V0IHRvIGVuYWJsZSB0aGUgVFJDUkVTRVQgYml0IGluIHRoZSB2aWV3aW5zdCBjb250cm9s
IHJlZ2lzdGVyCj4gPiArICAgICAgICAgW1ZJQ1RMUl0gLCBpZiBzdXBwb3J0ZWQgW0lEUjNdLgo+
ID4gKwo+ID4gK2JpdCAoMjYpICAgIDogRVRNX01PREVfVFJBQ0VfRVJSCj4gPiArZGVzY3JpcHRp
b24gOiBTZXQgdG8gZW5hYmxlIHRoZSBUUkNDVFJMIGJpdCBpbiB0aGUgdmlld2luc3QgY29udHJv
bCByZWdpc3Rlcgo+ID4gKyAgICAgICAgIFtWSUNUTFJdLgo+ID4gKwo+ID4gK2JpdCAoMjcpICAg
IDogRVRNX01PREVfVklFV0lOU1RfU1RBUlRTVE9QCj4gPiArZGVzY3JpcHRpb24gOiBTZXQgdGhl
IGluaXRpYWwgc3RhdGUgdmFsdWUgb2YgdGhlIFZpZXdJbnN0IHN0YXJ0IC8gc3RvcCBsb2dpYwo+
ID4gKyAgICAgICAgIGluIHRoZSB2aWV3aW5zdCBjb250cm9sIHJlZ2lzdGVyIFtWSUNUTFJdCj4g
PiArCj4gPiArYml0ICgzMCkgICAgOiBFVE1fTU9ERV9FWENMX0tFUk4KPiA+ICtkZXNjcmlwdGlv
biA6IFNldCBkZWZhdWx0IHRyYWNlIHNldHVwIHRvIGV4Y2x1ZGUga2VybmVsIG1vZGUgdHJhY2Ug
KHNlZSBub3RlIGEpCj4gPiArCj4gPiArYml0ICgzMSkgICAgOiBFVE1fTU9ERV9FWENMX1VTRVIK
PiA+ICtkZXNjcmlwdGlvbiA6IFNldCBkZWZhdWx0IHRyYWNlIHNldHVwIHRvIGV4Y2x1ZGUgdXNl
ciBzcGFjZSB0cmFjZSAoc2VlIG5vdGUgYSkKPiA+ICsKPiA+ICtOb3RlIGEpIE9uIHN0YXJ0dXAg
dGhlIEVUTSBpcyBwcm9ncmFtbWVkIHRvIHRyYWNlIHRoZSBjb21wbGV0ZSBhZGRyZXNzIHNwYWNl
Cj4gPiArdXNpbmcgYWRkcmVzcyByYW5nZSBjb21wYXJhdG9yIDAuIOKAmG1vZGXigJkgYml0cyAz
MCAvIDMxIG1vZGlmeSB0aGlzIHNldHRpbmcgdG8KPiA+ICtzZXQgRUwgZXhjbHVkZSBiaXRzIGZv
ciBOUyBzdGF0ZSBpbiBlaXRoZXIgdXNlciBzcGFjZSAoRUwwKSBvciBrZXJuZWwgc3BhY2UKPiA+
ICsoRUwxKSBpbiB0aGUgYWRkcmVzcyByYW5nZSBjb21wYXJhdG9yLiAodGhlIGRlZmF1bHQgc2V0
dGluZyBleGNsdWRlcyBhbGwKPiA+ICtzZWN1cmUgRUwsIGFuZCBOUyBFTDIpCj4gPiArCj4gPiAr
T25jZSB0aGUgcmVzZXQgcGFyYW1ldGVyIGhhcyBiZWVuIHVzZWQsIGFuZC9vciBjdXN0b20gcHJv
Z3JhbW1pbmcgaGFzIGJlZW4KPiA+ICtpbXBsZW1lbnRlZCAtIHVzaW5nIHRoZXNlIGJpdHMgd2ls
bCByZXN1bHQgaW4gdGhlIEVMIGJpdHMgZm9yIGFkZHJlc3MKPiA+ICtjb21wYXJhdG9yIDAgYmVp
bmcgc2V0IGluIHRoZSBzYW1lIHdheS4KPiA+ICsKPiA+ICtOb3RlIGIpIEJpdHMgMi0zLCA4LTEw
LCAxNS0xNiwgMTgsIDIyLCBjb250cm9sIGZlYXR1cmVzIHRoYXQgb25seSB3b3JrIHdpdGgKPiA+
ICtkYXRhIHRyYWNlLiBBcyBBIHByb2ZpbGUgZGF0YSB0cmFjZSBpcyBhcmNoaXRlY3R1cmFsbHkg
cHJvaGliaXRlZCBpbiBFVE12NCwKPiA+ICt0aGVzZSBoYXZlIGJlZW4gb21pdHRlZCBoZXJlLiBQ
b3NzaWJsZSB1c2VzIGNvdWxkIGJlIHdoZXJlIGEga2VybmVsIGhhcwo+ID4gK3N1cHBvcnQgZm9y
IGNvbnRyb2wgb2YgUiBvciBNIHByb2ZpbGUgaW5mcmFzdHJ1Y3R1cmUgYXMgcGFydCBvZiBhIGhl
dGVyb2dlbmVvdXMKPiA+ICtzeXN0ZW0uCj4gPiArCj4gPiArQml0cyAxNywgMjgtMjkgYXJlIHVu
dXNlZC4KPiA+IC0tCj4gPiAyLjE3LjEKPiA+CgoKCi0tIApNaWtlIExlYWNoClByaW5jaXBhbCBF
bmdpbmVlciwgQVJNIEx0ZC4KTWFuY2hlc3RlciBEZXNpZ24gQ2VudHJlLiBVSwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
