Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DD11FC7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 00:05:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqGiaGqpVFkr0OAvPQwOIqSNxBE9mDHCz8IZYli1eYE=; b=cWESIag2cHZQw+
	h1oPMHfzUp0EiA1V7YVtFZiqzvGZOHoSFRpG15SyHViiF848OMqfFomyJ0MovWM2C0HdP36m2/QDb
	u7ExqAZCAlp8xcDnFQ0YTNXiEHfiuoHw+J2J75BZRpLRDtcnz1JTcgDa2jSxnB7P3jJzovut3LmAI
	bWdEmADlMAHdHStJVy2iEeohi4Jf180gI6OegfqyYy7CeT7E6DQ+2t5usxIoiXnF17TGb+Hc5I6Zg
	89YnhvPv1hQsDBmHq8lVeFnILE1FDp3MxwmLiUYATj9btlki+2Y302HBAv4CDvM6VzFvPL529D1vx
	ERpgOGApFD/XHZDMCgZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR21o-0001ju-NT; Wed, 15 May 2019 22:05:36 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR21h-0001jZ-AE
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 22:05:30 +0000
Received: by mail-yb1-xb41.google.com with SMTP id t7so431298ybq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 15:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CRLT4dWLqRM/ZZXMmXCwJjTergOTF43/E2BM9syTfec=;
 b=TEC2jSavzL2UXeNecfQHwh5fEdAYfPrVsB5TUZSIjXTlEy/XMjzap00vwXGrAXJNCu
 1rZH1zpLlX+fiSILnyzkYKogPili3LUPUqZlBHWgUNWRgGdUWxiahptHUH4op3nfP+Je
 cslfDPSVPO9iJzXT97wesUC05nqssX6QntLh5Er/na7dCAMgCryIi+tYdiYLR2RBxLbX
 0mfT0WyZ8IAcKFR95Z1yj+N7D8uv5d6D7yiyqgA7UbJtBUErfeKf3i9Jagu7tkTkbwMq
 7SDOvVvA3W58q45RihuofjyRCP+0lF8yn3qCA5SLkbuaJ0BMdREozcBo8hQnYSdYNbxk
 kJqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CRLT4dWLqRM/ZZXMmXCwJjTergOTF43/E2BM9syTfec=;
 b=RBz/AvVP71Htlu4lsXgyx5w7QxEaPowa4tVAOVERnB6aUhhTRQMZpTYMzDqBUQnOna
 YIMHeOgGqUP/vPe/dKtGyg4WHl9AttAxXIJltXwaNg/OJCPb2/unhH0m9Y5EZG72VlAX
 tciALqQ3XchC3SPIkTuaUhb28pbuXgaukocjaovOBlJBns4lTXDMYjkknhx2Fd56sObM
 a0UCSyf0arSKK3I4tmbnCedI0y6tCskvDGXRQYc6lj9lgua+bL0LOJUrdRLpNetFwT9l
 u98IxvDmbSJ//4oUGV74tD2siytOfYx7ORZRU2IOpvSd8RBzFbuhLsC4qyR5e2m3Jgyl
 zb8w==
X-Gm-Message-State: APjAAAX18bMcwBR/9LZaXom6xeNiureFXRFHy2vmvCHu6daJUO3m9JRE
 LEPelCalhaTxPcirZtvRGu45ZYePCTSmpdL+JLg=
X-Google-Smtp-Source: APXvYqxrAbiIbqW0nY/30IRpEN/mBAD3Cr2+703do+Kjwf4nMSeAa8lvtwfBa46a9dMgdGFQfwf/A6iw0Obgy4PWLfg=
X-Received: by 2002:a25:9b88:: with SMTP id v8mr21245291ybo.153.1557957927657; 
 Wed, 15 May 2019 15:05:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190512174608.10083-1-peron.clem@gmail.com>
 <20190513151405.GW17751@phenom.ffwll.local>
 <de50a9da-669f-ab25-2ef2-5ffb90f8ee03@baylibre.com>
 <CAJiuCccuEw0BK6MwROR+XUDvu8AJTmZ5tu=pYwZbGAuvO31pgg@mail.gmail.com>
 <CAJiuCccWa5UTML68JDQq6q8SyNZzVWwQWTOL=+84Bh4EMHGC3A@mail.gmail.com>
 <3c2c9094-69d4-bace-d5ee-c02b7f56ac82@arm.com>
