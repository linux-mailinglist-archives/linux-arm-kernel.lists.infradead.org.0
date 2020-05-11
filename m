Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CDC1CDD75
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 16:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F0HieVKk3c9XYMHxdMgGYND4A3AuXQuBQAO1dtujZRY=; b=HeZ7OeS6QH0lRRy9+CIHKfzOH
	G/++GrGFOVXuBn5dP17yqjWdGNT/lrs848+V6zlYzNDKZaTXZ/FY6PowFvBAnqpSaVd7Dk89d7SKB
	Sxe3zuVdAuRE0AH6H6XfvastEYHhkpt4RUJHzFgfXhAyr3smKLOJFr71CKKXmLlWkoIPmPSxfjtuw
	Btu2UfaebXPpq4Ea0p/l8LKQWS1BELzYUCx1Xhvq+Me0NxFpNePPmqQY7jgm2J0xsRSeKX6BjF7CL
	2lCZPucTxD2mJzXbBOnLzuDZ1B+GV8xmS8zUGdIp3767g5ReRAWjsKnl6gyTe+Ymyuzw5CUcd6D+x
	YakqtWzvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9d5-000236-RX; Mon, 11 May 2020 14:42:03 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9cx-00022f-1o
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 14:41:56 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589208114; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=YJqubVQY03GUKk1QoZMCCE4n8NEu9fjUnxW9R/zD7Tc=;
 b=KLjxBc1hCNIxguEUHmcHLIC6hOd1lyT6tg6nGHGmKrIpRbebQoSfS7Kr+VIGnxIQ/oZoLS8E
 oR7D0SCOeRs4LPjKDLOnY2TB9o6RLqTeFpC57F7FCzHrUUZXhRDOQqELD6Nac1z4aSoYlRAt
 8ia/bOjVskrl4Oe4nMjnbRTkCKA=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb96432.7f1677532d88-smtp-out-n02;
 Mon, 11 May 2020 14:41:54 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 5330FC43637; Mon, 11 May 2020 14:41:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8382DC433F2;
 Mon, 11 May 2020 14:41:52 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 11 May 2020 20:11:52 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
In-Reply-To: <37b3749e-2363-0877-c318-9c334a5d1881@arm.com>
References: <20200426143725.18116-1-saiprakash.ranjan@codeaurora.org>
 <cf5852e9-c3c1-3d31-46f0-0370719947ab@arm.com>
 <CAJ9a7VgF3-Hdc7KSw9gVBeXSDHNguhqVhp60oK2XhCtr3DhDqg@mail.gmail.com>
 <84918e7d-c933-3fa1-a61e-0615d4b3cf2c@arm.com>
 <668ea1283a6dd6b34e701972f6f71034@codeaurora.org>
 <5b0f5d77c4eec22d8048bb0ffa078345@codeaurora.org>
 <759d47de-2101-39cf-2f1c-cfefebebd548@arm.com>
 <7d343e96cf0701d91152fd14c2fdec42@codeaurora.org>
 <CAJ9a7VgEiX19ukjwakNHBHDeZJ05f5Z7pAYG9iEnpXCuuDfBqg@mail.gmail.com>
 <a4bba03d41a2b0145b3c6c19d48698eb@codeaurora.org>
 <CAJ9a7Vj4eyv1n=RxuqfV=pdBN3SDG+ShYS5J4s40KJtqOnR7vw@mail.gmail.com>
 <ae0fe2050be01cc1403c7d53a0da8cb8@codeaurora.org>
 <b8c1cc35846d425a1677c73fddf5874d@codeaurora.org>
 <eee1b9a90266eed9a9c75401f0679777@codeaurora.org>
 <CAJ9a7Vjd0XG+rAvHptAAjGtE6xRhYsPaOSC_Bf9B-w-FZFu_Qw@mail.gmail.com>
 <47f6d51bfad0a0bf1553e101e6a2c8c9@codeaurora.org>
 <37b3749e-2363-0877-c318-9c334a5d1881@arm.com>
