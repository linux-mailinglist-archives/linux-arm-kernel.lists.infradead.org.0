Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F55E1D98B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 15:57:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8DqR0aM31LGEVk0wdXl8+5BarsV7cyezwwS63PeB6A=; b=m/9oWiRLVLKsA5
	NWiEOZW3ZhCrS6QgTZPlOrTR2wrXemoo6ccjAyUiKV0RtbKS7CjqSbkzUtPJmA5BCiu4rF0RwkgIA
	24RPcC3TEVBQ8nlkOPiHRIYNQV+tPVG0QCxIvB1j4zqHWBnOE1pkX4K4E/BAMAZtwCst7zkFFhBes
	AgDAWacoLaJI2cwWkoSgZqg5DjbSRCFDs4y6E58Dlm6MFfKvyjclnqkMfvXkAXW2Q8mTdQaBFBxCE
	sswaot5xj6+Na+i+8/DDXcAa4j/7I6+0IjEEmOIdFiRqgiFrWOw0G+GVofHgivzV6by09TBPhg49c
	N0o9vAGsAw9NFdidVA+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2kH-0001zJ-8w; Tue, 19 May 2020 13:57:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2k4-0001rj-SS
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 13:57:14 +0000
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
 [209.85.166.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 249AF2083E
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 13:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589896632;
 bh=1ge7GtnAk4d1zwaRewUucQ51+d00fLsHnCTj6b5UyPo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=w9c30JTdPhumdFKVx2WLG4ahdfmskibm3/J+VpvUHwCHDwxhKwWf068pSXin5P5W5
 sq6YVsbx0z10ZWXz4kigPPjLTQzdth1AYxFcExRK24RFiAXIqkLlV8ovdAkMN5l1WA
 M8mvGtaWJchuBp/Eh7FlgjR1Uss23J7O2tUEAQH4=
Received: by mail-io1-f49.google.com with SMTP id 79so14602213iou.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 06:57:12 -0700 (PDT)
X-Gm-Message-State: AOAM533W+ss2VONSsRVX229DgnjFtDQ+61xqMqF+ThjjOsCgD5HHCc+W
 g2NTZwN2l0kQ3Ts+EMUPgcGoVp/dBF98gAMNuc8=
X-Google-Smtp-Source: ABdhPJxR1/bZ6OQaZesRjgU+B2k0BoP9B3nyHCz01LxPD8dIW+o5nveijsFfnE7y+oXqf41DyfMUKU6mdLde+phk4Ts=
X-Received: by 2002:a6b:5008:: with SMTP id e8mr19309744iob.161.1589896631339; 
 Tue, 19 May 2020 06:57:11 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200429082134eucas1p2415c5269202529e6b019f2d70c1b5572@eucas1p2.samsung.com>
 <20200429082120.16259-1-geert+renesas@glider.be>
 <dleftjmu645mqn.fsf%l.stelmach@samsung.com>
 <CAMuHMdXxq6m6gebQbWvxDynDcZ7dLyZzKC_QroK63L8FGeac1Q@mail.gmail.com>
 <20200519094637.GZ1551@shell.armlinux.org.uk>
 <CAMuHMdU5DG06G4H=+PH+OONMT_9oE==KS=wP+bLgY9xVCez6Ww@mail.gmail.com>
In-Reply-To: <CAMuHMdU5DG06G4H=+PH+OONMT_9oE==KS=wP+bLgY9xVCez6Ww@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 19 May 2020 15:56:59 +0200
X-Gmail-Original-Message-ID: <CAMj1kXH_s4qjDfTO03PkGNaiwfjmfkrZ-FE8vTm74QSrgoVt0A@mail.gmail.com>
Message-ID: <CAMj1kXH_s4qjDfTO03PkGNaiwfjmfkrZ-FE8vTm74QSrgoVt0A@mail.gmail.com>
Subject: Re: [PATCH v6] ARM: boot: Obtain start of physical memory from DTB
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_065712_973225_2BA1696E 
X-CRM114-Status: GOOD (  35.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxOSBNYXkgMjAyMCBhdCAxMzoyMSwgR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBs
aW51eC1tNjhrLm9yZz4gd3JvdGU6Cj4KPiBIaSBSdXNzZWxsLAo+Cj4gQ0MgZGV2aWNldHJlZQo+
Cj4gT24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMTE6NDYgQU0gUnVzc2VsbCBLaW5nIC0gQVJNIExp
bnV4IGFkbWluCj4gPGxpbnV4QGFybWxpbnV4Lm9yZy51az4gd3JvdGU6Cj4gPiBPbiBUdWUsIE1h
eSAxOSwgMjAyMCBhdCAxMTo0NDoxN0FNICswMjAwLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6
Cj4gPiA+IE9uIFR1ZSwgTWF5IDE5LCAyMDIwIGF0IDEwOjU0IEFNIEx1a2FzeiBTdGVsbWFjaCA8
bC5zdGVsbWFjaEBzYW1zdW5nLmNvbT4gd3JvdGU6Cj4gPiA+ID4gSXQgd2FzIDwyMDIwLTA0LTI5
IMWbcm8gMTA6MjE+LCB3aGVuIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPiA+ID4gPiA+IEN1
cnJlbnRseSwgdGhlIHN0YXJ0IGFkZHJlc3Mgb2YgcGh5c2ljYWwgbWVtb3J5IGlzIG9idGFpbmVk
IGJ5IG1hc2tpbmcKPiA+ID4gPiA+IHRoZSBwcm9ncmFtIGNvdW50ZXIgd2l0aCBhIGZpeGVkIG1h
c2sgb2YgMHhmODAwMDAwMC4gIFRoaXMgbWFzayB2YWx1ZQo+ID4gPiA+ID4gd2FzIGNob3NlbiBh
cyBhIGJhbGFuY2UgYmV0d2VlbiB0aGUgcmVxdWlyZW1lbnRzIG9mIGRpZmZlcmVudCBwbGF0Zm9y
bXMuCj4gPiA+ID4gPiBIb3dldmVyLCB0aGlzIGRvZXMgcmVxdWlyZSB0aGF0IHRoZSBzdGFydCBh
ZGRyZXNzIG9mIHBoeXNpY2FsIG1lbW9yeSBpcwo+ID4gPiA+ID4gYSBtdWx0aXBsZSBvZiAxMjgg
TWlCLCBwcmVjbHVkaW5nIGJvb3RpbmcgTGludXggb24gcGxhdGZvcm1zIHdoZXJlIHRoaXMKPiA+
ID4gPiA+IHJlcXVpcmVtZW50IGlzIG5vdCBmdWxmaWxsZWQuCj4gPiA+ID4gPgo+ID4gPiA+ID4g
Rml4IHRoaXMgbGltaXRhdGlvbiBieSBvYnRhaW5pbmcgdGhlIHN0YXJ0IGFkZHJlc3MgZnJvbSB0
aGUgRFRCIGluc3RlYWQsCj4gPiA+ID4gPiBpZiBhdmFpbGFibGUgKGVpdGhlciBleHBsaWNpdGx5
IHBhc3NlZCwgb3IgYXBwZW5kZWQgdG8gdGhlIGtlcm5lbCkuCj4gPiA+ID4gPiBGYWxsIGJhY2sg
dG8gdGhlIHRyYWRpdGlvbmFsIG1ldGhvZCB3aGVuIG5lZWRlZC4KPiA+ID4gPiA+Cj4gPiA+ID4g
PiBUaGlzIGFsbG93cyB0byBib290IExpbnV4IG9uIHI3czkyMTAvcnphMm1ldmIgdXNpbmcgdGhl
IDY0IE1pQiBvZiBTRFJBTQo+ID4gPiA+ID4gb24gdGhlIFJaQTJNRVZCIHN1YiBib2FyZCwgd2hp
Y2ggaXMgbG9jYXRlZCBhdCAweDBDMDAwMDAwIChDUzMgc3BhY2UpLAo+ID4gPiA+ID4gaS5lLiBu
b3QgYXQgYSBtdWx0aXBsZSBvZiAxMjggTWlCLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFN1Z2dlc3Rl
ZC1ieTogTmljb2xhcyBQaXRyZSA8bmljb0BmbHV4bmljLm5ldD4KPiA+ID4gPiA+IFNpZ25lZC1v
ZmYtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+Cj4gPiA+
ID4gPiBSZXZpZXdlZC1ieTogTmljb2xhcyBQaXRyZSA8bmljb0BmbHV4bmljLm5ldD4KPiA+ID4g
PiA+IFJldmlld2VkLWJ5OiBBcmQgQmllc2hldXZlbCA8YXJkYkBrZXJuZWwub3JnPgo+ID4gPiA+
ID4gVGVzdGVkLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+
Cj4gPiA+ID4gPiBUZXN0ZWQtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4K
PiA+ID4gPiA+IC0tLQo+ID4gPiA+Cj4gPiA+ID4gWy4uLl0KPiA+ID4gPgo+ID4gPiA+IEFwcGFy
ZW50bHkgcmVhZGluZyBwaHlzaWNhbCBtZW1vcnkgbGF5b3V0IGZyb20gRFRCIGJyZWFrcyBjcmFz
aGR1bXAKPiA+ID4gPiBrZXJuZWxzLiBBIGNyYXNoZHVtcCBrZXJuZWwgaXMgbG9hZGVkIGludG8g
YSByZWdpb24gb2YgbWVtb3J5LCB0aGF0IGlzCj4gPiA+ID4gcmVzZXJ2ZWQgaW4gdGhlIG9yaWdp
bmFsIChpLmUuIHRvIGJlIGNyYXNoZWQpIGtlcm5lbC4gVGhlIHJlc2VydmVkCj4gPiA+ID4gcmVn
aW9uIGlzIGxhcmdlIGVub3VnaCBmb3IgdGhlIGNyYXNoZHVtcCBrZXJuZWwgdG8gcnVuIGNvbXBs
ZXRlbHkgaW5zaWRlCj4gPiA+ID4gaXQgYW5kIGRvbid0IG1vZGlmeSBhbnl0aGluZyBvdXRzaWRl
IGl0LCBqdXN0IHJlYWQgYW5kIGR1bXAgdGhlIHJlbWFpbnMKPiA+ID4gPiBvZiB0aGUgY3Jhc2hl
ZCBrZXJuZWwuIFVzaW5nIHRoZSBpbmZvcm1hdGlvbiBmcm9tIERUQiBtYWtlcyB0aGUKPiA+ID4g
PiBkZWNvbXByZXNzb3IgcGxhY2UgdGhlIGtlcm5lbCBvdXRzaWRlIG9mIHRoZSBkZWRpY2F0ZWQg
cmVnaW9uLgo+ID4gPiA+Cj4gPiA+ID4gVGhlIGxvZyBiZWxvdyBzaG93cyB0aGF0IGEgekltYWdl
IGFuZCBEVEIgYXJlIGxvYWRlZCBhdCAweDE4ZWI4MDAwIGFuZAo+ID4gPiA+IDB4MTkzZjYwMDAg
KHBoeXNpY2FsKS4gVGhlIGtlcm5lbCBpcyBleHBlY3RlZCB0byBydW4gYXQgMHgxODAwODAwMCwg
YnV0Cj4gPiA+ID4gaXQgaXMgZGVjb21wcmVzc2VkIHRvIDB4MDAwMDgwMDAgKHNlZSByNCByZXBv
cnRlZCBiZWZvcmUganVtcGluZyBmcm9tCj4gPiA+ID4gd2l0aGluIF9fZW50ZXJfa2VybmVsKS4g
SWYgSSB3ZXJlIHRvIHN1Z2dlc3Qgc29tZXRoaW5nLCB0aGVyZSBuZWVkIHRvIGJlCj4gPiA+ID4g
b25lIG1vcmUgYml0IG9mIGluZm9ybWF0aW9uIHBhc3NlZCBpbiB0aGUgRFRCIHRlbGxpbmcgdGhl
IGRlY29tcHJlc3Nvcgo+ID4gPiA+IHRvIHVzZSB0aGUgb2xkIG1hc2tpbmcgdGVjaG5pcXVlIHRv
IGRldGVybWFpbiBrZXJuZWwgYWRkcmVzcy4gSXQgd291bGQKPiA+ID4gPiBiZSBzZXQgaW4gdGhl
IERUQiBsb2FkZWQgYWxvbmcgd2l0aCB0aGUgY3Jhc2hkdW1wIGtlcm5lbC4KPiA+ID4KPiA+ID4g
U2hvdWxkbid0IHRoZSBEVEIgcGFzc2VkIHRvIHRoZSBjcmFzaGtlcm5lbCBkZXNjcmliZSB3aGlj
aCByZWdpb24gb2YKPiA+ID4gbWVtb3J5IGlzIHRvIGJlIHVzZWQgaW5zdGVhZD8KPiA+Cj4gPiBE
ZWZpbml0ZWx5IG5vdC4gIFRoZSBjcmFzaGtlcm5lbCBuZWVkcyB0byBrbm93IHdoZXJlIHRoZSBS
QU0gaW4gdGhlCj4gPiBtYWNoaW5lIGlzLCBzbyB0aGF0IGl0IGNhbiBjcmVhdGUgYSBjb3JlZHVt
cCBvZiB0aGUgY3Jhc2hlZCBrZXJuZWwuCj4KPiBTbyB0aGUgRFRCIHNob3VsZCBkZXNjcmliZSBi
b3RoIDstKQo+Cj4gPiA+IERlc2NyaWJpbmcgInRvIHVzZSB0aGUgb2xkIG1hc2tpbmcgdGVjaG5p
cXVlIiBzb3VuZHMgYSBiaXQgaGFja2lzaCB0byBtZS4KPiA+ID4gSSBndWVzcyBpdCBjYW5ub3Qg
anVzdCByZXN0cmljdCB0aGUgL21lbW9yeSBub2RlIHRvIHRoZSByZXNlcnZlZCByZWdpb24sCj4g
PiA+IGFzIHRoZSBjcmFzaGtlcm5lbCBuZWVkcyB0byBiZSBhYmxlIHRvIGR1bXAgdGhlIHJlbWFp
bnMgb2YgdGhlIGNyYXNoZWQKPiA+ID4ga2VybmVsLCB3aGljaCBsaWUgb3V0c2lkZSB0aGlzIHJl
Z2lvbi4KPiA+Cj4gPiBDb3JyZWN0Lgo+ID4KPiA+ID4gSG93ZXZlciwgc29tZXRoaW5nIHVuZGVy
IC9jaG9zZW4gc2hvdWxkIHdvcmsuCj4gPgo+ID4gWWV0IGFub3RoZXIgc3RpY2t5IHBsYXN0ZXIu
Li4KPgo+IElNSE8gdGhlIG9sZCBtYXNraW5nIHRlY2huaXF1ZSBpcyB0aGUgaGFja3kgc29sdXRp
b24gY292ZXJlZCBieQo+IHBsYXN0ZXJzLgo+CgpJIHRoaW5rIGRlYmF0aW5nIHdoaWNoIHNvbHV0
aW9uIGlzIHRoZSBoYWNreSBvbmUgd2lsbCBub3QgZ2V0IHVzIGFueXdoZXJlLgoKVGhlIHNpbXBs
ZSByZWFsaXR5IGlzIHRoYXQgdGhlIGV4aXN0aW5nIHNvbHV0aW9uIHdvcmtzIGZpbmUgZm9yCmV4
aXN0aW5nIHBsYXRmb3JtcywgYW5kIHNvIGFueSBjaGFuZ2VzIGluIHRoZSBsb2dpYyB3aWxsIGhh
dmUgdG8gYmUKb3B0LWluIGluIG9uZSB3YXkgb3IgdGhlIG90aGVyLgoKU2luY2UgVS1ib290IHN1
cHBvcnRzIEVGSSBib290IHRoZXNlIGRheXMsIG9uZSBwb3RlbnRpYWwgb3B0aW9uIGlzIHRvCnJl
bHkgb24gdGhhdC4gSSBoYXZlIHNvbWUgY2hhbmdlcyBpbXBsZW1lbnRpbmcgdGhpcyB0aGF0IGdv
IG9uIHRvcCBvZgp0aGlzIHBhdGNoLCBidXQgdGhleSBkb24ndCBhY3R1YWxseSByZWx5IG9uIGl0
IC0gaXQgd2FzIGp1c3QgdG8KcHJldmVudCBsZXhpY2FsIGNvbmZsaWN0cy4KClRoZSBvbmx5IHJl
bWFpbmluZyBvcHRpb25zIGltbyBhcmUgYSBrZXJuZWwgY29tbWFuZCBsaW5lIG9wdGlvbiwgb3Ig
YQpEVCBwcm9wZXJ0eSB0aGF0IHRlbGxzIHRoZSBkZWNvbXByZXNzb3IgdG8gbG9vayBhdCB0aGUg
bWVtb3J5IG5vZGVzLgpCdXQgdXNpbmcgdGhlIERUIG1lbW9yeSBub2RlcyBvbiBhbGwgcGxhdGZv
cm1zIGxpa2UgdGhpcyBwYXRjaCBkb2VzIGlzCm9idmlvdXNseSBqdXN0IHRvbyByaXNreS4KCk9u
IGFub3RoZXIgbm90ZSwgSSBkbyB0aGluayB0aGUgdXNhYmxlLW1lbW9yeS1yZWdpb24gcHJvcGVy
dHkgc2hvdWxkCmJlIGltcGxlbWVudGVkIGZvciBBUk0gYXMgd2VsbCAtIHJlbHlpbmcgb24gdGhp
cyByb3VuZGluZyB0byBlbnN1cmUKdGhhdCB0aGUgZGVjb21wcmVzc29yIGRvZXMgdGhlIHJpZ2h0
IHRoaW5nIGlzIHRvbyBmcmFnaWxlLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
