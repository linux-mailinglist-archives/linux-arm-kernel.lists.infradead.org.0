Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EB41B5B4B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 14:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aFiyN17w+/zVyw2PNxzOZtK8eU6CLGO5rNHP7z/UuKU=; b=jdMJdIn1YP3htYbR8UPMjZDAb
	zrEWNviAp99TJ5HoVosVyarN5tkfRVHEXlq4PFto1FqdlXtesN0hJkhQ7knkTVUsSQVhKGqzy3rLz
	tSwrXpnVzdXwYkPHjxsZhWhgbVFd0VkhyK1b9mBKW8sXy9q8VZOc8fieLt287bIfvpq5py9suNaEE
	dkNlKAjfqCLUwgT4g0n3dXFsxq1SePVKw1CoeB3IARj6Hk26qRtMFLxi50e4S+TTQf96BaWlPo+hT
	QXPrhplpLEd6TZqQBdVRVNJV6eiAXAv/m+S5FP1roti1o1ycPlgpe2v88knftLZ3gQsWpIcrnwHzP
	6QJ7CPpGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRarw-0008Uu-G8; Thu, 23 Apr 2020 12:22:16 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRark-0008Tn-NQ
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 12:22:09 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587644527; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=xmKbPe6qYAz7syjI+7B563Vnwnt8egJotMv+Ym61YWs=;
 b=vtkq2xVMsc8oekkNvMQWwgObE9QwSX08LICjIRQk/bBWxCwD586HDYXRN9qiCGgRo8BXI7Yb
 Oj/0xHDvMNY6N9GOmrPeLu5MIicalHDRLmMrslo94QBWtPX9PlHuNl60QFZJsLoZ+HvT5+pK
 kXDBPVY9TzEwvbMy6gl2iWKKVT0=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea18857.7fed21bfda78-smtp-out-n04;
 Thu, 23 Apr 2020 12:21:43 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A6F6FC43637; Thu, 23 Apr 2020 12:21:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 04DC7C433CB;
 Thu, 23 Apr 2020 12:21:40 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 23 Apr 2020 17:51:40 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [RFC PATCH] coresight: dynamic-replicator: Fix handling of
 multiple connections
In-Reply-To: <e9c299c4-caeb-9eb8-f019-b311bfce756a@arm.com>
References: <20200405102819.28460-1-saiprakash.ranjan@codeaurora.org>
 <CAJ9a7VgQzK1XSCvLwuqODwkWfvo=6Wwps7Db+pL5xYDeCuktrg@mail.gmail.com>
 <6c0f45488f8a44bf860759e00fcabd09@codeaurora.org>
 <906d374d-a4d6-f2f2-6845-88b97a5ff7d9@arm.com>
 <39a2b3fff165a108fa59d72b630b5f14@codeaurora.org>
 <bb209f80-ac02-6321-dac4-ebf9ee6fa9a0@arm.com>
 <bd05b31c2391edfff5044f22f2f83edf@codeaurora.org>
 <e9c299c4-caeb-9eb8-f019-b311bfce756a@arm.com>
