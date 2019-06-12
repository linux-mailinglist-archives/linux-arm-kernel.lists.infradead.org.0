Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF20642EC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 20:36:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rerpirGtjzwwv1XOf8ttiEUyH3mnahPipS2ONGlxIpc=; b=MxAm8dLSEPZ+8T
	PMST3SGuxFB2C/lYl/yuo6FRnPGypH16btNuv+PfQVHwV2HlIA9kbOhrkm29hCuLao6w4ipAtKgcu
	1zNQ38bFpabYO6Y3uCXvKVspYRVvs77jRxHu3UvYsZO1ePdRxnGI6yt7FmEeadW7GTJzujx98ZZj4
	opYbiZnV0/ECYfEwSRdvl5T5aTonR9SoAScs0qv8+HL6mvvfP8SIpB1FyxTvKHQDsrpYfh5iLYqIj
	4zBrckXydVmk87Gysp85TKcjlbHWjI8kZL1Z6KJtiF4dFgf1W07PMYFAyVDRWsvJ54FXBxwMsxoXl
	AH6AXGrkFW3WcRPduGhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb86X-000672-Pd; Wed, 12 Jun 2019 18:36:13 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb86L-00066O-82
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 18:36:02 +0000
Received: by mail-qt1-x843.google.com with SMTP id i34so19577007qta.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 11:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ccd2Dl/s5BEnRCE+LL0hkZ64UWDD7pEB/PZyv8yO8ZY=;
 b=IcABX1nM51p2QrQVsut+vh/j10d5dr6geQ+a/RrmE6DOHq7udCPilWtmRYD99j0boR
 ov5Ysub7+GqF4lbZDxDthsXnWeXk+ES3UVFuSCse5kakCEymFY4P7BJeaa1eqMTm9m4J
 a+/2xER8DdWKm0/0yHAUhnmEJWAiez71uz/DfX4C+ZMkDAyMe9n6LHO40E10deKj4zJN
 Wel0wmmIihoR/AvHw5HUgRWq+VZtm2o2vy9xdx+v9Lo1iXmV5/ZbXP3K7XF07He5wGRh
 eTLt9p7wJXVFha1pn5wg6b5vpyG2Z/ZLgk4Y4y0kGDJ+N6XDcakHacAueyHQQONRObHL
 LFHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ccd2Dl/s5BEnRCE+LL0hkZ64UWDD7pEB/PZyv8yO8ZY=;
 b=sVrNiQWbPAEITyWaczBWKic/CPlGSe5an1ely/sOP6G8RC0FW5ubQgjosiAW80EQiP
 HH5gxQrw4CR3xKwirfONnLPfIB6aEsmPa+8a/UZWObsOzBPHn43Q0yTPAxK6w3oDKxy7
 cSYz6fK30fYQAqysISy//lWJtudd9PNcaDuVwVCz01eg1x8oGCwHyzLrHRTguxpBiWvy
 RrkstPQKxudAiESBDXsheDTBsEomQNRCXJ/Q6uwXJN95PnZQB3EHOiq8D91x1J+ZPdMJ
 TixQCVwaOdpYq52N9LXF7ZzFtkKoQYWDMM4VsKcmrJWgVSdM/T/CwIUcFFgapE5j8RVf
 j9QA==
X-Gm-Message-State: APjAAAUpqXJt9Gl409VNiBNzEs/dglZ39ZlyrRcuNamyE7t7fzmaky47
 q0KdIZR5Q+Bjdl3QFr7yXKeUxA==
X-Google-Smtp-Source: APXvYqxVhJgr9VMk6UTsEjd7fGkQxdE+ShlHGLoBskD9CcIJfDIiuN/yiHxzbH4RhCcTZeh0Ja2AHg==
X-Received: by 2002:a0c:fde3:: with SMTP id m3mr136658qvu.205.1560364559359;
 Wed, 12 Jun 2019 11:35:59 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id t67sm224679qkf.34.2019.06.12.11.35.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 11:35:58 -0700 (PDT)
Message-ID: <1560364557.5154.2.camel@lca.pw>
Subject: Re: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
From: Qian Cai <cai@lca.pw>
To: Mike Rapoport <rppt@linux.ibm.com>
Date: Wed, 12 Jun 2019 14:35:57 -0400
In-Reply-To: <20190612065728.GB4761@rapoport-lnx>
References: <1559656836-24940-1-git-send-email-cai@lca.pw>
 <20190604142338.GC24467@lakrids.cambridge.arm.com>
 <20190610114326.GF15979@fuggles.cambridge.arm.com>
 <1560187575.6132.70.camel@lca.pw>
 <20190611100348.GB26409@lakrids.cambridge.arm.com>
 <20190611124118.GA4761@rapoport-lnx>
 <3F6E1B9F-3789-4648-B95C-C4243B57DA02@lca.pw>
 <20190612065728.GB4761@rapoport-lnx>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_113601_315207_0061E219 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, mhocko@kernel.org,
 linux-mm@kvack.org, vdavydov.dev@gmail.com, hannes@cmpxchg.org,
 cgroups@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTA2LTEyIGF0IDA5OjU3ICswMzAwLCBNaWtlIFJhcG9wb3J0IHdyb3RlOgo+
