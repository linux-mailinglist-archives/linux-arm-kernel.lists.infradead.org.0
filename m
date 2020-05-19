Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC181D935F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bAtLuqaVunl7W3gbF9/HcYQ8n1njIaaqPmfNrAW+mxI=; b=ZIXYhAYpdRDqRR
	bjR08CAzPN6iQTsqXaVTAeRvPjhXpQvLSyW0wuspBQaf0B02aBZXZM44MESftFFNI6RZmbbI2zUrn
	MH06ra5I9CRCOoZZFGmNrShnh/SOGhUAI08PethFMSfD9p+ZuFLf6Z3MjqAIuPBR5xayBWnjGLvN6
	JUr51wAK/i78qtgGBNHwv968+B3cPL+/G5xR/7RojLGZfljPJwTp6dLX5YvEuoi4iiA+Zm2WZN740
	HHfvaso4B7rTMZAeYJNGK88wGdQ+z7RNPbKEu4TCKa4teliQyKQrSKz3RdC2bigtO7LqZ2CrxHqX+
	qYyUYyFwwUO9rmKPDNQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayaK-00066T-5x; Tue, 19 May 2020 09:30:52 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayaA-00065y-B9
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:30:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rDkog1PAN1T7MdqLtFOWdqFB/5sRcxJYVWYK5k03nOM=; b=zs9tbHcLyegSt8cjSfSKZTO6e
 QJLFRolcnj4GdZkdBdkicC6cnqALIXzgo5h3DvhWUOIFdlMeWnWo6bM2JmqHo+Z6nHhJNGdSygzbY
 5X+ggygXn+p5NQKdwWO4XyCwKLgBAMGIwE6KTxZG3pOBxN1/ataFbZIRTMcRFIoiPYT3bvhgrwy1V
 6FVrhFDqsBw5DAHTEwkt0XH8DF/IQUavfWNnh4pRubqkB8rm1+YYASvZYxhaZFYuu879guP/L+E0D
 5PyhqNNLeu6/CXeMQjCbI1R3U3re7k1j1vJobb2wFPFaXgsAOWs2o9mq4bEDRR2YYh7HvYfdmhYZB
 NT9HL7pCw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:34112)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jayZi-0004p1-M8; Tue, 19 May 2020 10:30:14 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jayZZ-0005ak-JV; Tue, 19 May 2020 10:30:05 +0100
Date: Tue, 19 May 2020 10:30:05 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Lukasz Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH v6] ARM: boot: Obtain start of physical memory from DTB
Message-ID: <20200519093005.GX1551@shell.armlinux.org.uk>
References: <CGME20200429082134eucas1p2415c5269202529e6b019f2d70c1b5572@eucas1p2.samsung.com>
 <20200429082120.16259-1-geert+renesas@glider.be>
 <dleftjmu645mqn.fsf%l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dleftjmu645mqn.fsf%l.stelmach@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_023042_520340_CFD14816 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>, Masahiro Yamada <masahiroy@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Chris Brandt <chris.brandt@renesas.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMTA6NTM6NTJBTSArMDIwMCwgTHVrYXN6IFN0ZWxtYWNo
