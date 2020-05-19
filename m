Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8001D952B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 13:21:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hgP2QCQ4GlHZZo4DM+uqcK+eX/m6S3cKBXJ4lMFUhCE=; b=uyQxMPqBbb9TMo
	MhZVuLjjjRY8mLamlGlC/jMan+kG8DH4/HT1hmg7nOLxeuEIDYbPo5FGciUeMC194JWWiCV/qYuOS
	MIViiD77FPyN03MrOH4dRWFyR25FJnO4ZwAtzQG/LjMwRoMOM4WufX7ggX/2eF7zFLsnyiHrrVq65
	EZm/yevTBEdJ3ybKPsxVgb0ADW7556KNZjSHrkjgPE2mjTV1bZSZbvqIMsLsTTf7w3cz5XuByMnYa
	F7/pwkqBGihZJefMhXuQTTfOfMNJyXur75RWFm4bH46uPJEB833BoaJuFV0O2v758yyPWPSdcopmq
	1h4YrytleJm3oE9ZkjuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb0JP-0004Oo-Dk; Tue, 19 May 2020 11:21:31 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb0JH-0004O2-4b
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 11:21:24 +0000
Received: by mail-ot1-f65.google.com with SMTP id 69so6212076otv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 04:21:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=C6lb9JZ25g+Kaugzt8krb+iM4CDC/jdUqY0YVxzMNaw=;
 b=SPgZfC1wl2WZfbcQSUzEAwgLie28AupijvmZGHw1szFfi7exDLcpbxpRO43QCf7PQF
 /G+ATBjRhVqkIbTQOuV8w3n0cVEZdvmo6/izqA/AHmU96c8qmQn+PhxpGGXt0Z8rqOcj
 eIsHe2ggXqelfCCaq7Lr7hwRQWBA29bKBXvn6PsG+N5Ko46vd+j+3IaBGH8ZHTlhe998
 IKXLYfY1ZFPXMo3UDR3DFVyB8NZL1N2RrNcJvaGUdLiBGjcvLODtanpRbHMBsXjn2rqI
 VX3Ibe4sPQXKI0sIhizN8pir2WwatMZHqc6rsaDy9d84bqXAlFJ17uTk4PvQJhrNfZHh
 m5ag==
X-Gm-Message-State: AOAM532gRg8L/u074uon6CN89FVD4z28mWtnYaKWuyn2Nzo2+4NshGAM
 n3VIUBcy0TqR6SSGVpqATlF610XjiusTNVoPYrc=
X-Google-Smtp-Source: ABdhPJzQvKCdDSoxUltKaj8LuBKKd6bmonffri7fJu3t4HqC7Gw+4iPEhSPjUsG1MLNa3/nqnoVs2YpZGvTGdKys2wU=
X-Received: by 2002:a9d:7e92:: with SMTP id m18mr15339151otp.145.1589887282035; 
 Tue, 19 May 2020 04:21:22 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200429082134eucas1p2415c5269202529e6b019f2d70c1b5572@eucas1p2.samsung.com>
 <20200429082120.16259-1-geert+renesas@glider.be>
 <dleftjmu645mqn.fsf%l.stelmach@samsung.com>
 <CAMuHMdXxq6m6gebQbWvxDynDcZ7dLyZzKC_QroK63L8FGeac1Q@mail.gmail.com>
 <20200519094637.GZ1551@shell.armlinux.org.uk>
