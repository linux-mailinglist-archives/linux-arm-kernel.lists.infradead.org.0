Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FB5194340
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 16:32:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mi3FGRQtFXsoQCadHGBOwmz3yrT2pRsar2xPcTVTj/o=; b=HpsPnqq+ca3oQS
	LvHM4M7LsIfGPEGIWplbLq5JcgIG1vSzXOAe43iH0mEGHK+kQYuaiOpJ/rIT/TazIa5gZfW+76EQw
	edBLrc62vLvxQOnk4f0decbDiYQahCP0zV7z69Usqw3bIWaC6ZKsLZ+xzmsmB5V8meTHuJPT2eqqP
	8i8q/QmOFzSMXWTI2tftfSpnxYhYIo70B7IQlO4X7+Z7KbD07jL3+J80/pnrePLTkRYUmrczwBUdQ
	pOebsLIXHSga+FD3Xcc8N1ENzF5wGG0s2Yf8UVn8862u79OtXZ+z511tEDdE+up3NXQkPUP4L7qkP
	xJrj2Cv/O7Jn7kaTMZFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHUUE-0006iO-DE; Thu, 26 Mar 2020 15:32:02 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHUU3-0006h4-8s; Thu, 26 Mar 2020 15:31:52 +0000
Received: by mail-ot1-f65.google.com with SMTP id z5so5941970oth.9;
 Thu, 26 Mar 2020 08:31:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XTkjkxktGYVZu1YuzBjsBjxOC6QKuT6CUAB31DIHFjc=;
 b=A+SnnfXJTYkbWDc81wWKu639jCbHo8tjGTOaBkl8bEx/JC3N7E9GWDbD7E+BSAyqOy
 VW+9h1/P8zSDbo1wjOzR4Flqj3BEvS0eahPJ1QOwTCh7sOMGfeNmKm/Dd90Xiw/Dq9hc
 7p8p2Xp/skNoQ96N1CcPk6qCj9Xzx37Kaq0LCZKumyT68QmLofFUTRKGp7EjQUlZ+gbx
 sOLMD9tcoeCxblrKtUcjtoeD7z4G3XMbbmtbiePMxAkAK0TSsD+6UtiCFur2NnmoZLK0
 fBxwlpbwwqpjUk3LO17wohfsXKS6QSVjGSHz6GhCdKRwI5XiSY8tKC1ga7zrID/XhpIg
 +QxA==
X-Gm-Message-State: ANhLgQ0JldvW5KzZhgwBfmfVJh79inx4B2EamFbu5zEG5i+hRWhkpd1Z
 YzUw0MO5TKgdDDYSyik2Lxufxg7LpjwjIlvIaLmEDRGE
X-Google-Smtp-Source: ADFU+vtISW4Cc/lOTpsR8iCtEMqgOt8HbkosAvUpULKrxq2q94u8VIBgjINOhV0/ykBD+p9s4UDoxKwL/DYSfkijdtI=
X-Received: by 2002:a9d:5c0c:: with SMTP id o12mr6588642otk.145.1585236710072; 
 Thu, 26 Mar 2020 08:31:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200302155703.278421-1-mylene.josserand@collabora.com>
 <20200302155703.278421-2-mylene.josserand@collabora.com>
 <2221545.2vEflg7qi2@diego>
 <CAMuHMdXJQqaCcMko9GUAeUiYQzmy3vnX42yVQNPzhj5ijtFuYA@mail.gmail.com>
 <5802ec08-5e6a-8547-ee8e-dde630791235@collabora.com>
