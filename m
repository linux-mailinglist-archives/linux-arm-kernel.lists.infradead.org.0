Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB354E637
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:36:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sonBBnJCDwOFTpwxgMYis3NC0St2MDbVPzJXLnsoCjE=; b=hsXtj1IB2dkazn3sT3ZjrEtJE
	kmCRyqPVIK3zUW/S2tgdx4Q46ahTDILLIfS9yHgIH3NJ0p5sdwuXB0qHVDfWYJtqMfsZWsItgXKbn
	fwzGghlIqkGJmvY0HBCKYu5cjAIcPJYJjS18TTGYofRP072gtRf2bqUfq+gEsvCrDp65jLDk7GzIL
	qAtB4+EqnzHQYVXc4aIu92saV05gXBP4AdiCO3FFjk146913bvnpEDFdpn2obMmpq9+3TGKWoDP6H
	NpRAfswYfO5ut86G8+6mWS842FDdC4IUFO8iyZpLTDfp1tYP9xTOJm+YTUHx/BiL6gr2pG7Mb+evv
	zJQFLJ85A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGuE-0003xd-Uv; Fri, 21 Jun 2019 10:36:30 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heGrn-00019C-Bf
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:34:05 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 900B561CFF; Fri, 21 Jun 2019 10:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561113238;
 bh=manjW8C5h8K1gbTBvn6fCexwSJjompnXu5lE/tcdFKY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=JZIvWvmHO3I0TN0RuQpSCfRIxnxCycoDng1rZ0dGd5rZ9kDyUJlmmAekpTckl8jJX
 om9fTO4Yo5HLzBbs+qDBF1+dXCEn4ekeddJfX3oYxeN8PcMaKgLnMppvBLDxum8UoD
 Y3WGorGRNAJxs/PP18RMy9/Y9kzPWlG7HsZualyc=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C3EB061CEA;
 Fri, 21 Jun 2019 10:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561113235;
 bh=manjW8C5h8K1gbTBvn6fCexwSJjompnXu5lE/tcdFKY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=B8cGsKjFQT3ugVnuB5+GYixr+/lxRDymgmHQ8ZiB++EWTooJeCFs+GV3swYCLzUju
 mnfJ3q5ODzIBlTOZDatJmPuO4p+oBQdwVPtTIszyRFjkXBjFQh12wCxDMt12bYqOeR
 R09JtP7QV0wur6wluJhDk86LLlOvcCaSXpb5tamI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C3EB061CEA
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCHv2 1/2] coresight: Do not default to CPU0 for missing CPU
 phandle
To: Suzuki K Poulose <suzuki.poulose@arm.com>, mathieu.poirier@linaro.org,
 leo.yan@linaro.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
 alexander.shishkin@linux.intel.com, david.brown@linaro.org,
 mark.rutland@arm.com
References: <cover.1561054498.git.saiprakash.ranjan@codeaurora.org>
 <92a33fa58c77206b338220427e92dabbd1d197f7.1561054498.git.saiprakash.ranjan@codeaurora.org>
 <4176442c-feb8-5245-2b27-afcdb9a6247c@arm.com>
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Message-ID: <f33c524d-2e13-aa4e-0e13-9d89f6ad87dd@codeaurora.org>
Date: Fri, 21 Jun 2019 16:03:49 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <4176442c-feb8-5245-2b27-afcdb9a6247c@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_033359_930817_1C76D49B 
X-CRM114-Status: GOOD (  20.39  )
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

