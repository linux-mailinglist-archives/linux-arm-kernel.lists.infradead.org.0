Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E81AA4D211
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eMBqQ/5wIRk2L84c5VV2xJYk0bNWi93y2B25Xp1sPkM=; b=LZqF+XIpiliyS2NIDZ8uVGQpB
	ss/vdc2GBOFfKHhj8x55t8J8CKgGokniM9tUz9/72mBAYLGEZMglwWdZVluKbea8xqjZO0EnQq61H
	is9l2lFywuncIDnzSnKD+xM6yvrF5CBAp2GwUbi/uOgcwDjuIV7zyLPKFjDJ2cfMa8hIQZcUYP+rB
	SPMy9KBDGVLGx4tqpXIGdOl3X3DegyyCI5Zp1C2mzgPnnEvpRTd1JWhLbMB/NvVZA2XIByfTgz7+f
	qgp+6C5daB5lg7tLmJInrCMOwkMaZIdoo4QzFS6b6IzbGdLGitIIEDFASBB+N6AliEQf/UI7K5701
	8C42k6AaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyv3-0000dP-2O; Thu, 20 Jun 2019 15:24:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyup-0000cj-BJ
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:23:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 95BB828;
 Thu, 20 Jun 2019 08:23:54 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 198A23F246;
 Thu, 20 Jun 2019 08:23:52 -0700 (PDT)
Subject: Re: [PATCH 2/2] coresight: Abort probe for missing CPU phandle
To: saiprakash.ranjan@codeaurora.org, mathieu.poirier@linaro.org,
 leo.yan@linaro.org, alexander.shishkin@linux.intel.com,
 david.brown@linaro.org, mark.rutland@arm.com
References: <cover.1561037262.git.saiprakash.ranjan@codeaurora.org>
 <d93e28fc80227f9a385130a766a24f8f39a1dcf0.1561037262.git.saiprakash.ranjan@codeaurora.org>
 <1ddee3c1-8299-1991-eb88-151b9c3ee180@arm.com>
 <e3e13629-a723-8b08-cbae-5a3295170900@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <0182216b-5495-bcf7-bb0e-869133b24830@arm.com>
Date: Thu, 20 Jun 2019 16:23:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <e3e13629-a723-8b08-cbae-5a3295170900@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_082355_438289_5FBF1779 
X-CRM114-Status: GOOD (  13.28  )
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
 linux-kernel@vger.kernel.org, sibis@codeaurora.org,
 vivek.gautam@codeaurora.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMC8wNi8yMDE5IDE1OjU1LCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6Cj4gT24gNi8y
MC8yMDE5IDc6MjggUE0sIFN1enVraSBLIFBvdWxvc2Ugd3JvdGU6Cj4+Cj4+Cj4+IE9uIDIwLzA2
LzIwMTkgMTQ6NDUsIFNhaSBQcmFrYXNoIFJhbmphbiB3cm90ZToKPj4+IEN1cnJlbnRseSB0aGUg
Y29yZXNpZ2h0IGV0bSBhbmQgY3B1LWRlYnVnIGRyaXZlcnMKPj4+IGFzc3VtZSB0aGUgYWZmaW5p
dHkgdG8gQ1BVMCByZXR1cm5lZCBieSBjb3Jlc2lnaHQKPj4+IHBsYXRmb3JtIGFuZCBjb250aW51
ZSB0aGUgcHJvYmUgaW4gY2FzZSBvZiBtaXNzaW5nCj4+PiBDUFUgcGhhbmRsZS4gVGhpcyBpcyBu
b3QgdHJ1ZSBhbmQgbGVhZHMgdG8gY3Jhc2gKPj4+IGluIHNvbWUgY2FzZXMsIHNvIGFib3J0IHRo
ZSBwcm9iZSBpbiBjYXNlIG9mIG1pc3NpbmcKPj4+IENQVSBwaGFuZGxlLgo+Pj4KPj4+IFNpZ25l
ZC1vZmYtYnk6IFNhaSBQcmFrYXNoIFJhbmphbiA8c2FpcHJha2FzaC5yYW5qYW5AY29kZWF1cm9y
YS5vcmc+Cj4+PiAtLS0KPj4+ICDCoCBkcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNp
Z2h0LWNwdS1kZWJ1Zy5jIHwgMyArKysKPj4+ICDCoCBkcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2ln
aHQvY29yZXNpZ2h0LWV0bTN4LmPCoMKgwqDCoCB8IDMgKysrCj4+PiAgwqAgZHJpdmVycy9od3Ry
YWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC1ldG00eC5jwqDCoMKgwqAgfCAzICsrKwo+Pj4gIMKg
IDMgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvaHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtY3B1LWRlYnVnLmMKPj4+IGIvZHJp
dmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC1jcHUtZGVidWcuYwo+Pj4gaW5kZXgg
MDdhMTM2N2M3MzNmLi40M2YzMmZhNzFmZjkgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2h3dHJh
Y2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LWNwdS1kZWJ1Zy5jCj4+PiArKysgYi9kcml2ZXJzL2h3
dHJhY2luZy9jb3Jlc2lnaHQvY29yZXNpZ2h0LWNwdS1kZWJ1Zy5jCj4+PiBAQCAtNTc5LDYgKzU3
OSw5IEBAIHN0YXRpYyBpbnQgZGVidWdfcHJvYmUoc3RydWN0IGFtYmFfZGV2aWNlICphZGV2LAo+
Pj4gY29uc3Qgc3RydWN0IGFtYmFfaWQgKmlkKQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1
cm4gLUVOT01FTTsKPj4+ICDCoMKgwqDCoMKgIGRydmRhdGEtPmNwdSA9IGNvcmVzaWdodF9nZXRf
Y3B1KGRldik7Cj4+PiArwqDCoMKgIGlmIChkcnZkYXRhLT5jcHUgPT0gLUVOT0RFVikKPj4+ICvC
oMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT0RFVjsKPj4KPj4gaWYgKGRydmRhdGEtPmNwdSA8IDAp
Cj4+ICAgwqDCoMKgwqByZXR1cm4gZHJ2ZGF0YS0+Y3B1Owo+Pgo+PiBTYW1lIGV2ZXJ5d2hlcmUg
YmVsb3cgPwo+Pgo+PiBBbHNvLCBJIHdvdWxkIGxpa2UgdG8gaGVhciBNYXRoaWV1J3MgdGhvdWdo
dHMgb24gdGhpcyBjaGFuZ2UuIElmIGhlJ3MgT0sKPj4gd2l0aCBpdDoKPj4KPj4gUmV2aWV3ZWQt
Ynk6IFN1enVraSBLIFBvdWxvc2UgPHN1enVraS5wb3Vsb3NlQGFybS5jb20+IHdpdGggdGhlIGNo
YW5nZQo+PiBhYm92ZS4KPj4KPj4KPiAKPiBUaGFua3MsIEkgd2lsbCBtYWtlIHRoZSBjaGFuZ2Ug
YW5kIHJlcG9zdC4KClBsZWFzZSB3YWl0IGZvciBNYXRoaWV1J3MgdGhvdWdodHMgb24gaXQuIEFu
ZCBpbiBnZW5lcmFsIEkgd291bGQgd2FpdApmb3IgZmVlZGJhY2sgZnJvbSB0aGUgcGVvcGxlIGlu
IGEgdmVyc2lvbiwgYmVmb3JlIHBvc3RpbmcgYW5vdGhlciBvbmUsCnRvIHJlZHVjZSB0aGUgbnVt
YmVyIG9mIHJlc3BpbnMuCgpDaGVlcnMKU3V6dWtpCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
