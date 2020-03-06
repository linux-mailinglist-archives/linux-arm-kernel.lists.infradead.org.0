Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5509F17BAB0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:45:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qcvc2DG9TzX2BRaAk7ao7VybelDPFeBwujagw6Ig7i4=; b=lRfHAcE2N6KTne
	J95we8z/I0/nX5P2D3epR303g5LTrLfyrDw10dLE5W9bh2BHT6oNId3EBkUg1iOf3dkKlEVCWg4dU
	VZQSshBmC6xVg5JhTWDtrU6ScYwexNJEYlFrNYqvq1/7jZ7G4LV/NwQe4KpjDd0m6tgARSl1ZDCxt
	g/Tr989O4VcBth37BuZ+8sw1dr9f4AL6tpufeB+a9ei9sszdc93TZjrjwRKvr0FMnRn+Cyrz9PAp7
	H0BtaSIBi+FxgDLnoXhI3TXOMZmuYxV5ejBtG6t9AjLAA6Yg31jOPAGxA+swnPLwHxKTmw2maSW5+
	M03EH7lQ8fUCEVZg0KFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAUI-0006BT-3M; Fri, 06 Mar 2020 10:45:50 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAU7-000696-3F; Fri, 06 Mar 2020 10:45:40 +0000
Received: by mail-oi1-f196.google.com with SMTP id a22so2046162oid.13;
 Fri, 06 Mar 2020 02:45:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HroD0on08tLEMYhs9qrREoR+/CxJ/32j4jpzzO71uX0=;
 b=c4fklFyB7FFMNJ8U4/gSTO49rNKoeU4dGmm7w4FD/EoDmBkIyXSeHuBwLF+srWsPYo
 EcovG7jQCxpSsn3i2V2KEJKOZXFtAGnYAQ/q0nUKLuYR2CswOhYOSkqTC6cxNyNO4Wew
 xxsTp6ipCSwA91hGppV4EKMHa0M1UhAs8xq+CpkIQxw6A0jnsz80poNipb5tvchig5oo
 huen5cJvceQbIO44ykTwynNfaevyasdlnLFaSJ7VY7+Bpp1g0sE/w8xC2q6651jPf4n3
 /uMuxLbe/ltIO3j1cCXbPIpFUlhrd1z/AHy0jFzwUtwmd8IRBbonvc6SUEcY40ZnkC40
 mX8g==
X-Gm-Message-State: ANhLgQ3B2KPu8nxnmd0QnHHKmgkMYGEI+s6SUS7YM+g7HJx7FueCC+ZA
 3aoX7HqkEsR0CXa1bqfejU2sNqhNg2sE8fEELagTDHYT
X-Google-Smtp-Source: ADFU+vvtUPH3/Ph9fb3frspC4QqnvQ+CWNfeWzdZ5p3uA2hEhHOsJ1oZpb7TnnmVwlAmCRdczLdbAoij4DJyvJ/brwE=
X-Received: by 2002:aca:1a06:: with SMTP id a6mr2005904oia.148.1583491536148; 
 Fri, 06 Mar 2020 02:45:36 -0800 (PST)
MIME-Version: 1.0
References: <20200302155703.278421-1-mylene.josserand@collabora.com>
 <20200302155703.278421-2-mylene.josserand@collabora.com>
 <2221545.2vEflg7qi2@diego>
In-Reply-To: <2221545.2vEflg7qi2@diego>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 6 Mar 2020 11:45:25 +0100
Message-ID: <CAMuHMdXJQqaCcMko9GUAeUiYQzmy3vnX42yVQNPzhj5ijtFuYA@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: Rockchip: Handle rk3288/rk3288w revision
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_024539_139638_F3880DCB 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -1.2 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
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
Cc: =?UTF-8?Q?Myl=C3=A8ne_Josserand?= <mylene.josserand@collabora.com>,
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

