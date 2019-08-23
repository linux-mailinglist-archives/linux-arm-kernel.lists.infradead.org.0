Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6599AE75
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 13:52:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1vcamZ+BkEimh+gI6j5x65mKlUmxMz1GZZK2ueJ+a7M=; b=j4jo5UWZZzNTVO
	WV3Yw7CnlbckBh9qlGzY/GjIZNeKVG8Yne8CXBomtUfbF/4Cp6eAybdVMAQb8UtHdK3t6HEdX1R50
	y/VOTV+mUJ2ePNOPRVsbFQDAXakcENlJ69cjSaMcCUcxwTUMQTZ5OtYC05eiUsy7NL1oHmLKgn1XG
	/jt3UfXVu3A5PN6cM9e8++4Af/RAlSiY/72VBSbNjTH+aey5gHgf2FDg7vClPrF3r4aMqSlEDXnur
	eagxw1ZfKt/O489Tk5qFVXIyHZJsqT+BLpxfck2vEaIT51RvkrJ1T7umw5ZXDuG5mQjWnm+pN9nKh
	99vSbol2mhYZ9VbZIIjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i187D-00087E-GH; Fri, 23 Aug 2019 11:52:23 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1877-00086s-AE
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 11:52:18 +0000
Received: by mail-qk1-x72a.google.com with SMTP id d23so7932548qko.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 04:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c78+wpE5NtAkckuxK2dQr7Uguc2X5h5Uf88Hnt+OH4o=;
 b=sAoj9rah6K5BokDfPT19/4uD3oY8HqR9/TMn9gYhRMeXpNNLKoLCVM6zXbB13cSEaX
 XRQLlaqhbZLBKZ6CHE8SNKmMVmNjHNyyEPKdRe3mMLJwCd4OLjdGDZFy7lea/5Z9IjHP
 KfNMH8gypu5960lc5DDjhe5dRH4E0kKlKm6WikNERGfuCyzz4wEqrvzx8Hf7DTqB/HOB
 7tYKsMI2MyOxl81jVL9VdRnjaHUckQER7RAIgXBI9Gx/jT0wKhiJDPBYyQrY6tdSqaq+
 rTr3IS/eeTyZwDqD/voJ2MBuMdF4q63nRkmlnszGQbLX6ch6gLzvN7r4jvYtzb2uhWMz
 Mcgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c78+wpE5NtAkckuxK2dQr7Uguc2X5h5Uf88Hnt+OH4o=;
 b=CpyTiENDVso/TufkSraRoDWMYDLRQiOI9kzPBq8SG+tiMOo35PmCd98sC/gfpvaSuG
 U5UvM1PrKnoBL17ETwFGMkeUJ++dFYhkKeV6NcdFXFM/sVf4Ip1yT48ukcJ72Ab7OEnl
 zByi1APJ0iZUkTsA5VXoOBx365iFXP2vlt382YluHiFV2hTE4RoDaEpAFbTh8ouubD+T
 bsdOTmJKTWcNvYfhI2hf96VlXR43uDQs4Bxqh2bioEA01StWJwMtrufvPbkU8dd2Yzzg
 zPA1Bf4wwe0v29KmvsfZlM2JQvA4kp2sJjnk7wvIIGLgJUHIGhsJD6bRWIuv00QrZlSd
 6baA==
X-Gm-Message-State: APjAAAVccqFT51ta+nqyV/ii0v0k6acB8I+NnHAdwsgGZWHGnHBvinqS
 hGkg+2GKp4vJ1EY0VDXQ0NVLEQ==
X-Google-Smtp-Source: APXvYqwH3MawXbPD2LmUDGMAota0KHoYSVT973YOIwpmhk73kYGH2B14rNwBdq5MBNv/MYwDoZqbHg==
X-Received: by 2002:a37:b004:: with SMTP id z4mr3622368qke.103.1566561136162; 
 Fri, 23 Aug 2019 04:52:16 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id 136sm1313279qkg.96.2019.08.23.04.52.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Aug 2019 04:52:15 -0700 (PDT)
Message-ID: <1566561133.5576.12.camel@lca.pw>
Subject: Re: page_alloc.shuffle=1 + CONFIG_PROVE_LOCKING=y = arm64 hang
From: Qian Cai <cai@lca.pw>
To: Will Deacon <will@kernel.org>
Date: Fri, 23 Aug 2019 07:52:13 -0400
In-Reply-To: <20190823113715.n3lc73vtc4ea2ln4@willie-the-truck>
References: <1566509603.5576.10.camel@lca.pw>
 <20190823113715.n3lc73vtc4ea2ln4@willie-the-truck>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_045217_376835_2CAC8BEC 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTA4LTIzIGF0IDEyOjM3ICswMTAwLCBXaWxsIERlYWNvbiB3cm90ZToKPiBP
biBUaHUsIEF1ZyAyMiwgMjAxOSBhdCAwNTozMzoyM1BNIC0wNDAwLCBRaWFuIENhaSB3cm90ZToK
PiA+IGh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9jYWlsY2EvbGludXgtbW0vbWFz
dGVyL2FybTY0LmNvbmZpZwo+ID4gCj4gPiBCb290aW5nIGFuIGFybTY0IFRodW5kZXJYMiBzZXJ2
ZXIgd2l0aCBwYWdlX2FsbG9jLnNodWZmbGU9MSBbMV0gKwo+ID4gQ09ORklHX1BST1ZFX0xPQ0tJ
Tkc9ecKgcmVzdWx0cyBpbiBoYW5naW5nLgo+IAo+IEhtbSwgYnV0IHRoZSBjb25maWcgeW91IGxp
bmsgdG8gYWJvdmUgaGFzOgo+IAo+ICMgQ09ORklHX1BST1ZFX0xPQ0tJTkcgaXMgbm90IHNldAo+
IAo+IHNvIEknbSBjb25mdXNlZC4gQWxzbywgd2hpY2ggdHJlZSBpcyB0aGlzPwoKSSBtYW51YWxs
eSB0dXJuIG9uIENPTkZJR19QUk9WRV9MT0NLSU5HPXkgb24gdGhlIHRvcCBvZiB0aGF0LCBhbmQg
cmVwcm9kdWNlIG9uCmJvdGggdGhlIG1haW5saW5lIGFuZCBsaW51eC1uZXh0IHRyZWVzLgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
