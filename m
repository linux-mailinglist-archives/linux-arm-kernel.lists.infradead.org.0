Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D8D4D100
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 16:54:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b/0VAA9dFjAdoaBYe/ZIxO+QNx+y0BN7hlStkYHuAKg=; b=KizMGvJynCkIiJJDGQYFXPQzb
	Bg9QDp0NfB2m8bfMttriMOfOCdPnre/9yQvua/6MHzmuEHOWBkuTde1dgUH7FJ5UNcZEO9KHd/0dQ
	ftBBfxJhPmeiJXWtC7GgepwturawwNzPCeSB+DkWRrr8my4kdLzF8UMSOxvpOdasSwA7FEXLJhqfI
	uDERyH2vmNY8qJKLk/cSzGWUZ1yN96km4wnpsP9VgzlGHV6nOc/5EvPAbYUFSM+dKWeZbqJRPDB9t
	yLG8QjLpApW66LYeR06MfqQaVIMlgQg0KmE4bMUsYrFIvuImrZRCYFp3cwu07TFRnOfBhwDSMGJFM
	y0N5wmAsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdySa-0007kJ-Jv; Thu, 20 Jun 2019 14:54:44 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdySL-0007jv-Ry
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 14:54:31 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1185160E75; Thu, 20 Jun 2019 14:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561042469;
 bh=pMqbryRRbIU4AIh4v96MaC9JtLkGuFViwuA1Q/TdhH8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=dQ5Bcf6+2BINUIwvk0P99mldc/Sp2+mVBsj4iSPKP2vjLQnqTu3XZPI3hLeQDwzTP
 w3GiHvLioqqDhrygU2/fDgCvdsmwNTeis6of9rwnwpU0x50fgG3yt1Sy7EBNZzZzt3
 UnxP5TkEioO8RtcWHourNJVpFILndOC4OCpf4XMs=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 94B6A608BA;
 Thu, 20 Jun 2019 14:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561042467;
 bh=pMqbryRRbIU4AIh4v96MaC9JtLkGuFViwuA1Q/TdhH8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=AR65EvCstzMeE5tDxoWxP15ede45s1/eKvpOiavIWK/aCqSi5jeazJ8BS3UAHLxUd
 PPIwOW0Y+rAPUB7FM8z3/hA5yXnXIqyxuAnBFStp+YBoypeD/rRsnbiJTx9pxlQZ0R
 +YvfJAEgKc1Lthg0wn0GRgqy2j6Y6ZNCpbuzzpNY=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 94B6A608BA
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCH 1/2] coresight: Set affinity to invalid for missing CPU
 phandle
To: Suzuki K Poulose <suzuki.poulose@arm.com>, mathieu.poirier@linaro.org,
 leo.yan@linaro.org, alexander.shishkin@linux.intel.com,
 andy.gross@linaro.org, david.brown@linaro.org, mark.rutland@arm.com
References: <cover.1561037262.git.saiprakash.ranjan@codeaurora.org>
 <49d6554536047b9f5526c4ea33990b7c904673d3.1561037262.git.saiprakash.ranjan@codeaurora.org>
 <f7a3592b-7ed7-b011-9ae1-dc2ca0e49ae4@arm.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <fc72dab8-d287-38d4-1abd-faca02c09118@codeaurora.org>
Date: Thu, 20 Jun 2019 20:24:21 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <f7a3592b-7ed7-b011-9ae1-dc2ca0e49ae4@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_075429_944553_7193DE37 
X-CRM114-Status: GOOD (  25.53  )
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