In-Reply-To: <5802ec08-5e6a-8547-ee8e-dde630791235@collabora.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 26 Mar 2020 16:31:38 +0100
Message-ID: <CAMuHMdVKFT7eNK0RUi3miJ08O9FMAVs5Qz=YmbHH5-9UUzLNPw@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: Rockchip: Handle rk3288/rk3288w revision
To: Mylene Josserand <mylene.josserand@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_083151_314603_46FA89F8 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTXlsZW5lLAoKT24gVGh1LCBNYXIgMjYsIDIwMjAgYXQgMjo1MCBQTSBNeWxlbmUgSm9zc2Vy
YW5kCjxteWxlbmUuam9zc2VyYW5kQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+IE9uIDMvNi8yMCAx
MTo0NSBBTSwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+ID4gT24gV2VkLCBNYXIgNCwgMjAy
MCBhdCAxMjowMCBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+
PiBBbSBNb250YWcsIDIuIE3DpHJ6IDIwMjAsIDE2OjU3OjAyIENFVCBzY2hyaWViIE15bMOobmUg
Sm9zc2VyYW5kOgo+ID4+PiBEZXRlcm1pbmUgd2hpY2ggcmV2aXNpb24gb2YgcmszMjg4IGJ5IGNo
ZWNraW5nIHRoZSBIRE1JIHZlcnNpb24uCj4gPj4+IEFjY29yZGluZyB0byB0aGUgUm9ja2NoaXAg
QlNQIGtlcm5lbCwgb24gcmszMjg4dywgdGhlIEhETUkKPiA+Pj4gcmV2aXNpb24gZXF1YWxzIDB4
MUEgd2hpY2ggaXMgbm90IHRoZSBjYXNlIGZvciB0aGUgcmszMjg4IFsxXS4KPiA+Pj4KPiA+Pj4g
QXMgdGhlc2UgU09DIGhhdmUgc29tZSBkaWZmZXJlbmNlcywgdGhlIG5ldyBmdW5jdGlvbgo+ID4+
PiAnc29jX2lzX3JrMzI4OHcnIHdpbGwgaGVscCB1cyB0byBrbm93IG9uIHdoaWNoIHJldmlzaW9u
Cj4gPj4+IHdlIGFyZS4KPiA+Pgo+ID4+IHdoYXQgaGFwcGVuZWQgdG8ganVzdCBoYXZpbmcgYSBk
aWZmZXJlbnQgY29tcGF0aWJsZSBpbiB0aGUgZHRzPwo+ID4+IEFrYSBkb2luZyBhCj4gPj4KPiA+
PiByazMyODh3LmR0c2kgd2l0aAo+ID4+Cj4gPj4gI2luY2x1ZGUgInJrMzI4OC5kdHNpIgo+ID4+
Cj4gPj4gJmNydSB7Cj4gPj4gICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMyODh3
LWNydSI7Cj4gPj4gfQo+ID4+Cj4gPj4gSSBzb21laG93IGRvbid0IGV4cGVjdCBib2FyZHMgdG8g
anVzdCBzd2l0Y2ggYmV0d2VlbiBzb2MgdmFyaWFudHMKPiA+PiBvbiB0aGUgZmx5Lgo+ID4+Cj4g
Pj4gQWxzbywgZG9pbmcgdGhpbmdzIGluIG1hY2gtcm9ja2NoaXAgaXMgbm90IHZlcnkgZnV0dXJl
LXByb29mOgo+ID4+Cj4gPj4gKDEpIGhhdmluZyByYW5kb20gc29jLXNwZWNpZmljIEFQSXMgc3Bh
bm5pbmcgdGhlIGtlcm5lbCBmZWVscyB3cm9uZywKPiA+PiAgICAgIGVzcGVjaWFsbHkgYXMgYXQg
c29tZSBwb2ludCBpdCBtaWdodCBub3QgYmUgY29udGFpbmVkIHRvIG91ciBvd24gc3BlY2lhbAo+
ID4+ICAgICAgZHJpdmVycyBsaWtlIHRoZSBjcnUuIEkgY2Fubm90IHJlYWxseSBzZWUgcGVvcGxl
IGJlaW5nIGVudGh1c2lhc3RpYyBpZgo+ID4+ICAgICAgc29tZXRoaW5nIGxpa2UgdGhpcyB3b3Vs
ZCBiZSBuZWVkZWQgaW4gc2F5IHRoZSBjb3JlIEFuYWxvZ2l4LURQIGJyaWRnZSA7LSkKPiA+Cj4g
PiBJbmRlZWQuICBZb3UncmUgYmV0dGVyIG9mIHJlZ2lzdGVyaW5nIGFuIHNvY19kZXZpY2VfYXR0
cmlidXRlIHVzaW5nCj4gPiBzb2NfZGV2aWNlX3JlZ2lzdGVyKCksIGFmdGVyIHdoaWNoIGFueSBk
cml2ZXIgY2FuIHVzZSBzb2NfZGV2aWNlX21hdGNoKCkKPiA+IHRvIGRpZmZlcmVudGlhdGUgYmFz
ZWQgb24gdGhlIFNvQyByZXZpc2lvbi4KPgo+IFRoYW5rIHlvdSBmb3IgdGhpcyBzdWdnZXN0aW9u
LiBUaGUgaXNzdWUgaXMgdGhhdCBjbG9ja3MgYXJlIHJlZ2lzdGVyZWQKPiBhdCBhbiBlYXJseSBz
dGFnZSBvZiB0aGUgYm9vdCBzbyB1c2luZyBpbml0Y2FsbHMgaXMgdG9vIGxhdGUgZm9yIHRoZQo+
IGNsb2NrIGRpZmZlcmVudGlhdGlvbiA6KAoKSUMsIHJrMzg4IGlzIHN0aWxsIHVzaW5nIENMS19P
Rl9ERUNMQVJFKCkuCldoYXQgYWJvdXQgY29udmVydGluZyBpdCB0byBhIHBsYXRmb3JtIGRyaXZl
ciwgcmVnaXN0ZXJlZCBmcm9tIGUuZy4Kc3Vic3lzX2luaXRjYWxsKCk/CklmIHlvdSBuZWVkIHNv
bWUgY2xvY2tzIGVhcmx5IChlLmcuIGZvciB0aW1lcnMpLCB5b3UgY2FuIGRvIHNwbGl0CnJlZ2lz
dHJhdGlvbiwgd2l0aCB0aGUgZWFybHkgcGFydCBzdGlsbCB1c2luZyBDTEtfT0ZfREVDTEFSRSgp
LgpUaGF0IHNob3VsZCB3b3JrLCBhc3N1bWVkIHRoZSB0aW1lciBjbG9ja3MgZG9uJ3QgbmVlZCBk
aWZmZXJlbnRpYXRpb24uCgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAg
ICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51
eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVy
c2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1
dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIi
IG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
LS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
