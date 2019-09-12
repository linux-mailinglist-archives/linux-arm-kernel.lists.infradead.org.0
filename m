Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61645B1157
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 16:42:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xApM9Fc7/0cdmQQTkLT4wsxrMaU1gaFoKNPURjWj1iA=; b=FFEt31vBujc5DkX3QZmoQJO4c
	lHIJmOup2IudgHcYCu1tWmXqVs7BKPuB3vYw3x0/SgnNic2uKSuHTQQ/xkU1wSW8yr5XUM5P/C1fT
	LsnM1AOgnu92UmrRYkyt2/po6GattpVrJpQGhWc6bFmoZtk0b1puWodnRyyKhct1V55OdPIiKX0+H
	wzzVpa6kUqe2psJXjwYmRnDR5TzA7aJGxG3VGR6rh3P5KDoFl1GhcyNiH2FVdT+XqmxQMi7ZzcK4F
	NiS9t/TIktdLo+eomMlJE6QCyy8FzfbAvstmpwXXRBFnfdbD0UdT8ugU5Pg1cukkbJ1jTIrh5SNG4
	2RiHy2YcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8QJD-0005sA-Ac; Thu, 12 Sep 2019 14:42:55 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8QJ0-0005qt-Cm; Thu, 12 Sep 2019 14:42:44 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46ThLp3CQXz9typD;
 Thu, 12 Sep 2019 16:42:26 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=rF17s6tJ; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id CVQlmJ3AEH2k; Thu, 12 Sep 2019 16:42:26 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46ThLp1t53z9typC;
 Thu, 12 Sep 2019 16:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1568299346; bh=otnUrb4pzuxU7Yp0+QroZ8OVT4O1umudoLeJqQl5wZo=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=rF17s6tJhq8MvFO5HaHkJAy0j4vJJMc9gH1QsIdlkc0uGkrBFzY6mm7WqD7gp6Y2w
 pDwud6FagAuEx2hmyDZDo1d1qU6dEAs2y6kNIO4poGfjfz3+JYPoadusOPxMP4DNCT
 uG/GxTT9Ndmwpf9KkQmrv+QnUdDjo6qRIVZu/AVs=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id C98AA8B940;
 Thu, 12 Sep 2019 16:42:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id 67GVoWa0YCuH; Thu, 12 Sep 2019 16:42:27 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id A5BBC8B933;
 Thu, 12 Sep 2019 16:42:25 +0200 (CEST)
Subject: Re: [PATCH V2 0/2] mm/debug: Add tests for architecture exported page
 table helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1568268173-31302-1-git-send-email-anshuman.khandual@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <527edfce-c986-de4c-e286-34a70f6a2790@c-s.fr>
