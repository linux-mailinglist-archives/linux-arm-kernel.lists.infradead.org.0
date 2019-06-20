Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D514D105
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 16:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jwjIDyWDKSGKuOrVOX2kVKQusOl59Ds+yiXtCzVHejQ=; b=Oci+siy2YLcQORLiGgv4MwV4/
	4ZmLB0htfu+BVjpWWgQBOg6RGSNmdKra07xvn5F2NagXw5B739YtUt5Jp4NjWwIkCNmVAGFTTlmR7
	8+sFs/BLD0fXor7OWZnZ9Dll9x1cdb8uznOGgFpUjr6DN296q4wyY6pxGZyTYvTfMK/UdwR2DE524
	ZDi5X47MV9xELjmh44KO6vcS/QOhcVLbY8tITVKaj59Ky6+EhnzCZv3WtqOeqa+QBNLkhUknbHKQ1
	dqUAcPDeXbqB8FxBb1Xra8jEFBurcXNnC7BafWerTFoWHbyzf83th9mzyiqdB4sL6AY4M6wp065/Y
	j6oALmIJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyTT-0000mi-GK; Thu, 20 Jun 2019 14:55:39 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyTE-0000mM-20
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 14:55:25 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C33E16038E; Thu, 20 Jun 2019 14:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561042523;
 bh=lp+jYH159W3J3+bnQT9chGwWKrrMYUzb9E4b8qJNR9U=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=fhJMSXZsZxzA+X9PCxUBxS7snnrHEYYxC9giG98Fqwd90kGAuEF02C+HVBIaOWBZp
 Gh+wcusRz3xazemSBfS9HscXQayol5Bk7LqDFVm6IxHbR1TbhuSzWtry8cPkeDni2Y
 vcsMXy6vn3eI2c09x1ecT34Za2KCFlk6KHbDVBZg=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EC87160ACE;
 Thu, 20 Jun 2019 14:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561042522;
 bh=lp+jYH159W3J3+bnQT9chGwWKrrMYUzb9E4b8qJNR9U=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=flQUbIQ99CMAijIbse9AyEtVxoH+Lfj8A8LdDcc+cIZS5yWeun0d45D3iByJtmUNz
 6WfERkzKW3xvyhOHZr0T3k/gCHNeITKLCmqPaSaXt/w11n7AwgfGJx4bwYPjeTk4lZ
 HrLmC6EOn2mdXmepgiLXPcVMotVwIWmouh/ni3B4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EC87160ACE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCH 2/2] coresight: Abort probe for missing CPU phandle
To: Suzuki K Poulose <suzuki.poulose@arm.com>, mathieu.poirier@linaro.org,
 leo.yan@linaro.org, alexander.shishkin@linux.intel.com,
 david.brown@linaro.org, mark.rutland@arm.com
References: <cover.1561037262.git.saiprakash.ranjan@codeaurora.org>
 <d93e28fc80227f9a385130a766a24f8f39a1dcf0.1561037262.git.saiprakash.ranjan@codeaurora.org>
 <1ddee3c1-8299-1991-eb88-151b9c3ee180@arm.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <e3e13629-a723-8b08-cbae-5a3295170900@codeaurora.org>
Date: Thu, 20 Jun 2019 20:25:16 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1ddee3c1-8299-1991-eb88-151b9c3ee180@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_075524_133568_74131FA1 
X-CRM114-Status: GOOD (  16.01  )
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
 linux-kernel@vger.kernel.org, sibis@codeaurora.org,
 vivek.gautam@codeaurora.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNi8yMC8yMDE5IDc6MjggUE0sIFN1enVraSBLIFBvdWxvc2Ugd3JvdGU6Cj4gCj4gCj4gT24g
