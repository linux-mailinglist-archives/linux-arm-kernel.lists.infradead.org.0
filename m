Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306C02B670
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:31:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g1fz+NRITk8ibs6apSm3DG2Uuxe9EjHjN4+olB4HRB0=; b=S/XBFaMNvV/pdl
	2xrX4L0XE+u1Wz/kkrtEOTLB6NsLGHpNBPx9RLF4B9gbCC+XVEUwSBNweZt9DJkyYIGcwj8IDETYM
	7HJFZIF+yboHXHf89iLEIfz7x2fSrU1ojZv9oSjob8w/3Syd08Cks2OFlcjaQyQS75b6O2mZ+IYpM
	AbF8EhPcVBFfX4ICcK9pBtSLMxqy9PTV95OwzXZBL7soYLI/hOixi/SqKs88lzp2l8/L8x+UrWJTy
	CX5HsT82WsOPZFfEupWsXC7IgRD0n/XB1OAWt7sO9XdyWF20MWUQ7nhCuj8iRC77YYneLp11OIqmh
	p790t2ye1kCmV4BRnfow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFiw-000060-CI; Mon, 27 May 2019 13:31:34 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFio-0008WE-1c
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:31:27 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 4249E80F3;
 Mon, 27 May 2019 13:31:42 +0000 (UTC)
Date: Mon, 27 May 2019 06:31:19 -0700
From: Tony Lindgren <tony@atomide.com>
To: Noralf =?utf-8?Q?Tr=C3=B8nnes?= <notro@tronnes.org>
Subject: Re: 5.2-rc1 on droid4: spi crash
Message-ID: <20190527133119.GK5447@atomide.com>
References: <20190523090926.GA9106@amd>
 <20190523093325.6si5jpvrvyktpax6@earth.universe>
 <20190527055343.GG5447@atomide.com>
 <c741aa5b9d366b231b5c40899b1ef814@webmail.domeneshop.no>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c741aa5b9d366b231b5c40899b1ef814@webmail.domeneshop.no>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_063126_121737_28CEBD6B 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mpartap@gmx.net, merlijn@wizzup.org, linux-spi@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, kernel list <linux-kernel@vger.kernel.org>,
 nekit1000@gmail.com, Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Mark Brown <broonie@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KiBOb3JhbGYgVHLDuG5uZXMgPG5vdHJvQHRyb25uZXMub3JnPiBbMTkwNTI3IDEzOjE2XToKPiAK
PiAKPiBEZW4gMjAxOS0wNS0yNyAwNzo1Mywgc2tyZXYgVG9ueSBMaW5kZ3JlbjoKPiA+IEhpLAo+
ID4gCj4gPiAqIFNlYmFzdGlhbiBSZWljaGVsIDxzcmVAa2VybmVsLm9yZz4gWzE5MDUyMyAwOToz
M106Cj4gPiA+IEhpLAo+ID4gPiAKPiA+ID4gT24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMTE6MDk6
MjZBTSArMDIwMCwgUGF2ZWwgTWFjaGVrIHdyb3RlOgo+ID4gPiA+IFRoaXMgd2FzIGdyZWV0aW5n
IG1lIG92ZXJuaWdodC4uLiBJIGRvbid0IHlldCBrbm93IGhvdyByZXByb2R1Y2libGUgaXQKPiA+
ID4gPiBpcywgaXQgaGFwcGVuZWQgb25jZSBzbyBmYXIuCj4gPiA+IAo+ID4gPiBQbGVhc2UgcGlw
ZSB0aGUgc3RhY2t0cmFjZSBpbnRvIC4vc2NyaXB0cy9kZWNvZGVfc3RhY2t0cmFjZS5zaAo+ID4g
PiB0byBnZXQgYSByZWFkYWJsZSBzdGFja3RyYWNlLCBvdGhlcndpc2UgdGhpcyBpcyBwcmV0dHkg
bXVjaCB1c2VsZXNzLgo+ID4gPiBGV0lXIHRoZSBvbmx5IFNQSSBkZXZpY2UgaW4gdGhlIERyb2lk
IDQgaXMgdGhlIFBNSUMuCj4gPiAKPiA+IEkndmUgc2VlbiB0aGlzIHRvbywgYW5kIGxvb2tzIGxp
a2UgcmV2ZXJ0aW5nIGNvbW1pdCBjOWJhN2ExNmQwZjEKPiA+ICgic3BpOiBSZWxlYXNlIHNwaV9y
ZXMgYWZ0ZXIgZmluYWxpemluZyBtZXNzYWdlIikgZml4ZXMgaXQgYmFzZWQKPiA+IHNldmVyYWwg
ZGF5cyBvZiB0ZXN0aW5nLgo+ID4gCj4gPiBOb3JhbGYgYW5kIE1hcmssIGFueSBpZGVhcyB3aGF0
IG5lZWRzIHRvIGJlIGZpeGVkIGhlcmU/Cj4gCj4gTWFyayBoYXMgYSByZXZlcnQgaW4gaGlzIGZv
ci01LjIgYnJhbmNoOgo+IHNwaTogRml4IFJhc3BiZXJyeSBQaSBicmVha2FnZQo+IGh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2Jyb29uaWUvc3BpLmdpdC9j
b21taXQvP2g9Zm9yLTUuMiZpZD0wZWQ1NjI1MmM5NTY3MzUxMzQ0Y2I3YjVjZmY2MTQwZTFiY2Vj
OTQzCgpPaCBPSyBnb29kIHRvIGhlYXIuCgo+IEkgZG9uJ3Qga25vdyB3aGVuIG9yIGlmIGhlIGhh
cyBzZW50IGEgcHVsbCByZXF1ZXN0Lgo+IFNvcnJ5IGFib3V0IHRoZSBicmVha2FnZS4KCk5vIHdv
cnJpZXMsIHRoYW5rcyBmb3IgdGhlIHVwZGF0ZS4KClJlZ2FyZHMsCgpUb255CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