SGVsbG8gU3V6dWtpLAoKT24gNi8yMS8yMDE5IDM6MTggUE0sIFN1enVraSBLIFBvdWxvc2Ugd3Jv
dGU6Cj4gSGkgU2FpLAo+IAo+IAo+IE9uIDA2LzIwLzIwMTkgMDc6MzEgUE0sIFNhaSBQcmFrYXNo
IFJhbmphbiB3cm90ZToKPj4gQ29yZXNpZ2h0IHBsYXRmb3JtIHN1cHBvcnQgYXNzdW1lcyB0aGF0
IGEgbWlzc2luZyAiY3B1IiBwaGFuZGxlCj4+IGRlZmF1bHRzIHRvIENQVTAuIFRoaXMgY291bGQg
YmUgcHJvYmxlbWF0aWMgYW5kIHVubmVjZXNzYXJpbHkgYmluZHMKPj4gY29tcG9uZW50cyB0byBD
UFUwLCB3aGVyZSB0aGV5IG1heSBub3QgYmUuIExldCB1cyBtYWtlIHRoZSBEVCBiaW5kaW5nCj4+
IHJ1bGVzIGEgYml0IHN0cmljdGVyIGJ5IG5vdCBkZWZhdWx0aW5nIHRvIENQVTAgZm9yIG1pc3Np
bmcgImNwdSIKPj4gYWZmaW5pdHkgaW5mb3JtYXRpb24uCj4+Cj4+IEFsc28gaW4gY29yZXNpZ2h0
IGV0bSBhbmQgY3B1LWRlYnVnIGRyaXZlcnMsIGFib3J0IHRoZSBwcm9iZQo+PiBmb3Igc3VjaCBj
YXNlcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogU2FpIFByYWthc2ggUmFuamFuIDxzYWlwcmFrYXNo
LnJhbmphbkBjb2RlYXVyb3JhLm9yZz4KPj4gUmV2aWV3ZWQtYnk6IFN1enVraSBLIFBvdWxvc2Ug
PHN1enVraS5wb3Vsb3NlQGFybS5jb20+Cj4gCj4gUGxlYXNlIGRyb3AgdGhpcyB0YWcgZm9yIG5v
dy4KPiAKCk9rIHdpbGwgZHJvcCB0aGlzLgoKPj4gLS0tCj4+IMKgIERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vY29yZXNpZ2h0LnR4dCB8wqAgMiArLQo+PiDCoCBkcml2ZXJz
L2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LWNwdS1kZWJ1Zy5jwqDCoCB8wqAgMyArKysK
Pj4gwqAgZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC1ldG0zeC5jwqDCoMKg
wqDCoMKgIHzCoCAzICsrKwo+PiDCoCBkcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNp
Z2h0LWV0bTR4LmPCoMKgwqDCoMKgwqAgfMKgIDMgKysrCj4+IMKgIGRyaXZlcnMvaHd0cmFjaW5n
L2NvcmVzaWdodC9jb3Jlc2lnaHQtcGxhdGZvcm0uY8KgwqDCoCB8IDEwICsrKysrLS0tLS0KPj4g
wqAgNSBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9jb3Jl
c2lnaHQudHh0IAo+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vY29y
ZXNpZ2h0LnR4dAo+PiBpbmRleCA4YTg4ZGRlYmMxYTIuLmM0NjU5YmE5NDU3ZCAxMDA2NDQKPj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9jb3Jlc2lnaHQudHh0
Cj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vY29yZXNpZ2h0
LnR4dAo+PiBAQCAtODgsNyArODgsNyBAQCBpdHMgaGFyZHdhcmUgY2hhcmFjdGVyaXN0Y3MuCj4+
IMKgwqDCoMKgwqDCoMKgIHJlZ2lzdGVycyB2aWEgY28tcHJvY2Vzc29yIDE0Lgo+PiDCoMKgwqDC
oMKgICogY3B1OiB0aGUgY3B1IHBoYW5kbGUgdGhpcyBFVE0vUFRNIGlzIGFmZmluZWQgdG8uIFdo
ZW4gb21pdHRlZCB0aGUKPj4gLcKgwqDCoMKgwqAgc291cmNlIGlzIGNvbnNpZGVyZWQgdG8gYmVs
b25nIHRvIENQVTAuCj4+ICvCoMKgwqDCoMKgIGFmZmluaXR5IGlzIHNldCB0byBpbnZhbGlkLgo+
IAo+IFBsZWFzZSBtb3ZlIHRoaXMgZnJvbSB0aGUgIk9wdGlvbmFsIHByb3BlcnRpZXMiLiBJdCBp
cyBub3QgIk9wdGlvbmFsIgo+IGFueW1vcmUgd2l0aCB0aGlzIGNoYW5nZS4gUGxlYXNlIG1ha2Ug
c3VyZSBpdCBpcyBldmlkZW50IHRoYXQgdGhpcwo+IGlzIG1hbmRhdG9yeS4gQWxzbyBwbGVhc2Ug
Zml4IHRoZSBiaW5kaW5ncyBkb2N1bWVudCBmb3IgY3B1LWRlYnVnLnR4dC4KPiAKPiAKPj4gwqAg
KiBPcHRpb25hbCBwcm9wZXJ0eSBmb3IgVE1DOgo+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9o
d3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC1wbGF0Zm9ybS5jIAo+PiBiL2RyaXZlcnMvaHd0
cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtcGxhdGZvcm0uYwo+PiBpbmRleCAzYzVjZWRhOGRi
MjQuLjhiMDNmYTU3MzY4NCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9od3RyYWNpbmcvY29yZXNp
Z2h0L2NvcmVzaWdodC1wbGF0Zm9ybS5jCj4+ICsrKyBiL2RyaXZlcnMvaHd0cmFjaW5nL2NvcmVz
aWdodC9jb3Jlc2lnaHQtcGxhdGZvcm0uYwo+PiBAQCAtMTU5LDE2ICsxNTksMTYgQEAgc3RhdGlj
IGludCBvZl9jb3Jlc2lnaHRfZ2V0X2NwdShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+IMKgwqDCoMKg
wqAgc3RydWN0IGRldmljZV9ub2RlICpkbjsKPj4gwqDCoMKgwqDCoCBpZiAoIWRldi0+b2Zfbm9k
ZSkKPj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IC1FTk9ERVY7Cj4+ICsKPj4gwqDCoMKgwqDCoCBkbiA9IG9mX3BhcnNlX3BoYW5kbGUoZGV2LT5v
Zl9ub2RlLCAiY3B1IiwgMCk7Cj4+IC3CoMKgwqAgLyogQWZmaW5pdHkgZGVmYXVsdHMgdG8gQ1BV
MCAqLwo+PiDCoMKgwqDCoMKgIGlmICghZG4pCj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1cm4gMDsK
Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PREVWOwo+PiArCj4+IMKgwqDCoMKgwqAgY3B1
ID0gb2ZfY3B1X25vZGVfdG9faWQoZG4pOwo+PiDCoMKgwqDCoMKgIG9mX25vZGVfcHV0KGRuKTsK
PiAKPiBQbGVhc2UgZml4IHRoZSBhY3BpX2NvcmVzaWdodF9nZXRfY3B1KCkgZm9yIEFDUEkuCj4g
CgpPayB3aWxsIGRvIGl0LiBUaGFua3MgYWdhaW4gZm9yIHRoZSByZXZpZXcgY29tbWVudHMuCgot
U2FpCgotLSAKUVVBTENPTU0gSU5ESUEsIG9uIGJlaGFsZiBvZiBRdWFsY29tbSBJbm5vdmF0aW9u
IENlbnRlciwgSW5jLiBpcyBhIG1lbWJlcgpvZiBDb2RlIEF1cm9yYSBGb3J1bSwgaG9zdGVkIGJ5
IFRoZSBMaW51eCBGb3VuZGF0aW9uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
