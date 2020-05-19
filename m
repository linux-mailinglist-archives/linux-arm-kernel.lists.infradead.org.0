Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CD31D93C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:48:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+hnd56WapVZFaQdxSFyALf9SBkkCjyiH01JP9Gh0xYE=; b=pHWNNmjVuxjfk6
	pGBmh69X0xVyP62EFgxh67QtSnwisTVZgXFycV5nbKXO7miR1PMV0hVFRi0o7mLRoZRDl2si8OUiw
	deoAPfkSkYlLTCWb/3t5DqHL9lKsC89fymBhDjLOkxlB6+YQ5mrwlhFIguBgG5PwV6GoVOafxgdnw
	jHzwost2ive6OOurZmp6mHQRQFZW8KOKih3AYAPY5npNbjC6k14D57HFOQYm8i0QWZzklOZNZ5AKe
	l81cw6Rasy4SSzl9L7yZF6tFj28ChE04sDSZyDtlSHWQaIR+G9Aj92BM0nXFFqpCklgnox64yaUvA
	V1UUWguUgniWYZds5l6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayr5-0003zC-OG; Tue, 19 May 2020 09:48:11 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaynW-00079q-L5
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:44:35 +0000
Received: by mail-oi1-f194.google.com with SMTP id x23so5169166oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 02:44:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Rkuqfk9v0dSFtHNviTRsQ331KmGWIpp5BtZ5aSdCkiQ=;
 b=iPBhAoMEDw5NMu/47dDuMBBPV0M6iOs6MIOf4KLVN36v7DjeoaDa2ZM94oJlHVCYSy
 ev/7chsCCm/Obn/ExihG5fGiVG49yJTp6+idnijGSuL8XMcEucRWyJRk+69ibkyksvJn
 cw4DeeNBhxDx0H8zFVPCpCJ5xxrhjj7DAHM42M+aPVgLCdUe7+JHqHlEPaXAX/6Ni+JO
 6/A5ghpavnaR0guQwpcUIWWBmfGaEcDwybRLV+yMRgIk29IDcM/qwMvhUTVnMS6H6/Wr
 JwaCA9eY9Ws07ouYGE2caxRFP18lWAU5tiHrmGbsiDjpNxb6eXFnIG87mbKmJfC3O3Sa
 tTmw==
X-Gm-Message-State: AOAM533ZU0TlrodS7v9g5MiNyRmHZuRX/WyIeF+CYHN8FSzi3qO6uhWu
 uekhK9ySqoLxr/Z/WCk3hBnLZ8ybXaUA8CuRXGs=
X-Google-Smtp-Source: ABdhPJxQYDIUSsP9aca2RSoR1nUOC1fHNj6QIDMPOAbQeBaLW5c/YfMluFpfBirWsZT6mg9LxxzuwmdGpo6c7ZFQpJs=
X-Received: by 2002:a05:6808:1:: with SMTP id u1mr2557112oic.54.1589881469304; 
 Tue, 19 May 2020 02:44:29 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200429082134eucas1p2415c5269202529e6b019f2d70c1b5572@eucas1p2.samsung.com>
 <20200429082120.16259-1-geert+renesas@glider.be>
 <dleftjmu645mqn.fsf%l.stelmach@samsung.com>
