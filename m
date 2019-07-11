Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD08B65251
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 09:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZMJKmy0nx4whqszfi205OtJuNuuXi3B6mN4k2JyVPBg=; b=uF2W3AaeNv2n+awTvk9DdhVX2
	RdWNtatccFdUwPrM2zXdfD97WGnHGYW6J+x+J98eDCfgTN3E7aLQg31J/lxNeP+F9NUnNi9Lz+zIk
	kko623HhX1i0/k4XONpZCXNqI3tSMzTU8CVbtc56wmL9QAnifaBzoFitFA9z8ZcQ4hgpfr/7gwisH
	eNH6fox+96QS94wgIMtTriOeohdiLrsFH3QUen0ZLCasXcHVYx+miiBom6ah8SUb+/sdxL0mc/na6
	P0Hp/SI72zPsHLilh/K9jyhUZ4zdXM5NhFGu+y8c/QKJddJ5cDmnM7SiIqGjUSjOmefPjSzShyS6h
	RiYHrR6eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlTKo-0003XL-SD; Thu, 11 Jul 2019 07:17:42 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlTKT-0003Wu-9m
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 07:17:23 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6B7H5iV123685;
 Thu, 11 Jul 2019 02:17:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1562829425;
 bh=0QBVygmwVoVpArXy+0GSkwrp5nxvHuYA5RBaCVFjx2Y=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ZJheqB/GGT+3Qb6IaigPrlfbROfkgmpz01l7kwU4gZmw7jJOZNbtA8yr8+nnwLtSi
 snuq+QQne4StSqvEhrb5TC5ominD4zhoESey9fGqHpIix6BBFTFNvGJWzRXXOQWapx
 sWXh3BUqcDK2fAnpIF48sokoBPhMRvn7DtpmS+T4=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6B7H5HA015004
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 11 Jul 2019 02:17:05 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 11
 Jul 2019 02:17:04 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 11 Jul 2019 02:17:04 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6B7H2IB023513;
 Thu, 11 Jul 2019 02:17:02 -0500
Subject: Re: [PATCH v2] arm64: Kconfig.platforms: Enable GPIO_DAVINCI for
 ARCH_K3
To: Keerthy <j-keerthy@ti.com>, Nishanth Menon <nm@ti.com>
References: <20190627110920.15099-1-j-keerthy@ti.com>
 <20190627143208.eeca4xyygml7s4n3@kahuna>
 <39f5e726-8542-b650-3bdb-7542e8fab8ac@ti.com>
 <20190628203752.rdb6vvc42qd5ofgd@kahuna>
 <ff0b4d00-046f-1ba6-b31e-e49197ba1050@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <41475b80-4a9a-b594-7f66-5bf9b94c0bf0@ti.com>
