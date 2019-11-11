Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AE4F6F24
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 08:38:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FVgWTkXM9j3rnMAUGiqqcZsY1J5//kPdWRp8DlZsTQ=; b=fcD5kAxW5KFNLl
	uvzZ10BN0aYoTa6EYidvLnXGaLvgNueB1OP8KTsQjbSMNWdMp0EGQ7aAZ9L0rkz8LHAmoMeUxxPkL
	+cLENo+jURFKMhQ+8hw91uwDMaYj+e+/lStT0/BsqQPpUFsHSDmm3JakuU8zgFCY3RCy+UO1o4R6e
	m1EL9nShCRtLOz2lWrqmU4KIBuWbxsyLm8x5s5dlPypylcJsR0U1+aJL519LoCh94ux9lC4aSxA6H
	0DdSbzKSVdUjCUgpZ35J1aajVKC6YNKERYvJKFvm9qy0+uL+y2WwoWONuAXnzD0rq+lAnsMCgPZqa
	E02Lt/oL1UcleTRsCONw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU4HN-0002JZ-VX; Mon, 11 Nov 2019 07:38:29 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU4HE-0002J7-7R
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 07:38:21 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAB7bxs9019718;
 Mon, 11 Nov 2019 01:37:59 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573457879;
 bh=9D1qH61QLDyxQW4aYPv6eSClSjnsnxJWzJVKKh7GxIo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=fAPuyBKrrQXFB8WnFArOtRnMtSytXCCciyPVf/agF9dBQdnzlZhrRhLrpBzklKS7M
 9GC9nJ5IXfhYxvKUJECYSL7Fv6Ytt/o4XSd4VfNJ8Y4OO9GyFjHt45ZMEyOygUBYQS
 XORkAdBd0rhCCie0hb4ElJ7J/Kdpv4gtP92XqA6c=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAB7bxaF015948;
 Mon, 11 Nov 2019 01:37:59 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 11
 Nov 2019 01:37:42 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 11 Nov 2019 01:37:42 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAB7btm1005431;
 Mon, 11 Nov 2019 01:37:55 -0600
Subject: Re: [PATCH v4 02/15] soc: ti: k3: add navss ringacc driver
To: Vinod Koul <vkoul@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-3-peter.ujfalusi@ti.com>
 <20191111042119.GK952516@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <f24947f4-53d0-bdb8-fc29-7a985aba2052@ti.com>
