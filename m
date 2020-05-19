Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8191D9782
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 15:19:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VnMbOMbnUpBlk9+Niwd2gfxs6JTtD1c69Z4W/CpUyVo=; b=XFUsoRiDVFZD4+
	fN5ewN9Bhulxv1awdzlLSBYbdZ/1KT7N/Mb2OynPWXOlv9gT09SusICGYV1ypYAbloxRVAmNbGNPr
	ClqhsHvFlO8SfTPi+jkAbCHYzmHNFefBkjbej7Vs4VNbNYKKmYB1syX+5lyTd41MZ79O8HFLfou4N
	qzdI/c74uqbPnlBQWrra34R8mquRtIxwkgwgStWFT9leksFT1NgFSYs2hUT5elkSphgx1/FWoDm3v
	HNEqjszsuR7MaTIDrcAaOONrBOeARO4Nd1/JHGwsyNvtJ3TUtf7RTx1mzcV6X31jMz8hiS//gBqF+
	PkSTJGBg+3WYG7irOnUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb29i-0000M7-Pe; Tue, 19 May 2020 13:19:38 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb23i-0000uy-Pk
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 13:13:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i57lkD9cnLd3mYhYTL44RTjdfNu1CHhYUTKlZbuE/qA=; b=tiq9bVFD1bBw9CjMczu/C5+9G
 bekr4ojvKSr9XU8l7UAgzNAV3iIPTKZgkWw+WXIXehnHY6OzYtb3rtlXmb0baQdjXQ8tmTI+wQ+72
 wp7x/L+k1T9iFH9OqqYguznUKcSQ2DyMLA9ft+kyB/LbeJLkglwpZMF/5tA9xGiu/NQMT1Z4QE3Wl
 gpI7DZ9y8RFAiM0DWosfvfD/h3H5ccvJZeP0+ePaj+cFA3s3kYb+vWy7nh83piSmOAZtoBRqhhzSF
 5lGCsyQHoXMdHQR5KDfZHvdxbIzKqaIhvF2pSwhaF1lTMk/8iCQn58HvUS0bbAtuHaOaSw4sqGQx2
 3j3A88luQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:34192)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jb23I-0005RT-7a; Tue, 19 May 2020 14:13:00 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jb23A-0005l3-T5; Tue, 19 May 2020 14:12:52 +0100
Date: Tue, 19 May 2020 14:12:52 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Lukasz Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH v6] ARM: boot: Obtain start of physical memory from DTB
Message-ID: <20200519131252.GD1551@shell.armlinux.org.uk>
References: <20200519122706.GC1551@shell.armlinux.org.uk>
 <CGME20200519125008eucas1p2fe9f14c8f785e956a15097d1eca491c7@eucas1p2.samsung.com>
 <dleftjzha43x8q.fsf%l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dleftjzha43x8q.fsf%l.stelmach@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_061326_836432_32AE6C24 