Date: Thu, 11 Jul 2019 10:16:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ff0b4d00-046f-1ba6-b31e-e49197ba1050@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_001721_533505_83E6E2CD 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: lokeshvutla@ti.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMDcvMjAxOSAwODo0OSwgS2VlcnRoeSB3cm90ZToKPiAKPiAKPiBPbiAyOS8wNi8xOSAy
OjA3IEFNLCBOaXNoYW50aCBNZW5vbiB3cm90ZToKPj4gT24gMDk6MDgtMjAxOTA2MjgsIEtlZXJ0
aHkgd3JvdGU6Cj4+IFsuLl0KPj4+Pj4gK8KgwqDCoCBzZWxlY3QgR1BJT19TWVNGUwo+Pj4+PiAr
wqDCoMKgIHNlbGVjdCBHUElPX0RBVklOQ0kKPj4+Pgo+Pj4+Cj4+Pj4gQ291bGQgeW91IGhlbHAg
ZXhwbGFpbiB0aGUgbG9naWMgb2YgZG9pbmcgdGhpcz8gY29tbWl0IG1lc3NhZ2UgaXMKPj4+PiBi
YXNpY2FsbHkgdGhlIGRpZmYgaW4gRW5nbGlzaC4gVG8gbWUsIHRoaXMgZG9lcyBOT1QgbWFrZSBz
ZW5zZS4KPj4+Pgo+Pj4+IEkgdW5kZXJzdGFuZCBHUElPX0RBVklOQ0kgaXMgdGhlIGRyaXZlciBj
b21wYXRpYmxlLCBidXQgd2UgY2FudCBkbyAKPj4+PiB0aGlzIGZvcgo+Pj4+IGV2ZXJ5IHNpbmds
ZSBTb0MgZHJpdmVyIHRoYXQgaXMgTk9UIGFic29sdXRlbHkgbWFuZGF0b3J5IGZvciBiYXNpYwo+
Pj4+IGZ1bmN0aW9uYWxpdHkuCj4+Pgo+Pj4gSW4gY2FzZSBvZiBBUk02NCBjb3VsZCB5b3UgaGVs
cCBtZSBmaW5kIHRoZSByaWdodCBwbGFjZSB0byBlbmFibGUKPj4+IHN1Y2ggU29DIHNwZWNpZmlj
IGNvbmZpZ3M/Cj4+Cj4+IElzJ250IHRoYXQgd2hhdCBkZWZjb25maWcgaXMgc3VwcG9zZWQgdG8g
YmUgYWxsIGFib3V0Pwo+Pgo+PiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCj4+Cj4+Pgo+
Pj4+Cj4+Pj4gQWxzbyBrZWVwIGluIG1pbmQgdGhlIGltcGFjdCB0byBhcm02NC9jb25maWdzL2Rl
ZmNvbmZpZyAtPiBldmVyeSBzaW5nbGUKPj4+PiBTb0MgaW4gdGhlIGFybTY0IHdvcmxkIHdpbGwg
YmUgbm93IHJlYnVpbGQgd2l0aCBHUElPX1NZU0ZTLi4gd2h5IGZvcmNlCj4+Pj4gdGhhdD8KPj4+
Cj4+PiBUaGlzIHdhcyB0aGUgcHJhY3RpY2UgaW4gYXJtMzIgc29jIHNwZWNpZmljIGNvbmZpZ3Mg
bGlrZQo+Pj4gb21hcDJwbHVzX2RlZmNvbmZpZy4gR1BJT19TWVNGUyB3YXMgaGUgb25seSB3YXkg
dG8gdmFsaWRhdGUuIE5vdyBpIAo+Pj4gdG90YWxseQo+Pj4gdW5kZXJzdGFuZCB5b3VyIGNvbmNl
cm4gYWJvdXQgZXZlcnkgc2luZ2xlIFNvQyByZWJ1aWxkaW5nIGJ1dCBub3cgCj4+PiB3aGVyZSBk
bwo+Pj4gd2UgbmVlZCB0byBlbmFibGUgdGhlIGJhcmUgbWluaW1hbCBHUElPX0RBVklOQ0kgY29u
ZmlnPwo+Pgo+PiBXZWxsLCBTWVNGUywgSSBjYW5ub3QgYWdyZWUgdGVzdGluZyBhcyB0aGUgcmF0
aW9uYWxlIGluCj4+IEtjb25maWcucGxhdGZvcm0uIEFuZCwgbG9va2luZyBhdCBbMV0sIEkgc2Vl
IG1ham9yaXR5IGJlaW5nIG1hbmRhdG9yeQo+PiBjb21wb25lbnRzIGZvciB0aGUgU29DIGJvb3R1
cC4gSG93ZXZlciwgbW9zdCBvZiB0aGUgIm9wdGlvbmFsIiBkcml2ZXJzCj4+IGdvIGludG8gYXJt
NjQgYXMgZGVmY29uZmlnIChwcmVmZXJhYmx5IGFzIGEgbW9kdWxlPykgYW5kIGlmIHlvdSBmaW5k
IGEKPj4gcmF0aW9uYWxlIGZvciByZWNvbW1lbmRpbmcgREVCVUdfR1BJTywgeW91IGNvdWxkIHBy
b3Bvc2UgdGhhdCB0byB0aGUKPj4gY29tbXVuaXR5IGFzIHdlbGwuCj4+Cj4+IE5vdywgVGhpbmtp
bmcgYWJvdXQgdGhpcywgSSdkIGV2ZW4gY2hhbGxlbmdlIHRoZSBjdXJyZW50IGxpc3Qgb2YgCj4+
IGNvbmZpZ3MgYXMKPj4gYmVpbmcgInNlbGVjdCIuIEknZCByYXRoZXIgZG8gYW4gImltcGx5Ilsy
XSAtIHllcywgeW91IG5lZWQgdGhpcyBmb3IgdGhlCj4+IGRlZmF1bHQgZHRiIHRvIGJvb3QsIGhv
d2V2ZXIgYSBjYXJlZnVsbHkgY2FydmVkIGR0YiBjb3VsZCBib290IHdpdGgKPj4gbGVzc2VyIGRy
aXZlciBzZXQgdG8gZ2V0IGEgc21hbGxlciAoYW5kIGxlc3MgZnVuY3Rpb25hbCkga2VybmVsLgo+
Pgo+Pj4KPj4+IHYxIGkgcmVjZWl2ZWQgZmVlZGJhY2sgZnJvbSBUZXJvIHRvIGVuYWJsZSBpbiBL
Y29uZmlnLnBsYXRmb3Jtcy4gSGVuY2UgaQo+Pj4gc2hpZnRlZCB0byB0aGlzIGFwcHJvYWNoLgo+
Pgo+PiBJIG5vdGljZWQgdGhhdCB5b3Ugd2VyZSBwb3N0aW5nIGEgdjIsIGZvciBmdXR1cmUgcmVm
ZXJlbmNlLCBwbGVhc2UgdXNlCj4+IGRpZmZzdGF0IHNlY3Rpb24gdG8gcG9pbnQgdG8gbG9yZS9w
YXRjaHdvcmtzIGxpbmsgdG8gcG9pbnQgYXQgdjEgKEkKPj4gZGlkIG5vdGljZSB5b3UgbWVudGlv
bmVkIHlvdSBoYWQgYW4gdXBkYXRlLCB0aGFua3MgLSBsaW5rIHdpbGwgaGVscAo+PiBjYXRjaCB1
cCBvbiBvbGRlciBkaXNjdXNzaW9ucykuIFRoaXMgaGVscHMgYSBsYXRlciByZXZpc2lvbiByZXZp
ZXdlcgo+PiBsaWtlIG1lIHRvIGdldCBjb250ZXh0Lgo+Pgo+PiBUZXJvLCB3b3VsZCB5b3UgYmUg
YWJsZSB0byBoZWxwIHdpdGggYSBiZXR0ZXIgcmF0aW9uYWxlIGFzIHRvIHdoZXJlIHRoZQo+PiBi
b3VuZGFyaWVzIGFyZSB0byBiZSBpbiB5b3VyIG1pbmQsIHJhdGhlciB0aGFuIHJpc2sgZXZlcnkg
c2luZ2xlCj4+IHBlcmlwaGVyYWwgZHJpdmVyIGdldHRpbmcgaW50byBBUkNIX0szPwo+IAo+IFRl
cm8sCj4gCj4gQ291bGQgeW91IHBvaW50IG1lIHRvIGEgYmV0dGVyIHBsYWNlIGZvciBlbmFibGlu
Zz8KPiAKCldlbGwsIHRoaW5raW5nIGFib3V0IHdoYXQgTmlzaGFudGggc2FpZCwgd2Ugc2hvdWxk
IHByb2JhYmx5IGtlZXAgdGhlIApkZWZjb25maWcgdG8gYmFyZSBtaW5pbWFsIGFuZCBvbmx5IGVu
YWJsZSBwZXJpcGhlcmFscyB0aGF0IGFyZSAKYWJzb2x1dGVseSBuZWNlc3NhcnkgZm9yIGJvb3Qu
IFdlIHNob3VsZCBldmVudHVhbGx5IHN1cHBvcnQgZXRoIC8gbW1jLXNkIApib290IG1vZGVzIGZv
ciBLMyBkZXZpY2VzLCBidXQgbGltaXQgdGhlIGNvbmZpZ3MgdG8gdGhhdC4KClJlc3Qgd2UgY2Fu
IGNhcnJ5IHdpdGhpbiBUSSBpbnRlcm5hbCBkZWZjb25maWdzLCBpbmNsdWRpbmcgdGhpcyBHUElP
IAplbmFibGVyLiBJZiBHUElPIGJlY29tZXMgYSBtdXN0IGhhdmUgZm9yIHNvbWUgZnV0dXJlIGRl
dmljZSAvIApwZXJpcGhlcmFsLCB3ZSBjYW4gcmUtY29uc2lkZXIgdGhpcy4KCi1UZXJvCgo+IC0g
S2VlcnRoeQo+IAo+Pgo+PiBBcyBvZiByaWdodCBub3csIEknZCByYXRoZXIgd2UgZG8gbm90IGV4
cGxvZGUgdGhlIGN1cnJlbnQgbGlzdCBvdXQgb2YKPj4gYm91bmRzLiBOQUsgdW5sZXNzIHdlIGNh
biBmaW5kIGEgYmV0dGVyIHJhdGlvbmFsZS4KPj4KPj4KPj4gWzFdIAo+PiBodHRwczovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJl
ZS9hcmNoL2FybTY0L0tjb25maWcucGxhdGZvcm1zIAo+Pgo+PiBbMl0gaHR0cHM6Ly93d3cua2Vy
bmVsLm9yZy9kb2MvRG9jdW1lbnRhdGlvbi9rYnVpbGQva2NvbmZpZy1sYW5ndWFnZS50eHQKPj4K
Ci0tClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgw
IEhlbHNpbmtpLiBZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0Rv
bWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
