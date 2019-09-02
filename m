Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FB9A4F76
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 09:06:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IPFGNc5dODsPjTiQOzM40fRqBrrn+WFAnpiCcIYkXLg=; b=hs1LLb21zIy40FFAWxgPMTSGQ
	NgQZ+XQYXJgqe07ZQ9qB9+esWJWw4WYJXD7wS/Bbo3bwVVXSEw5SgYlv7h4yfzhIVwPjDhkNZ+oXl
	M+MpdtG9jN60/VzgkchzvDiteKqb2HETSJR+Zq72Nzy0Jm//jNu8gGL3cgVZhCtWfA/K4M0FJ3ARX
	J0pwsl0obV0X8tyfH3bSGlxHKnSxD4ZdKWdlJaZaiaUuEqyhCFKatyOk91+tlMPQoDl9+HQaiaZR9
	+fxFfQpb9MkKAhoqxwYUes6a2DT0YGd8xyVSW6RTBMyDlVdtUS/W/wnFKoLOUgYMxDhHtsqbDsg6+
	TlykWuAZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4gPs-0004j1-45; Mon, 02 Sep 2019 07:06:20 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4gPT-0004iA-8x
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 07:05:56 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 00:05:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,457,1559545200"; d="scan'208";a="265950380"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.6]) ([10.239.13.6])
 by orsmga001.jf.intel.com with ESMTP; 02 Sep 2019 00:05:49 -0700
Subject: Re: [PATCH 2/2] arm64: dts: allwinner: h6: Introduce Tanix TX6 board
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@siol.net>,
 kbuild test robot <lkp@intel.com>
References: <20190816205342.29552-3-jernej.skrabec@siol.net>
 <201908190222.ZdIp2gT1%lkp@intel.com> <7640522.c0V0aH5rf2@jernej-laptop>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <4494861c-defe-6783-6718-a201f77ec65a@intel.com>
Date: Mon, 2 Sep 2019 15:05:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <7640522.c0V0aH5rf2@jernej-laptop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_000555_360758_E998E117 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 robh+dt@kernel.org, kbuild-all@01.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiA4LzE5LzE5IDI6NTkgQU0sIEplcm5laiDFoGtyYWJlYyB3cm90ZToKPiBEbmUgbmVk
ZWxqYSwgMTguIGF2Z3VzdCAyMDE5IG9iIDIwOjQyOjQ5IENFU1QgamUga2J1aWxkIHRlc3Qgcm9i
b3QgbmFwaXNhbChhKToKPj4gSGkgSmVybmVqLAo+Pgo+PiBUaGFuayB5b3UgZm9yIHRoZSBwYXRj
aCEgWWV0IHNvbWV0aGluZyB0byBpbXByb3ZlOgo+Pgo+PiBbYXV0byBidWlsZCB0ZXN0IEVSUk9S
IG9uIGxpbnVzL21hc3Rlcl0KPj4gW2Nhbm5vdCBhcHBseSB0byB2NS4zLXJjNCBuZXh0LTIwMTkw
ODE2XQo+PiBbaWYgeW91ciBwYXRjaCBpcyBhcHBsaWVkIHRvIHRoZSB3cm9uZyBnaXQgdHJlZSwg
cGxlYXNlIGRyb3AgdXMgYSBub3RlIHRvCj4+IGhlbHAgaW1wcm92ZSB0aGUgc3lzdGVtXQo+Pgo+
PiB1cmw6Cj4+IGh0dHBzOi8vZ2l0aHViLmNvbS8wZGF5LWNpL2xpbnV4L2NvbW1pdHMvSmVybmVq
LVNrcmFiZWMvZHQtYmluZGluZ3MtYXJtLXN1bgo+PiB4aS1BZGQtY29tcGF0aWJsZS1mb3ItVGFu
aXgtVFg2LWJvYXJkLzIwMTkwODE5LTAwMjAzNCBjb25maWc6Cj4+IGFybTY0LWRlZmNvbmZpZyAo
YXR0YWNoZWQgYXMgLmNvbmZpZykKPj4gY29tcGlsZXI6IGFhcmNoNjQtbGludXgtZ2NjIChHQ0Mp
IDcuNC4wCj4+IHJlcHJvZHVjZToKPj4gICAgICAgICAgd2dldAo+PiBodHRwczovL3Jhdy5naXRo
dWJ1c2VyY29udGVudC5jb20vaW50ZWwvbGtwLXRlc3RzL21hc3Rlci9zYmluL21ha2UuY3Jvc3Mg
LU8KPj4gfi9iaW4vbWFrZS5jcm9zcyBjaG1vZCAreCB+L2Jpbi9tYWtlLmNyb3NzCj4+ICAgICAg
ICAgICMgc2F2ZSB0aGUgYXR0YWNoZWQgLmNvbmZpZyB0byBsaW51eCBidWlsZCB0cmVlCj4+ICAg
ICAgICAgIEdDQ19WRVJTSU9OPTcuNC4wIG1ha2UuY3Jvc3MgQVJDSD1hcm02NAo+Pgo+PiBJZiB5
b3UgZml4IHRoZSBpc3N1ZSwga2luZGx5IGFkZCBmb2xsb3dpbmcgdGFnCj4+IFJlcG9ydGVkLWJ5
OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPj4KPj4gQWxsIGVycm9ycyAobmV3
IG9uZXMgcHJlZml4ZWQgYnkgPj4pOgo+Pj4+IEVycm9yOiBhcmNoL2FybTY0L2Jvb3QvZHRzL2Fs
bHdpbm5lci9zdW41MGktaDYtdGFuaXgtdHg2LmR0czo4My4xLTYgTGFiZWwKPj4+PiBvciBwYXRo
IHJfaXIgbm90IGZvdW5kIEZBVEFMIEVSUk9SOiBTeW50YXggZXJyb3IgcGFyc2luZyBpbnB1dCB0
cmVlCj4gU3RyYW5nZSwgQWxsd2lubmVyIHRyZWUgaGFzIGNvbW1pdCwgd2hpY2ggaW50cm9kdWNl
cyByX2lyIG5vZGU6Cj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5l
bC9naXQvc3VueGkvbGludXguZ2l0L2NvbW1pdC8/Cj4gaD1zdW54aS9kdC1mb3ItNS40JmlkPTky
Njc4MTFhYWQzNTI0Yzg1N2NmMmUxNmJiYWRkOGM1NjllMTVhYjkKPgo+IE1heWJlIGtidWlsZCB0
ZXN0IHJvYm90IHRyZWUgZG9lc24ndCBoYXZlIGl0PwoKVGhlIHRyZWUgaXMgaW4gb3VyIGxpc3Qu
IApodHRwczovL2dpdGh1Yi5jb20vaW50ZWwvbGtwLXRlc3RzL2Jsb2IvbWFzdGVyL3JlcG8vbGlu
dXgvc3VueGkKUm9ib3QgYWxzbyB0cmllcyB0byBhcHBseSBwYXRjaGVzIHRvIGEgZ2l0IHRyZWUg
dG8gdGVzdC4gTWF5YmUgeW91ciAKcGF0Y2ggd2FzIGFwcGxpZWQgdG8gYSB3cm9uZyBnaXQgdHJl
ZS4KCkJlc3QgUmVnYXJkcywKUm9uZyBDaGVuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