SGkgU3V6dWtpLAoKVGhhbmtzIGZvciB0aGUgcmV2aWV3LgoKT24gNi8yMC8yMDE5IDc6MjUgUE0s
IFN1enVraSBLIFBvdWxvc2Ugd3JvdGU6Cj4gCj4gU2FpLAo+IAo+IFRoYW5rcyBmb3IgdGhlIHBh
dGNoLiBQbGVhc2UgY291bGQgeW91IGNoYW5nZSB0aGUgc3ViamVjdCB0byA6Cj4gCj4gImNvcmVz
aWdodDogRG8gbm90IGRlZmF1bHQgdG8gQ1BVMCBmb3IgbWlzc2luZyBDUFUgcGhhbmRsZSIKPiAK
ClN1cmUuCgo+IE9uIDIwLzA2LzIwMTkgMTQ6NDUsIFNhaSBQcmFrYXNoIFJhbmphbiB3cm90ZToK
Pj4gQWZmaW5pdHkgZGVmYXVsdHMgdG8gQ1BVMCBpbiBjYXNlIG9mIG1pc3NpbmcgQ1BVIHBoYW5k
bGUKPj4gYW5kIHRoaXMgbGVhZHMgdG8gY3Jhc2hlcyBpbiBzb21lIGNhc2VzIGJlY2F1c2Ugb2Yg
c3VjaAo+PiB3cm9uZyBhc3N1bXB0aW9uLiBGaXggdGhpcyBieSByZXR1cm5pbmcgLUVOT0RFViBp
bgo+IAo+IFRoYXRzIG5vdCB0aGUgcmlnaHQganVzdGlmaWNhdGlvbi4gQ2F1c2luZyBjcmFzaGVz
IGlzIGR1ZSB0bwo+IGJhZCBEVC9maXJtd2FyZS4gSSB3b3VsZCBiZSBoYXBweSB3aXRoIHNvbWV0
aGluZyBsaWtlIDoKPiAKPiAiQ29yZXNpZ2h0IHBsYXRmb3JtIHN1cHBvcnQgYXNzdW1lcyB0aGF0
IGEgbWlzc2luZyBcImNwdVwiIHBoYW5kbGUKPiBkZWZhdWx0cyB0byBDUFUwLiBUaGlzIGNvdWxk
IGJlIHByb2JsZW1hdGljIGFuZCB1bm5lY2Vzc2FyaWx5IGJpbmRzCj4gY29tcG9uZW50cyB0byBD
UFUwLCB3aGVyZSB0aGV5IG1heSBub3QgYmUuIExldCB1cyBtYWtlIHRoZSBEVCBiaW5kaW5nCj4g
cnVsZXMgYSBiaXQgc3RyaWN0ZXIgYnkgbm90IGRlZmF1bHRpbmcgdG8gQ1BVMCBmb3IgbWlzc2lu
ZyAiY3B1Igo+IGFmZmluaXR5IGluZm9ybWF0aW9uLiIKPiAKPiBBbHNvLCB5b3UgbXVzdAo+IAo+
IDEpIHVwZGF0ZSB0aGUgZGV2aWNldHJlZS9iaW5kaW5ncyBkb2N1bWVudCB0byByZWZsZWN0IHRo
ZSBzYW1lLgo+IDIpIHVwZGF0ZSB0aGUgZHJpdmVycyB0byB0YWtlIGFwcHJvcHJpYXRlIGFjdGlv
biBvbiB0aGUgbWlzc2luZyBDUFUKPiAgwqDCoCB3aGVyZSB0aGV5IGFyZSBleHBlY3RlZCAoZS5n
LCBDUFUtZGVidWcsIGV0bSopLCB0byBwcmV2ZW50Cj4gIMKgwqAgYnJlYWtpbmcgYSBiaXNlY3Qu
Cj4gCj4gCgpTdXJlIHdpbGwgZG8gaXQgYW5kIHJlcG9zdC4KCj4+IGNvcmVzaWdodCBwbGF0Zm9y
bSBmb3Igc3VjaCBjYXNlcyBhbmQgdGhlbiBoYW5kbGUgaXQKPj4gaW4gdGhlIGNvcmVzaWdodCBk
cml2ZXJzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTYWkgUHJha2FzaCBSYW5qYW4gPHNhaXByYWth
c2gucmFuamFuQGNvZGVhdXJvcmEub3JnPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9od3RyYWNpbmcv
Y29yZXNpZ2h0L2NvcmVzaWdodC1wbGF0Zm9ybS5jIHwgMTAgKysrKysrLS0tLQo+PiDCoCAxIGZp
bGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC1wbGF0Zm9ybS5jIAo+
PiBiL2RyaXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtcGxhdGZvcm0uYwo+PiBp
bmRleCAzYzVjZWRhOGRiMjQuLmIxZWE2MGMyMTBlMSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9o
d3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC1wbGF0Zm9ybS5jCj4+ICsrKyBiL2RyaXZlcnMv
aHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtcGxhdGZvcm0uYwo+PiBAQCAtMTYwLDE1ICsx
NjAsMTcgQEAgc3RhdGljIGludCBvZl9jb3Jlc2lnaHRfZ2V0X2NwdShzdHJ1Y3QgZGV2aWNlICpk
ZXYpCj4+IMKgwqDCoMKgwqAgaWYgKCFkZXYtPm9mX25vZGUpCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCByZXR1cm4gMDsKPj4gKwo+PiDCoMKgwqDCoMKgIGRuID0gb2ZfcGFyc2VfcGhhbmRsZShkZXYt
Pm9mX25vZGUsICJjcHUiLCAwKTsKPj4gLcKgwqDCoCAvKiBBZmZpbml0eSBkZWZhdWx0cyB0byBD
UFUwICovCj4+ICsKPj4gK8KgwqDCoCAvKiBBZmZpbml0eSBkZWZhdWx0cyB0byBpbnZhbGlkIGlm
IG5vIGNwdSBub2RlcyBhcmUgZm91bmQqLwo+IAo+IFRoZSBjb2RlIGlzIHNlbGYgZXhwbGFuYXRv
cnkgaGVyZS4gWW91IGNvdWxkIGRyb3AgdGhlIGNvbW1lbnQuCj4gCgpTdXJlLgoKPj4gwqDCoMKg
wqDCoCBpZiAoIWRuKQo+PiAtwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+ICvCoMKgwqDCoMKg
wqDCoCByZXR1cm4gLUVOT0RFVjsKPj4gKwo+PiDCoMKgwqDCoMKgIGNwdSA9IG9mX2NwdV9ub2Rl
X3RvX2lkKGRuKTsKPj4gwqDCoMKgwqDCoCBvZl9ub2RlX3B1dChkbik7Cj4+IC3CoMKgwqAgLyog
QWZmaW5pdHkgdG8gQ1BVMCBpZiBubyBjcHUgbm9kZXMgYXJlIGZvdW5kICovCj4+IC3CoMKgwqAg
cmV0dXJuIChjcHUgPCAwKSA/IDAgOiBjcHU7Cj4+ICvCoMKgwqAgcmV0dXJuIGNwdTsKPj4gwqAg
fQo+IAo+IFN1enVraQoKLVNhaQoKLS0gClFVQUxDT01NIElORElBLCBvbiBiZWhhbGYgb2YgUXVh
bGNvbW0gSW5ub3ZhdGlvbiBDZW50ZXIsIEluYy4gaXMgYSBtZW1iZXIKb2YgQ29kZSBBdXJvcmEg
Rm9ydW0sIGhvc3RlZCBieSBUaGUgTGludXggRm91bmRhdGlvbgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