Date: Mon, 11 Nov 2019 09:39:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111042119.GK952516@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_233820_351288_941A73E7 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS8xMS8yMDE5IDYuMjEsIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMDEtMTEtMTksIDEw
OjQxLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4gRnJvbTogR3J5Z29yaWkgU3RyYXNoa28gPGdy
eWdvcmlpLnN0cmFzaGtvQHRpLmNvbT4KPiAKPj4gK2NvbmZpZyBUSV9LM19SSU5HQUNDCj4+ICsJ
dHJpc3RhdGUgIkszIFJpbmcgYWNjZWxlcmF0b3IgU3ViIFN5c3RlbSIKPj4gKwlkZXBlbmRzIG9u
IEFSQ0hfSzMgfHwgQ09NUElMRV9URVNUCj4+ICsJZGVwZW5kcyBvbiBUSV9TQ0lfSU5UQV9JUlFD
SElQCj4+ICsJZGVmYXVsdCB5Cj4gCj4gWW91IHdhbnQgdG8gZ2V0IGFuIGVhcmZ1bCBmcm9tIExp
bnVzPyBXZSBkb250IGRvIGRlZmF1bHQgeSBvbiBuZXcgc3R1ZmYsCj4gbmV2ZXIgOikKCk9LCgo+
PiArc3RydWN0IGszX3JpbmdfcnRfcmVncyB7Cj4+ICsJdTMyCXJlc3ZfMTZbNF07Cj4+ICsJdTMy
CWRiOwkJLyogUlQgUmluZyBOIERvb3JiZWxsIFJlZ2lzdGVyICovCj4+ICsJdTMyCXJlc3ZfNFsx
XTsKPj4gKwl1MzIJb2NjOwkJLyogUlQgUmluZyBOIE9jY3VwYW5jeSBSZWdpc3RlciAqLwo+PiAr
CXUzMglpbmR4OwkJLyogUlQgUmluZyBOIEN1cnJlbnQgSW5kZXggUmVnaXN0ZXIgKi8KPj4gKwl1
MzIJaHdvY2M7CQkvKiBSVCBSaW5nIE4gSGFyZHdhcmUgT2NjdXBhbmN5IFJlZ2lzdGVyICovCj4+
ICsJdTMyCWh3aW5keDsJCS8qIFJUIFJpbmcgTiBDdXJyZW50IEluZGV4IFJlZ2lzdGVyICovCj4g
Cj4gbmljZSBjb21tZW50cywgaG93IGFib3V0IG1vdmluZyB0aGVtIHVwIGludG8ga2VybmVsLWRv
YyBzdHlsZT8gKGhlcmUgYW5kCj4gb3RoZXIgcGxhY2VzIGFzIHdlbGwpCgpTdXJlLCBJJ2xsIGNv
bnZlcnQgdGhlIGNvbW1lbnRzLgoKPj4gK3N0cnVjdCBrM19yaW5nICprM19yaW5nYWNjX3JlcXVl
c3RfcmluZyhzdHJ1Y3QgazNfcmluZ2FjYyAqcmluZ2FjYywKPj4gKwkJCQkJaW50IGlkLCB1MzIg
ZmxhZ3MpCj4+ICt7Cj4+ICsJaW50IHByb3h5X2lkID0gSzNfUklOR0FDQ19QUk9YWV9OT1RfVVNF
RDsKPj4gKwo+PiArCW11dGV4X2xvY2soJnJpbmdhY2MtPnJlcV9sb2NrKTsKPj4gKwo+PiArCWlm
IChpZCA9PSBLM19SSU5HQUNDX1JJTkdfSURfQU5ZKSB7Cj4+ICsJCS8qIFJlcXVlc3QgZm9yIGFu
eSBnZW5lcmFsIHB1cnBvc2UgcmluZyAqLwo+PiArCQlzdHJ1Y3QgdGlfc2NpX3Jlc291cmNlX2Rl
c2MgKmdwX3JpbmdzID0KPj4gKwkJCQkJCSZyaW5nYWNjLT5ybV9ncF9yYW5nZS0+ZGVzY1swXTsK
Pj4gKwkJdW5zaWduZWQgbG9uZyBzaXplOwo+PiArCj4+ICsJCXNpemUgPSBncF9yaW5ncy0+c3Rh
cnQgKyBncF9yaW5ncy0+bnVtOwo+PiArCQlpZCA9IGZpbmRfbmV4dF96ZXJvX2JpdChyaW5nYWNj
LT5yaW5nc19pbnVzZSwgc2l6ZSwKPj4gKwkJCQkJZ3BfcmluZ3MtPnN0YXJ0KTsKPj4gKwkJaWYg
KGlkID09IHNpemUpCj4+ICsJCQlnb3RvIGVycm9yOwo+PiArCX0gZWxzZSBpZiAoaWQgPCAwKSB7
Cj4+ICsJCWdvdG8gZXJyb3I7Cj4+ICsJfQo+PiArCj4+ICsJaWYgKHRlc3RfYml0KGlkLCByaW5n
YWNjLT5yaW5nc19pbnVzZSkgJiYKPj4gKwkgICAgIShyaW5nYWNjLT5yaW5nc1tpZF0uZmxhZ3Mg
JiBLM19SSU5HX0ZMQUdfU0hBUkVEKSkKPj4gKwkJZ290byBlcnJvcjsKPj4gKwllbHNlIGlmIChy
aW5nYWNjLT5yaW5nc1tpZF0uZmxhZ3MgJiBLM19SSU5HX0ZMQUdfU0hBUkVEKQo+PiArCQlnb3Rv
IG91dDsKPj4gKwo+PiArCWlmIChmbGFncyAmIEszX1JJTkdBQ0NfUklOR19VU0VfUFJPWFkpIHsK
Pj4gKwkJcHJveHlfaWQgPSBmaW5kX25leHRfemVyb19iaXQocmluZ2FjYy0+cHJveHlfaW51c2Us
Cj4+ICsJCQkJCSAgICAgIHJpbmdhY2MtPm51bV9wcm94aWVzLCAwKTsKPj4gKwkJaWYgKHByb3h5
X2lkID09IHJpbmdhY2MtPm51bV9wcm94aWVzKQo+PiArCQkJZ290byBlcnJvcjsKPj4gKwl9Cj4+
ICsKPj4gKwlpZiAoIXRyeV9tb2R1bGVfZ2V0KHJpbmdhY2MtPmRldi0+ZHJpdmVyLT5vd25lcikp
Cj4+ICsJCWdvdG8gZXJyb3I7Cj4gCj4gc2hvdWxkIHRoaXMgbm90IGJlIG9uZSBvZiB0aGUgZmly
c3QgdGhpbmdzIHRvIGRvPwoKSSdsbCBtb3ZlIGl0LgoKPiAKPj4gKwo+PiArCWlmIChwcm94eV9p
ZCAhPSBLM19SSU5HQUNDX1BST1hZX05PVF9VU0VEKSB7Cj4+ICsJCXNldF9iaXQocHJveHlfaWQs
IHJpbmdhY2MtPnByb3h5X2ludXNlKTsKPj4gKwkJcmluZ2FjYy0+cmluZ3NbaWRdLnByb3h5X2lk
ID0gcHJveHlfaWQ7Cj4+ICsJCWRldl9kYmcocmluZ2FjYy0+ZGV2LCAiR2l2aW5nIHJpbmcjJWQg
cHJveHkjJWRcbiIsIGlkLAo+PiArCQkJcHJveHlfaWQpOwo+PiArCX0gZWxzZSB7Cj4+ICsJCWRl
dl9kYmcocmluZ2FjYy0+ZGV2LCAiR2l2aW5nIHJpbmcjJWRcbiIsIGlkKTsKPj4gKwl9Cj4gCj4g
aG93IGJvdXQgcmVtb3ZpbmcgZWxzZSBhbmQgZG9pbmcgY29tbW9uIHByaW50PwoKV2hlbiB0aGUg
cHJveHkgaXMgdXNlZCB3ZSB3YW50IHRvIHByaW50IHRoYXQgYXMgd2VsbCwgSSB0aGluayBpdCBp
cwpjbGVhbmVyIHRvIGhhdmUgc2VwYXJhdGUgcHJpbnRzIGZvciB0aGUgdHdvIGNhc2VzLgoKLSBQ
w6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAw
MTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2th
L0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