In-Reply-To: <dleftjmu645mqn.fsf%l.stelmach@samsung.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 19 May 2020 11:44:17 +0200
Message-ID: <CAMuHMdXxq6m6gebQbWvxDynDcZ7dLyZzKC_QroK63L8FGeac1Q@mail.gmail.com>
Subject: Re: [PATCH v6] ARM: boot: Obtain start of physical memory from DTB
To: Lukasz Stelmach <l.stelmach@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_024430_701791_81C1B54E 
X-CRM114-Status: GOOD (  24.81  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgxYF1a2FzegoKVGhhbmtzIGZvciB5b3VyIHJlcG9ydCEKCk9uIFR1ZSwgTWF5IDE5LCAyMDIw
IGF0IDEwOjU0IEFNIEx1a2FzeiBTdGVsbWFjaCA8bC5zdGVsbWFjaEBzYW1zdW5nLmNvbT4gd3Jv
dGU6Cj4gSXQgd2FzIDwyMDIwLTA0LTI5IMWbcm8gMTA6MjE+LCB3aGVuIEdlZXJ0IFV5dHRlcmhv
ZXZlbiB3cm90ZToKPiA+IEN1cnJlbnRseSwgdGhlIHN0YXJ0IGFkZHJlc3Mgb2YgcGh5c2ljYWwg
bWVtb3J5IGlzIG9idGFpbmVkIGJ5IG1hc2tpbmcKPiA+IHRoZSBwcm9ncmFtIGNvdW50ZXIgd2l0
aCBhIGZpeGVkIG1hc2sgb2YgMHhmODAwMDAwMC4gIFRoaXMgbWFzayB2YWx1ZQo+ID4gd2FzIGNo
b3NlbiBhcyBhIGJhbGFuY2UgYmV0d2VlbiB0aGUgcmVxdWlyZW1lbnRzIG9mIGRpZmZlcmVudCBw
bGF0Zm9ybXMuCj4gPiBIb3dldmVyLCB0aGlzIGRvZXMgcmVxdWlyZSB0aGF0IHRoZSBzdGFydCBh
ZGRyZXNzIG9mIHBoeXNpY2FsIG1lbW9yeSBpcwo+ID4gYSBtdWx0aXBsZSBvZiAxMjggTWlCLCBw
cmVjbHVkaW5nIGJvb3RpbmcgTGludXggb24gcGxhdGZvcm1zIHdoZXJlIHRoaXMKPiA+IHJlcXVp
cmVtZW50IGlzIG5vdCBmdWxmaWxsZWQuCj4gPgo+ID4gRml4IHRoaXMgbGltaXRhdGlvbiBieSBv
YnRhaW5pbmcgdGhlIHN0YXJ0IGFkZHJlc3MgZnJvbSB0aGUgRFRCIGluc3RlYWQsCj4gPiBpZiBh
dmFpbGFibGUgKGVpdGhlciBleHBsaWNpdGx5IHBhc3NlZCwgb3IgYXBwZW5kZWQgdG8gdGhlIGtl
cm5lbCkuCj4gPiBGYWxsIGJhY2sgdG8gdGhlIHRyYWRpdGlvbmFsIG1ldGhvZCB3aGVuIG5lZWRl
ZC4KPiA+Cj4gPiBUaGlzIGFsbG93cyB0byBib290IExpbnV4IG9uIHI3czkyMTAvcnphMm1ldmIg
dXNpbmcgdGhlIDY0IE1pQiBvZiBTRFJBTQo+ID4gb24gdGhlIFJaQTJNRVZCIHN1YiBib2FyZCwg
d2hpY2ggaXMgbG9jYXRlZCBhdCAweDBDMDAwMDAwIChDUzMgc3BhY2UpLAo+ID4gaS5lLiBub3Qg
YXQgYSBtdWx0aXBsZSBvZiAxMjggTWlCLgo+ID4KPiA+IFN1Z2dlc3RlZC1ieTogTmljb2xhcyBQ
aXRyZSA8bmljb0BmbHV4bmljLm5ldD4KPiA+IFNpZ25lZC1vZmYtYnk6IEdlZXJ0IFV5dHRlcmhv
ZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+Cj4gPiBSZXZpZXdlZC1ieTogTmljb2xhcyBQ
aXRyZSA8bmljb0BmbHV4bmljLm5ldD4KPiA+IFJldmlld2VkLWJ5OiBBcmQgQmllc2hldXZlbCA8
YXJkYkBrZXJuZWwub3JnPgo+ID4gVGVzdGVkLWJ5OiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXBy
b3dza2lAc2Ftc3VuZy5jb20+Cj4gPiBUZXN0ZWQtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4
QGdtYWlsLmNvbT4KPiA+IC0tLQo+Cj4gWy4uLl0KPgo+IEFwcGFyZW50bHkgcmVhZGluZyBwaHlz
aWNhbCBtZW1vcnkgbGF5b3V0IGZyb20gRFRCIGJyZWFrcyBjcmFzaGR1bXAKPiBrZXJuZWxzLiBB
IGNyYXNoZHVtcCBrZXJuZWwgaXMgbG9hZGVkIGludG8gYSByZWdpb24gb2YgbWVtb3J5LCB0aGF0
IGlzCj4gcmVzZXJ2ZWQgaW4gdGhlIG9yaWdpbmFsIChpLmUuIHRvIGJlIGNyYXNoZWQpIGtlcm5l
bC4gVGhlIHJlc2VydmVkCj4gcmVnaW9uIGlzIGxhcmdlIGVub3VnaCBmb3IgdGhlIGNyYXNoZHVt
cCBrZXJuZWwgdG8gcnVuIGNvbXBsZXRlbHkgaW5zaWRlCj4gaXQgYW5kIGRvbid0IG1vZGlmeSBh
bnl0aGluZyBvdXRzaWRlIGl0LCBqdXN0IHJlYWQgYW5kIGR1bXAgdGhlIHJlbWFpbnMKPiBvZiB0
aGUgY3Jhc2hlZCBrZXJuZWwuIFVzaW5nIHRoZSBpbmZvcm1hdGlvbiBmcm9tIERUQiBtYWtlcyB0
aGUKPiBkZWNvbXByZXNzb3IgcGxhY2UgdGhlIGtlcm5lbCBvdXRzaWRlIG9mIHRoZSBkZWRpY2F0
ZWQgcmVnaW9uLgo+Cj4gVGhlIGxvZyBiZWxvdyBzaG93cyB0aGF0IGEgekltYWdlIGFuZCBEVEIg
YXJlIGxvYWRlZCBhdCAweDE4ZWI4MDAwIGFuZAo+IDB4MTkzZjYwMDAgKHBoeXNpY2FsKS4gVGhl
IGtlcm5lbCBpcyBleHBlY3RlZCB0byBydW4gYXQgMHgxODAwODAwMCwgYnV0Cj4gaXQgaXMgZGVj
b21wcmVzc2VkIHRvIDB4MDAwMDgwMDAgKHNlZSByNCByZXBvcnRlZCBiZWZvcmUganVtcGluZyBm
cm9tCj4gd2l0aGluIF9fZW50ZXJfa2VybmVsKS4gSWYgSSB3ZXJlIHRvIHN1Z2dlc3Qgc29tZXRo
aW5nLCB0aGVyZSBuZWVkIHRvIGJlCj4gb25lIG1vcmUgYml0IG9mIGluZm9ybWF0aW9uIHBhc3Nl
ZCBpbiB0aGUgRFRCIHRlbGxpbmcgdGhlIGRlY29tcHJlc3Nvcgo+IHRvIHVzZSB0aGUgb2xkIG1h
c2tpbmcgdGVjaG5pcXVlIHRvIGRldGVybWFpbiBrZXJuZWwgYWRkcmVzcy4gSXQgd291bGQKPiBi
ZSBzZXQgaW4gdGhlIERUQiBsb2FkZWQgYWxvbmcgd2l0aCB0aGUgY3Jhc2hkdW1wIGtlcm5lbC4K
ClNob3VsZG4ndCB0aGUgRFRCIHBhc3NlZCB0byB0aGUgY3Jhc2hrZXJuZWwgZGVzY3JpYmUgd2hp
Y2ggcmVnaW9uIG9mCm1lbW9yeSBpcyB0byBiZSB1c2VkIGluc3RlYWQ/IERlc2NyaWJpbmcgInRv
IHVzZSB0aGUgb2xkIG1hc2tpbmcKdGVjaG5pcXVlIiBzb3VuZHMgYSBiaXQgaGFja2lzaCB0byBt
ZS4KSSBndWVzcyBpdCBjYW5ub3QganVzdCByZXN0cmljdCB0aGUgL21lbW9yeSBub2RlIHRvIHRo
ZSByZXNlcnZlZCByZWdpb24sCmFzIHRoZSBjcmFzaGtlcm5lbCBuZWVkcyB0byBiZSBhYmxlIHRv
IGR1bXAgdGhlIHJlbWFpbnMgb2YgdGhlIGNyYXNoZWQKa2VybmVsLCB3aGljaCBsaWUgb3V0c2lk
ZSB0aGlzIHJlZ2lvbi4KSG93ZXZlciwgc29tZXRoaW5nIHVuZGVyIC9jaG9zZW4gc2hvdWxkIHdv
cmsuCgo+IERlc3BpdGUgdGhlIGZhY3QgdGhlIGtlcm5lbCBpcyBhYmxlIHRvIHN0YXJ0IGFuZCBn
ZXQgcXVpdGUgZmFyIGl0IHNpbXBseQo+IHBhbmljcyAoZm9yIGEgcmVhc29uIHVua25vd24gdG8g
bWUgYXQgdGhlIG1vbWVudCkuCj4KPiBLaW5kIHJlZ2FyZHMsCj4gxYFTCj4KPiAtLTg8LS0tLS0t
LS0tLS0tLS0tY3V0IGhlcmUtLS0tLS0tLS0tLS0tLS1zdGFydC0tLS0tLS0tLS0tLS0+OC0tLQo+
IFsgICA0Mi4zNTgzNDldIGtleGVjX2ZpbGU6X19kb19zeXNfa2V4ZWNfZmlsZV9sb2FkOjQzNTog
a2V4ZWNfZmlsZTogTG9hZGluZyBzZWdtZW50IDA6IGJ1Zj0weGYxODcxYmNiIGJ1ZnN6PTB4NTJj
ODcwIG1lbT0weDE4ZWI4MDAwIG1lbXN6PTB4NTJkMDAwCj4gWyAgIDQyLjM3NDYxNV0ga2V4ZWNf
ZmlsZTpfX2RvX3N5c19rZXhlY19maWxlX2xvYWQ6NDM1OiBrZXhlY19maWxlOiBMb2FkaW5nIHNl
Z21lbnQgMTogYnVmPTB4MDEyMzY1ZjYgYnVmc3o9MHg1YWJmIG1lbT0weDE5M2Y2MDAwIG1lbXN6
PTB4NjAwMAo+IHJvb3RAdGFyZ2V0On4jIHN5bmMgJiYgZWNobyBjID4gL3Byb2Mvc3lzcnEtdHJp
Z2dlcgo+IFsgICA2Mi4yMDYyNTJdIHN5c3JxOiBUcmlnZ2VyIGEgY3Jhc2gKPiBbICAgNjIuMjA5
NzExXSBLZXJuZWwgcGFuaWMgLSBub3Qgc3luY2luZzogc3lzcnEgdHJpZ2dlcmVkIGNyYXNoCj4g
WyAgIDYyLjIxNTU0OF0gQ1BVOiAwIFBJRDogMTIzNiBDb21tOiBiYXNoIEtkdW1wOiBsb2FkZWQg
VGFpbnRlZDogRyAgICAgICAgVyAgICAgICAgIDUuNy4wLXJjNi0wMDAxMS1nYWQzZmJlNmE4ODNl
ICMxNzQKPiBbICAgNjIuMjI2MjI1XSBIYXJkd2FyZSBuYW1lOiBCQ00yNzExCj4gWyAgIDYyLjIy
OTY3Nl0gQmFja3RyYWNlOgo+IFsgICA2Mi4yMzIxNzhdIFs8YzAxMGJmYTQ+XSAoZHVtcF9iYWNr
dHJhY2UpIGZyb20gWzxjMDEwYzMzND5dIChzaG93X3N0YWNrKzB4MjAvMHgyNCkKPiBbICAgNjIu
MjM5ODYzXSAgcjc6MDAwMDAwMDggcjY6YzBiNGE0OGQgcjU6MDAwMDAwMDAgcjQ6YzBlYjdiMTgK
PiBbICAgNjIuMjQ1NjE3XSBbPGMwMTBjMzE0Pl0gKHNob3dfc3RhY2spIGZyb20gWzxjMDNlNDc1
Yz5dIChkdW1wX3N0YWNrKzB4MjAvMHgyOCkKPiBbICAgNjIuMjUyOTU0XSBbPGMwM2U0NzNjPl0g
KGR1bXBfc3RhY2spIGZyb20gWzxjMDExZTM2OD5dIChwYW5pYysweGY0LzB4MzIwKQo+IFsgICA2
Mi4yNTk5NDFdIFs8YzAxMWUyNzQ+XSAocGFuaWMpIGZyb20gWzxjMDQ0YmI2MD5dIChzeXNycV9o
YW5kbGVfY3Jhc2grMHgxYy8weDIwKQo+IFsgICA2Mi4yNjc1MzZdICByMzpjMDQ0YmI0NCByMjpj
NTdlMWMyMSByMTo2MDAwMDA5MyByMDpjMGI0YTQ4ZAo+IFsgICA2Mi4yNzMyNzhdICByNzowMDAw
MDAwOAo+IFsgICA2Mi4yNzU4NTNdIFs8YzA0NGJiNDQ+XSAoc3lzcnFfaGFuZGxlX2NyYXNoKSBm
cm9tIFs8YzA0NGMxOTg+XSAoX19oYW5kbGVfc3lzcnErMHhhMC8weDE1MCkKPiBbICAgNjIuMjg0
MzM0XSBbPGMwNDRjMGY4Pl0gKF9faGFuZGxlX3N5c3JxKSBmcm9tIFs8YzA0NGM2MjA+XSAod3Jp
dGVfc3lzcnFfdHJpZ2dlcisweDY4LzB4NzgpCj4gWyAgIDYyLjI5MjgxNF0gIHIxMDowMDAwMDAw
MiByOTplOTEyM2Y1MCByODowMDAwMDAwMiByNzowMTJmMjQwOCByNjplOTExMmNjMCByNTpjMDQ0
YzViOAo+IFsgICA2Mi4zMDA3NTddICByNDowMDAwMDAwMgo+IFsgICA2Mi4zMDMzMzVdIFs8YzA0
NGM1Yjg+XSAod3JpdGVfc3lzcnFfdHJpZ2dlcikgZnJvbSBbPGMwMmE3YWQ0Pl0gKHByb2NfcmVn
X3dyaXRlKzB4OTgvMHhhOCkKPiBbICAgNjIuMzExODA4XSAgcjU6YzA0NGM1YjggcjQ6ZWI2NTU3
MDAKPiBbICAgNjIuMzE1NDQzXSBbPGMwMmE3YTNjPl0gKHByb2NfcmVnX3dyaXRlKSBmcm9tIFs8
YzAyM2IwODA+XSAoX192ZnNfd3JpdGUrMHg0OC8weGY0KQo+IFsgICA2Mi4zMjMyMTZdICByOTow
MTJmMjQwOCByODpjMDJhN2EzYyByNzowMDAwMDAwMiByNjplOTExMmNjMCByNTplOTEyM2Y1MCBy
NDpjMGUwNDI0OAo+IFsgICA2Mi4zMzEwNzddIFs8YzAyM2IwMzg+XSAoX192ZnNfd3JpdGUpIGZy
b20gWzxjMDIzYzkwMD5dICh2ZnNfd3JpdGUrMHhhOC8weGNjKQo+IFsgICA2Mi4zMzg0MDddICBy
ODplOTEyM2Y1MCByNzowMTJmMjQwOCByNjowMDAwMDAwMiByNTowMDAwMDAwMCByNDplOTExMmNj
MAo+IFsgICA2Mi4zNDUyMTFdIFs8YzAyM2M4NTg+XSAodmZzX3dyaXRlKSBmcm9tIFs8YzAyM2Nh
ZTA+XSAoa3N5c193cml0ZSsweDc4LzB4YzQpCj4gWyAgIDYyLjM1MjQ1NF0gIHI5OjAxMmYyNDA4
IHI4OmU5MTIzZjVjIHI3OmMwZTA0MjQ4IHI2OmU5MTIzZjUwIHI1OjAxMmYyNDA4IHI0OmU5MTEy
Y2MwCj4gWyAgIDYyLjM2MDMxNl0gWzxjMDIzY2E2OD5dIChrc3lzX3dyaXRlKSBmcm9tIFs8YzAy
M2NiNDQ+XSAoc3lzX3dyaXRlKzB4MTgvMHgxYykKPiBbICAgNjIuMzY3NTU5XSAgcjEwOjAwMDAw
MDA0IHI5OmU5MTIyMDAwIHI4OmMwMTAwMjY0IHI3OjAwMDAwMDA0IHI2OmI2ZWRjZDkwIHI1OjAx
MmYyNDA4Cj4gWyAgIDYyLjM3NTUwNF0gIHI0OjAwMDAwMDAyCj4gWyAgIDYyLjM3ODA4MF0gWzxj
MDIzY2IyYz5dIChzeXNfd3JpdGUpIGZyb20gWzxjMDEwMDA2MD5dIChyZXRfZmFzdF9zeXNjYWxs
KzB4MC8weDU0KQo+IFsgICA2Mi4zODU3NTldIEV4Y2VwdGlvbiBzdGFjaygweGU5MTIzZmE4IHRv
IDB4ZTkxMjNmZjApCj4gWyAgIDYyLjM5MDg4OV0gM2ZhMDogICAgICAgICAgICAgICAgICAgMDAw
MDAwMDIgMDEyZjI0MDggMDAwMDAwMDEgMDEyZjI0MDggMDAwMDAwMDIgMDAwMDAwMDAKPiBbICAg
NjIuMzk5MTkwXSAzZmMwOiAwMDAwMDAwMiAwMTJmMjQwOCBiNmVkY2Q5MCAwMDAwMDAwNCAwMTJm
MjQwOCAwMDAwMDAwMiAwMDAwMDAwMCAwMDExOGZkOAo+IFsgICA2Mi40MDc0ODhdIDNmZTA6IDAw
MDAwMDZjIGJlODJiN2U4IGI2ZGY3MDEwIGI2ZTU0NmU0Cj4gWyAgIDYyLjQxMjY0N10gTG9hZGlu
ZyBjcmFzaGR1bXAga2VybmVsLi4uCj4gWyAgIDYyLjQxNjYyOF0gQnllIQo+IFVuY29tcHJlc3Np
bmcgTGludXguLi4gZG9uZSwgYm9vdGluZyB0aGUga2VybmVsLgo+IHIyOjB4MTkzRjYwMDAKPiBy
NDoweDAwMDA4MDAwCj4gWyAgICAwLjAwMDAwMF0gQm9vdGluZyBMaW51eCBvbiBwaHlzaWNhbCBD
UFUgMHgwCj4gWyAgICAwLjAwMDAwMF0gTGludXggdmVyc2lvbiA1LjcuMC1yYzYtMDAwMTEtZ2Fk
M2ZiZTZhODgzZSAobC5zdGVsbWFjaEBBTURDMTA2MikgKGdjYyB2ZXJzaW9uIDguMy4wIChEZWJp
YW4gOC4zLjAtMiksIEdOVSBsZCAoR05VIEJpbnV0aWxzIGZvciBEZWJpYW4pIDIuMzEuMSkgIzE3
NCBUdWUgTWF5IDE5Cj4gMDk6Mzc6MTAgQ0VTVCAyMDIwCgpHcntvZXRqZSxlZXRpbmd9cywKCiAg
ICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgoKLS0KR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRo
ZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoK
SW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBt
eXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVz
dCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
