Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75349B09E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 10:09:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iK/rE3lPbjI39Bamca+OBJDNJ6/uBAGtnfazdfgdUw0=; b=aquS1k2WVrZpMM
	zHtnbfaAe2F9LB3/sseGjgYtrYdn8+i1DaJQb+pc8DF94YbxjnuILwfmifgHk+a42VmGOIObCcndb
	1C6VQVdSSqPEjcqm3rV6TDNnxXqloac7R+3IKQMT8/19lA4zMDwNpRNFiBkwJChfxd3NOB8w9Bzdw
	4sUZaAhr6EHS13ORKsIXkh1bztglu3vKcytqNbO10itf8b5Yvrdgoirh5gS/baT1wnYyd28z8CXHM
	igHn/K2LsfPONjM2cDQJVAxowJDlT5cuAn9AEVRliwLcSAS9VTv+G0/ntkCTjSP3goaCjdRKdYvPx
	8JUocKJmjfRxEuADKB/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8KAb-0005Cb-BI; Thu, 12 Sep 2019 08:09:37 +0000
Received: from mail3-relais-sop.national.inria.fr ([192.134.164.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8KAO-0005CG-5r
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 08:09:26 +0000
X-IronPort-AV: E=Sophos;i="5.64,495,1559512800"; d="scan'208";a="319129171"
Received: from nat-inria-bordeaux-52-gw-01-bso.bordeaux.inria.fr (HELO
 [10.204.4.232]) ([194.199.1.52])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/AES128-SHA;
 12 Sep 2019 10:09:19 +0200
Subject: Re: offline CPUs shown in sysfs core_siblings mask
To: James Morse <james.morse@arm.com>
References: <c1596783-cd14-8247-3c42-faa052c5c066@inria.fr>
 <4568af7d-724e-5ee7-3ba1-87a5db662447@arm.com>
From: Brice Goglin <Brice.Goglin@inria.fr>
Openpgp: preference=signencrypt
Autocrypt: addr=Brice.Goglin@inria.fr; prefer-encrypt=mutual; keydata=
 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
Message-ID: <c635c893-6ed4-c21b-6bb9-b1690b191a95@inria.fr>
Date: Thu, 12 Sep 2019 10:09:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <4568af7d-724e-5ee7-3ba1-87a5db662447@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_010924_517303_89FE0EDF 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.104 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jeremy Linton <Jeremy.Linton@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMTEvMDkvMjAxOSDDoCAxODowNiwgSmFtZXMgTW9yc2UgYSDDqWNyaXTCoDoKPiBPbiA5LzEx
LzE5IDI6MjMgUE0sIEJyaWNlIEdvZ2xpbiB3cm90ZToKPj4gV2UgaGF2ZSBhIHJlcG9ydCBmcm9t
IGEgdXNlciBvZiBod2xvYy9sc3RvcG8gb24gVGh1bmRlclgyIHRoYXQgY29tcGxhaW5zCj4+IHRo
YXQgb2ZmbGluZSBDUFVzIGFyZSBzaG93biBpbiBzeXNmcyBjcHUgY29yZV9zaWJsaW5ncyBmaWxl
cy4KPgo+IEhtbW0sIHRoaXMgZG9lc24ndCBoYXBwZW4gb24gbXkgVFgyLCBydW5uaW5nIG1haW5s
aW5lOgo+IHJvb3RAZWdsb246L3N5cy9kZXZpY2VzL3N5c3RlbS9jcHUjIGNhdCBjcHUxL3RvcG9s
b2d5L2NvcmVfc2libGluZ3MKPiAwMDAwMDAwMCwwMDAwMDAwMCwwMDAwMDAwMCwwMDAwMDAwMCxm
ZmZmZmZmZixmZmZmZmZmZixmZmZmZmZmZixmZmZmZmZmZgo+IHJvb3RAZWdsb246L3N5cy9kZXZp
Y2VzL3N5c3RlbS9jcHUjIGVjaG8gMCA+IGNwdTAvb25saW5lCj4gcm9vdEBlZ2xvbjovc3lzL2Rl
dmljZXMvc3lzdGVtL2NwdSMgY2F0IGNwdTEvdG9wb2xvZ3kvY29yZV9zaWJsaW5ncwo+IDAwMDAw
MDAwLDAwMDAwMDAwLDAwMDAwMDAwLDAwMDAwMDAwLGZmZmZmZmZmLGZmZmZmZmZmLGZmZmZmZmZm
LGZmZmZmZmZlCj4gcm9vdEBlZ2xvbjovc3lzL2RldmljZXMvc3lzdGVtL2NwdSMgZWNobyAxID4g
Y3B1MC9vbmxpbmUKPiByb290QGVnbG9uOi9zeXMvZGV2aWNlcy9zeXN0ZW0vY3B1IyBjYXQgY3B1
MS90b3BvbG9neS9jb3JlX3NpYmxpbmdzCj4gMDAwMDAwMDAsMDAwMDAwMDAsMDAwMDAwMDAsMDAw
MDAwMDAsZmZmZmZmZmYsZmZmZmZmZmYsZmZmZmZmZmYsZmZmZmZmZmYKPgo+Cj4+IE9ubHkgOCBv
bmxpbmUgbG9naWNpYWwgQ1BVcywgYnV0IDU2IGFyZSBzaG93biBpbiB0aGVzZSBtYXNrcy4gVGhp
cyBpcyBvbgo+PiBSSEVMNyB3aXRoIGEga2VybmVsIDQuMTQuMC0xMTUuMi4yLmVsN2EuYWFyY2g2
NCBidXQgSSBjb3VsZG4ndCBmaW5kIGFueQo+PiBzaWduaWZpY2FudCBjaGFuZ2UgaW4gTGludXgg
Z2l0Lgo+Cj4gQ291bGQgeW91IHRyeSBhIHJlY2VudCBtYWlubGluZSBrZXJuZWw/Cj4KPiBEb2Vz
IHlvdXIgc3lzdGVtIGhhdmUgYW4gQUNQSSBQUFRUIHRhYmxlPyAoSSBhc3N1bWUgaXRzIEFDUEkp
Cj4KPiBQcmlvciB0byB0aGUgQUNQSSBQUFRUIHRhYmxlIGhhbmRsaW5nLCBpdCB3YXNuJ3QgcG9z
c2libGUgZm9yIGFuIGFybTY0Cj4gQUNQSSBzeXN0ZW0gdG8ga25vdyBhYm91dCBwYWNrYWdlcyBh
bmQgdGhyZWFkcy4KPgoKWWVzIHRoZSBtYWNoaW5lIGhhcyBhbiBBQ1BJIFBQVFQgdGFibGUuIEkg
YW0gd29ya2luZyB3aXRoIGFkbWlucyB0bwp2ZXJpZnkgdGhhdCByZWNlbnQga2VybmVscyB3aXRo
IDdmOTU0NWFhMWE5MSB3b3JrIGJldHRlci4KClRoYW5rcwoKQnJpY2UKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