MjAvMDYvMjAxOSAxNDo0NSwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+PiBDdXJyZW50bHkg
dGhlIGNvcmVzaWdodCBldG0gYW5kIGNwdS1kZWJ1ZyBkcml2ZXJzCj4+IGFzc3VtZSB0aGUgYWZm
aW5pdHkgdG8gQ1BVMCByZXR1cm5lZCBieSBjb3Jlc2lnaHQKPj4gcGxhdGZvcm0gYW5kIGNvbnRp
bnVlIHRoZSBwcm9iZSBpbiBjYXNlIG9mIG1pc3NpbmcKPj4gQ1BVIHBoYW5kbGUuIFRoaXMgaXMg
bm90IHRydWUgYW5kIGxlYWRzIHRvIGNyYXNoCj4+IGluIHNvbWUgY2FzZXMsIHNvIGFib3J0IHRo
ZSBwcm9iZSBpbiBjYXNlIG9mIG1pc3NpbmcKPj4gQ1BVIHBoYW5kbGUuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IFNhaSBQcmFrYXNoIFJhbmphbiA8c2FpcHJha2FzaC5yYW5qYW5AY29kZWF1cm9yYS5v
cmc+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LWNw
dS1kZWJ1Zy5jIHwgMyArKysKPj4gwqAgZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVz
aWdodC1ldG0zeC5jwqDCoMKgwqAgfCAzICsrKwo+PiDCoCBkcml2ZXJzL2h3dHJhY2luZy9jb3Jl
c2lnaHQvY29yZXNpZ2h0LWV0bTR4LmPCoMKgwqDCoCB8IDMgKysrCj4+IMKgIDMgZmlsZXMgY2hh
bmdlZCwgOSBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2h3dHJhY2lu
Zy9jb3Jlc2lnaHQvY29yZXNpZ2h0LWNwdS1kZWJ1Zy5jIAo+PiBiL2RyaXZlcnMvaHd0cmFjaW5n
L2NvcmVzaWdodC9jb3Jlc2lnaHQtY3B1LWRlYnVnLmMKPj4gaW5kZXggMDdhMTM2N2M3MzNmLi40
M2YzMmZhNzFmZjkgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9j
b3Jlc2lnaHQtY3B1LWRlYnVnLmMKPj4gKysrIGIvZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0
L2NvcmVzaWdodC1jcHUtZGVidWcuYwo+PiBAQCAtNTc5LDYgKzU3OSw5IEBAIHN0YXRpYyBpbnQg
ZGVidWdfcHJvYmUoc3RydWN0IGFtYmFfZGV2aWNlICphZGV2LCAKPj4gY29uc3Qgc3RydWN0IGFt
YmFfaWQgKmlkKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTk9NRU07Cj4+IMKgwqDC
oMKgwqAgZHJ2ZGF0YS0+Y3B1ID0gY29yZXNpZ2h0X2dldF9jcHUoZGV2KTsKPj4gK8KgwqDCoCBp
ZiAoZHJ2ZGF0YS0+Y3B1ID09IC1FTk9ERVYpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVO
T0RFVjsKPiAKPiBpZiAoZHJ2ZGF0YS0+Y3B1IDwgMCkKPiAgwqDCoMKgwqByZXR1cm4gZHJ2ZGF0
YS0+Y3B1Owo+IAo+IFNhbWUgZXZlcnl3aGVyZSBiZWxvdyA/Cj4gCj4gQWxzbywgSSB3b3VsZCBs
aWtlIHRvIGhlYXIgTWF0aGlldSdzIHRob3VnaHRzIG9uIHRoaXMgY2hhbmdlLiBJZiBoZSdzIE9L
Cj4gd2l0aCBpdDoKPiAKPiBSZXZpZXdlZC1ieTogU3V6dWtpIEsgUG91bG9zZSA8c3V6dWtpLnBv
dWxvc2VAYXJtLmNvbT4gd2l0aCB0aGUgY2hhbmdlIAo+IGFib3ZlLgo+IAo+IAoKVGhhbmtzLCBJ
IHdpbGwgbWFrZSB0aGUgY2hhbmdlIGFuZCByZXBvc3QuCgotU2FpCgotLSAKUVVBTENPTU0gSU5E
SUEsIG9uIGJlaGFsZiBvZiBRdWFsY29tbSBJbm5vdmF0aW9uIENlbnRlciwgSW5jLiBpcyBhIG1l
bWJlcgpvZiBDb2RlIEF1cm9yYSBGb3J1bSwgaG9zdGVkIGJ5IFRoZSBMaW51eCBGb3VuZGF0aW9u
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