Message-ID: <526ee10ba1df05b41f9471613550a0fd@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_052208_074447_A1E1447D 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mathieu.poirier@linaro.org, alexander.shishkin@linux.intel.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 swboyd@chromium.org, leo.yan@linaro.org, linux-arm-msm-owner@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3V6dWtpLAoKT24gMjAyMC0wNC0wNyAyMDoyMywgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToK
PiBPbiAwNC8wNy8yMDIwIDAyOjU2IFBNLCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6Cj4+IEhp
IFN1enVraSwKPj4gCj4+IE9uIDIwMjAtMDQtMDcgMTg6MzgsIFN1enVraSBLIFBvdWxvc2Ugd3Jv
dGU6Cj4+PiBPbiAwNC8wNy8yMDIwIDEyOjI5IFBNLCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6
Cj4+Pj4gSGkgU3V6dWtpLAo+Pj4+IAo+Pj4+IFRoYW5rcyBmb3IgbG9va2luZyBpbnRvIHRoaXMg
aXNzdWUuCj4+Pj4gCj4+Pj4gT24gMjAyMC0wNC0wNyAxNTo1NCwgU3V6dWtpIEsgUG91bG9zZSB3
cm90ZToKPj4+Pj4gT24gMDQvMDcvMjAyMCAxMDo0NiBBTSwgU2FpIFByYWthc2ggUmFuamFuIHdy
b3RlOgo+Pj4+PiAKPj4+Pj4gVGhlcmUgc2VlbXMgdG8gYmUgdHdvIHJlcGxpY2F0b3JzIGJhY2sg
dG8gYmFjayBoZXJlLiBXaGF0IGlzIAo+Pj4+PiBjb25uZWN0ZWQKPj4+Pj4gdG8gdGhlIG90aGVy
IG91dHB1dCBvZiBib3RoIG9mIHRoZW0gPyBBcmUgdGhlcmUgYW55IFRQSVVzID8gV2hhdCAKPj4+
Pj4gaGFwcGVucwo+Pj4+PiBpZiB5b3UgY2hvb3NlIGEgc2luayBvbiB0aGUgb3RoZXIgZW5kIG9m
ICJzd2FvX3JlcGxpY2F0b3IiIChFVEIgPykKPj4+Pj4gCj4+Pj4gCj4+Pj4gVGhlIG90aGVyIG91
dHBvcnQgb2Ygc3dhbyByZXBsaWNhdG9yIGlzIGNvbm5lY3RlZCB0byBFVUQgd2hpY2ggaXMgYQo+
Pj4+IFFDT00gc3BlY2lmaWMgSFcgd2hpY2ggY2FuIGJlIHVzZWQgYXMgYSBzaW5rIGxpa2UgVVNC
Lgo+Pj4+IEFuZCB0aGUgb3RoZXIgb3V0cG9ydCBvZiBvdGhlciByZXBsaWNhdG9yKHJlcGxpY2F0
b3Jfb3V0KSBpcyAKPj4+PiBjb25uZWN0ZWQgdG8KPj4+PiBUUElVLgo+Pj4+IAo+Pj4+PiBBZnRl
ciBib290LCB3aGF0IGRvIHRoZSBpZGZpbHRlciByZWdpc3RlcnMgcmVhZCBmb3IgYm90aCB0aGUg
Cj4+Pj4+IHJlcGxpY2F0b3JzID8KPj4+Pj4gCj4+Pj4gCj4+Pj4gQWRkZWQgc29tZSBwcmludHMg
aW4gcmVwbGljYXRvcl9wcm9iZS4KPj4+PiAKPj4+PiDCoMKgcmVwbGljYXRvciBwcm9iZSByZXQ9
LTUxNyBkZXZuYW1lPTYwNDYwMDAucmVwbGljYXRvciBpZGZpbHRlcjA9MHgwIAo+Pj4+IGlkZmls
dGVyMT0weDAKPj4+PiDCoMKgcmVwbGljYXRvciBwcm9iZSByZXQ9MCBkZXZuYW1lPTZiMDYwMDAu
cmVwbGljYXRvciBpZGZpbHRlcjA9MHhmZiAKPj4+PiBpZGZpbHRlcjE9MHhmZgo+Pj4+IMKgwqBy
ZXBsaWNhdG9yIHByb2JlIHJldD0wIGRldm5hbWU9NjA0NjAwMC5yZXBsaWNhdG9yIGlkZmlsdGVy
MD0weGZmIAo+Pj4+IGlkZmlsdGVyMT0weGZmCj4+PiAKPj4+IEN1cmlvdXMgdG8gc2VlIGhvdyB0
aGUgaWRmaWx0ZXJYIGlzIHNldCB0byAwOgo+Pj4gwqDCoMKgwqAgaWYgdGhhdCBpcyBuZXZlciB1
c2VkLgo+Pj4gwqDCoMKgwqDCoMKgwqAgT3IKPj4+IMKgwqDCoMKgIGlmIHRoZSB1c2VyIGRvZXNu
J3QgcmVzZXQgaXQgYmFjayB0byAweGZmLgo+Pj4gCj4+IAo+PiBGb3IgYm90aCByZXBsaWNhdG9y
cywgdGhlIGRlZmF1bHQgdmFsdWUgc2VlbXMgdG8gYmUgMHgwLgo+PiAKPj4gIMKgcmVwbGljYXRv
ciBwcm9iZSBpbiByZXMgcmV0PTAgZGV2bmFtZT02MDQ2MDAwLnJlcGxpY2F0b3IgCj4+IGlkZmls
dGVyMD0weDAgaWRmaWx0ZXIxPTB4MAo+PiAgwqByZXBsaWNhdG9yIHByb2JlIHJldD0tNTE3IGRl
dm5hbWU9NjA0NjAwMC5yZXBsaWNhdG9yIGlkZmlsdGVyMD0weDAgCj4+IGlkZmlsdGVyMT0weDAK
Pj4gIMKgcmVwbGljYXRvciBwcm9iZSBpbiByZXMgcmV0PTAgZGV2bmFtZT02YjA2MDAwLnJlcGxp
Y2F0b3IgCj4+IGlkZmlsdGVyMD0weDAgaWRmaWx0ZXIxPTB4MAo+PiAgwqByZXBsaWNhdG9yIHBy
b2JlIHJldD0wIGRldm5hbWU9NmIwNjAwMC5yZXBsaWNhdG9yIGlkZmlsdGVyMD0weGZmIAo+PiBp
ZGZpbHRlcjE9MHhmZgo+PiAgwqByZXBsaWNhdG9yIHByb2JlIGluIHJlcyByZXQ9MCBkZXZuYW1l
PTYwNDYwMDAucmVwbGljYXRvciAKPj4gaWRmaWx0ZXIwPTB4MCBpZGZpbHRlcjE9MHgwCj4+ICDC
oHJlcGxpY2F0b3IgcHJvYmUgcmV0PTAgZGV2bmFtZT02MDQ2MDAwLnJlcGxpY2F0b3IgaWRmaWx0
ZXIwPTB4ZmYgCj4+IGlkZmlsdGVyMT0weGZmCj4gCj4gSSBhbSBub3Qgc3VyZSBob3cgeW91IGhh
dmUgYWRkZWQgdGhlIGRlYnVncywgYnV0IGl0IGxvb2tzIGxpa2UgdGhlCj4gZHJpdmVycyBzZXQg
MHhmZiBmb3IgYm90aCB0aGUgcG9ydCBmaWx0ZXJzIG9uIGEgc3VjY2Vzc2Z1bCBwcm9iZS4KPiAK
CkFib3V0IHRoZSBlYXJsaWVyIG1lbnRpb25lZCBwb2ludHMgb246CgoxKSBEaXNhbGxvdyB0dXJu
aW5nIHRoZSByZXBsaWNhdG9yIE9OLCB3aGVuIGl0IGlzIGFscmVhZHkgdHVybmVkIE9OCjIpIERv
IHdoYXQgeW91ciBwYXRjaCBkb2VzLiBpLmUsIGRpc2FibGUgdGhlIG90aGVyIGVuZCB3aGlsZSBv
bmUgZW5kCiAgICBpcyB0dXJuZWQgb24uCgpEbyB3ZSBuZWVkIDEpIGFuZCBzaG91bGQgd2UgZ28g
YWhlYWQgd2l0aCB0aGlzPwoKVGhhbmtzLApTYWkKCi0tIApRVUFMQ09NTSBJTkRJQSwgb24gYmVo
YWxmIG9mIFF1YWxjb21tIElubm92YXRpb24gQ2VudGVyLCBJbmMuIGlzIGEgCm1lbWJlcgpvZiBD
b2RlIEF1cm9yYSBGb3J1bSwgaG9zdGVkIGJ5IFRoZSBMaW51eCBGb3VuZGF0aW9uCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
