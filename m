Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E954CB97
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 12:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v4wN6DJn7UaffH5APM+L2r2J/g46b9YgAtirrHQOSiA=; b=WXe6ejsGKkY5kpJx5/swNOkT8
	GRcLucaon28OVquNwRPhFom1M2YnNVR3GVkS6q93fomD9ckZcoccVzfm9EoM/PxowNOV5GmT9w0vC
	Pr+WdZrwxNEX50CnFWV88a5k+MHipIB+4Qs1tQ2f/+v6tprH8Y+DTO4OLE3MYXYnQMngmgbgYR8L0
	rPw/RKWGzcVZkC+V67TAwNl5pWJ4Q+X1abffknl1S0KTVVSZLKdV6NIhEAvFnjOqJvM1kI14gNOcG
	+ePdKmjhWFSRb7boJf/2cout+Qls1gm3TId5mJPX2fV+TsEXOyrcJ7n1BcvmbGL+S/YAMS3qzGwOX
	mvUSXe6fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdu1k-0008IO-31; Thu, 20 Jun 2019 10:10:44 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdu1Y-0008Hy-BV
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 10:10:33 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id EAAF9609D4; Thu, 20 Jun 2019 10:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561025429;
 bh=JDAdwFAipZV2jVx82jTK+bZWQvaO9/abwFKD1uLSyHQ=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Zxp7LkKrLBCcWoS6Q5xxFfI+vTbU+M5PIwL++saxdRk29QrsTsQVgulZOxWaOM0Uw
 huUaxj053zA+6yprWyMnHQ6WPwk/oY/Qx3SBBN47MAvWhbk3Uji1zKqXXi7cf2PCL3
 kzu0HwMWaw9Y6CDk93pVSFzY8vTzxn3t9NAk8PHk=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.79.136.27]
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6457A6028D;
 Thu, 20 Jun 2019 10:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561025429;
 bh=JDAdwFAipZV2jVx82jTK+bZWQvaO9/abwFKD1uLSyHQ=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Zxp7LkKrLBCcWoS6Q5xxFfI+vTbU+M5PIwL++saxdRk29QrsTsQVgulZOxWaOM0Uw
 huUaxj053zA+6yprWyMnHQ6WPwk/oY/Qx3SBBN47MAvWhbk3Uji1zKqXXi7cf2PCL3
 kzu0HwMWaw9Y6CDk93pVSFzY8vTzxn3t9NAk8PHk=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6457A6028D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: Coresight causes synchronous external abort on msm8916
To: Suzuki K Poulose <suzuki.poulose@arm.com>, stephan@gerhold.net,
 mathieu.poirier@linaro.org
References: <20190618202623.GA53651@gerhold.net>
 <a51f117f-c48d-d3f4-c3d1-9b584e3a055f@arm.com>
 <20190619183904.GB937@gerhold.net>
 <0dcea9a1-999d-7d85-267e-c3bfcfcfa95a@codeaurora.org>
 <6589bf4d-5b39-c95e-0ee5-aaf35a87b40e@arm.com>
 <78b67245-9053-6175-9f9e-dbb12e5fb55c@codeaurora.org>
 <8742555a-e39e-6e10-6c4b-d0d1f271d158@arm.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <1e9b470e-64e2-b4af-1a96-4907497ad950@codeaurora.org>
Date: Thu, 20 Jun 2019 15:40:24 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <8742555a-e39e-6e10-6c4b-d0d1f271d158@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_031032_432748_680D6CE8 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: rnayak@codeaurora.org, linux-arm-msm@vger.kernel.org,
 david.brown@linaro.org, agross@kernel.org, sibis@codeaurora.org,
 vivek.gautam@codeaurora.org, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNi8yMC8yMDE5IDM6MzggUE0sIFN1enVraSBLIFBvdWxvc2Ugd3JvdGU6Cj4gSGkgU2FpLAo+
IAo+IE9uIDIwLzA2LzIwMTkgMTA6NTEsIFNhaSBQcmFrYXNoIFJhbmphbiB3cm90ZToKPiAKPiAu
Li4KPiAKPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVz
aWdodC1ldG00eC5jCj4+Pj4gYi9kcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0
LWV0bTR4LmMKPj4+PiBpbmRleCA4YmIwMDkyYzdlYzIuLjY2MDQzMmFjYmFjMCAxMDA2NDQKPj4+
PiAtLS0gYS9kcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LWV0bTR4LmMKPj4+
PiArKysgYi9kcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LWV0bTR4LmMKPj4+
PiBAQCAtMTEwNyw3ICsxMTA3LDEwIEBAIHN0YXRpYyBpbnQgZXRtNF9wcm9iZShzdHJ1Y3QgYW1i
YV9kZXZpY2UgKmFkZXYsCj4+Pj4gY29uc3Qgc3RydWN0IGFtYmFfaWQgKmlkKQo+Pj4+Cj4+Pj4g
wqDCoMKgwqDCoMKgwqAgc3Bpbl9sb2NrX2luaXQoJmRydmRhdGEtPnNwaW5sb2NrKTsKPj4+Pgo+
Pj4+IC3CoMKgwqAgZHJ2ZGF0YS0+Y3B1ID0gcGRhdGEgPyBwZGF0YS0+Y3B1IDogMDsKPj4+Cj4+
PiBJIGJlbGlldmUsIHdlIHNob3VsZCBzaW1wbHkgYWJvcnQgd2hlbiB3ZSBkb24ndCBoYXZlIHBk
YXRhLiBUaGVyZSBpcyBubwo+Pj4gcG9pbnQKPj4+IGluIHJlZ2lzdGVyaW5nIHRoaXMgRVRNIHVu
bGVzcyB3ZSBrbm93IHdoZXJlIHRoaXMgaXMgY29ubmVjdGVkIHRvLgo+Pj4KPj4KPj4gSSBkaWQg
bm90IHVuZGVyc3RhbmQgdGhpcyBjb21tZW50IHNpbmNlIEkgYW0gcmV0dXJuaW5nIHdpdGggRU5P
REVWIGhlcmUKPj4gYW5kIG5vdCByZWdpc3RlcmluZyB0aGlzIEVUTS4KPiAKPiBJIG1lYW50LAo+
IAo+ICDCoMKgwqDCoC8qIGZhaWwgdGhlIHByb2JlLCBhcyB3ZSBkb24ndCBrbm93IHdoZXJlIHRo
aXMgaXMgY29ubmVjdGVkIHRvICovCj4gIMKgwqDCoMKgaWYgKHBkYXRhKQo+ICDCoMKgwqDCoMKg
wqDCoCByZXR1cm4gLUVOT0VOVDsKPiAKPiAKPiBDaGVlcnMKPiBTdXp1a2kKClRoYW5rcyBTdXp1
a2ksIGdvdCBpdCA6KQoKLS0gClFVQUxDT01NIElORElBLCBvbiBiZWhhbGYgb2YgUXVhbGNvbW0g
SW5ub3ZhdGlvbiBDZW50ZXIsIEluYy4gaXMgYSBtZW1iZXIKb2YgQ29kZSBBdXJvcmEgRm9ydW0s
IGhvc3RlZCBieSBUaGUgTGludXggRm91bmRhdGlvbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