In-Reply-To: <20200519094637.GZ1551@shell.armlinux.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 19 May 2020 13:21:09 +0200
Message-ID: <CAMuHMdU5DG06G4H=+PH+OONMT_9oE==KS=wP+bLgY9xVCez6Ww@mail.gmail.com>
Subject: Re: [PATCH v6] ARM: boot: Obtain start of physical memory from DTB
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_042123_178130_4BBD81D4 
X-CRM114-Status: GOOD (  30.17  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Grant Likely <grant.likely@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Lukasz Stelmach <l.stelmach@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUnVzc2VsbCwKCkNDIGRldmljZXRyZWUKCk9uIFR1ZSwgTWF5IDE5LCAyMDIwIGF0IDExOjQ2
IEFNIFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCBhZG1pbgo8bGludXhAYXJtbGludXgub3JnLnVr
PiB3cm90ZToKPiBPbiBUdWUsIE1heSAxOSwgMjAyMCBhdCAxMTo0NDoxN0FNICswMjAwLCBHZWVy
dCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4gPiBPbiBUdWUsIE1heSAxOSwgMjAyMCBhdCAxMDo1NCBB
TSBMdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+IHdyb3RlOgo+ID4gPiBJ
dCB3YXMgPDIwMjAtMDQtMjkgxZtybyAxMDoyMT4sIHdoZW4gR2VlcnQgVXl0dGVyaG9ldmVuIHdy
b3RlOgo+ID4gPiA+IEN1cnJlbnRseSwgdGhlIHN0YXJ0IGFkZHJlc3Mgb2YgcGh5c2ljYWwgbWVt
b3J5IGlzIG9idGFpbmVkIGJ5IG1hc2tpbmcKPiA+ID4gPiB0aGUgcHJvZ3JhbSBjb3VudGVyIHdp
dGggYSBmaXhlZCBtYXNrIG9mIDB4ZjgwMDAwMDAuICBUaGlzIG1hc2sgdmFsdWUKPiA+ID4gPiB3
YXMgY2hvc2VuIGFzIGEgYmFsYW5jZSBiZXR3ZWVuIHRoZSByZXF1aXJlbWVudHMgb2YgZGlmZmVy
ZW50IHBsYXRmb3Jtcy4KPiA+ID4gPiBIb3dldmVyLCB0aGlzIGRvZXMgcmVxdWlyZSB0aGF0IHRo
ZSBzdGFydCBhZGRyZXNzIG9mIHBoeXNpY2FsIG1lbW9yeSBpcwo+ID4gPiA+IGEgbXVsdGlwbGUg
b2YgMTI4IE1pQiwgcHJlY2x1ZGluZyBib290aW5nIExpbnV4IG9uIHBsYXRmb3JtcyB3aGVyZSB0
aGlzCj4gPiA+ID4gcmVxdWlyZW1lbnQgaXMgbm90IGZ1bGZpbGxlZC4KPiA+ID4gPgo+ID4gPiA+
IEZpeCB0aGlzIGxpbWl0YXRpb24gYnkgb2J0YWluaW5nIHRoZSBzdGFydCBhZGRyZXNzIGZyb20g
dGhlIERUQiBpbnN0ZWFkLAo+ID4gPiA+IGlmIGF2YWlsYWJsZSAoZWl0aGVyIGV4cGxpY2l0bHkg
cGFzc2VkLCBvciBhcHBlbmRlZCB0byB0aGUga2VybmVsKS4KPiA+ID4gPiBGYWxsIGJhY2sgdG8g
dGhlIHRyYWRpdGlvbmFsIG1ldGhvZCB3aGVuIG5lZWRlZC4KPiA+ID4gPgo+ID4gPiA+IFRoaXMg
YWxsb3dzIHRvIGJvb3QgTGludXggb24gcjdzOTIxMC9yemEybWV2YiB1c2luZyB0aGUgNjQgTWlC
IG9mIFNEUkFNCj4gPiA+ID4gb24gdGhlIFJaQTJNRVZCIHN1YiBib2FyZCwgd2hpY2ggaXMgbG9j
YXRlZCBhdCAweDBDMDAwMDAwIChDUzMgc3BhY2UpLAo+ID4gPiA+IGkuZS4gbm90IGF0IGEgbXVs
dGlwbGUgb2YgMTI4IE1pQi4KPiA+ID4gPgo+ID4gPiA+IFN1Z2dlc3RlZC1ieTogTmljb2xhcyBQ
aXRyZSA8bmljb0BmbHV4bmljLm5ldD4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0
ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+ID4gPiA+IFJldmlld2VkLWJ5OiBO
aWNvbGFzIFBpdHJlIDxuaWNvQGZsdXhuaWMubmV0Pgo+ID4gPiA+IFJldmlld2VkLWJ5OiBBcmQg
Qmllc2hldXZlbCA8YXJkYkBrZXJuZWwub3JnPgo+ID4gPiA+IFRlc3RlZC1ieTogTWFyZWsgU3p5
cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgo+ID4gPiA+IFRlc3RlZC1ieTogRG1p
dHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29tPgo+ID4gPiA+IC0tLQo+ID4gPgo+ID4gPiBb
Li4uXQo+ID4gPgo+ID4gPiBBcHBhcmVudGx5IHJlYWRpbmcgcGh5c2ljYWwgbWVtb3J5IGxheW91
dCBmcm9tIERUQiBicmVha3MgY3Jhc2hkdW1wCj4gPiA+IGtlcm5lbHMuIEEgY3Jhc2hkdW1wIGtl
cm5lbCBpcyBsb2FkZWQgaW50byBhIHJlZ2lvbiBvZiBtZW1vcnksIHRoYXQgaXMKPiA+ID4gcmVz
ZXJ2ZWQgaW4gdGhlIG9yaWdpbmFsIChpLmUuIHRvIGJlIGNyYXNoZWQpIGtlcm5lbC4gVGhlIHJl
c2VydmVkCj4gPiA+IHJlZ2lvbiBpcyBsYXJnZSBlbm91Z2ggZm9yIHRoZSBjcmFzaGR1bXAga2Vy
bmVsIHRvIHJ1biBjb21wbGV0ZWx5IGluc2lkZQo+ID4gPiBpdCBhbmQgZG9uJ3QgbW9kaWZ5IGFu
eXRoaW5nIG91dHNpZGUgaXQsIGp1c3QgcmVhZCBhbmQgZHVtcCB0aGUgcmVtYWlucwo+ID4gPiBv
ZiB0aGUgY3Jhc2hlZCBrZXJuZWwuIFVzaW5nIHRoZSBpbmZvcm1hdGlvbiBmcm9tIERUQiBtYWtl
cyB0aGUKPiA+ID4gZGVjb21wcmVzc29yIHBsYWNlIHRoZSBrZXJuZWwgb3V0c2lkZSBvZiB0aGUg
ZGVkaWNhdGVkIHJlZ2lvbi4KPiA+ID4KPiA+ID4gVGhlIGxvZyBiZWxvdyBzaG93cyB0aGF0IGEg
ekltYWdlIGFuZCBEVEIgYXJlIGxvYWRlZCBhdCAweDE4ZWI4MDAwIGFuZAo+ID4gPiAweDE5M2Y2
MDAwIChwaHlzaWNhbCkuIFRoZSBrZXJuZWwgaXMgZXhwZWN0ZWQgdG8gcnVuIGF0IDB4MTgwMDgw
MDAsIGJ1dAo+ID4gPiBpdCBpcyBkZWNvbXByZXNzZWQgdG8gMHgwMDAwODAwMCAoc2VlIHI0IHJl
cG9ydGVkIGJlZm9yZSBqdW1waW5nIGZyb20KPiA+ID4gd2l0aGluIF9fZW50ZXJfa2VybmVsKS4g
SWYgSSB3ZXJlIHRvIHN1Z2dlc3Qgc29tZXRoaW5nLCB0aGVyZSBuZWVkIHRvIGJlCj4gPiA+IG9u
ZSBtb3JlIGJpdCBvZiBpbmZvcm1hdGlvbiBwYXNzZWQgaW4gdGhlIERUQiB0ZWxsaW5nIHRoZSBk
ZWNvbXByZXNzb3IKPiA+ID4gdG8gdXNlIHRoZSBvbGQgbWFza2luZyB0ZWNobmlxdWUgdG8gZGV0
ZXJtYWluIGtlcm5lbCBhZGRyZXNzLiBJdCB3b3VsZAo+ID4gPiBiZSBzZXQgaW4gdGhlIERUQiBs
b2FkZWQgYWxvbmcgd2l0aCB0aGUgY3Jhc2hkdW1wIGtlcm5lbC4KPiA+Cj4gPiBTaG91bGRuJ3Qg
dGhlIERUQiBwYXNzZWQgdG8gdGhlIGNyYXNoa2VybmVsIGRlc2NyaWJlIHdoaWNoIHJlZ2lvbiBv
Zgo+ID4gbWVtb3J5IGlzIHRvIGJlIHVzZWQgaW5zdGVhZD8KPgo+IERlZmluaXRlbHkgbm90LiAg
VGhlIGNyYXNoa2VybmVsIG5lZWRzIHRvIGtub3cgd2hlcmUgdGhlIFJBTSBpbiB0aGUKPiBtYWNo
aW5lIGlzLCBzbyB0aGF0IGl0IGNhbiBjcmVhdGUgYSBjb3JlZHVtcCBvZiB0aGUgY3Jhc2hlZCBr
ZXJuZWwuCgpTbyB0aGUgRFRCIHNob3VsZCBkZXNjcmliZSBib3RoIDstKQoKPiA+IERlc2NyaWJp
bmcgInRvIHVzZSB0aGUgb2xkIG1hc2tpbmcgdGVjaG5pcXVlIiBzb3VuZHMgYSBiaXQgaGFja2lz
aCB0byBtZS4KPiA+IEkgZ3Vlc3MgaXQgY2Fubm90IGp1c3QgcmVzdHJpY3QgdGhlIC9tZW1vcnkg
bm9kZSB0byB0aGUgcmVzZXJ2ZWQgcmVnaW9uLAo+ID4gYXMgdGhlIGNyYXNoa2VybmVsIG5lZWRz
IHRvIGJlIGFibGUgdG8gZHVtcCB0aGUgcmVtYWlucyBvZiB0aGUgY3Jhc2hlZAo+ID4ga2VybmVs
LCB3aGljaCBsaWUgb3V0c2lkZSB0aGlzIHJlZ2lvbi4KPgo+IENvcnJlY3QuCj4KPiA+IEhvd2V2
ZXIsIHNvbWV0aGluZyB1bmRlciAvY2hvc2VuIHNob3VsZCB3b3JrLgo+Cj4gWWV0IGFub3RoZXIg
c3RpY2t5IHBsYXN0ZXIuLi4KCklNSE8gdGhlIG9sZCBtYXNraW5nIHRlY2huaXF1ZSBpcyB0aGUg
aGFja3kgc29sdXRpb24gY292ZXJlZCBieQpwbGFzdGVycy4KCkRUIGRlc2NyaWJlcyB0aGUgaGFy
ZHdhcmUuICBJbiBnZW5lcmFsLCB3aGVyZSB0byBwdXQgdGhlIGtlcm5lbCBpcyBhCnNvZnR3YXJl
IHBvbGljeSwgYW5kIHRodXMgZG9lc24ndCBiZWxvbmcgaW4gRFQsIGV4Y2VwdCBwZXJoYXBzIHVu
ZGVyCi9jaG9zZW4uICBCdXQgdGhhdCB3b3VsZCBvcGVuIGFub3RoZXIgY2FuIG9mIHdvcm1zLCBh
cyBwZW9wbGUgdXN1YWxseQpoYXZlIG5vIGJ1c2luZXNzIGluIHNwZWNpZnlpbmcgd2hlcmUgdGhl
IGtlcm5lbCBzaG91bGQgYmUgbG9jYXRlZC4KSW4gdGhlIGNyYXNoa2VybmVsIGNhc2UsIHRoZXJl
IGlzIGEgY2xlYXIgc2VwYXJhdGlvbiBiZXR3ZWVuIG1lbW9yeSB0bwpiZSB1c2VkIGJ5IHRoZSBj
cmFzaGtlcm5lbCwgYW5kIG1lbW9yeSB0byBiZSBzb2xlbHkgaW5zcGVjdGVkIGJ5IHRoZQpjcmFz
aGtlcm5lbC4KCkRldmljZXRyZWUgU3BlY2lmaWNhdGlvbiwgUmVsZWFzZSB2MC4zLCBTZWN0aW9u
IDMuNCAiL21lbW9yeSBub2RlIiBzYXlzOgoKICAgICJUaGUgY2xpZW50IHByb2dyYW0gbWF5IGFj
Y2VzcyBtZW1vcnkgbm90IGNvdmVyZWQgYnkgYW55IG1lbW9yeQogICAgIHJlc2VydmF0aW9ucyAo
c2VlIHNlY3Rpb24gNS4zKSIKCihTZWN0aW9uIDUuMyAiTWVtb3J5IFJlc2VydmF0aW9uIEJsb2Nr
IiBvbmx5IHRhbGtzIGFib3V0IHN0cnVjdHVyZXMgaW4KdGhlIEZEVCwgbm90IGFib3V0IERUUykK
CkhlbmNlIGFjY29yZGluZyB0byB0aGUgYWJvdmUsIHRoZSBjcmFzaGtlcm5lbCBpcyByaWdodGZ1
bGx5IGFsbG93ZWQgdG8KZG8gd2hhdGV2ZXIgaXQgd2FudHMgd2l0aCBhbGwgbWVtb3J5IHVuZGVy
IHRoZSAvbWVtb3J5IG5vZGUuCkhvd2V2ZXIsIHRoZXJlIGlzIGFsc28KRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2VydmVkLW1lbW9yeS9yZXNlcnZlZC1tZW1vcnkudHh0LgpU
aGlzIHN1Z2dlc3RzIHRoZSBjcmFzaGtlcm5lbCBzaG91bGQgYmUgcGFzc2VkIGEgRFRCIHRoYXQg
Y29udGFpbnMgYQovcmVzZXJ2ZWQtbWVtb3J5IG5vZGUsIGRlc2NyaWJpbmcgd2hpY2ggbWVtb3J5
IGNhbm5vdCBiZSB1c2VkIGZyZWVseS4KVGhlbiB0aGUgZGVjb21wcmVzc29yIG5lZWRzIHRvIHRh
a2UgdGhpcyBpbnRvIGFjY291bnQgd2hlbiBkZWNpZGluZwp3aGVyZSB0aGUgcHV0IHRoZSBrZXJu
ZWwuCgpZZXMsIHRoZSBhYm92ZSByZXF1aXJlcyBjaGFuZ2luZyBjb2RlLiBCdXQgYXQgbGVhc3Qg
aXQgcHJvdmlkZXMgYQpwYXRoIGZvcndhcmQsIGdldHRpbmcgcmlkIG9mIHRoZSBmcmFnaWxlIG9s
ZCBtYXNraW5nIHRlY2huaXF1ZS4KClRoYW5rcyBmb3IgeW91ciBjb21tZW50cyEKCgpHcntvZXRq
ZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLQpHZWVydCBVeXR0
ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxp
bnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBl
b3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91
cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
