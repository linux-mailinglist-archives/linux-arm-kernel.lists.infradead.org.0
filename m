Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9444CB8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 12:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=30dPRuvSyNLB0Bu6EHHpqw0aWu3/anZhwYLfk6pqkx4=; b=cP8jel7QpDq5GjSjaoDZRdIEb
	CQSxpJtQU07+Xe4+3VXOcCl41vDsVnNZkoA0tKsHoBfwpT74YBd345YWrjaRz/r0pRdnMMki5svLi
	uPZT7PKD0Ol/zH4MjCb01VI21PJuQ8YjR0ffCmFAOUwgms7sOUseQFf8h5xgIUtSN4cLHxNzYBku4
	oTDYdc4PDVgfHxFNugNujVoBbKnNSwWFaRKKRK9L6nlyRWuvG10wTAAYdXVx/SveIT7D2dRmdy/iX
	hDhn5O8ov2wrvBe3EQ4U5Us43lu/311y+3uZ4t4VDQ4KnjGvvVqnEmWCUaCuXEmeZV4toxGHN9SzH
	wsjhQXx1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtzT-0006Ga-8P; Thu, 20 Jun 2019 10:08:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtzB-0006DZ-1H
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 10:08:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DEFCD360;
 Thu, 20 Jun 2019 03:08:03 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 894FB3F718;
 Thu, 20 Jun 2019 03:08:02 -0700 (PDT)
Subject: Re: Coresight causes synchronous external abort on msm8916
To: saiprakash.ranjan@codeaurora.org, stephan@gerhold.net,
 mathieu.poirier@linaro.org
References: <20190618202623.GA53651@gerhold.net>
 <a51f117f-c48d-d3f4-c3d1-9b584e3a055f@arm.com>
 <20190619183904.GB937@gerhold.net>
 <0dcea9a1-999d-7d85-267e-c3bfcfcfa95a@codeaurora.org>
 <6589bf4d-5b39-c95e-0ee5-aaf35a87b40e@arm.com>
 <78b67245-9053-6175-9f9e-dbb12e5fb55c@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <8742555a-e39e-6e10-6c4b-d0d1f271d158@arm.com>
Date: Thu, 20 Jun 2019 11:08:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <78b67245-9053-6175-9f9e-dbb12e5fb55c@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_030805_132751_970ABCF4 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

SGkgU2FpLAoKT24gMjAvMDYvMjAxOSAxMDo1MSwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgoK
Li4uCgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2ln
aHQtZXRtNHguYwo+Pj4gYi9kcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LWV0
bTR4LmMKPj4+IGluZGV4IDhiYjAwOTJjN2VjMi4uNjYwNDMyYWNiYWMwIDEwMDY0NAo+Pj4gLS0t
IGEvZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC1ldG00eC5jCj4+PiArKysg
Yi9kcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LWV0bTR4LmMKPj4+IEBAIC0x
MTA3LDcgKzExMDcsMTAgQEAgc3RhdGljIGludCBldG00X3Byb2JlKHN0cnVjdCBhbWJhX2Rldmlj
ZSAqYWRldiwKPj4+IGNvbnN0IHN0cnVjdCBhbWJhX2lkICppZCkKPj4+Cj4+PiAgwqDCoMKgwqDC
oMKgIHNwaW5fbG9ja19pbml0KCZkcnZkYXRhLT5zcGlubG9jayk7Cj4+Pgo+Pj4gLcKgwqDCoCBk
cnZkYXRhLT5jcHUgPSBwZGF0YSA/IHBkYXRhLT5jcHUgOiAwOwo+Pgo+PiBJIGJlbGlldmUsIHdl
IHNob3VsZCBzaW1wbHkgYWJvcnQgd2hlbiB3ZSBkb24ndCBoYXZlIHBkYXRhLiBUaGVyZSBpcyBu
bwo+PiBwb2ludAo+PiBpbiByZWdpc3RlcmluZyB0aGlzIEVUTSB1bmxlc3Mgd2Uga25vdyB3aGVy
ZSB0aGlzIGlzIGNvbm5lY3RlZCB0by4KPj4KPiAKPiBJIGRpZCBub3QgdW5kZXJzdGFuZCB0aGlz
IGNvbW1lbnQgc2luY2UgSSBhbSByZXR1cm5pbmcgd2l0aCBFTk9ERVYgaGVyZQo+IGFuZCBub3Qg
cmVnaXN0ZXJpbmcgdGhpcyBFVE0uCgpJIG1lYW50LAoKCS8qIGZhaWwgdGhlIHByb2JlLCBhcyB3
ZSBkb24ndCBrbm93IHdoZXJlIHRoaXMgaXMgY29ubmVjdGVkIHRvICovCglpZiAocGRhdGEpCgkJ
cmV0dXJuIC1FTk9FTlQ7CgoKQ2hlZXJzClN1enVraQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
