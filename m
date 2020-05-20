Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7283E1DB25C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:53:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uB4RuVsQMSLn4C4AX/l5Jy08/a8OFtGDVMctW9X/0Zc=; b=Z5Isu+ewSbXkh1
	Go5LXVb/QEq7ceSFKsGJjoa0PHwLIpsOgWxeSjeA8oIh6h5cmzMzA/pUIc5kAKOg0z3ndJrd9Bf8d
	teeRI/bY5X+52ZmRU1933nEaPIup3uayIChqJsZROnsklVSOeUwgjxDgN5hqcTpjcxIo4FB7qipVr
	mnB77LyBAVhGimHHm7RUGGjLcR9vQ+iNZKWkrL1j/qBBuz0H7WmrbwynRQOSCKGLFRBkLFksrB9LM
	QETPcTSNOi5hELzEh7cjnzG6WvYjaeBvPFLk+T/46NQWgbjeWQYAKoPs+mzy7LA8CqRT6pU7X8a9z
	UYgvbJXcAW9nmOkmckYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNHu-0004ZI-S3; Wed, 20 May 2020 11:53:30 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNHb-0004Tj-2y
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:53:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1589975588;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=iPy9ZlubTd1xhTrkVXUYqz/ZgEBhY94Iy8kD2Y+7c9s=;
 b=h4nX+5EBQBdz2ksBZXjydiI1h+62eIJ663P5INOm+JFPHef9vREa0ViJa8U93DOtwa
 1uOOeAuaSr+DpsDns6WuqkYjtR/SyGphsOxx5fNmEVHDT3N9aeTNgqScdRsfgYo4HCI8
 x9qLvXKhFfgFnzcRpAWEYkavz+FJesdIpmfGXum1TbB2qoddRP81EMPce5ax5zhfu/Cb
 AUfsfrk8ek1gIFWsU9ZfvQDCFnFy5wNguueJtol1QyIBaxJMxpHn/eK3U9+y84vOV1C/
 lgNCg3ZISsY/SP0mGzUhENLw4miJgsX6VQAzSU0i4MXUjPAGq80aJBpq71fMfdbwfKnT
 xYRw==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPbI/Sc5g=="
X-RZG-CLASS-ID: mo00
Received: from tauon.chronox.de by smtp.strato.de (RZmta 46.7.0 DYNA|AUTH)
 with ESMTPSA id k09005w4KBr45E5
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Wed, 20 May 2020 13:53:04 +0200 (CEST)
From: Stephan Mueller <smueller@chronox.de>
To: Lukasz Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH v2 1/2] hwrng: iproc-rng200 - Set the quality value
Date: Wed, 20 May 2020 13:53:04 +0200
Message-ID: <2041475.ybOAuNAZB8@tauon.chronox.de>
In-Reply-To: <dleftjh7wa3my6.fsf%l.stelmach@samsung.com>
References: <15745285.MnsZKaK4VV@tauon.chronox.de>
 <CGME20200520104448eucas1p122e9a8ed84d5276a1b796e10ef5e1964@eucas1p1.samsung.com>
 <dleftjh7wa3my6.fsf%l.stelmach@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_045311_791440_26ED8961 