SGkgSGVpa28sCgpPbiBXZWQsIE1hciA0LCAyMDIwIGF0IDEyOjAwIFBNIEhlaWtvIFN0w7xibmVy
IDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+IEFtIE1vbnRhZywgMi4gTcOkcnogMjAyMCwgMTY6
NTc6MDIgQ0VUIHNjaHJpZWIgTXlsw6huZSBKb3NzZXJhbmQ6Cj4gPiBEZXRlcm1pbmUgd2hpY2gg
cmV2aXNpb24gb2YgcmszMjg4IGJ5IGNoZWNraW5nIHRoZSBIRE1JIHZlcnNpb24uCj4gPiBBY2Nv
cmRpbmcgdG8gdGhlIFJvY2tjaGlwIEJTUCBrZXJuZWwsIG9uIHJrMzI4OHcsIHRoZSBIRE1JCj4g
PiByZXZpc2lvbiBlcXVhbHMgMHgxQSB3aGljaCBpcyBub3QgdGhlIGNhc2UgZm9yIHRoZSByazMy
ODggWzFdLgo+ID4KPiA+IEFzIHRoZXNlIFNPQyBoYXZlIHNvbWUgZGlmZmVyZW5jZXMsIHRoZSBu
ZXcgZnVuY3Rpb24KPiA+ICdzb2NfaXNfcmszMjg4dycgd2lsbCBoZWxwIHVzIHRvIGtub3cgb24g
d2hpY2ggcmV2aXNpb24KPiA+IHdlIGFyZS4KPgo+IHdoYXQgaGFwcGVuZWQgdG8ganVzdCBoYXZp
bmcgYSBkaWZmZXJlbnQgY29tcGF0aWJsZSBpbiB0aGUgZHRzPwo+IEFrYSBkb2luZyBhCj4KPiBy
azMyODh3LmR0c2kgd2l0aAo+Cj4gI2luY2x1ZGUgInJrMzI4OC5kdHNpIgo+Cj4gJmNydSB7Cj4g
ICAgICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzI4OHctY3J1IjsKPiB9Cj4KPiBJIHNv
bWVob3cgZG9uJ3QgZXhwZWN0IGJvYXJkcyB0byBqdXN0IHN3aXRjaCBiZXR3ZWVuIHNvYyB2YXJp
YW50cwo+IG9uIHRoZSBmbHkuCj4KPiBBbHNvLCBkb2luZyB0aGluZ3MgaW4gbWFjaC1yb2NrY2hp
cCBpcyBub3QgdmVyeSBmdXR1cmUtcHJvb2Y6Cj4KPiAoMSkgaGF2aW5nIHJhbmRvbSBzb2Mtc3Bl
Y2lmaWMgQVBJcyBzcGFubmluZyB0aGUga2VybmVsIGZlZWxzIHdyb25nLAo+ICAgICBlc3BlY2lh
bGx5IGFzIGF0IHNvbWUgcG9pbnQgaXQgbWlnaHQgbm90IGJlIGNvbnRhaW5lZCB0byBvdXIgb3du
IHNwZWNpYWwKPiAgICAgZHJpdmVycyBsaWtlIHRoZSBjcnUuIEkgY2Fubm90IHJlYWxseSBzZWUg
cGVvcGxlIGJlaW5nIGVudGh1c2lhc3RpYyBpZgo+ICAgICBzb21ldGhpbmcgbGlrZSB0aGlzIHdv
dWxkIGJlIG5lZWRlZCBpbiBzYXkgdGhlIGNvcmUgQW5hbG9naXgtRFAgYnJpZGdlIDstKQoKSW5k
ZWVkLiAgWW91J3JlIGJldHRlciBvZiByZWdpc3RlcmluZyBhbiBzb2NfZGV2aWNlX2F0dHJpYnV0
ZSB1c2luZwpzb2NfZGV2aWNlX3JlZ2lzdGVyKCksIGFmdGVyIHdoaWNoIGFueSBkcml2ZXIgY2Fu
IHVzZSBzb2NfZGV2aWNlX21hdGNoKCkKdG8gZGlmZmVyZW50aWF0ZSBiYXNlZCBvbiB0aGUgU29D
IHJldmlzaW9uLgoKPiAoMikgSSBndWVzcyB0aGUgcmszMjg4dyB3aWxsIG5vdCBiZSB0aGUgbGFz
dCBzb2MgZG9pbmcgdGhpcyBhbmQgb24gYXJtNjQgeW91Cj4gICAgIGNhbid0IGRvIGl0IHRoYXQg
d2F5LCBhcyB0aGVyZSBpcyBubyBtYWNoLXJvY2tjaGlwIHRoZXJlCgpUaGVyZSdzIGRyaXZlcnMv
c29jL3JvY2tjaGlwIDstKQoKPiBTbyBteSBwZXJzb25hbCBwcmVmZXJlbmNlIHdvdWxkIHJlYWxs
eSB3b3VsZCBiZSBqdXN0IGEgc3BlY2lmaWMgY29tcGF0aWJsZQo+IGZvciBhZmZlY3RlZCBpcCBi
bG9ja3MuCgpEb2luZyB0aGF0IG9ubHkgZm9yIGFmZmVjdGVkIElQIGJsb2NrcyBtYXkgbWlzcyBp
bnRlZ3JhdGlvbiBkaWZmZXJlbmNlcy4KT2YgY291cnNlLCB5b3UgY2FuIGFsd2F5cyByZXNvcnQg
dG8gc29jX2RldmljZV9tYXRjaCgpIHRvIGhhbmRsZSB0aG9zZS4uLgoKR3J7b2V0amUsZWV0aW5n
fXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZl
biAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4
ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJ
IGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0
cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
