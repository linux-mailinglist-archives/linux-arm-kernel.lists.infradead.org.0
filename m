Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E04117E84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 04:43:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGvvrqrJQt4hjdopTf5rqpZm7XPMM6lzhGOEA0pXEMY=; b=dnukJ2pqwLBeR8
	zcIepqv8W8mZbeT+zEnFmMWDf/nzjlqFYap/33RlT2cRv7bQX3878cg/BxrigZ7APHzmsV03ae8lN
	EWJdjyBmGVxEyK8dJRSU1qf5DPHGdZdyBtXtpbIgJZuPIOcVr54ycjTXvFuSIl5hoFcBgCc914Pay
	3fT/JGNLQtmSNkvN3q6bLGx9mwLn1IfaDGHTCb+iM71CbPlsEj8+o63ds1LBhSFZ3qnKabl+aYwyk
	jv9LHYasHwfNVzaR1eFlm1vX6P7kLGvkLiwPOy6wuhOIughqQbkqjml2O5TbFsKc4Ir0oW6KgEIkX
	5Egp1X7RMxtgxJOlXHgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieWQf-0007rT-OB; Tue, 10 Dec 2019 03:43:17 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieWQ1-0007Qd-El
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 03:42:42 +0000
Received: by mail-qt1-x844.google.com with SMTP id d5so1531797qto.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 19:42:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=HSkbHsLsaqfQDr/Qigk/MgThmH429gWM5QAZfrurbHg=;
 b=AIVWunWPK5LW9THdKlTLo/WzQvKZZ2EqSyz58pgGOfu5PSMm3SUsXm585KE3McK6hu
 Lz27O7Ve1HGXIO66jt+jzI1AQ8w4hwQJ+BUNgVa8hHpKbXXRnMIomcu7fQ/qj1v0AkVx
 Ud7tLGzFoB/I0EEm6ScN8/bkeKdjLo6mxwqYnh1so7ve2YT6EQ3MZUeC2LKl6ywGf1K0
 L4b80SW7JagXi8GtTLgUQXVacQ1yR3l2r3BLaUUrCReIVnrFLeh6FhiDfwt8Fy+oVHel
 AyD39csnZjWmaxZJg0ijrmopIvQcrNLltdR8vpZedWVD20gBt2zyHForNixroxvr2MHU
 kA6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=HSkbHsLsaqfQDr/Qigk/MgThmH429gWM5QAZfrurbHg=;
 b=iAYEQTVIVBHMD7yKxVrTBSN8C9s5VLywi+xN3p6AYlaVAO1Ul+wQWVGK82QHQJVaQ5
 K7Lzg7JbZEuRYKlknrY7qAiYihIomwtJ9MMWJPa222aPrczZlmsLuu++vO4X36F8vOSC
 gjnleZW6AywrBz+Tva7N53oWi8v2zOMg5NQ+5S3P4IT9WdjrxkeZ+jbyv2wdHTQxprTI
 ftlcKILME0ZMzkvIGlRHSGx6VoxICz7hTReOfJgoUhkBlx8nAv8nOBsMY7DIpN9Z3NWb
 qPVkzUim4XVZBEl/ql25x9Vrhxts70iCsElzDfohDJVOEv6noBNfpZBkJcAAKReQdkM1
 fK8Q==
X-Gm-Message-State: APjAAAVNidR2l0zhVXFFhN5CtZT+tYT2G2/k/wDSxd0VwYBIo2wBEBC9
 x7/jusZXcjPHEDIrdl0Z4IAEEQ==
X-Google-Smtp-Source: APXvYqyacWiSW20TRcPBrAZJpXpXZOit1js32GRkn/LlvYq9Pp4PQdj4OqUPdlH8mrwsZGwXkwD8mQ==
X-Received: by 2002:aed:33a3:: with SMTP id v32mr28458752qtd.269.1575949353549; 
 Mon, 09 Dec 2019 19:42:33 -0800 (PST)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id o19sm683827qtb.43.2019.12.09.19.42.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 19:42:32 -0800 (PST)
Message-ID: <89908b9f9ae974b23f7ba05ff658c3860bfbba88.camel@ndufresne.ca>
Subject: Re: [PATCH v3 0/4] media: meson: vdec: Add compliant H264 support
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Neil Armstrong <narmstrong@baylibre.com>, mchehab@kernel.org, 
 hans.verkuil@cisco.com