In-Reply-To: <3c2c9094-69d4-bace-d5ee-c02b7f56ac82@arm.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Thu, 16 May 2019 00:05:16 +0200
Message-ID: <CAJiuCcd=gCQJ4mxn3wNhHXveOhFLnYSEs+cnOMHcALPvd7bQZw@mail.gmail.com>
Subject: Re: [PATCH v4 0/8] Allwinner H6 Mali GPU support
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_150529_380124_C7992720 
X-CRM114-Status: GOOD (  23.20  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iaW4sCgpPbiBUdWUsIDE0IE1heSAyMDE5IGF0IDIzOjU3LCBSb2JpbiBNdXJwaHkgPHJv
YmluLm11cnBoeUBhcm0uY29tPiB3cm90ZToKPgo+IE9uIDIwMTktMDUtMTQgMTA6MjIgcG0sIENs
w6ltZW50IFDDqXJvbiB3cm90ZToKPiA+IEhpLAo+ID4KPiA+IE9uIFR1ZSwgMTQgTWF5IDIwMTkg
YXQgMTc6MTcsIENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+IHdyb3RlOgo+
ID4+Cj4gPj4gSGksCj4gPj4KPiA+PiBPbiBUdWUsIDE0IE1heSAyMDE5IGF0IDEyOjI5LCBOZWls
IEFybXN0cm9uZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+IHdyb3RlOgo+ID4+Pgo+ID4+PiBI
aSwKPiA+Pj4KPiA+Pj4gT24gMTMvMDUvMjAxOSAxNzoxNCwgRGFuaWVsIFZldHRlciB3cm90ZToK
PiA+Pj4+IE9uIFN1biwgTWF5IDEyLCAyMDE5IGF0IDA3OjQ2OjAwUE0gKzAyMDAsIHBlcm9uLmNs
ZW1AZ21haWwuY29tIHdyb3RlOgo+ID4+Pj4+IEZyb206IENsw6ltZW50IFDDqXJvbiA8cGVyb24u
Y2xlbUBnbWFpbC5jb20+Cj4gPj4+Pj4KPiA+Pj4+PiBIaSwKPiA+Pj4+Pgo+ID4+Pj4+IFRoZSBB
bGx3aW5uZXIgSDYgaGFzIGEgTWFsaS1UNzIwIE1QMi4gVGhlIGRyaXZlcnMgYXJlCj4gPj4+Pj4g
b3V0LW9mLXRyZWUgc28gdGhpcyBzZXJpZXMgb25seSBpbnRyb2R1Y2UgdGhlIGR0LWJpbmRpbmdz
Lgo+ID4+Pj4KPiA+Pj4+IFdlIGRvIGhhdmUgYW4gaW4tdHJlZSBtaWRnYXJkIGRyaXZlciBub3cg
KHNpbmNlIDUuMikuIERvZXMgdGhpcyBzdHVmZiB3b3JrCj4gPj4+PiB0b2dldGhlciB3aXRoIHlv
dXIgZHQgY2hhbmdlcyBoZXJlPwo+ID4+Pgo+ID4+PiBObywgYnV0IGl0IHNob3VsZCBiZSBlYXN5
IHRvIGFkZC4KPiA+PiBJIHdpbGwgZ2l2ZSBpdCBhIHRyeSBhbmQgbGV0IHlvdSBrbm93Lgo+ID4g
QWRkZWQgdGhlIGJ1c19jbG9jayBhbmQgYSByYW1wIGRlbGF5IHRvIHRoZSBncHVfdmRkIGJ1dCB0
aGUgZHJpdmVyCj4gPiBmYWlsIGF0IHByb2JlLgo+ID4KPiA+IFsgICAgMy4wNTI5MTldIHBhbmZy
b3N0IDE4MDAwMDAuZ3B1OiBjbG9jayByYXRlID0gNDMyMDAwMDAwCj4gPiBbICAgIDMuMDU4Mjc4
XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogYnVzX2Nsb2NrIHJhdGUgPSAxMDAwMDAwMDAKPiA+IFsg
ICAgMy4xNzk3NzJdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBtYWxpLXQ3MjAgaWQgMHg3MjAgbWFq
b3IgMHgxCj4gPiBtaW5vciAweDEgc3RhdHVzIDB4MAo+ID4gWyAgICAzLjE4NzQzMl0gcGFuZnJv
c3QgMTgwMDAwMC5ncHU6IGZlYXR1cmVzOiAwMDAwMDAwMCwxMDMwOWU0MCwKPiA+IGlzc3Vlczog
MDAwMDAwMDAsMjEwNTQ0MDAKPiA+IFsgICAgMy4xOTU1MzFdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1
OiBGZWF0dXJlczogTDI6MHgwNzExMDIwNgo+ID4gU2hhZGVyOjB4MDAwMDAwMDAgVGlsZXI6MHgw
MDAwMDgwOSBNZW06MHgxIE1NVToweDAwMDAyODIxIEFTOjB4Zgo+ID4gSlM6MHg3Cj4gPiBbICAg
IDMuMjA3MTc4XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogc2hhZGVyX3ByZXNlbnQ9MHgzIGwyX3By
ZXNlbnQ9MHgxCj4gPiBbICAgIDMuMjM4MjU3XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogRmF0YWwg
ZXJyb3IgZHVyaW5nIEdQVSBpbml0Cj4gPiBbICAgIDMuMjQ0MTY1XSBwYW5mcm9zdDogcHJvYmUg
b2YgMTgwMDAwMC5ncHUgZmFpbGVkIHdpdGggZXJyb3IgLTEyCj4gPgo+ID4gVGhlIEVOT01FTSBp
cyBjb21pbmcgZnJvbSAicGFuZnJvc3RfbW11X2luaXQiCj4gPiBhbGxvY19pb19wZ3RhYmxlX29w
cyhBUk1fTUFMSV9MUEFFLCAmcGZkZXYtPm1tdS0+cGd0YmxfY2ZnLAo+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGZkZXYpOwo+ID4KPiA+IFdoaWNoIGlzIGR1
ZSB0byBhIGNoZWNrIGluIHRoZSBwZ3RhYmxlIGFsbG9jICJjZmctPmlhcyAhPSA0OCIKPiA+IGFy
bS1scGFlIGlvLXBndGFibGU6IGFybV9tYWxpX2xwYWVfYWxsb2NfcGd0YWJsZSBjZmctPmlhcyAz
MyBjZmctPm9hcyA0MAo+ID4KPiA+IERSSSBzdGFjayBpcyB0b3RhbGx5IG5ldyBmb3IgbWUsIGNv
dWxkIHlvdSBnaXZlIG1lIGEgbGl0dGxlIGNsdWUgYWJvdXQKPiA+IHRoaXMgaXNzdWUgPwo+Cj4g
SGVoLCB0aGlzIGlzIHByb2JhYmx5IHRoZSBvbmUgYml0IHdoaWNoIGRvZXNuJ3QgcmVhbGx5IGNv
dW50IGFzICJEUkkgc3RhY2siLgo+Cj4gVGhhdCdzIG1lcmVseSBhIHNvbWV3aGF0LWNvbnNlcnZh
dGl2ZSBzYW5pdHkgY2hlY2sgLSBJJ20gcHJldHR5IHN1cmUgaXQKPiAqc2hvdWxkKiBiZSBmaW5l
IHRvIGNoYW5nZSB0aGUgdGVzdCB0byAiY2ZnLT5pYXMgPiA0OCIgKGlvLXBndGFibGUKPiBpdHNl
bGYgb3VnaHQgdG8gY29wZSkuIFlvdSdsbCBqdXN0IGdldCB0byBiZSB0aGUgZmlyc3QgdG8gYWN0
dWFsbHkgdGVzdAo+IGEgbm9uLTQ4LWJpdCBjb25maWd1cmF0aW9uIGhlcmUgOikKClRoYW5rcyBh
IGxvdCwgdGhlIHByb2JlIHNlZW1zIGZpbmUgbm93IDopCgpJIHRyeSB0byBydW4gZ2xtYXJrMiA6
CiMgZ2xtYXJrMi1lczItZHJtCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT0KICAgIGdsbWFyazIgMjAxNy4wNwo9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CiAgICBPcGVuR0wgSW5mb3JtYXRp
b24KICAgIEdMX1ZFTkRPUjogICAgIHBhbmZyb3N0CiAgICBHTF9SRU5ERVJFUjogICBwYW5mcm9z
dAogICAgR0xfVkVSU0lPTjogICAgT3BlbkdMIEVTIDIuMCBNZXNhIDE5LjEuMC1yYzIKPT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQpbYnVpbGRd
IHVzZS12Ym89ZmFsc2U6CgpCdXQgaXQgc2VlbXMgdGhhdCBINiBpcyBub3Qgc28gZWFzeSB0byBh
ZGQgOiguCgpbICAzNDUuMjA0ODEzXSBwYW5mcm9zdCAxODAwMDAwLmdwdTogbW11IGlycSBzdGF0
dXM9MQpbICAzNDUuMjA5NjE3XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogVW5oYW5kbGVkIFBhZ2Ug
ZmF1bHQgaW4gQVMwIGF0IFZBCjB4MDAwMDAwMDAwMjQwMDQwMApbICAzNDUuMjA5NjE3XSBSZWFz
b246IFRPRE8KWyAgMzQ1LjIwOTYxN10gcmF3IGZhdWx0IHN0YXR1czogMHg4MDAwMDJDMQpbICAz
NDUuMjA5NjE3XSBkZWNvZGVkIGZhdWx0IHN0YXR1czogU0xBVkUgRkFVTFQKWyAgMzQ1LjIwOTYx
N10gZXhjZXB0aW9uIHR5cGUgMHhDMTogVFJBTlNMQVRJT05fRkFVTFRfTEVWRUwxClsgIDM0NS4y
MDk2MTddIGFjY2VzcyB0eXBlIDB4MjogUkVBRApbICAzNDUuMjA5NjE3XSBzb3VyY2UgaWQgMHg4
MDAwClsgIDM0NS43Mjk5NTddIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBncHUgc2NoZWQgdGltZW91
dCwganM9MCwKc3RhdHVzPTB4OCwgaGVhZD0weDI0MDA0MDAsIHRhaWw9MHgyNDAwNDAwLCBzY2hl
ZF9qb2I9MDAwMDAwMDA5ZTIwNGRlOQpbICAzNDYuMDU1ODc2XSBwYW5mcm9zdCAxODAwMDAwLmdw
dTogbW11IGlycSBzdGF0dXM9MQpbICAzNDYuMDYwNjgwXSBwYW5mcm9zdCAxODAwMDAwLmdwdTog
VW5oYW5kbGVkIFBhZ2UgZmF1bHQgaW4gQVMwIGF0IFZBCjB4MDAwMDAwMDAwMkMwMEEwMApbICAz
NDYuMDYwNjgwXSBSZWFzb246IFRPRE8KWyAgMzQ2LjA2MDY4MF0gcmF3IGZhdWx0IHN0YXR1czog
MHg4MTAwMDJDMQpbICAzNDYuMDYwNjgwXSBkZWNvZGVkIGZhdWx0IHN0YXR1czogU0xBVkUgRkFV
TFQKWyAgMzQ2LjA2MDY4MF0gZXhjZXB0aW9uIHR5cGUgMHhDMTogVFJBTlNMQVRJT05fRkFVTFRf
TEVWRUwxClsgIDM0Ni4wNjA2ODBdIGFjY2VzcyB0eXBlIDB4MjogUkVBRApbICAzNDYuMDYwNjgw
XSBzb3VyY2UgaWQgMHg4MTAwClsgIDM0Ni41NjE5NTVdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBn
cHUgc2NoZWQgdGltZW91dCwganM9MSwKc3RhdHVzPTB4OCwgaGVhZD0weDJjMDBhMDAsIHRhaWw9
MHgyYzAwYTAwLCBzY2hlZF9qb2I9MDAwMDAwMDBiNTVhOWE4NQpbICAzNDYuNTczOTEzXSBwYW5m
cm9zdCAxODAwMDAwLmdwdTogbW11IGlycSBzdGF0dXM9MQpbICAzNDYuNTc4NzA3XSBwYW5mcm9z
dCAxODAwMDAwLmdwdTogVW5oYW5kbGVkIFBhZ2UgZmF1bHQgaW4gQVMwIGF0IFZBCjB4MDAwMDAw
MDAwMkMwMEI4MApbICAzNDYuNTc4NzA3XSBSZWFzb246IFRPRE8KWyAgMzQ2LjU3ODcwN10gcmF3
IGZhdWx0IHN0YXR1czogMHg4MDAwMDJDMQpbICAzNDYuNTc4NzA3XSBkZWNvZGVkIGZhdWx0IHN0
YXR1czogU0xBVkUgRkFVTFQKWyAgMzQ2LjU3ODcwN10gZXhjZXB0aW9uIHR5cGUgMHhDMTogVFJB
TlNMQVRJT05fRkFVTFRfTEVWRUwxClsgIDM0Ni41Nzg3MDddIGFjY2VzcyB0eXBlIDB4MjogUkVB
RApbICAzNDYuNTc4NzA3XSBzb3VyY2UgaWQgMHg4MDAwClsgIDM0Ny4wNzM5NDddIHBhbmZyb3N0
IDE4MDAwMDAuZ3B1OiBncHUgc2NoZWQgdGltZW91dCwganM9MCwKc3RhdHVzPTB4OCwgaGVhZD0w
eDJjMDBiODAsIHRhaWw9MHgyYzAwYjgwLCBzY2hlZF9qb2I9MDAwMDAwMDBjZjZhZjhlOApbICAz
NDcuMTA0MTI1XSBwYW5mcm9zdCAxODAwMDAwLmdwdTogbW11IGlycSBzdGF0dXM9MQpbICAzNDcu
MTA4OTMwXSBwYW5mcm9zdCAxODAwMDAwLmdwdTogVW5oYW5kbGVkIFBhZ2UgZmF1bHQgaW4gQVMw
IGF0IFZBCjB4MDAwMDAwMDAwMjgwMDkwMApbICAzNDcuMTA4OTMwXSBSZWFzb246IFRPRE8KWyAg
MzQ3LjEwODkzMF0gcmF3IGZhdWx0IHN0YXR1czogMHg4MTAwMDJDMQpbICAzNDcuMTA4OTMwXSBk
ZWNvZGVkIGZhdWx0biB0aGkgc3RhdHVzOiBTTEFWRSBGQVVMVApbICAzNDcuMTA4OTMwXSBleGNl
cHRpb24gdHlwZSAweEMxOiBUUkFOU0xBVElPTl9GQVVMVF9MRVZFTDEKWyAgMzQ3LjEwODkzMF0g
YWNjZXNzIHR5cGUgMHgyOiBSRUFEClsgIDM0Ny4xMDg5MzBdIHNvdXJjZSBpZCAweDgxMDAKWyAg
MzQ3LjYxNzk1MF0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IGdwdSBzY2hlZCB0aW1lb3V0LCBqcz0x
LApzdGF0dXM9MHg4LCBoZWFkPTB4MjgwMDkwMCwgdGFpbD0weDI4MDA5MDAsIHNjaGVkX2pvYj0w
MDAwMDAwMDkzMjVmZGI3ClsgIDM0Ny42Mjk5MDJdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBtbXUg
aXJxIHN0YXR1cz0xClsgIDM0Ny42MzQ2OTZdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBVbmhhbmRs
ZWQgUGFnZSBmYXVsdCBpbiBBUzAgYXQgVkEKMHgwMDAwMDAwMDAyODAwQTgwCgpSZWdhcmRzLApD
bGVtZW50Cgo+Cj4gUm9iaW4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