X-CRM114-Status: GOOD (  27.25  )
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Grant Likely <grant.likely@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, Dmitry Osipenko <digetx@gmail.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMDI6NDk6NTdQTSArMDIwMCwgTHVrYXN6IFN0ZWxtYWNo
IHdyb3RlOgo+IEl0IHdhcyA8MjAyMC0wNS0xOSB3dG8gMTM6Mjc+LCB3aGVuIFJ1c3NlbGwgS2lu
ZyAtIEFSTSBMaW51eCBhZG1pbiB3cm90ZToKPiA+IE9uIFR1ZSwgTWF5IDE5LCAyMDIwIGF0IDAy
OjIwOjI1UE0gKzAyMDAsIEx1a2FzeiBTdGVsbWFjaCB3cm90ZToKPiA+PiBJdCB3YXMgPDIwMjAt
MDUtMTkgd3RvIDEyOjQzPiwgd2hlbiBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4gd3Jv
dGU6Cj4gPj4+IE9uIFR1ZSwgTWF5IDE5LCAyMDIwIGF0IDAxOjIxOjA5UE0gKzAyMDAsIEdlZXJ0
IFV5dHRlcmhvZXZlbiB3cm90ZToKPiA+Pj4+IE9uIFR1ZSwgTWF5IDE5LCAyMDIwIGF0IDExOjQ2
IEFNIFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eCBhZG1pbgo+ID4+Pj4gPGxpbnV4QGFybWxpbnV4
Lm9yZy51az4gd3JvdGU6Cj4gPj4+Pj4gT24gVHVlLCBNYXkgMTksIDIwMjAgYXQgMTE6NDQ6MTdB
TSArMDIwMCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+ID4+Pj4+PiBPbiBUdWUsIE1heSAx
OSwgMjAyMCBhdCAxMDo1NCBBTSBMdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5j
b20+IHdyb3RlOgo+ID4+Pj4+Pj4gSXQgd2FzIDwyMDIwLTA0LTI5IMWbcm8gMTA6MjE+LCB3aGVu
IEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPiA+Pj4+Pj4+PiBDdXJyZW50bHksIHRoZSBzdGFy
dCBhZGRyZXNzIG9mIHBoeXNpY2FsIG1lbW9yeSBpcyBvYnRhaW5lZCBieSBtYXNraW5nCj4gPj4+
Pj4+Pj4gdGhlIHByb2dyYW0gY291bnRlciB3aXRoIGEgZml4ZWQgbWFzayBvZiAweGY4MDAwMDAw
LiAgVGhpcyBtYXNrIHZhbHVlCj4gPj4+Pj4+Pj4gd2FzIGNob3NlbiBhcyBhIGJhbGFuY2UgYmV0
d2VlbiB0aGUgcmVxdWlyZW1lbnRzIG9mIGRpZmZlcmVudCBwbGF0Zm9ybXMuCj4gPj4+Pj4+Pj4g
SG93ZXZlciwgdGhpcyBkb2VzIHJlcXVpcmUgdGhhdCB0aGUgc3RhcnQgYWRkcmVzcyBvZiBwaHlz
aWNhbCBtZW1vcnkgaXMKPiA+Pj4+Pj4+PiBhIG11bHRpcGxlIG9mIDEyOCBNaUIsIHByZWNsdWRp
bmcgYm9vdGluZyBMaW51eCBvbiBwbGF0Zm9ybXMgd2hlcmUgdGhpcwo+ID4+Pj4+Pj4+IHJlcXVp
cmVtZW50IGlzIG5vdCBmdWxmaWxsZWQuCj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBGaXggdGhpcyBs
aW1pdGF0aW9uIGJ5IG9idGFpbmluZyB0aGUgc3RhcnQgYWRkcmVzcyBmcm9tIHRoZSBEVEIgaW5z
dGVhZCwKPiA+Pj4+Pj4+PiBpZiBhdmFpbGFibGUgKGVpdGhlciBleHBsaWNpdGx5IHBhc3NlZCwg
b3IgYXBwZW5kZWQgdG8gdGhlIGtlcm5lbCkuCj4gPj4+Pj4+Pj4gRmFsbCBiYWNrIHRvIHRoZSB0
cmFkaXRpb25hbCBtZXRob2Qgd2hlbiBuZWVkZWQuCj4gWy4uLl0KPiA+Pj4+Pj4+IEFwcGFyZW50
bHkgcmVhZGluZyBwaHlzaWNhbCBtZW1vcnkgbGF5b3V0IGZyb20gRFRCIGJyZWFrcyBjcmFzaGR1
bXAKPiA+Pj4+Pj4+IGtlcm5lbHMuIEEgY3Jhc2hkdW1wIGtlcm5lbCBpcyBsb2FkZWQgaW50byBh
IHJlZ2lvbiBvZiBtZW1vcnksIHRoYXQgaXMKPiA+Pj4+Pj4+IHJlc2VydmVkIGluIHRoZSBvcmln
aW5hbCAoaS5lLiB0byBiZSBjcmFzaGVkKSBrZXJuZWwuIFRoZSByZXNlcnZlZAo+ID4+Pj4+Pj4g
cmVnaW9uIGlzIGxhcmdlIGVub3VnaCBmb3IgdGhlIGNyYXNoZHVtcCBrZXJuZWwgdG8gcnVuIGNv
bXBsZXRlbHkgaW5zaWRlCj4gPj4+Pj4+PiBpdCBhbmQgZG9uJ3QgbW9kaWZ5IGFueXRoaW5nIG91
dHNpZGUgaXQsIGp1c3QgcmVhZCBhbmQgZHVtcCB0aGUgcmVtYWlucwo+ID4+Pj4+Pj4gb2YgdGhl
IGNyYXNoZWQga2VybmVsLiBVc2luZyB0aGUgaW5mb3JtYXRpb24gZnJvbSBEVEIgbWFrZXMgdGhl
Cj4gPj4+Pj4+PiBkZWNvbXByZXNzb3IgcGxhY2UgdGhlIGtlcm5lbCBvdXRzaWRlIG9mIHRoZSBk
ZWRpY2F0ZWQgcmVnaW9uLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IFRoZSBsb2cgYmVsb3cgc2hvd3Mg
dGhhdCBhIHpJbWFnZSBhbmQgRFRCIGFyZSBsb2FkZWQgYXQgMHgxOGViODAwMCBhbmQKPiA+Pj4+
Pj4+IDB4MTkzZjYwMDAgKHBoeXNpY2FsKS4gVGhlIGtlcm5lbCBpcyBleHBlY3RlZCB0byBydW4g
YXQgMHgxODAwODAwMCwgYnV0Cj4gPj4+Pj4+PiBpdCBpcyBkZWNvbXByZXNzZWQgdG8gMHgwMDAw
ODAwMCAoc2VlIHI0IHJlcG9ydGVkIGJlZm9yZSBqdW1waW5nIGZyb20KPiA+Pj4+Pj4+IHdpdGhp
biBfX2VudGVyX2tlcm5lbCkuIElmIEkgd2VyZSB0byBzdWdnZXN0IHNvbWV0aGluZywgdGhlcmUg
bmVlZCB0byBiZQo+ID4+Pj4+Pj4gb25lIG1vcmUgYml0IG9mIGluZm9ybWF0aW9uIHBhc3NlZCBp
biB0aGUgRFRCIHRlbGxpbmcgdGhlIGRlY29tcHJlc3Nvcgo+ID4+Pj4+Pj4gdG8gdXNlIHRoZSBv
bGQgbWFza2luZyB0ZWNobmlxdWUgdG8gZGV0ZXJtYWluIGtlcm5lbCBhZGRyZXNzLiBJdCB3b3Vs
ZAo+ID4+Pj4+Pj4gYmUgc2V0IGluIHRoZSBEVEIgbG9hZGVkIGFsb25nIHdpdGggdGhlIGNyYXNo
ZHVtcCBrZXJuZWwuCj4gWy4uLl0KPiA+Pj4+Pj4gRGVzY3JpYmluZyAidG8gdXNlIHRoZSBvbGQg
bWFza2luZyB0ZWNobmlxdWUiIHNvdW5kcyBhIGJpdCBoYWNraXNoIHRvIG1lLgo+ID4+Pj4+PiBJ
IGd1ZXNzIGl0IGNhbm5vdCBqdXN0IHJlc3RyaWN0IHRoZSAvbWVtb3J5IG5vZGUgdG8gdGhlIHJl
c2VydmVkIHJlZ2lvbiwKPiA+Pj4+Pj4gYXMgdGhlIGNyYXNoa2VybmVsIG5lZWRzIHRvIGJlIGFi
bGUgdG8gZHVtcCB0aGUgcmVtYWlucyBvZiB0aGUgY3Jhc2hlZAo+ID4+Pj4+PiBrZXJuZWwsIHdo
aWNoIGxpZSBvdXRzaWRlIHRoaXMgcmVnaW9uLgo+ID4+Pj4+Cj4gPj4+Pj4gQ29ycmVjdC4KPiA+
Pj4+Pgo+ID4+Pj4+PiBIb3dldmVyLCBzb21ldGhpbmcgdW5kZXIgL2Nob3NlbiBzaG91bGQgd29y
ay4KPiA+Pj4+Pgo+ID4+Pj4+IFlldCBhbm90aGVyIHN0aWNreSBwbGFzdGVyLi4uCj4gPj4+PiAK
PiA+Pj4+IElNSE8gdGhlIG9sZCBtYXNraW5nIHRlY2huaXF1ZSBpcyB0aGUgaGFja3kgc29sdXRp
b24gY292ZXJlZCBieQo+ID4+Pj4gcGxhc3RlcnMuCj4gPj4+Cj4gPj4+IE9uZSBsaW5lIG9mIGNv
ZGUgaXMgbm90ICJjb3ZlcmVkIGJ5IHBsYXN0ZXJzIi4gIFRoZXJlIGFyZSBubyBwbGFzdGVycy4K
PiA+Pj4gSXQncyBhIHNvbHV0aW9uIHRoYXQgd29ya3MgZm9yIDk5Ljk5JSBvZiBwZW9wbGUsIHVu
bGlrZSB5b3VyIGFwcHJvYWNoCj4gPj4+IHRoYXQgaGFzIGhhZCBhIHN0cmVhbSBvZiBpc3N1ZXMg
b3ZlciB0aGUgbGFzdCBmb3VyIG1vbnRocywgYW5kIGhhcwo+ID4+PiByZXF1aXJlZCBtYW55IHJl
d29ya3Mgb2YgdGhlIGNvZGUgdG8gZml4IGVhY2ggb25lLiAgVGhhdCBpbiBpdHNlbGYKPiA+Pj4g
c3BlYWtzIHZvbHVtZXMgYWJvdXQgdGhlIHN1aXRhYmlsaXR5IG9mIHRoZSBhcHByb2FjaC4KPiA+
PiAKPiA+PiBBcyBJIGhhdmUgYmVlbiB3b3JraW5nIHdpdGgga2V4ZWMgY29kZSAocGF0Y2hlcyBz
b29uKSBJIHdvdWxkIGxpa2UgdG8KPiA+PiBkZWZlbmQgdGhlIERUIGFwcHJvYWNoIGEgYml0LiBJ
dCBhbGxvd3MgdG8gYXZvaWQgekltYWdlIHJlbG9jYXRpb24gd2hlbgo+ID4+IGEgZGVjb21wcmVz
c2VkIGtlcm5lbCBpcyBsYXJnZXIgdGhhbiB+MTI4TWlCLiBJbiBzdWNoIGNhc2UgekltYWdlIGlz
bid0Cj4gPj4gc21hbGwgZWl0aGVyIGFuZCBtb3ZpbmcgaXQgYXJvdW5kIHRha2VzIHNvbWUgdGlt
ZS4KPiA+Cj4gPiAuLi4gd2hpY2ggaXMgc29tZXRoaW5nIHRoYXQgaGFzIGJlZW4gc3VwcG9ydGVk
IGZvciBhIHZlcnkgbG9uZyB0aW1lLAo+ID4gYmVmb3JlIHRoZSBkYXlzIG9mIERULgo+IAo+IEhv
dz8gSWYgYSBkZWNvbXByZXNzZWQga2VybmVsIHJlcXVpcmVzID4xMjhNIGFuZCBhIGJvb3Rsb2Fk
ZXIgd291bGQgbGlrZQo+IHRvIHB1dCBhIHpJbWFnZSBoaWdoIGVub3VnaCB0byAqYXZvaWQqIGNv
cHlpbmcgaXQgb25jZSBhZ2FpbiwgdGhlbiB0aGUKPiBkZWNvbXByZXNzb3IgY2FuJ3Qgc2VlIGFu
eSBtZW1vcnkgYmVsb3cgdGhlIDEyOE0gd2luZG93IGl0IHN0YXJ0cyBpbiBhbmQKPiBjYW4ndCBk
ZWNvbXByZXNzIHRoZSBrZXJuZWwgdGhlcmUuCgpEbyB5b3UgaGF2ZSBzdWNoIGEgbGFyZ2Uga2Vy
bmVsPyAgSXQgd291bGQgYmUgcmF0aGVyIGluZWZmaWNpZW50IGFzCmJyYW5jaCBpbnN0cnVjdGlv
bnMgY291bGQgbm90IGJlIHVzZWQ7IGV2ZXJ5IGZ1bmN0aW9uIGNhbGwgd291bGQgaGF2ZQp0byBi
ZSBpbmRpcmVjdC4gIFRoZSBtYXhpbXVtIGlzICsvLSAzMk1CIGZvciBhIGJyYW5jaC4KCj4gSWYg
d2UgZG8gbm90IGNhcmUgYWJvdXQgY29weWluZwo+IHpJbWFnZSwgdGhlbiwgaW5kZWVkLCBldmVy
eXRoaW5nIHdvcmtzIGZpbmUgYXMgaXQgaXMgdG9kYXkuIFlvdSBhcmUKPiBtb3N0IHByb2JhYmx5
IHJpZ2h0IDk5JSBkb2Vzbid0IHJlcXVpcmUgMTI4TSBrZXJuZWwsIGJ1dCB0aGUgY2FzZSBpcwo+
IElNSE8gb2J2aW91cyBlbm91Z2gsIHRoYXQgaXQgc2hvdWxkIGJlIGFkcmVzc2VkIHNvbWVob3cu
CgpJZiBJIGhhdmUgYSBrZXJuZWwgaW4gZXhjZXNzIG9mIDRHQi4uLiAiaXQgc2hvdWxkIGJlIGFk
ZHJlc3NlZCBzb21laG93IiEKCi0tIApSTUsncyBQYXRjaCBzeXN0ZW06IGh0dHBzOi8vd3d3LmFy
bWxpbnV4Lm9yZy51ay9kZXZlbG9wZXIvcGF0Y2hlcy8KRlRUQyBmb3IgMC44bSAoZXN0LiAxNzYy
bSkgbGluZSBpbiBzdWJ1cmJpYTogc3luYyBhdCAxMy4xTWJwcyBkb3duIDQyNGticHMgdXAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