Date: Mon, 09 Dec 2019 22:42:30 -0500
In-Reply-To: <20191209122028.13714-1-narmstrong@baylibre.com>
References: <20191209122028.13714-1-narmstrong@baylibre.com>
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_194237_709069_1925E201 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpMZSBsdW5kaSAwOSBkw6ljZW1icmUgMjAxOSDDoCAxMzoyMCArMDEwMCwgTmVpbCBBcm1z
dHJvbmcgYSDDqWNyaXQgOgo+IEhlbGxvLAo+IAo+IFRoaXMgcGF0Y2ggc2VyaWVzIGFpbXMgdG8g
YnJpbmcgSC4yNjQgc3VwcG9ydCBhcyB3ZWxsIGFzIGNvbXBsaWFuY2UgdXBkYXRlCj4gdG8gdGhl
IGFtbG9naWMgc3RhdGVmdWwgdmlkZW8gZGVjb2RlciBkcml2ZXIuCgpJIGhhdmUgc3RhcnRlZCB0
ZXN0aW5nIHRoaXMgcGF0Y2hzZXQgb24gUzkwNVguIEknbSBub3QgdmVyeSBmYXIgaW50byBpdAp5
ZXQsIGJ1dCBub3RpY2VkIHRoaXMgc3BhbSBpbiB0aGUga2VybmVsIGxvZ3M6CgpbICAxOTIuMjMw
OTM1XSBtZXNvbi12ZGVjIGM4ODIwMDAwLnZpZGVvLWNvZGVjOiBWSUZJRk8gdXNhZ2UgKDE2Nzc3
ODU4KSA+IFZJRklGTyBzaXplICgxNjc3NzIxNikKClNvIGZhciBpdCBzZWVtcyB0byBiZSBwcmlu
dGVkIG9uY2UgcGVyIGZyYW1lIHdoaWxlIGRlY29kaW5nCmJiYl9zdW5mbG93ZXJfMTA4MHBfMzBm
cHNfbm9ybWFsLm1wNCBmcm9tIGJsZW5kZXIgZm9uZGF0aW9uLiBJJ20gZG9uJ3QKdGhpbmsgSSBo
YXZlIGV2ZXIgc2VlbiB0aGF0IG9uZSBiZWZvcmUuCgo+IAo+IFRoZSBpc3N1ZSBpbiB0aGUgVjEg
cGF0Y2hzZXQgYXQgWzFdIGlzIHNvbHZlZCBieSBwYXRjaCAjMSBmb2xsb3dpbmcgY29tbWVudHMK
PiBhbmQgcmVxdWlyZW1lbnRzIGZyb20gaGFucy4gSXQgbW92ZXMgdGhlIGZ1bGwgZHJhaW5pbmcg
JiBzdG9wcGVkIHN0YXRlIHRyYWNraW5nCj4gYW5kIGhhbmRsaW5nIGZyb20gdmljb2RlYyB0byBj
b3JlIHY0bDItbWVtMm1lbS4KPiAKPiBXaXRoIHRoaXMsIGl0IHBhc3NlcyB2NGwyLWNvbXBsaWFu
Y2Ugd2l0aCBzdHJlYW1pbmcgb24gQW1sb2dpYyBHMTJBIGFuZAo+IEFtbG9naWMgU00xIFNvQ3Mg
c3VjY2Vzc2Z1bGx5Lgo+IAo+IFRoaXMgcGF0Y2hzZXQgZGVwZW5kcyBvbiBHMTJBIGFuZCBTTTEg
ZW5hYmxlbWVudCBzZXJpZXMgYXQgWzJdIGFuZCBbM10uCj4gCj4gVGhlIGNvbXBsaWFuY2UgbG9n
IGlzOgo+ICMgdjRsMi1jb21wbGlhbmNlIC0tc3RyZWFtLWZyb20taGRyIHRlc3QtMjVmcHMuaDI2
NC5oZHIgLXMKPiB2NGwyLWNvbXBsaWFuY2UgU0hBOiA3ZWFkMGUxODU2Yjg5ZjJlMTkzNjlhZjQ1
MmJiMDNmZDBjZDE2NzkzLCA2NCBiaXRzCj4gCj4gQ29tcGxpYW5jZSB0ZXN0IGZvciB2aWNvZGVj
IGRldmljZSAvZGV2L3ZpZGVvMDoKPiAKPiBEcml2ZXIgSW5mbzoKPiAJRHJpdmVyIG5hbWUgICAg
ICA6IHZpY29kZWMKPiAJQ2FyZCB0eXBlICAgICAgICA6IHZpY29kZWMKPiAJQnVzIGluZm8gICAg
ICAgICA6IHBsYXRmb3JtOnZpY29kZWMKPiAJRHJpdmVyIHZlcnNpb24gICA6IDUuNS4wCj4gCUNh
cGFiaWxpdGllcyAgICAgOiAweDg0MjA4MDAwCj4gCQlWaWRlbyBNZW1vcnktdG8tTWVtb3J5Cj4g
CQlTdHJlYW1pbmcKPiAJCUV4dGVuZGVkIFBpeCBGb3JtYXQKPiAJCURldmljZSBDYXBhYmlsaXRp
ZXMKPiAJRGV2aWNlIENhcHMgICAgICA6IDB4MDQyMDgwMDAKPiAJCVZpZGVvIE1lbW9yeS10by1N
ZW1vcnkKPiAJCVN0cmVhbWluZwo+IAkJRXh0ZW5kZWQgUGl4IEZvcm1hdAo+IAlEZXRlY3RlZCBT
dGF0ZWZ1bCBFbmNvZGVyCj4gTWVkaWEgRHJpdmVyIEluZm86Cj4gCURyaXZlciBuYW1lICAgICAg
OiB2aWNvZGVjCj4gCU1vZGVsICAgICAgICAgICAgOiB2aWNvZGVjCj4gCVNlcmlhbCAgICAgICAg
ICAgOiAKPiAJQnVzIGluZm8gICAgICAgICA6IHBsYXRmb3JtOnZpY29kZWMKPiAJTWVkaWEgdmVy
c2lvbiAgICA6IDUuNS4wCj4gCUhhcmR3YXJlIHJldmlzaW9uOiAweDAwMDAwMDAwICgwKQo+IAlE
cml2ZXIgdmVyc2lvbiAgIDogNS41LjAKPiBJbnRlcmZhY2UgSW5mbzoKPiAJSUQgICAgICAgICAg
ICAgICA6IDB4MDMwMDAwMGMKPiAJVHlwZSAgICAgICAgICAgICA6IFY0TCBWaWRlbwo+IEVudGl0
eSBJbmZvOgo+IAlJRCAgICAgICAgICAgICAgIDogMHgwMDAwMDAwMSAoMSkKPiAJTmFtZSAgICAg
ICAgICAgICA6IHN0YXRlZnVsLWVuY29kZXItc291cmNlCj4gCUZ1bmN0aW9uICAgICAgICAgOiBW
NEwyIEkvTwo+IAlQYWQgMHgwMTAwMDAwMiAgIDogMDogU291cmNlCj4gCSAgTGluayAweDAyMDAw
MDA4OiB0byByZW1vdGUgcGFkIDB4MTAwMDAwNSBvZiBlbnRpdHkgJ3N0YXRlZnVsLWVuY29kZXIt
cHJvYyc6IERhdGEsIEVuYWJsZWQsIEltbXV0YWJsZQo+IAo+IFJlcXVpcmVkIGlvY3RsczoKPiAJ
dGVzdCBNQyBpbmZvcm1hdGlvbiAoc2VlICdNZWRpYSBEcml2ZXIgSW5mbycgYWJvdmUpOiBPSwo+
IAl0ZXN0IFZJRElPQ19RVUVSWUNBUDogT0sKPiAKPiBBbGxvdyBmb3IgbXVsdGlwbGUgb3BlbnM6
Cj4gCXRlc3Qgc2Vjb25kIC9kZXYvdmlkZW8wIG9wZW46IE9LCj4gCXRlc3QgVklESU9DX1FVRVJZ
Q0FQOiBPSwo+IAl0ZXN0IFZJRElPQ19HL1NfUFJJT1JJVFk6IE9LCj4gCXRlc3QgZm9yIHVubGlt
aXRlZCBvcGVuczogT0sKPiAKPiBEZWJ1ZyBpb2N0bHM6Cj4gCXRlc3QgVklESU9DX0RCR19HL1Nf
UkVHSVNURVI6IE9LIChOb3QgU3VwcG9ydGVkKQo+IAl0ZXN0IFZJRElPQ19MT0dfU1RBVFVTOiBP
SyAoTm90IFN1cHBvcnRlZCkKPiAKPiBJbnB1dCBpb2N0bHM6Cj4gCXRlc3QgVklESU9DX0cvU19U
VU5FUi9FTlVNX0ZSRVFfQkFORFM6IE9LIChOb3QgU3VwcG9ydGVkKQo+IAl0ZXN0IFZJRElPQ19H
L1NfRlJFUVVFTkNZOiBPSyAoTm90IFN1cHBvcnRlZCkKPiAJdGVzdCBWSURJT0NfU19IV19GUkVR
X1NFRUs6IE9LIChOb3QgU3VwcG9ydGVkKQo+IAl0ZXN0IFZJRElPQ19FTlVNQVVESU86IE9LIChO
b3QgU3VwcG9ydGVkKQo+IAl0ZXN0IFZJRElPQ19HL1MvRU5VTUlOUFVUOiBPSyAoTm90IFN1cHBv
cnRlZCkKPiAJdGVzdCBWSURJT0NfRy9TX0FVRElPOiBPSyAoTm90IFN1cHBvcnRlZCkKPiAJSW5w
dXRzOiAwIEF1ZGlvIElucHV0czogMCBUdW5lcnM6IDAKPiAKPiBPdXRwdXQgaW9jdGxzOgo+IAl0
ZXN0IFZJRElPQ19HL1NfTU9EVUxBVE9SOiBPSyAoTm90IFN1cHBvcnRlZCkKPiAJdGVzdCBWSURJ
T0NfRy9TX0ZSRVFVRU5DWTogT0sgKE5vdCBTdXBwb3J0ZWQpCj4gCXRlc3QgVklESU9DX0VOVU1B
VURPVVQ6IE9LIChOb3QgU3VwcG9ydGVkKQo+IAl0ZXN0IFZJRElPQ19HL1MvRU5VTU9VVFBVVDog
T0sgKE5vdCBTdXBwb3J0ZWQpCj4gCXRlc3QgVklESU9DX0cvU19BVURPVVQ6IE9LIChOb3QgU3Vw
cG9ydGVkKQo+IAlPdXRwdXRzOiAwIEF1ZGlvIE91dHB1dHM6IDAgTW9kdWxhdG9yczogMAo+IAo+
IElucHV0L091dHB1dCBjb25maWd1cmF0aW9uIGlvY3RsczoKPiAJdGVzdCBWSURJT0NfRU5VTS9H
L1MvUVVFUllfU1REOiBPSyAoTm90IFN1cHBvcnRlZCkKPiAJdGVzdCBWSURJT0NfRU5VTS9HL1Mv
UVVFUllfRFZfVElNSU5HUzogT0sgKE5vdCBTdXBwb3J0ZWQpCj4gCXRlc3QgVklESU9DX0RWX1RJ
TUlOR1NfQ0FQOiBPSyAoTm90IFN1cHBvcnRlZCkKPiAJdGVzdCBWSURJT0NfRy9TX0VESUQ6IE9L
IChOb3QgU3VwcG9ydGVkKQo+IAo+IENvbnRyb2wgaW9jdGxzOgo+IAl0ZXN0IFZJRElPQ19RVUVS
WV9FWFRfQ1RSTC9RVUVSWU1FTlU6IE9LCj4gCXRlc3QgVklESU9DX1FVRVJZQ1RSTDogT0sKPiAJ
dGVzdCBWSURJT0NfRy9TX0NUUkw6IE9LCj4gCXRlc3QgVklESU9DX0cvUy9UUllfRVhUX0NUUkxT
OiBPSwo+IAl0ZXN0IFZJRElPQ18oVU4pU1VCU0NSSUJFX0VWRU5UL0RRRVZFTlQ6IE9LCj4gCXRl
c3QgVklESU9DX0cvU19KUEVHQ09NUDogT0sgKE5vdCBTdXBwb3J0ZWQpCj4gCVN0YW5kYXJkIENv
bnRyb2xzOiA2IFByaXZhdGUgQ29udHJvbHM6IDAKPiAKPiBGb3JtYXQgaW9jdGxzOgo+IAl0ZXN0
IFZJRElPQ19FTlVNX0ZNVC9GUkFNRVNJWkVTL0ZSQU1FSU5URVJWQUxTOiBPSwo+IAl0ZXN0IFZJ
RElPQ19HL1NfUEFSTTogT0sgKE5vdCBTdXBwb3J0ZWQpCj4gCXRlc3QgVklESU9DX0dfRkJVRjog
T0sgKE5vdCBTdXBwb3J0ZWQpCj4gCXRlc3QgVklESU9DX0dfRk1UOiBPSwo+IAl0ZXN0IFZJRElP
Q19UUllfRk1UOiBPSwo+IAl0ZXN0IFZJRElPQ19TX0ZNVDogT0sKPiAJdGVzdCBWSURJT0NfR19T
TElDRURfVkJJX0NBUDogT0sgKE5vdCBTdXBwb3J0ZWQpCj4gCXRlc3QgQ3JvcHBpbmc6IE9LCj4g
CXRlc3QgQ29tcG9zaW5nOiBPSyAoTm90IFN1cHBvcnRlZCkKPiAJdGVzdCBTY2FsaW5nOiBPSyAo
Tm90IFN1cHBvcnRlZCkKPiAKPiBDb2RlYyBpb2N0bHM6Cj4gCXRlc3QgVklESU9DXyhUUllfKUVO
Q09ERVJfQ01EOiBPSwo+IAl0ZXN0IFZJRElPQ19HX0VOQ19JTkRFWDogT0sgKE5vdCBTdXBwb3J0
ZWQpCj4gCXRlc3QgVklESU9DXyhUUllfKURFQ09ERVJfQ01EOiBPSyAoTm90IFN1cHBvcnRlZCkK
PiAKPiBCdWZmZXIgaW9jdGxzOgo+IAl0ZXN0IFZJRElPQ19SRVFCVUZTL0NSRUFURV9CVUZTL1FV
RVJZQlVGOiBPSwo+IAl0ZXN0IFZJRElPQ19FWFBCVUY6IE9LCj4gCXRlc3QgUmVxdWVzdHM6IE9L
IChOb3QgU3VwcG9ydGVkKQo+IAo+IFRlc3QgaW5wdXQgMDoKPiAKPiBTdHJlYW1pbmcgaW9jdGxz
Ogo+IAl0ZXN0IHJlYWQvd3JpdGU6IE9LIChOb3QgU3VwcG9ydGVkKQo+IAl0ZXN0IGJsb2NraW5n
IHdhaXQ6IE9LCj4gCVZpZGVvIENhcHR1cmU6IENhcHR1cmVkIDYwIGJ1ZmZlcnMgICAgICAgICAg
ICAgICAgCj4gCXRlc3QgTU1BUCAoc2VsZWN0KTogT0sKPiAJVmlkZW8gQ2FwdHVyZTogQ2FwdHVy
ZWQgNjAgYnVmZmVycyAgICAgICAgICAgICAgICAKPiAJdGVzdCBNTUFQIChlcG9sbCk6IE9LCj4g
CVZpZGVvIENhcHR1cmU6IENhcHR1cmVkIDYwIGJ1ZmZlcnMgICAgICAgICAgICAgICAgCj4gCXRl
c3QgVVNFUlBUUiAoc2VsZWN0KTogT0sKPiAJdGVzdCBETUFCVUY6IENhbm5vdCB0ZXN0LCBzcGVj
aWZ5IC0tZXhwYnVmLWRldmljZQo+IAo+IFRvdGFsIGZvciB2aWNvZGVjIGRldmljZSAvZGV2L3Zp
ZGVvMDogNTAsIFN1Y2NlZWRlZDogNTAsIEZhaWxlZDogMCwgV2FybmluZ3M6IDAKPiAKPiBDaGFu
Z2VzIHNpbmNlIHYyIGF0IFs0XToKPiAtIE1vdmUgZnVsbCBkcmFpbmluZyAmIHN0b3BwZWQgc3Rh
dGUgdHJhY2tpbmcgaW50byBjb3JlIHY0bDItbWVtMm1lbQo+IC0gQWRhcHQgdmljb2RlYyB0byB1
c2UgdGhlIGNvcmUgdjRsMi1tZW0ybWVtIGRyYWluaW5nICYgc3RvcHBlZCBzdGF0ZSB0cmFja2lu
Zwo+IAo+IENoYW5nZXMgc2luY2UgdjEgYXQgWzFdOgo+IC0gZml4ZWQgb3V0cHV0X3NpemUgaXMg
bmV2ZXIgdXNlZCByZXBvcnRlZCBieSBoYW5zCj4gLSByZWJhc2VkIG9uIEcxMkEgYW5kIFNNMSBw
YXRjaGVzCj4gLSBhZGRlZCBoYW5kbGluZyBvZiBxYnVmIGFmdGVyIFNUUkVBTU9OIGFuZCBTVE9Q
IGJlZm9yZSBlbm91Z2h0IGJ1ZmZlciBxdWV1ZWQKPiAKPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtbWVkaWEvMjAxOTEwMDcxNDU5MDkuMjk5NzktMS1tam91cmRhbkBiYXlsaWJy
ZS5jb20KPiBbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWVkaWEvMjAxOTEyMDUx
NTM0MDguMjY1MDAtMS1uYXJtc3Ryb25nQGJheWxpYnJlLmNvbQo+IFszXSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1tZWRpYS8yMDE5MTEyMTEwMTQyOS4yMzgzMS0xLW5hcm1zdHJvbmdA
YmF5bGlicmUuY29tCj4gWzRdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1lZGlhLzIw
MTkxMTI2MDkzNzMzLjMyNDA0LTEtbmFybXN0cm9uZ0BiYXlsaWJyZS5jb20KPiAKPiBNYXhpbWUg
Sm91cmRhbiAoMik6Cj4gICBtZWRpYTogbWVzb246IHZkZWM6IGJyaW5nIHVwIHRvIGNvbXBsaWFu
Y2UKPiAgIG1lZGlhOiBtZXNvbjogdmRlYzogYWRkIEguMjY0IGRlY29kaW5nIHN1cHBvcnQKPiAK
PiBOZWlsIEFybXN0cm9uZyAoMik6Cj4gICBtZWRpYTogdjRsMi1tZW0ybWVtOiBoYW5kbGUgZHJh
aW5pbmcsIHN0b3BwZWQgYW5kIG5leHQtYnVmLWlzLWxhc3QKPiAgICAgc3RhdGVzCj4gICBtZWRp
YTogdmljb2RlYzogdXNlIHY0bDItbWVtMm1lbSBkcmFpbmluZywgc3RvcHBlZCBhbmQKPiAgICAg
bmV4dC1idWYtaXMtbGFzdCBzdGF0ZXMgaGFuZGxpbmcKPiAKPiAgZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92aWNvZGVjL3ZpY29kZWMtY29yZS5jIHwgMTU0ICsrLS0tLQo+ICBkcml2ZXJzL21lZGlh
L3Y0bDItY29yZS92NGwyLW1lbTJtZW0uYyAgICAgICAgfCAxNzQgKysrKysrLQo+ICBkcml2ZXJz
L3N0YWdpbmcvbWVkaWEvbWVzb24vdmRlYy9NYWtlZmlsZSAgICAgfCAgIDIgKy0KPiAgZHJpdmVy
cy9zdGFnaW5nL21lZGlhL21lc29uL3ZkZWMvY29kZWNfaDI2NC5jIHwgNDgyICsrKysrKysrKysr
KysrKysrKwo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvbWVzb24vdmRlYy9jb2RlY19oMjY0Lmgg
fCAgMTQgKwo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvbWVzb24vdmRlYy9lc3BhcnNlci5jICAg
fCAgNTggKy0tCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL3ZkZWMuYyAgICAg
ICB8ICA5MiArKy0tCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL3ZkZWMuaCAg
ICAgICB8ICAxNCArLQo+ICAuLi4vc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL3ZkZWNfaGVscGVy
cy5jICAgfCAgODUgKystCj4gIC4uLi9zdGFnaW5nL21lZGlhL21lc29uL3ZkZWMvdmRlY19oZWxw
ZXJzLmggICB8ICAgNiArLQo+ICAuLi4vc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL3ZkZWNfcGxh
dGZvcm0uYyAgfCAgNzEgKysrCj4gIGluY2x1ZGUvbWVkaWEvdjRsMi1tZW0ybWVtLmggICAgICAg
ICAgICAgICAgICB8ICA4NyArKysrCj4gIDEyIGZpbGVzIGNoYW5nZWQsIDEwMDkgaW5zZXJ0aW9u
cygrKSwgMjMwIGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFn
aW5nL21lZGlhL21lc29uL3ZkZWMvY29kZWNfaDI2NC5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL3N0YWdpbmcvbWVkaWEvbWVzb24vdmRlYy9jb2RlY19oMjY0LmgKPiAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
