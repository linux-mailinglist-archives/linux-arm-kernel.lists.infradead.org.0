Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E1813E032
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:34:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UL98n0uGZI92kX918hMgmN9Istn14USfmgiIuu6NBAI=; b=jpOfPPMxRasFCx
	Ivh85EXkrqIVzivvX5JsN1FI9FHGN0jbDq9sAsypaLyIOW7SrUu/ddJAj0oMqk/u3RaunV9QHSKdg
	OMPvsw26EMujTmWRnQgD+Lq47aehh3zQMT7s4ASQWCp/ry/iZcZp3ZLZUE6Gbk9aNh97ihkVsxJCd
	iHPBEKukFeQ+ajlq0jKCjZjdIWDxFNzuPORHet7MlSWcYsdd5JPY8iwnFoYRbbF+ZxvmSYEd0IoqC
	JkMoY6CdMATqrvfLZdd0gNiebOaagirD/NcvP4A+48rMiwohQ99VHVbzhNQc0gcCuyG5ky9hUr5+Z
	IP4miFeVbNjB33kzxvBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is85m-00029X-VH; Thu, 16 Jan 2020 16:33:58 +0000
Received: from mailoutvs58.siol.net ([185.57.226.249] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is85c-00028Z-I2
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:33:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 20B0F523B22;
 Thu, 16 Jan 2020 17:33:46 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 5RtdmHMpsPgp; Thu, 16 Jan 2020 17:33:45 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id C6669523B46;
 Thu, 16 Jan 2020 17:33:45 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 808C9523B22;
 Thu, 16 Jan 2020 17:33:45 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: sunxi: add OrangePi 3 with eMMC
Date: Thu, 16 Jan 2020 17:33:45 +0100
Message-ID: <12435330.uLZWGnKmhe@jernej-laptop>
In-Reply-To: <20200116122944.sgl2fgxf5mrg6i52@gilmour.lan>
References: <20200115194216.173117-1-jernej.skrabec@siol.net>
 <4200557.LvFx2qVVIh@jernej-laptop>
 <20200116122944.sgl2fgxf5mrg6i52@gilmour.lan>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_083348_752827_7CE27459 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIMSNZXRydGVrLCAxNi4gamFudWFyIDIwMjAgb2IgMTM6Mjk6NDQgQ0VUIGplIE1heGltZSBS
aXBhcmQgbmFwaXNhbChhKToKPiBPbiBUaHUsIEphbiAxNiwgMjAyMCBhdCAxMjoxMDo1OEFNICsw
MTAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiBIaSEKPiA+IAo+ID4gRG5lIHNyZWRhLCAx
NS4gamFudWFyIDIwMjAgb2IgMjI6NTc6MzEgQ0VUIGplIFJvYiBIZXJyaW5nIG5hcGlzYWwoYSk6
Cj4gPiA+IE9uIFdlZCwgSmFuIDE1LCAyMDIwIGF0IDE6NDIgUE0gSmVybmVqIFNrcmFiZWMgPGpl
cm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gCj4gPiB3cm90ZToKPiA+ID4gPiBPcmFuZ2VQaSAz
IGNhbiBvcHRpb25hbGx5IGhhdmUgZU1NQy4gQWRkIGEgY29tcGF0aWJsZSBmb3IgaXQuCj4gPiA+
IAo+ID4gPiBJcyB0aGlzIGp1c3QgYSBwb3B1bGF0aW9uIG9wdGlvbiBvciBhIGRpZmZlcmVudCBi
b2FyZCBsYXlvdXQ/IElmIHRoZQo+ID4gPiBmb3JtZXIsIEkgZG9uJ3QgdGhpbmsgeW91IG5lZWQg
YSBuZXcgY29tcGF0aWJsZSwganVzdCBhZGQvZW5hYmxlIGEKPiA+ID4gbm9kZSBmb3IgdGhlIGVN
TUMuCj4gPiAKPiA+IEkgaGF2ZSBvbmx5IGJvYXJkIHdpdGggZU1NQyBidXQgSSBpbWFnaW5lIGl0
J3MgdGhlIGZvcm1lci4gRXZlbiBzbywKPiA+IGN1cnJlbnQKPiA+IGFwcHJvYWNoIHdpdGggQWxs
d2lubmVyIGJvYXJkcyBpcyB0byBoYXZlIHR3byBkaWZmZXJlbnQgYm9hcmQgRFQgZmlsZXMsCj4g
PiBvbmUgZm9yIGVhY2ggdmFyaWFudC4gVGhpcyBjYW4gYmUgc2VlbiBmcm9tCj4gPiBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtLyBzdW54aS55YW1sIHdoaWNoIGhhcyBhIGxv
dCBvZgo+ID4gY29tcGF0aWJsZXMgZW5kaW5nIHdpdGggIi1lbW1jIi4gSSBndWVzcyByZWFzb24g
Zm9yIHRoYXQgaXMgdG8gYXZvaWQKPiA+IGhhdmluZyBNTUMgY29udHJvbGxlciBiZWluZyBwb3dl
cmVkIG9uIGZvciBubyByZWFzb24uCj4gVGhlIG1haW4gcmVhc29uIGZvciB0aGF0IGlzIHRoYXQg
dGhvc2UgcG9wdWxhdGluZyBvcHRpb25zIGNhbiBiZQo+IGNvbmZsaWN0aW5nLiBGb3IgZXhhbXBs
ZSwgbGFzdCB3ZWVrIHdlIGRpc2N1c3NlZCBhbiBpc3N1ZSBhYm91dCB0aGUKPiBlTU1DIGJlaW5n
IG9uIHRoZSBzYW1lIHBpbiBzZXQgdGhhbiBhbiBTUEkgZmxhc2gsIGJvdGggb3B0aW9ucyBiZWlu
Zwo+IGF2YWlsYWJsZS4KPiAKPiBUaGUgc29sdXRpb24gQW5kcmUgc3VnZ2VzdGVkIHRoZW4gd2Fz
IHRvIGxldCB0aGUgZU1NQyBiZSBkaXNhYmxlZCwgYW5kCj4gaGF2ZSB0aGUgYm9vdGxvYWRlciBw
cm9iZSB0aGUgZW1tYywgYW5kIGlmIGZvdW5kLCBlbmFibGUKPiBpdC4gT3RoZXJ3aXNlLCBpdCBt
ZWFucyB0aGF0IHlvdSBoYXZlIGEgU1BJIGZsYXNoIChhbmQgZW5hYmxlIGl0KS4KPiAKPiBJIGd1
ZXNzIGEgc2ltaWxhciBzb2x1dGlvbiB3b3VsZCBhcHBseSBoZXJlLgoKRnJvbSB3aGF0IEkgY2Fu
IHRlbGwgZnJvbSBzY2hlbWF0aWMsIHBpbnMgYXJlIGRlZGljYXRlZCBmb3IgZU1NQy4KClNvIHdo
YXQgc29sdXRpb24gZG8geW91IHN1Z2dlc3Q/IFB1dCBlTU1DIG5vZGUgaW4gb3JpZ2luYWwgT3Jh
bmdlUGkgMyBEVCBhbmQgCnNldCBzdGF0dXMgdG8gZGlzYWJsZWQ/CgpCZXN0IHJlZ2FyZHMsCkpl
cm5lagoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
