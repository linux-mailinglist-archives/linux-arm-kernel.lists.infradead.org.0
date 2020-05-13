Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A813A1D12DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p8roovK+N9PxQQcjUEl7sbqEd9gAqixVgN3/DO65fFw=; b=gqhRs2cRRFtm6mLonmdYt/PPC
	tCnlXS/IjYKREkjeqjeVEac3boiMgFrqYUQXv88LrBASPDZq3KJttRCHZxQFar43r52ZAvOiTwQ9A
	0dPM/bZw8HG4kTuiydOqf7v7QbiekGwyZg3mGjbCH3yVmIyY4Po6zGH2vOhj03RnTtWFJk51CRqaf
	Xl/OLcQ080mlfEZFga/4cqRGi3gs/Xq3RrgJIxrSTvQYnlZ8F/6jOqqBRKh8D3qzVxa0+BGmRn8OI
	YD6MERuLgojQTabtlKaGFWX7XFWFya/RON+bgvjq5gpaYiN7N3GUbLqu2kBaBfQuAfmn/iBzhiWPv
	ulMlbu8Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqd5-0004UU-U7; Wed, 13 May 2020 12:36:55 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqcw-0004Tu-UD
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:36:48 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589373406; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=1bIACGn3qu0AkWG8WHlzjCsFZPAVF8AVKnV4pu2xA/M=;
 b=N0XwDuryqfMhfBk5g+krH93A4SaGfcLA6oO9R1y9eEjQkOo28lMreaFQiwLrkNhx66MWrnQF
 3fz+De+dzSXm8VLk6NOvZEcdw/3DTB8PH0qkL44egK2geYrMv/cZlBUU3SbCaUOnZT2BjXRj
 BcmbecjzDf//ulBn/2yRC2w+2IM=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ebbe9dd.7f1bd4d1df80-smtp-out-n05;
 Wed, 13 May 2020 12:36:45 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 525A7C43637; Wed, 13 May 2020 12:36:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [172.20.10.2] (unknown [106.76.13.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kathirav)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 309E4C433F2;
 Wed, 13 May 2020 12:36:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 309E4C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kathirav@codeaurora.org
Subject: Re: [PATCH] coresight: platform: use dev_warn instead of dev_warn_once
To: Suzuki K Poulose <suzuki.poulose@arm.com>, mathieu.poirier@linaro.org
References: <1588933721-18700-1-git-send-email-kathirav@codeaurora.org>
 <20200511165851.GB13202@xps15> <2d59194a-2785-8762-81cd-bef34c6a51ec@arm.com>
From: Kathiravan Thirumoorthy <kathirav@codeaurora.org>
Message-ID: <2fda05b0-ed3d-7e48-6fab-2309d8a1ad56@codeaurora.org>
Date: Wed, 13 May 2020 18:06:36 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <2d59194a-2785-8762-81cd-bef34c6a51ec@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_053647_034395_93D81B26 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: alexander.shishkin@linux.intel.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS8xMS8yMDIwIDExOjAxIFBNLCBTdXp1a2kgSyBQb3Vsb3NlIHdyb3RlOgo+IE9uIDA1LzEx
LzIwMjAgMDU6NTggUE0sIE1hdGhpZXUgUG9pcmllciB3cm90ZToKPj4gSGkgS2F0aGlyYXZhbiwK
Pj4KPj4gT24gRnJpLCBNYXkgMDgsIDIwMjAgYXQgMDM6NTg6NDFQTSArMDUzMCwgS2F0aGlyYXZh
biBUIHdyb3RlOgo+Pj4gV2hlbiBtb3JlIHRoYW4gb25lIGNvcmVzaWdodCBjb21wb25lbnRzIHVz
ZXMgdGhlIG9ic29sZXRlIERUIGJpbmRpbmdzLAo+Pj4gd2FybmluZyBpcyBkaXNwbGF5ZWQgZm9y
IG9ubHkgb25lIGNvbXBvbmVudCBhbmQgbm90IGZvciB0aGUgb3RoZXJzLgo+Pj4gTGV0cyB3YXJu
IGl0IGZvciBhbGwgY29tcG9uZW50cyBieSByZXBsYWNpbmcgZGV2X3dhcm5fb25jZSB3aXRoIAo+
Pj4gZGV2X3dhcm4uCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogS2F0aGlyYXZhbiBUIDxrYXRoaXJh
dkBjb2RlYXVyb3JhLm9yZz4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9od3RyYWNpbmcvY29yZXNp
Z2h0L2NvcmVzaWdodC1wbGF0Zm9ybS5jIHwgMiArLQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
aHd0cmFjaW5nL2NvcmVzaWdodC9jb3Jlc2lnaHQtcGxhdGZvcm0uYyAKPj4+IGIvZHJpdmVycy9o
d3RyYWNpbmcvY29yZXNpZ2h0L2NvcmVzaWdodC1wbGF0Zm9ybS5jCj4+PiBpbmRleCA0MzQxOGEy
Li5iN2Q5YTAyIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9od3RyYWNpbmcvY29yZXNpZ2h0L2Nv
cmVzaWdodC1wbGF0Zm9ybS5jCj4+PiArKysgYi9kcml2ZXJzL2h3dHJhY2luZy9jb3Jlc2lnaHQv
Y29yZXNpZ2h0LXBsYXRmb3JtLmMKPj4+IEBAIC0yODQsNyArMjg0LDcgQEAgc3RhdGljIGludCBv
Zl9nZXRfY29yZXNpZ2h0X3BsYXRmb3JtX2RhdGEoc3RydWN0IAo+Pj4gZGV2aWNlICpkZXYsCj4+
PiDCoMKgwqDCoMKgIGlmICghcGFyZW50KSB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgbGVnYWN5
X2JpbmRpbmcgPSB0cnVlOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHBhcmVudCA9IG5vZGU7Cj4+
PiAtwqDCoMKgwqDCoMKgwqAgZGV2X3dhcm5fb25jZShkZXYsICJVc2VzIG9ic29sZXRlIENvcmVz
aWdodCBEVCBiaW5kaW5nc1xuIik7Cj4+PiArwqDCoMKgwqDCoMKgwqAgZGV2X3dhcm4oZGV2LCAi
VXNlcyBvYnNvbGV0ZSBDb3Jlc2lnaHQgRFQgYmluZGluZ3NcbiIpOwo+Pgo+PiBXZSBtYWRlIGEg
Y29uY2lvdXMgZGVjaXNpb24gdG8gdXNlIGRldl93YXJuX29uY2UoKSByYXRoZXIgdGhhbiAKPj4g
ZGV2X3dhcm4oKS4KPj4gVGhlcmUgY2FuIGJlIGEgbG90IG9mIGNvcmVzaWdodCBkZXZpY2VzIG9u
IGEgcGxhdGZvcm0gYW5kIHdhcm5pbmcgZm9yIAo+PiBldmVyeQo+PiBkZXZpY2UgZG9lc24ndCBk
byBhbnl0aGluZyBtb3JlIHRoYW4gYWRkaW5nIG5vaXNlLgo+Pgo+PiBJZiBvbmUgZGV2aWNlIGlz
IHVzaW5nIG9ic29sZXRlIGJpbmRpbmdzIHRoZSBvdGhlcnMgdmVyeSBsaWtlbHkgdG8gZG8gCj4+
IHNvIGFzCj4+IHdlbGwuwqAgV2hpbGUgZml4aW5nIG9uZSBkZXZpY2UsIGNoZWNraW5nIHRoZSBy
ZW1haW5pbmcgZGV2aWNlcyBzaG91bGQgYmUKPj4gaW50dWl0aXZlLgo+Cj4gRXhhY3RseSAhIE9y
IHNvbWVvbmUgY291bGQgcmVwZWF0IHRoZSBwcm9jZXNzIHVudGlsIGFsbCBhcmUgZml4ZWQgOy0p
Cj4KPiBDaGVlcnMKPiBTdXp1a2kKClRoYW5rcyBNYXRoaWV1IGFuZCBTdXp1a2kgZm9yIHRoZSBp
bnB1dHMuIEkgc2hhbGwgZHJvcCB0aGlzIHBhdGNoLgoKVGhhbmtzLAoKS2F0aGlyYXZhbiBULgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