Message-ID: <d47271ee6a2a6f0f30da7e140b6f196c@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_074155_153823_51CA0F36 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
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
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, swboyd@chromium.org, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3V6dWtpLAoKT24gMjAyMC0wNS0xMSAyMDowMCwgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToK
PiBPbiAwNS8xMS8yMDIwIDAzOjE2IFBNLCBTYWkgUHJha2FzaCBSYW5qYW4gd3JvdGU6Cj4+IEhp
IE1pa2UsCj4+IAo+PiBPbiAyMDIwLTA1LTExIDE2OjQ0LCBNaWtlIExlYWNoIHdyb3RlOgo+PiBb
Li4uXQo+PiAKPj4+PiAKPj4+PiBJIGNoZWNrZWQgd2l0aCB0aGUgZGVidWcgdGVhbSBhbmQgdGhl
cmUgaXMgYSBsaW1pdGF0aW9uIHdpdGgKPj4+PiB0aGUgcmVwbGljYXRvcihzd2FvX3JlcGxpY2F0
b3IpIGluIHRoZSBBT1NTIGdyb3VwIHdoZXJlIGl0Cj4+Pj4gbG9zZXMgdGhlIGlkZmlsdGVyIHJl
Z2lzdGVyIGNvbnRleHQgd2hlbiB0aGUgY2xvY2sgaXMgZGlzYWJsZWQuCj4+Pj4gVGhpcyBpcyBu
b3QganVzdCBpbiBTQzcxODAgU29DIGJ1dCBhbHNvIHJlcG9ydGVkIG9uIHNvbWUgbGF0ZXN0Cj4+
Pj4gdXBjb21pbmcgUUNPTSBTb0NzIGFzIHdlbGwgYW5kIHdpbGwgbmVlZCB0byBiZSB0YWtlbiBj
YXJlIGluCj4+Pj4gb3JkZXIgdG8gZW5hYmxlIGNvcmVzaWdodCBvbiB0aGVzZSBjaGlwc2V0cy4K
Pj4+PiAKPj4+PiBIZXJlJ3Mgd2hhdCdzIGhhcHBlbmluZyAtwqAgQWZ0ZXIgdGhlIHJlcGxpY2F0
b3IgaXMgaW5pdGlhbGl6ZWQsCj4+Pj4gdGhlIGNsb2NrIGlzIGRpc2FibGVkIGluIGFtYmFfcG1f
cnVudGltZV9zdXNwZW5kKCkgYXMgYSBwYXJ0IG9mCj4+Pj4gcG0gcnVudGltZSB3b3JrcXVldWUg
d2l0aCB0aGUgYXNzdW1wdGlvbiB0aGF0IHRoZXJlIHdpbGwgYmUgbm8KPj4+PiBsb3NzIG9mIGNv
bnRleHQgYWZ0ZXIgdGhlIHJlcGxpY2F0b3IgaXMgaW5pdGlhbGl6ZWQuIEJ1dCBpdCBkb2Vzbid0
Cj4+Pj4gaG9sZCBnb29kIHdpdGggdGhlIHJlcGxpY2F0b3JzIHdpdGggdGhlc2UgdW5mb3J0dW5h
dGUgbGltaXRhdGlvbgo+Pj4+IGFuZCB0aGUgaWRmaWx0ZXIgcmVnaXN0ZXIgY29udGV4dCBpcyBs
b3N0Lgo+Pj4+IAo+Pj4+IFvCoMKgwqAgNS44ODk0MDZdIGFtYmFfcG1fcnVudGltZV9zdXNwZW5k
IGRldm5hbWU9NmIwNjAwMC5yZXBsaWNhdG9yIAo+Pj4+IHJldD0wCj4+Pj4gW8KgwqDCoCA1Ljkx
NDUxNl0gV29ya3F1ZXVlOiBwbSBwbV9ydW50aW1lX3dvcmsKPj4+PiBbwqDCoMKgIDUuOTE4NjQ4
XSBDYWxsIHRyYWNlOgo+Pj4+IFvCoMKgwqAgNS45MjExODVdwqAgZHVtcF9iYWNrdHJhY2UrMHgw
LzB4MWQwCj4+Pj4gW8KgwqDCoCA1LjkyNDk1OF3CoCBzaG93X3N0YWNrKzB4MmMvMHgzOAo+Pj4+
IFvCoMKgwqAgNS45MjgzODJdwqAgZHVtcF9zdGFjaysweGMwLzB4MTA0Cj4+Pj4gW8KgwqDCoCA1
LjkzMTg5Nl3CoCBhbWJhX3BtX3J1bnRpbWVfc3VzcGVuZCsweGQ4LzB4ZTAKPj4+PiBbwqDCoMKg
IDUuOTM2NDY5XcKgIF9fcnBtX2NhbGxiYWNrKzB4ZTAvMHgxNDAKPj4+PiBbwqDCoMKgIDUuOTQw
MzMyXcKgIHJwbV9jYWxsYmFjaysweDM4LzB4OTgKPj4+PiBbwqDCoMKgIDUuOTQzOTI2XcKgIHJw
bV9zdXNwZW5kKzB4ZWMvMHg2MTgKPj4+PiBbwqDCoMKgIDUuOTQ3NTIyXcKgIHJwbV9pZGxlKzB4
NWMvMHgzZjgKPj4+PiBbwqDCoMKgIDUuOTUwODUxXcKgIHBtX3J1bnRpbWVfd29yaysweGE4LzB4
YzAKPj4+PiBbwqDCoMKgIDUuOTU0NzE4XcKgIHByb2Nlc3Nfb25lX3dvcmsrMHgxZjgvMHg0YzAK
Pj4+PiBbwqDCoMKgIDUuOTU4ODQ4XcKgIHdvcmtlcl90aHJlYWQrMHg1MC8weDQ2OAo+Pj4+IFvC
oMKgwqAgNS45NjI2MjNdwqAga3RocmVhZCsweDEyYy8weDE1OAo+Pj4+IFvCoMKgwqAgNS45NjU5
NTddwqAgcmV0X2Zyb21fZm9yaysweDEwLzB4MWMKPj4+PiAKPj4+PiBUaGlzIGlzIGEgcGxhdGZv
cm0vU29DIHNwZWNpZmljIHJlcGxpY2F0b3IgaXNzdWUsIHNvIHdlIGNhbiBlaXRoZXIKPj4+PiBp
bnRyb2R1Y2Ugc29tZSBEVCBwcm9wZXJ0eSBmb3IgcmVwbGljYXRvcnMgdG8gaWRlbnRpZnkgd2hp
Y2ggCj4+Pj4gcmVwbGljYXRvcgo+Pj4+IGhhcyB0aGlzIGxpbWl0YXRpb24sIGNoZWNrIGluIHJl
cGxpY2F0b3JfZW5hYmxlKCkgYW5kIHJlc2V0IHRoZQo+Pj4+IHJlZ2lzdGVycwo+Pj4+IG9yIGhh
dmUgc29tZXRoaW5nIGxpa2UgYmVsb3cgZGlmZiB0byBjaGVjayB0aGUgaWRmaWx0ZXIgcmVnaXN0
ZXJzIGluCj4+Pj4gcmVwbGljYXRvcl9lbmFibGUoKSBhbmQgdGhlbiByZXNldCB3aXRoIGNsZWFy
IGNvbW1lbnQgc3BlY2lmeWluZyAKPj4+PiBpdOKAmXMKPj4+PiB0aGUKPj4+PiBoYXJkd2FyZSBs
aW1pdGF0aW9uIG9uIHNvbWUgUUNPTSBTb0NzLiBQbGVhc2UgbGV0IG1lIGtub3cgeW91ciAKPj4+
PiB0aG91Z2h0cwo+Pj4+IG9uCj4+Pj4gdGhpcz8KPj4+PiAKPj4gCj4+IFNvcnJ5IGZvciBodXJy
eWluZyB1cCBhbmQgc2VuZGluZyB0aGUgcGF0Y2ggLSAKPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvcGF0Y2h3b3JrL3BhdGNoLzEyMzk5MjMvLgo+PiBJIHdpbGwgc2VuZCB2MiBiYXNlZCBvbiBm
dXJ0aGVyIGZlZWRiYWNrcyBoZXJlIG9yIHRoZXJlLgo+PiAKPj4+IAo+Pj4gMSkgZG9lcyB0aGlz
IHJlcGxpY2F0b3IgcGFydCBoYXZlIGEgdW5pcXVlIElEIHRoYXQgZGlmZmVycyBmcm9tIHRoZQo+
Pj4gc3RhbmRhcmQgQVJNIGRlc2lnbmVkIHJlcGxpY2F0b3JzPwo+Pj4gSWYgc28gcGVyaGFwcyBs
aW5rIHRoZSBtb2RpZmljYXRpb24gaW50byB0aGlzLiAoZXZlbiBpZiB0aGUgcGFydCBubyAKPj4+
IGluCj4+PiBQSURSMC8xIGlzIHRoZSBzYW1lIHRoZSBVQ0kgc2hvdWxkIGJlIGRpZmZlcmVudCBm
b3IgYSBkaWZmZXJlbnQKPj4+IGltcGxlbWVudGF0aW9uKQo+Pj4gCj4+IAo+PiBwaWQ9MHgyYmI5
MDkgZm9yIGJvdGggcmVwbGljYXRvcnMuIFNvIHBhcnQgbnVtYmVyIGlzIHNhbWUuCj4+IFVDSSB3
aWxsIGJlIGRpZmZlcmVudCBmb3IgZGlmZmVyZW50IGltcGxlbWVudGF0aW9uKFFDT00gbWF5YmUg
Cj4+IGRpZmZlcmVudCBmcm9tIEFSTSksCj4+IGJ1dCB3aWxsIGl0IGJlIGRpZmZlcmVudCBmb3Ig
ZGlmZmVyZW50IHJlcGxpY2F0b3JzIHVuZGVyIHRoZSBzYW1lIAo+PiBpbXBsKGkuZS4sIG9uIFFD
T00pLgo+IAo+IE1heSBiZSB1c2UgUElEUjQuREVTXzIgdG8gbWF0Y2ggdGhlIEltcGxlbWVudG9y
IGFuZCBhcHBseSB0aGUgd29yawo+IGFyb3VuZCBmb3IgYWxsIFFDT00gcmVwbGljYXRvcnMgPwo+
IAo+IFRvIG1lIHRoYXQgc291bmRzIHRoZSBiZXN0IG9wdGlvbi4KPiAKCk9rIHdlIGNhbiBkbyB0
aGlzIGFzIHdlbGwsIGJ1dCBqdXN0IGZvciBteSB1bmRlcnN0YW5kaW5nLCB3aHkgZG8gd2UgbmVl
ZCAKdG8gcmVzZXQgcmVwbGljYXRvcnMKaW4gcmVwbGljYXRvcl9wcm9iZSgpIGFuZCBub3QgaW4g
cmVwbGljYXRvcl9lbmFibGUoKT8gQXJlIHdlIGFjY2Vzc2luZyAKYW55dGhpbmcgYmVmb3JlCndl
IGVuYWJsZSByZXBsaWNhdG9ycz8KClRoYW5rcywKU2FpCi0tIApRVUFMQ09NTSBJTkRJQSwgb24g
YmVoYWxmIG9mIFF1YWxjb21tIElubm92YXRpb24gQ2VudGVyLCBJbmMuIGlzIGEgCm1lbWJlcgpv
ZiBDb2RlIEF1cm9yYSBGb3J1bSwgaG9zdGVkIGJ5IFRoZSBMaW51eCBGb3VuZGF0aW9uCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