X-CRM114-Status: GOOD (  26.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5301:0:0:2 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Stefan Wahren <wahrenst@gmx.net>, Ray Jui <rjui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Markus Elfring <elfring@users.sourceforge.net>,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gTWl0dHdvY2gsIDIwLiBNYWkgMjAyMCwgMTI6NDQ6MzMgQ0VTVCBzY2hyaWViIEx1a2FzeiBT
dGVsbWFjaDoKCkhpIEx1a2FzeiwKCj4gSXQgd2FzIDwyMDIwLTA1LTIwIMWbcm8gMTE6MTg+LCB3
aGVuIFN0ZXBoYW4gTXVlbGxlciB3cm90ZToKPiA+IEFtIE1pdHR3b2NoLCAyMC4gTWFpIDIwMjAs
IDExOjEwOjMyIENFU1Qgc2NocmllYiBMdWthc3ogU3RlbG1hY2g6Cj4gPj4gSXQgd2FzIDwyMDIw
LTA1LTIwIMWbcm8gMDg6MjM+LCB3aGVuIFN0ZXBoYW4gTXVlbGxlciB3cm90ZToKPiA+Pj4gQW0g
RGllbnN0YWcsIDE5LiBNYWkgMjAyMCwgMjM6MjU6NTEgQ0VTVCBzY2hyaWViIMWBdWthc3ogU3Rl
bG1hY2g6Cj4gPj4+PiBUaGUgdmFsdWUgd2FzIGVzdGltYWRlZCB3aXRoIGVhX2lpZFsxXSB1c2lu
ZyBvbiAxMDQ4NTc2MCBieXRlcyByZWFkCj4gPj4+PiBmcm9tIHRoZSBSTkcgdmlhIC9kZXYvaHdy
bmcuIFRoZSBtaW4tZW50cm9weSB2YWx1ZSBjYWxjdWxhdGVkIHVzaW5nCj4gPj4+PiB0aGUgbW9z
dCBjb21tb24gdmFsdWUgZXN0aW1hdGUgKE5JU1QgU1AgODAwLTkwUFsyXSwgc2VjdGlvbiA2LjMu
MSkKPiA+Pj4+IHdhcyA3Ljk2NDQ2NC4KPiA+Pj4gCj4gPj4+IEkgYW0gc29ycnksIGJ1dCBJIHRo
aW5rIEkgZGlkIG5vdCBtYWtlIG15c2VsZiBjbGVhcjogdGVzdGluZyByYW5kb20KPiA+Pj4gbnVt
YmVycyBwb3N0LXByb2Nlc3Npbmcgd2l0aCB0aGUgc3RhdGlzdGljYWwgdG9vbHMgZG9lcyBOT1Qg
Z2l2ZSBhbnkKPiA+Pj4gaWRlYSBhYm91dCB0aGUgZW50cm9weSByYXRlLiBUaHVzLCBhbGwgdGhh
dCB3YXMgY2FsY3VsYXRlZCBpcyB0aGUKPiA+Pj4gcHJvcGVyIGltcGxlbWVudGF0aW9uIG9mIHRo
ZSBwb3N0LXByb2Nlc3Npbmcgb3BlcmF0aW9uIGFuZCBub3QgdGhlCj4gPj4+IGFjdHVhbCBub2lz
ZSBzb3VyY2UuCj4gPj4+IAo+ID4+PiBXaGF0IG5lZWRzIHRvIGhhcHBlbiBpcyB0aGF0IHdlIG5l
ZWQgYWNjZXNzIHRvIHJhdywgdW5jb25kaXRpb25lZAo+ID4+PiBkYXRhIGZyb20gdGhlIG5vaXNl
IHNvdXJjZSB0aGF0IGlzIGFuYWx5emVkIHdpdGggdGhlIHN0YXRpc3RpY2FsCj4gPj4+IG1ldGhv
ZHMuCj4gPj4gCj4gPj4gSSBkaWQgdW5kZXJzdGFuZCB5b3UgYW5kIEkgYXNzdXJlIHlvdSB0aGUg
ZGF0YSBJIHRlc3RlZCB3ZXJlIG9idGFpbmVkCj4gPj4gZGlyZWN0bHkgZnJvbSBSTkdzLiBBcyBJ
IHBvaW50ZWQgYmVmb3JlWzFdLCB0aGF0IGlzIGhvdyAvZGV2L2h3cm5nCj4gPj4gd29ya3NbMl0u
Cj4gPiAKPiA+IEkgdW5kZXJzdGFuZCB0aGF0IC9kZXYvaHdybmcgcHVsbHMgdGhlIGRhdGEgc3Ry
YWlnaHQgZnJvbSB0aGUKPiA+IGhhcmR3YXJlLiBCdXQgdGhlIGRhdGEgZnJvbSB0aGUgaGFyZHdh
cmUgdXN1YWxseSBpcyBub3Qgb2J0YWluZWQKPiA+IHN0cmFpZ2h0IGZyb20gdGhlIG5vaXNlIHNv
dXJjZS4KPiA+IAo+ID4gVHlwaWNhbGx5IHlvdSBoYXZlIGEgbm9pc2Ugc291cmNlIChlLmcuIGEg
cmluZyBvc2NpbGxhdG9yKSB3aG9zZSBkYXRhCj4gPiBpcyBkaWdpdGl6ZWQgdGhlbiBmZWQgaW50
byBhIGNvbXByZXNzaW9uIGZ1bmN0aW9uIGxpa2UgYW4gTEZTUiBvciBhCj4gPiBoYXNoLiBUaGVu
IGEgY3J5cHRvZ3JhcGhpYyBvcGVyYXRpb24gbGlrZSBhIENCQy1NQUMsIGhhc2ggb3IgZXZlbiBh
Cj4gPiBEUkJHIGlzIGFwcGxpZWQgdG8gdGhhdCBkYXRhIHdoZW4gdGhlIGNhbGxlciB3YW50cyB0
byBoYXZlIHJhbmRvbQo+ID4gbnVtYmVycy4KPiAKPiBJIGRvIHVuZGVyc3RhbmQgeW91ciBwb2lu
dCAoYnV0IG5vdCBlbnRpcmVseSwgc2VlIGJlbG93KS4gW29waW5pb25dCj4gSG93ZXZlciwgSSBh
bSByZWFsbHkgbm90IHN1cmUgdGhhdCB0aGlzIGlzIGEgInR5cGljYWwiIHNldHRpbmcgZm9yIGEg
SFcKPiBSTkcsIGF0IGxlYXN0IG5vdCBhbW9uZyBSTkdzIHN1cHBvcnRlZCBieSBMaW51eC4gT3Ro
ZXJ3aXNlIHRoZXJlIHdvdWxkCj4gYmUgbm8gaHdfcmFuZG9tIGZyYW1ld29yayBhbmQgbm8gcm5n
ZCg4KSB3aGljaCBhcmUgc3VwcHNlZCB0bwo+IHBvc3QtcHJvY2VzcyBpbXBlcmZlY3RseSByYW5k
b20gZGF0YSBmcm9tIEhXLiBbL29waW5pb25dCgpUaGUgaHdfcmFuZG9tIGZyYW1ld29yayBvbmx5
IG1ha2VzIHRoZXNlIGhhcmR3YXJlIFJORyBhY2Nlc3NpYmxlIGZvciBpbi1rZXJuZWwgCmFzIHdl
bGwgYXMgdXNlciBzcGFjZSB1c2UuCj4gCj4gPiBJbiBvcmRlciB0byBlc3RpbWF0ZSBlbnRyb3B5
LCB3ZSBuZWVkIHRoZSByYXcgdW5jb25kaXRpb25lZCBkYXRhIGZyb20KPiA+IHRoZSwgc2F5LCBy
aW5nIG9zY2lsbGF0b3IgYW5kIG5vdCBmcm9tIHRoZSAoY3J5cHRvZ3JhcGhpYykgb3V0cHV0Cj4g
PiBvcGVyYXRpb24uCj4gCj4gQ2FuIHlvdSB0ZWxsLCB3aHkgaXQgbWF0dGVycyBpbiB0aGlzIGNh
c2U/IElmIEkgdW5kZXJzdGFuZCBjb3JyZWN0bHksCj4gdGhlIHF1YWxpdHkgZmllbGQgZGVzY3Jp
YmVzIG5vdCB0aGUgcmFuZG9tbmVzcyBjcmVhdGVkIGJ5IHRoZSBub2lzZQo+IGdlbmVyYXRvciBi
dXQgdGhlIG9uZSBkZWxpdmVyZWQgYnkgdGhlIGRyaXZlciB0byBvdGhlciBzb2Z0d2FyZQo+IGNv
bXBvbmVudHMuCgpUaGUgcXVhbGl0eSBmaWVsZCBpcyB1c2VkIGJ5IGFkZF9od2dlbmVyYXRvcl9y
YW5kb21uZXNzIHRvIGluY3JlYXNlIHRoZSBMaW51eCAKUk5HIGVudHJvcHkgZXN0aW1hdG9yIGFj
Y29yZGluZ2x5LiBUaGlzIGlzIHRoZSBpc3N1ZS4KCkFuZCBnaXZpbmcgYW4gZW50cm9weSByYXRl
IGJhc2VkIG9uIHBvc3QtcHJvY2Vzc2VkIGRhdGEgaXMgbWVhbmluZ2xlc3MuCgpUaGUgY29uY2Vy
biBpcywgZm9yIGV4YW1wbGUsIHRoYXQgeW91IHVzZSBhIERSQkcgdGhhdCB5b3Ugc2VlZGVkIHdp
dGgsIHNheSwgYSAKemVybyBidWZmZXIuIFlvdSBnZXQgcGVyZmVjdCByYW5kb20gZGF0YSBmcm9t
IGl0IHRoYXQgbm8gc3RhdGlzdGljYWwgdGVzdCBjYW4gCmRpc3Byb3ZlLiBZZXQgd2Uga25vdyB0
aGlzIGRhdGEgc3RyZWFtIGhhcyB6ZXJvIGVudHJvcHkuIFRodXMsIHdlIG5lZWQgdG8gZ2V0IAp0
byB0aGUgc291cmNlIGFuZCBhc3Nlc3MgaXRzIGVudHJvcHkuCgo+IAo+ID4gVGhhdCBzYWlkLCB0
aGUgaWxsdXN0cmF0ZWQgZXhhbXBsZSBpcyB0eXBpY2FsIGZvciBoYXJkd2FyZSBSTkdzLiBZZXQK
PiA+IGl0IGlzIG5ldmVyIGd1YXJhbnRlZWQgdG8gd29yayB0aGF0IHdheS4gVGh1cywgaWYgeW91
IGNhbiBwb2ludCB0bwo+ID4gYXJjaGl0ZWN0dXJlIGRvY3VtZW50YXRpb24gb2YgeW91ciBzcGVj
aWZpYyBoYXJkd2FyZSBSTkdzIHNob3dpbmcgdGhhdAo+ID4gdGhlIGRhdGEgcmVhZCBmcm9tIHRo
ZSBoYXJkd2FyZSBpcyBwdXJlIHVuY29uZGl0aW9uZWQgbm9pc2UgZGF0YSwgdGhlbgo+ID4gSSBo
YXZlIG5vIG9iamVjdGlvbnMgdG8gdGhlIHBhdGNoLgo+IAo+IEkgY2FuIHRlbGwgZm9yIHN1cmUg
dGhhdCB0aGlzIGlzIHRoZSBjYXNlIGZvciBleHlub3MtdHJuZ1sxXS4KClNvIHlvdSBhcmUgc2F5
aW5nIHRoYXQgdGhlIG91dHB1dCBmb3IgdGhlIGV4eW5vcy10cm5nIGlzIHN0cmFpZ2h0IGZyb20g
YSByaW5nIApvc2NpbGxhdG9yIHdpdGhvdXQgYW55IHBvc3QtcHJvY2Vzc2luZyBvZiBhbnkga2lu
ZD8KCklmIHRoaXMgaXMgdGhlIGNhc2UsIEkgd291bGQgbGlrZSB0byBzdWdnZXN0IHlvdSBhZGQg
dGhhdCBzdGF0ZW1lbnQgdG8gdGhlIGdpdCAKY29tbWl0IG1lc3NhZ2Ugd2l0aCB0aGF0IHJlZmVy
ZW5jZS4gSWYgc28sIHRoZW4gSSB3b3VsZCB3aXRoZHJhdyBteSBvYmplY3Rpb24uCgo+IFRoZXJl
IGlzIGEKPiBwb3N0LXByb2Nlc3NvciB3aGljaCBJIGhhdmUgZm9yZ290dGVuIGFib3V0IHNpbmNl
IHdyaXRpbmcgdGhlIGRyaXZlciwKPiBiZWNhdXNlIGZyb20gdGhlIHZlcnkgYmVnaW5uaW5nIEkg
ZGlkbid0IGludGVuZCB0byB1c2UgaXQuIEkga25ldyB0aGVyZQo+IGlzIHRoZSBzb2Z0d2FyZSBm
cmFtZXdvcmsgZm9yIHBvc3QtcHJvY2Vzc2luZyBhbmQgc2ltcGx5IGRpZG4ndCBib3RoZXIuCj4g
Cj4gV2l0aCByZWdhcmRzIHRvIGlwcm9jLXJuZzIwMCBJIGNhbm5vdCBiZSBzdXJlLgo+IAo+IFsx
XQo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZh
bGRzL2xpbnV4LmdpdC90cmVlL2RyaQo+IHZlcnMvY2hhci9od19yYW5kb20vZXh5bm9zLXRybmcu
Yz9oPXY1LjYjbjEwMAo+IAo+IEtpbmQgcmVnYXJkcywKCgpDaWFvClN0ZXBoYW4KCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