IEhpLAo+IAo+IE9uIFR1ZSwgSnVuIDExLCAyMDE5IGF0IDA4OjQ2OjQ1QU0gLTA0MDAsIFFpYW4g
Q2FpIHdyb3RlOgo+ID4gCj4gPiA+IE9uIEp1biAxMSwgMjAxOSwgYXQgODo0MSBBTSwgTWlrZSBS
YXBvcG9ydCA8cnBwdEBsaW51eC5pYm0uY29tPiB3cm90ZToKPiA+ID4gCj4gPiA+IFNvcnJ5IGZv
ciB0aGUgZGVsYXksIEknbSBtb3N0bHkgb2ZmbGluZSB0aGVzZSBkYXlzLgo+ID4gPiAKPiA+ID4g
SSB3YW50ZWQgdG8gdW5kZXJzdGFuZCBmaXJzdCB3aGF0IGlzIHRoZSByZWFzb24gZm9yIHRoZSBm
YWlsdXJlLiBJJ3ZlCj4gPiA+IHRyaWVkCj4gPiA+IHRvIHJlcHJvZHVjZSBpdCB3aXRoIHFlbXUs
IGJ1dCBJIGZhaWxlZCB0byBmaW5kIGEgYm9vdGFibGUgY29uZmlndXJhdGlvbgo+ID4gPiB0aGF0
IHdpbGwgaGF2ZSBQR0RfU0laRSAhPSBQQUdFX1NJWkUgOigKPiA+ID4gCj4gPiA+IFFpYW4gQ2Fp
LCBjYW4geW91IHNoYXJlIHdoYXQgaXMgeW91ciBlbnZpcm9ubWVudCBhbmQgdGhlIGtlcm5lbCBj
b25maWc/Cj4gPiAKPiA+IGh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9jYWlsY2Ev
bGludXgtbW0vbWFzdGVyL2FybTY0LmNvbmZpZwo+ID4gCj4gPiAjIGxzY3B1Cj4gPiBBcmNoaXRl
Y3R1cmU6wqDCoMKgwqDCoMKgwqDCoGFhcmNoNjQKPiA+IEJ5dGUgT3JkZXI6wqDCoMKgwqDCoMKg
wqDCoMKgwqBMaXR0bGUgRW5kaWFuCj4gPiBDUFUocyk6wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoDI1Ngo+ID4gT24tbGluZSBDUFUocykgbGlzdDogMC0yNTUKPiA+IFRocmVhZChzKSBwZXIg
Y29yZTrCoMKgNAo+ID4gQ29yZShzKSBwZXIgc29ja2V0OsKgwqAzMgo+ID4gU29ja2V0KHMpOsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAyCj4gPiBOVU1BIG5vZGUocyk6wqDCoMKgwqDCoMKgwqDCoDIK
PiA+IFZlbmRvciBJRDrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgQ2F2aXVtCj4gPiBNb2RlbDrCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAxCj4gPiBNb2RlbCBuYW1lOsKgwqDCoMKgwqDCoMKg
wqDCoMKgVGh1bmRlclgyIDk5eHgKPiA+IFN0ZXBwaW5nOsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oDB4MQo+ID4gQm9nb01JUFM6wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgNDAwLjAwCj4gPiBMMWQg
Y2FjaGU6wqDCoMKgwqDCoMKgwqDCoMKgwqDCoDMySwo+ID4gTDFpIGNhY2hlOsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAzMksKPiA+IEwyIGNhY2hlOsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDI1NksK
PiA+IEwzIGNhY2hlOsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDMyNzY4Swo+ID4gTlVNQSBub2Rl
MCBDUFUocyk6wqDCoMKgMC0xMjcKPiA+IE5VTUEgbm9kZTEgQ1BVKHMpOsKgwqDCoDEyOC0yNTUK
PiA+IEZsYWdzOsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZwIGFzaW1kIGV2dHN0cm0g
YWVzIHBtdWxsIHNoYTEgc2hhMiBjcmMzMiBhdG9taWNzCj4gPiBjcHVpZCBhc2ltZHJkbQo+ID4g
Cj4gPiAjIGRtaWRlY29kZQo+ID4gSGFuZGxlIDB4MDAwMSwgRE1JIHR5cGUgMSwgMjcgYnl0ZXMK
PiA+IFN5c3RlbSBJbmZvcm1hdGlvbgo+ID4gwqDCoMKgwqDCoMKgwqDCoE1hbnVmYWN0dXJlcjog
SFBFCj4gPiDCoMKgwqDCoMKgwqDCoMKgUHJvZHVjdCBOYW1lOiBBcG9sbG8gNzDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoAo+ID4gwqDCoMKgwqDCoMKgwqDCoFZlcnNpb246IFgxCj4gPiDCoMKg
wqDCoMKgwqDCoMKgV2FrZS11cCBUeXBlOiBQb3dlciBTd2l0Y2gKPiA+IMKgwqDCoMKgwqDCoMKg
wqBGYW1pbHk6IENOOTlYWAo+ID4gCj4gCj4gQ2FuIHlvdSBwbGVhc2UgYWxzbyBzZW5kIHRoZSBl
bnRpcmUgbG9nIHdoZW4gdGhlIGZhaWx1cmUgaGFwcGVucz8KCmh0dHBzOi8vY2FpbGNhLmdpdGh1
Yi5pby9maWxlcy9kbWVzZy50eHQKCj4gQW5vdGhlciBxdWVzdGlvbiwgaXMgdGhlIHByb2JsZW0g
ZXhpc3Qgd2l0aCBQR0RfU0laRSA9PSBQQUdFX1NJWkU/CgpOby4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