Date: Thu, 12 Sep 2019 16:42:25 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1568268173-31302-1-git-send-email-anshuman.khandual@arm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_074242_730723_4BAC6150 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpJIGRpZG4ndCBnZXQgcGF0Y2ggMSBvZiB0aGlzIHNlcmllcywgYW5kIGl0IGlzIG5vdCBv
biBsaW51eHBwYy1kZXYgCnBhdGNod29yayBlaXRoZXIuIENhbiB5b3UgcmVzZW5kID8KClRoYW5r
cwpDaHJpc3RvcGhlCgpMZSAxMi8wOS8yMDE5IMOgIDA4OjAyLCBBbnNodW1hbiBLaGFuZHVhbCBh
IMOpY3JpdMKgOgo+IFRoaXMgc2VyaWVzIGFkZHMgYSB0ZXN0IHZhbGlkYXRpb24gZm9yIGFyY2hp
dGVjdHVyZSBleHBvcnRlZCBwYWdlIHRhYmxlCj4gaGVscGVycy4gUGF0Y2ggaW4gdGhlIHNlcmll
cyBhZGRzIGJhc2ljIHRyYW5zZm9ybWF0aW9uIHRlc3RzIGF0IHZhcmlvdXMKPiBsZXZlbHMgb2Yg
dGhlIHBhZ2UgdGFibGUuIEJlZm9yZSB0aGF0IGl0IGV4cG9ydHMgZ2lnYW50aWMgcGFnZSBhbGxv
Y2F0aW9uCj4gZnVuY3Rpb24gZnJvbSBIdWdlVExCLgo+IAo+IFRoaXMgdGVzdCB3YXMgb3JpZ2lu
YWxseSBzdWdnZXN0ZWQgYnkgQ2F0YWxpbiBkdXJpbmcgYXJtNjQgVEhQIG1pZ3JhdGlvbgo+IFJG
QyBkaXNjdXNzaW9uIGVhcmxpZXIuIEdvaW5nIGZvcndhcmQgaXQgY2FuIGluY2x1ZGUgbW9yZSBz
cGVjaWZpYyB0ZXN0cwo+IHdpdGggcmVzcGVjdCB0byB2YXJpb3VzIGdlbmVyaWMgTU0gZnVuY3Rp
b25zIGxpa2UgVEhQLCBIdWdlVExCIGV0YyBhbmQKPiBwbGF0Zm9ybSBzcGVjaWZpYyB0ZXN0cy4K
PiAKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tbS8yMDE5MDYyODEwMjAwMy5HQTU2
NDYzQGFycmFraXMuZW1lYS5hcm0uY29tLwo+IAo+IFRlc3Rpbmc6Cj4gCj4gU3VjY2Vzc2Z1bGx5
IGJ1aWxkIGFuZCBib290IHRlc3RlZCBvbiBib3RoIGFybTY0IGFuZCB4ODYgcGxhdGZvcm1zIHdp
dGhvdXQKPiBhbnkgdGVzdCBmYWlsaW5nLiBPbmx5IGJ1aWxkIHRlc3RlZCBvbiBzb21lIG90aGVy
IHBsYXRmb3Jtcy4KPiAKPiBCdXQgSSB3b3VsZCByZWFsbHkgYXBwcmVjaWF0ZSBpZiBmb2xrcyBj
YW4gaGVscCB2YWxpZGF0ZSB0aGlzIHRlc3Qgb24gb3RoZXIKPiBwbGF0Zm9ybXMgYW5kIHJlcG9y
dCBiYWNrIHByb2JsZW1zLiBBbGwgc3VnZ2VzdGlvbnMsIGNvbW1lbnRzIGFuZCBpbnB1dHMKPiB3
ZWxjb21lLiBUaGFuayB5b3UuCj4gCj4gQ2hhbmdlcyBpbiBWMjoKPiAKPiAtIEZpeGVkIHNtYWxs
IHR5cG8gZXJyb3IgaW4gTU9EVUxFX0RFU0NSSVBUSU9OKCkKPiAtIEZpeGVkIG02NGsgYnVpbGQg
cHJvYmxlbXMgZm9yIGx2YWx1ZSBjb25jZXJucyBpbiBwbWRfeHh4X3Rlc3RzKCkKPiAtIEZpeGVk
IGR5bmFtaWMgcGFnZSB0YWJsZSBsZXZlbCBmb2xkaW5nIHByb2JsZW1zIG9uIHg4NiBhcyBwZXIg
S2lycmlsCj4gLSBGaXhlZCBzZWNvbmQgcG9pbnRlcnMgZHVyaW5nIHB4eF9wb3B1bGF0ZV90ZXN0
cygpIHBlciBLaXJpbGwgYW5kIEdlcmFsZAo+IC0gQWxsb2NhdGUgYW5kIGZyZWUgcHRlIHRhYmxl
IHdpdGggcHRlX2FsbG9jX29uZS9wdGVfZnJlZSBwZXIgS2lyaWxsCj4gLSBNb2RpZmllZCBweHhf
Y2xlYXJfdGVzdHMoKSB0byBhY2NvbW1vZGF0ZSBzMzkwIGxvd2VyIDEyIGJpdHMgc2l0dWF0aW9u
Cj4gLSBDaGFuZ2VkIFJBTkRPTV9OWlZBTFVFIHZhbHVlIGZyb20gMHhiZSB0byAweGZmCj4gLSBD
aGFuZ2VkIGFsbG9jYXRpb24sIHVzYWdlLCBmcmVlIHNlcXVlbmNlIGZvciBzYXZlZF9wdGVwCj4g
LSBSZW5hbWVkIFZNQV9GTEFHUyBhcyBWTUZMQUdTCj4gLSBJbXBsZW1lbnRlZCBhIG5ldyBtZXRo
b2QgZm9yIHJhbmRvbSB2YWRkciBnZW5lcmF0aW9uCj4gLSBJbXBsZW1lbnRlZCBzb21lIG90aGVy
IGNsZWFudXBzCj4gLSBEcm9wcGVkIGV4dGVybiByZWZlcmVuY2UgdG8gbW1fYWxsb2MoKQo+IC0g
Q3JlYXRlZCBhbmQgZXhwb3J0ZWQgbmV3IGFsbG9jX2dpZ2FudGljX3BhZ2Vfb3JkZXIoKQo+IC0g
RHJvcHBlZCB0aGUgY3VzdG9tIGFsbG9jYXRvciBhbmQgdXNlZCBuZXcgYWxsb2NfZ2lnYW50aWNf
cGFnZV9vcmRlcigpCj4gCj4gQ2hhbmdlcyBpbiBWMToKPiAKPiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1tbS8xNTY3NDk3NzA2LTg2NDktMS1naXQtc2VuZC1lbWFpbC1hbnNodW1hbi5r
aGFuZHVhbEBhcm0uY29tLwo+IAo+IC0gQWRkZWQgZmFsbGJhY2sgbWVjaGFuaXNtIGZvciBQTUQg
YWxpZ25lZCBtZW1vcnkgYWxsb2NhdGlvbiBmYWlsdXJlCj4gCj4gQ2hhbmdlcyBpbiBSRkMgVjI6
Cj4gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbW0vMTU2NTMzNTk5OC0yMjU1My0x
LWdpdC1zZW5kLWVtYWlsLWFuc2h1bWFuLmtoYW5kdWFsQGFybS5jb20vVC8jdQo+IAo+IC0gTW92
ZWQgdGVzdCBtb2R1bGUgYW5kIGl0J3MgY29uZmlnIGZyb20gbGliLyB0byBtbS8KPiAtIFJlbmFt
ZWQgY29uZmlnIFRFU1RfQVJDSF9QR1RBQkxFIGFzIERFQlVHX0FSQ0hfUEdUQUJMRV9URVNUCj4g
LSBSZW5hbWVkIGZpbGUgZnJvbSB0ZXN0X2FyY2hfcGd0YWJsZS5jIHRvIGFyY2hfcGd0YWJsZV90
ZXN0LmMKPiAtIEFkZGVkIHJlbGV2YW50IE1PRFVMRV9ERVNDUklQVElPTigpIGFuZCBNT0RVTEVf
QVVUSE9SKCkgZGV0YWlscwo+IC0gRHJvcHBlZCBsb2FkYWJsZSBtb2R1bGUgY29uZmlnIG9wdGlv
bgo+IC0gQmFzaWMgdGVzdHMgbm93IHVzZSBtZW1vcnkgYmxvY2tzIHdpdGggcmVxdWlyZWQgc2l6
ZSBhbmQgYWxpZ25tZW50Cj4gLSBQVUQgYWxpZ25lZCBtZW1vcnkgYmxvY2sgZ2V0cyBhbGxvY2F0
ZWQgd2l0aCBhbGxvY19jb250aWdfcmFuZ2UoKQo+IC0gSWYgUFVEIGFsaWduZWQgbWVtb3J5IGNv
dWxkIG5vdCBiZSBhbGxvY2F0ZWQgaXQgZmFsbHMgYmFjayBvbiBQTUQgYWxpZ25lZAo+ICAgIG1l
bW9yeSBibG9jayBmcm9tIHBhZ2UgYWxsb2NhdG9yIGFuZCBwdWRfKiB0ZXN0cyBhcmUgc2tpcHBl
ZAo+IC0gQ2xlYXIgYW5kIHBvcHVsYXRlIHRlc3RzIG5vdyBvcGVyYXRlIG9uIHJlYWwgaW4gbWVt
b3J5IHBhZ2UgdGFibGUgZW50cmllcwo+IC0gRHVtbXkgbW1fc3RydWN0IGdldHMgYWxsb2NhdGVk
IHdpdGggbW1fYWxsb2MoKQo+IC0gRHVtbXkgcGFnZSB0YWJsZSBlbnRyaWVzIGdldCBhbGxvY2F0
ZWQgd2l0aCBbcHVkfHBtZHxwdGVdX2FsbG9jX1ttYXBdKCkKPiAtIFNpbXBsaWZpZWQgW3A0ZHxw
Z2RdX2Jhc2ljX3Rlc3RzKCksIG5vdyBoYXMgcmFuZG9tIHZhbHVlcyBpbiB0aGUgZW50cmllcwo+
IAo+IE9yaWdpbmFsIFJGQyBWMToKPiAKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1t
bS8xNTY0MDM3NzIzLTI2Njc2LTEtZ2l0LXNlbmQtZW1haWwtYW5zaHVtYW4ua2hhbmR1YWxAYXJt
LmNvbS8KPiAKPiBDYzogQW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZz4K
PiBDYzogVmxhc3RpbWlsIEJhYmthIDx2YmFia2FAc3VzZS5jej4KPiBDYzogR3JlZyBLcm9haC1I
YXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPiBDYzogVGhvbWFzIEdsZWl4bmVy
IDx0Z2x4QGxpbnV0cm9uaXguZGU+Cj4gQ2M6IE1pa2UgUmFwb3BvcnQgPHJwcHRAbGludXgudm5l
dC5pYm0uY29tPgo+IENjOiBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVwZS5jYT4KPiBDYzogRGFu
IFdpbGxpYW1zIDxkYW4uai53aWxsaWFtc0BpbnRlbC5jb20+Cj4gQ2M6IFBldGVyIFppamxzdHJh
IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4KPiBDYzogTWljaGFsIEhvY2tvIDxtaG9ja29Aa2VybmVs
Lm9yZz4KPiBDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KPiBDYzogTWFy
ayBCcm93biA8YnJvb25pZUBrZXJuZWwub3JnPgo+IENjOiBTdGV2ZW4gUHJpY2UgPFN0ZXZlbi5Q
cmljZUBhcm0uY29tPgo+IENjOiBBcmQgQmllc2hldXZlbCA8YXJkLmJpZXNoZXV2ZWxAbGluYXJv
Lm9yZz4KPiBDYzogTWFzYWhpcm8gWWFtYWRhIDx5YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNv
bT4KPiBDYzogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+Cj4gQ2M6IFRldHN1byBI
YW5kYSA8cGVuZ3Vpbi1rZXJuZWxAaS1sb3ZlLnNha3VyYS5uZS5qcD4KPiBDYzogTWF0dGhldyBX
aWxjb3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+Cj4gQ2M6IFNyaSBLcmlzaG5hIGNob3dkYXJ5IDxz
Y2hvd2RhcnlAbnZpZGlhLmNvbT4KPiBDYzogRGF2ZSBIYW5zZW4gPGRhdmUuaGFuc2VuQGludGVs
LmNvbT4KPiBDYzogUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IDxsaW51eEBhcm1saW51eC5vcmcu
dWs+Cj4gQ2M6IE1pY2hhZWwgRWxsZXJtYW4gPG1wZUBlbGxlcm1hbi5pZC5hdT4KPiBDYzogUGF1
bCBNYWNrZXJyYXMgPHBhdWx1c0BzYW1iYS5vcmc+Cj4gQ2M6IE1hcnRpbiBTY2h3aWRlZnNreSA8
c2Nod2lkZWZza3lAZGUuaWJtLmNvbT4KPiBDYzogSGVpa28gQ2Fyc3RlbnMgPGhlaWtvLmNhcnN0
ZW5zQGRlLmlibS5jb20+Cj4gQ2M6ICJEYXZpZCBTLiBNaWxsZXIiIDxkYXZlbUBkYXZlbWxvZnQu
bmV0Pgo+IENjOiBWaW5lZXQgR3VwdGEgPHZndXB0YUBzeW5vcHN5cy5jb20+Cj4gQ2M6IEphbWVz
IEhvZ2FuIDxqaG9nYW5Aa2VybmVsLm9yZz4KPiBDYzogUGF1bCBCdXJ0b24gPHBhdWwuYnVydG9u
QG1pcHMuY29tPgo+IENjOiBSYWxmIEJhZWNobGUgPHJhbGZAbGludXgtbWlwcy5vcmc+Cj4gQ2M6
IEtpcmlsbCBBLiBTaHV0ZW1vdiA8a2lyaWxsQHNodXRlbW92Lm5hbWU+Cj4gQ2M6IEdlcmFsZCBT
Y2hhZWZlciA8Z2VyYWxkLnNjaGFlZmVyQGRlLmlibS5jb20+Cj4gQ2M6IENocmlzdG9waGUgTGVy
b3kgPGNocmlzdG9waGUubGVyb3lAYy1zLmZyPgo+IENjOiBNaWtlIEtyYXZldHogPG1pa2Uua3Jh
dmV0ekBvcmFjbGUuY29tPgo+IENjOiBsaW51eC1zbnBzLWFyY0BsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gQ2M6IGxpbnV4LW1pcHNAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwo+IENjOiBsaW51eC1pYTY0QHZnZXIua2VybmVsLm9yZwo+IENj
OiBsaW51eHBwYy1kZXZAbGlzdHMub3psYWJzLm9yZwo+IENjOiBsaW51eC1zMzkwQHZnZXIua2Vy
bmVsLm9yZwo+IENjOiBsaW51eC1zaEB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogc3BhcmNsaW51eEB2
Z2VyLmtlcm5lbC5vcmcKPiBDYzogeDg2QGtlcm5lbC5vcmcKPiBDYzogbGludXgta2VybmVsQHZn
ZXIua2VybmVsLm9yZwo+IAo+IEFuc2h1bWFuIEtoYW5kdWFsICgyKToKPiAgICBtbS9odWdldGxi
OiBNYWtlIGFsbG9jX2dpZ2FudGljX3BhZ2UoKSBhdmFpbGFibGUgZm9yIGdlbmVyYWwgdXNlCj4g
ICAgbW0vcGd0YWJsZS9kZWJ1ZzogQWRkIHRlc3QgdmFsaWRhdGluZyBhcmNoaXRlY3R1cmUgcGFn
ZSB0YWJsZSBoZWxwZXJzCj4gCj4gICBhcmNoL3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxlXzY0X3R5
cGVzLmggfCAgIDIgKwo+ICAgaW5jbHVkZS9saW51eC9odWdldGxiLmggICAgICAgICAgICAgICAg
IHwgICA5ICsKPiAgIG1tL0tjb25maWcuZGVidWcgICAgICAgICAgICAgICAgICAgICAgICB8ICAx
NCArCj4gICBtbS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwo+
ICAgbW0vYXJjaF9wZ3RhYmxlX3Rlc3QuYyAgICAgICAgICAgICAgICAgIHwgNDI5ICsrKysrKysr
KysrKysrKysrKysrKysrKwo+ICAgbW0vaHVnZXRsYi5jICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgIDI0ICstCj4gICA2IGZpbGVzIGNoYW5nZWQsIDQ3NyBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IG1tL2FyY2hfcGd0YWJsZV90ZXN0LmMK
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