IHdyb3RlOgo+IEl0IHdhcyA8MjAyMC0wNC0yOSDFm3JvIDEwOjIxPiwgd2hlbiBHZWVydCBVeXR0
ZXJob2V2ZW4gd3JvdGU6Cj4gPiBDdXJyZW50bHksIHRoZSBzdGFydCBhZGRyZXNzIG9mIHBoeXNp
Y2FsIG1lbW9yeSBpcyBvYnRhaW5lZCBieSBtYXNraW5nCj4gPiB0aGUgcHJvZ3JhbSBjb3VudGVy
IHdpdGggYSBmaXhlZCBtYXNrIG9mIDB4ZjgwMDAwMDAuICBUaGlzIG1hc2sgdmFsdWUKPiA+IHdh
cyBjaG9zZW4gYXMgYSBiYWxhbmNlIGJldHdlZW4gdGhlIHJlcXVpcmVtZW50cyBvZiBkaWZmZXJl
bnQgcGxhdGZvcm1zLgo+ID4gSG93ZXZlciwgdGhpcyBkb2VzIHJlcXVpcmUgdGhhdCB0aGUgc3Rh
cnQgYWRkcmVzcyBvZiBwaHlzaWNhbCBtZW1vcnkgaXMKPiA+IGEgbXVsdGlwbGUgb2YgMTI4IE1p
QiwgcHJlY2x1ZGluZyBib290aW5nIExpbnV4IG9uIHBsYXRmb3JtcyB3aGVyZSB0aGlzCj4gPiBy
ZXF1aXJlbWVudCBpcyBub3QgZnVsZmlsbGVkLgo+ID4KPiA+IEZpeCB0aGlzIGxpbWl0YXRpb24g
Ynkgb2J0YWluaW5nIHRoZSBzdGFydCBhZGRyZXNzIGZyb20gdGhlIERUQiBpbnN0ZWFkLAo+ID4g
aWYgYXZhaWxhYmxlIChlaXRoZXIgZXhwbGljaXRseSBwYXNzZWQsIG9yIGFwcGVuZGVkIHRvIHRo
ZSBrZXJuZWwpLgo+ID4gRmFsbCBiYWNrIHRvIHRoZSB0cmFkaXRpb25hbCBtZXRob2Qgd2hlbiBu
ZWVkZWQuCj4gPgo+ID4gVGhpcyBhbGxvd3MgdG8gYm9vdCBMaW51eCBvbiByN3M5MjEwL3J6YTJt
ZXZiIHVzaW5nIHRoZSA2NCBNaUIgb2YgU0RSQU0KPiA+IG9uIHRoZSBSWkEyTUVWQiBzdWIgYm9h
cmQsIHdoaWNoIGlzIGxvY2F0ZWQgYXQgMHgwQzAwMDAwMCAoQ1MzIHNwYWNlKSwKPiA+IGkuZS4g
bm90IGF0IGEgbXVsdGlwbGUgb2YgMTI4IE1pQi4KPiA+Cj4gPiBTdWdnZXN0ZWQtYnk6IE5pY29s
YXMgUGl0cmUgPG5pY29AZmx1eG5pYy5uZXQ+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0
ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+ID4gUmV2aWV3ZWQtYnk6IE5pY29s
YXMgUGl0cmUgPG5pY29AZmx1eG5pYy5uZXQ+Cj4gPiBSZXZpZXdlZC1ieTogQXJkIEJpZXNoZXV2
ZWwgPGFyZGJAa2VybmVsLm9yZz4KPiA+IFRlc3RlZC1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5z
enlwcm93c2tpQHNhbXN1bmcuY29tPgo+ID4gVGVzdGVkLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRp
Z2V0eEBnbWFpbC5jb20+Cj4gPiAtLS0KPiAKPiBbLi4uXQo+IAo+IEFwcGFyZW50bHkgcmVhZGlu
ZyBwaHlzaWNhbCBtZW1vcnkgbGF5b3V0IGZyb20gRFRCIGJyZWFrcyBjcmFzaGR1bXAKPiBrZXJu
ZWxzLiBBIGNyYXNoZHVtcCBrZXJuZWwgaXMgbG9hZGVkIGludG8gYSByZWdpb24gb2YgbWVtb3J5
LCB0aGF0IGlzCj4gcmVzZXJ2ZWQgaW4gdGhlIG9yaWdpbmFsIChpLmUuIHRvIGJlIGNyYXNoZWQp
IGtlcm5lbC4gVGhlIHJlc2VydmVkCj4gcmVnaW9uIGlzIGxhcmdlIGVub3VnaCBmb3IgdGhlIGNy
YXNoZHVtcCBrZXJuZWwgdG8gcnVuIGNvbXBsZXRlbHkgaW5zaWRlCj4gaXQgYW5kIGRvbid0IG1v
ZGlmeSBhbnl0aGluZyBvdXRzaWRlIGl0LCBqdXN0IHJlYWQgYW5kIGR1bXAgdGhlIHJlbWFpbnMK
PiBvZiB0aGUgY3Jhc2hlZCBrZXJuZWwuIFVzaW5nIHRoZSBpbmZvcm1hdGlvbiBmcm9tIERUQiBt
YWtlcyB0aGUKPiBkZWNvbXByZXNzb3IgcGxhY2UgdGhlIGtlcm5lbCBvdXRzaWRlIG9mIHRoZSBk
ZWRpY2F0ZWQgcmVnaW9uLgo+IAo+IFRoZSBsb2cgYmVsb3cgc2hvd3MgdGhhdCBhIHpJbWFnZSBh
bmQgRFRCIGFyZSBsb2FkZWQgYXQgMHgxOGViODAwMCBhbmQKPiAweDE5M2Y2MDAwIChwaHlzaWNh
bCkuIFRoZSBrZXJuZWwgaXMgZXhwZWN0ZWQgdG8gcnVuIGF0IDB4MTgwMDgwMDAsIGJ1dAo+IGl0
IGlzIGRlY29tcHJlc3NlZCB0byAweDAwMDA4MDAwIChzZWUgcjQgcmVwb3J0ZWQgYmVmb3JlIGp1
bXBpbmcgZnJvbQo+IHdpdGhpbiBfX2VudGVyX2tlcm5lbCkuCgpSaWdodCwgYW5kIGl0J3MgaW1w
b3J0YW50IHRoYXQgdGhlIGtlcm5lbCBkZWNvbXByZXNzZXMgdG8gMHgxODAwODAwMApzbyBpdCBk
b2Vzbid0IG92ZXJ3cml0ZSBtZW1vcnkgdGhhdCB3YXMgYmVpbmcgdXNlZCBieSB0aGUgY3Jhc2hp
bmcKa2VybmVsLCBhbmQgdGh1cyBjYW4gY3JlYXRlIGEgdHJ1ZSBjb3JlZHVtcCBpbWFnZSBvZiB0
aGUgZmFpbGVkCmtlcm5lbC4gIE1lYW53aGlsZSwgdGhlIERUQiBzdGlsbCBuZWVkcyB0byBkZXNj
cmliZSB0aGUgZnVsbCBtZW1vcnkKbGF5b3V0IHNvIHRoYXQgd2Uga25vdyB3aGVyZSBtZW1vcnkg
aXMgbG9jYXRlZCBpbiBvcmRlciB0byBjb3JlZHVtcAppdCBwcm9wZXJseS4KClNvLCB0aGlzIGlz
IGEgZmxhdyB3aXRoIHRoaXMgYXBwcm9hY2gsIGFuZCB3aWxsIG5lZWQgdGhlIGNvbW1pdCB0byBi
ZQpkcm9wcGVkIHlldCBhZ2FpbiAtIHRoaXMgcGF0Y2ggaXMgZnVuZGFtZW50YWxseSBpbmNvbXBh
dGlibGUgd2l0aCB0aGUKd2F5IGtleGVjJ3MgY3Jhc2hkdW1wIHdvcmtzLgoKTG9va2luZyBiYWNr
IGF0IHRoZSBoaXN0b3J5LCB3ZSd2ZSBiZWVuIHRyeWluZyB0aGlzIGFwcHJvYWNoIHNpbmNlCkZl
YnJ1YXJ5IHdpdGggZm91ciBwYXRjaGVzIHN1Ym1pdHRlZCB0byB0aGUgcGF0Y2ggc3lzdGVtLCBh
bmQgcHJvYmxlbXMKZXZlbnR1YWxseSBmb3VuZCB3aXRoIGVhY2ggb2YgdGhlbS4gIEkgdGhpbmsg
dGhpcyBzaG93cyB0aGF0IHRoZSB3YXkKdGhlIGRlY29tcHJlc3NvciB3b3JrcyBvdXQgd2hlcmUg
dG8gZGVjb21wcmVzcyB0aGUga2VybmVsIHRvIHRvZGF5IGlzCnJlbGllZCB1cG9uIGFsbCBvdmVy
IHRoZSBwbGFjZSwgYW5kIGNoYW5naW5nIGl0IGlzIGFsd2F5cyBnb2luZyB0bwpjYXVzZSBwcm9i
bGVtcy4gIFNvLCBJIGRvbid0IHRoaW5rIHdlIC9jYW4vIGNoYW5nZSBpdCB3aXRob3V0IGNhdXNp
bmcKYSByZWdyZXNzaW9uIGZvciBzb21lb25lLgoKLS0gClJNSydzIFBhdGNoIHN5c3RlbTogaHR0
cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVzLwpGVFRDIGJyb2FkYmFu
ZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVyYmlhOiBzeW5jIGF0IDEwLjJNYnBzIGRvd24gNTg3
a2JwcyB1cAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
