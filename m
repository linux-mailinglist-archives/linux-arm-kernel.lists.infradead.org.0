Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 147851CDCE5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 16:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rRFtVfL0MHyU2Diqu3ocJdikbyqZXcT9ecyMBjH+6fA=; b=lMRDgRxnR/Mr7IFd9OMVbSYNI
	L43O4+9HVkjG2k9CXNc8DOu3k2s00bih++kQlbka3iaspxBTCXRIZe5qCr2XDU5CPz6MZxWtRxNj5
	lR0xgWW1uTxS7WDS5H5v+Me7p8J5+zF1mITdKs7wnynLIvAo0x5cTzkZiwgFU6HfJkMBHt7EEib5K
	OeNBQW6hCrdpiGziIwmrL2Bibxgccyc6rWltJTG/v4DClaqAu9h8LWdnBr/QVXLJeo6Hjl0h2020o
	m8SNZ7qHxUyw46nnCV+S8ZE7PEIMx3EVi0NFyuJm0s2Eh4+apQPMhfWQbYayg8fLt6FDsdbqhvG0M
	FIcyBfgkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9Ex-0001GJ-Pt; Mon, 11 May 2020 14:17:07 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9Eo-0001Fq-K7
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 14:17:00 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589206617; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=FVAth4pYBtTXQqicR7pFM3iw/uwUViT59NQhEjjdoQ8=;
 b=TR1KftBEtMlfMAX4/2+uyCFzg55MDJYIfQ1HVkPVd8AeS4X6mBtVXx5AG/04eADDxh66t7oJ
 AdezgjAezfh+iEd9zHwenHK6efQwrn3qVmD51CQcTTGR/Tx/4zJuWu2GZKYAxfbU0mLIH+7v
 uMP/DCAE3f0R75AgeiY/GRWG3zk=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb95e55.7ff0f2ec68f0-smtp-out-n03;
 Mon, 11 May 2020 14:16:53 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4CAB0C433CB; Mon, 11 May 2020 14:16:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D992BC433F2;
 Mon, 11 May 2020 14:16:51 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 11 May 2020 19:46:51 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
In-Reply-To: <CAJ9a7Vjd0XG+rAvHptAAjGtE6xRhYsPaOSC_Bf9B-w-FZFu_Qw@mail.gmail.com>
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
Message-ID: <47f6d51bfad0a0bf1553e101e6a2c8c9@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_071658_723723_45C5B7CA 
X-CRM114-Status: GOOD (  24.35  )
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWlrZSwKCk9uIDIwMjAtMDUtMTEgMTY6NDQsIE1pa2UgTGVhY2ggd3JvdGU6ClsuLi5dCgo+
PiAKPj4gSSBjaGVja2VkIHdpdGggdGhlIGRlYnVnIHRlYW0gYW5kIHRoZXJlIGlzIGEgbGltaXRh
dGlvbiB3aXRoCj4+IHRoZSByZXBsaWNhdG9yKHN3YW9fcmVwbGljYXRvcikgaW4gdGhlIEFPU1Mg
Z3JvdXAgd2hlcmUgaXQKPj4gbG9zZXMgdGhlIGlkZmlsdGVyIHJlZ2lzdGVyIGNvbnRleHQgd2hl
biB0aGUgY2xvY2sgaXMgZGlzYWJsZWQuCj4+IFRoaXMgaXMgbm90IGp1c3QgaW4gU0M3MTgwIFNv
QyBidXQgYWxzbyByZXBvcnRlZCBvbiBzb21lIGxhdGVzdAo+PiB1cGNvbWluZyBRQ09NIFNvQ3Mg
YXMgd2VsbCBhbmQgd2lsbCBuZWVkIHRvIGJlIHRha2VuIGNhcmUgaW4KPj4gb3JkZXIgdG8gZW5h
YmxlIGNvcmVzaWdodCBvbiB0aGVzZSBjaGlwc2V0cy4KPj4gCj4+IEhlcmUncyB3aGF0J3MgaGFw
cGVuaW5nIC0gIEFmdGVyIHRoZSByZXBsaWNhdG9yIGlzIGluaXRpYWxpemVkLAo+PiB0aGUgY2xv
Y2sgaXMgZGlzYWJsZWQgaW4gYW1iYV9wbV9ydW50aW1lX3N1c3BlbmQoKSBhcyBhIHBhcnQgb2YK
Pj4gcG0gcnVudGltZSB3b3JrcXVldWUgd2l0aCB0aGUgYXNzdW1wdGlvbiB0aGF0IHRoZXJlIHdp
bGwgYmUgbm8KPj4gbG9zcyBvZiBjb250ZXh0IGFmdGVyIHRoZSByZXBsaWNhdG9yIGlzIGluaXRp
YWxpemVkLiBCdXQgaXQgZG9lc24ndAo+PiBob2xkIGdvb2Qgd2l0aCB0aGUgcmVwbGljYXRvcnMg
d2l0aCB0aGVzZSB1bmZvcnR1bmF0ZSBsaW1pdGF0aW9uCj4+IGFuZCB0aGUgaWRmaWx0ZXIgcmVn
aXN0ZXIgY29udGV4dCBpcyBsb3N0Lgo+PiAKPj4gWyAgICA1Ljg4OTQwNl0gYW1iYV9wbV9ydW50
aW1lX3N1c3BlbmQgZGV2bmFtZT02YjA2MDAwLnJlcGxpY2F0b3IgCj4+IHJldD0wCj4+IFsgICAg
NS45MTQ1MTZdIFdvcmtxdWV1ZTogcG0gcG1fcnVudGltZV93b3JrCj4+IFsgICAgNS45MTg2NDhd
IENhbGwgdHJhY2U6Cj4+IFsgICAgNS45MjExODVdICBkdW1wX2JhY2t0cmFjZSsweDAvMHgxZDAK
Pj4gWyAgICA1LjkyNDk1OF0gIHNob3dfc3RhY2srMHgyYy8weDM4Cj4+IFsgICAgNS45MjgzODJd
ICBkdW1wX3N0YWNrKzB4YzAvMHgxMDQKPj4gWyAgICA1LjkzMTg5Nl0gIGFtYmFfcG1fcnVudGlt
ZV9zdXNwZW5kKzB4ZDgvMHhlMAo+PiBbICAgIDUuOTM2NDY5XSAgX19ycG1fY2FsbGJhY2srMHhl
MC8weDE0MAo+PiBbICAgIDUuOTQwMzMyXSAgcnBtX2NhbGxiYWNrKzB4MzgvMHg5OAo+PiBbICAg
IDUuOTQzOTI2XSAgcnBtX3N1c3BlbmQrMHhlYy8weDYxOAo+PiBbICAgIDUuOTQ3NTIyXSAgcnBt
X2lkbGUrMHg1Yy8weDNmOAo+PiBbICAgIDUuOTUwODUxXSAgcG1fcnVudGltZV93b3JrKzB4YTgv
MHhjMAo+PiBbICAgIDUuOTU0NzE4XSAgcHJvY2Vzc19vbmVfd29yaysweDFmOC8weDRjMAo+PiBb
ICAgIDUuOTU4ODQ4XSAgd29ya2VyX3RocmVhZCsweDUwLzB4NDY4Cj4+IFsgICAgNS45NjI2MjNd
ICBrdGhyZWFkKzB4MTJjLzB4MTU4Cj4+IFsgICAgNS45NjU5NTddICByZXRfZnJvbV9mb3JrKzB4
MTAvMHgxYwo+PiAKPj4gVGhpcyBpcyBhIHBsYXRmb3JtL1NvQyBzcGVjaWZpYyByZXBsaWNhdG9y
IGlzc3VlLCBzbyB3ZSBjYW4gZWl0aGVyCj4+IGludHJvZHVjZSBzb21lIERUIHByb3BlcnR5IGZv
ciByZXBsaWNhdG9ycyB0byBpZGVudGlmeSB3aGljaCAKPj4gcmVwbGljYXRvcgo+PiBoYXMgdGhp
cyBsaW1pdGF0aW9uLCBjaGVjayBpbiByZXBsaWNhdG9yX2VuYWJsZSgpIGFuZCByZXNldCB0aGUK
Pj4gcmVnaXN0ZXJzCj4+IG9yIGhhdmUgc29tZXRoaW5nIGxpa2UgYmVsb3cgZGlmZiB0byBjaGVj
ayB0aGUgaWRmaWx0ZXIgcmVnaXN0ZXJzIGluCj4+IHJlcGxpY2F0b3JfZW5hYmxlKCkgYW5kIHRo
ZW4gcmVzZXQgd2l0aCBjbGVhciBjb21tZW50IHNwZWNpZnlpbmcgaXTigJlzCj4+IHRoZQo+PiBo
YXJkd2FyZSBsaW1pdGF0aW9uIG9uIHNvbWUgUUNPTSBTb0NzLiBQbGVhc2UgbGV0IG1lIGtub3cg
eW91ciAKPj4gdGhvdWdodHMKPj4gb24KPj4gdGhpcz8KPj4gCgpTb3JyeSBmb3IgaHVycnlpbmcg
dXAgYW5kIHNlbmRpbmcgdGhlIHBhdGNoIC0gCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNo
d29yay9wYXRjaC8xMjM5OTIzLy4KSSB3aWxsIHNlbmQgdjIgYmFzZWQgb24gZnVydGhlciBmZWVk
YmFja3MgaGVyZSBvciB0aGVyZS4KCj4gCj4gMSkgZG9lcyB0aGlzIHJlcGxpY2F0b3IgcGFydCBo
YXZlIGEgdW5pcXVlIElEIHRoYXQgZGlmZmVycyBmcm9tIHRoZQo+IHN0YW5kYXJkIEFSTSBkZXNp
Z25lZCByZXBsaWNhdG9ycz8KPiBJZiBzbyBwZXJoYXBzIGxpbmsgdGhlIG1vZGlmaWNhdGlvbiBp
bnRvIHRoaXMuIChldmVuIGlmIHRoZSBwYXJ0IG5vIGluCj4gUElEUjAvMSBpcyB0aGUgc2FtZSB0
aGUgVUNJIHNob3VsZCBiZSBkaWZmZXJlbnQgZm9yIGEgZGlmZmVyZW50Cj4gaW1wbGVtZW50YXRp
b24pCj4gCgpwaWQ9MHgyYmI5MDkgZm9yIGJvdGggcmVwbGljYXRvcnMuIFNvIHBhcnQgbnVtYmVy
IGlzIHNhbWUuClVDSSB3aWxsIGJlIGRpZmZlcmVudCBmb3IgZGlmZmVyZW50IGltcGxlbWVudGF0
aW9uKFFDT00gbWF5YmUgZGlmZmVyZW50IApmcm9tIEFSTSksCmJ1dCB3aWxsIGl0IGJlIGRpZmZl
cmVudCBmb3IgZGlmZmVyZW50IHJlcGxpY2F0b3JzIHVuZGVyIHRoZSBzYW1lIAppbXBsKGkuZS4s
IG9uIFFDT00pLgoKPiAyKSBXZSBoYXZlIHVzZWQgRFQgcHJvcGVydGllcyBpbiB0aGUgcGFzdCAt
IChlLmcuIHNjYXR0ZXIgZ2F0aGVyIGluCj4gVE1DKSB3aGVyZSBoYXJkd2FyZSBjb21wYXRpYmls
aXR5IGlzc3VlcyBoYXZlIGltcGFjdGVkIG9uIHRoZQo+IG9wZXJhdGlvbiBvZiBhIGNvcmVzaWdo
dCBjb21wb25lbnQuIFRoaXMgaXMgZnVydGhlciBjb21wbGljYXRlZCBieSB0aGUKPiBmYWN0IHRo
YXQgYW4gQUNQSSBwcm9wZXJ0eSB3b3VsZCBiZSBuZWVkZWQgYXMgd2VsbC4KPiAKClllcywgdGhp
cyB3YXMgYWxzbyBvbmUgb3B0aW9uIHdoaWNoIEkgaGFkIG1lbnRpb25lZC4gQnV0IGFzIHlvdSBz
YWlkIHdlIApuZWVkCnRvIGhhdmUgYW4gQUNQSSBwcm9wZXJ0eSBhcyB3ZWxsIGFuZCB0aGVzZSBz
eXN0ZW1zIHdpdGggbGltaXRhdGlvbnMgYXJlIApEVCBiYXNlZC4KCj4gMykgVGhlIHN5c2ZzIGFj
Y2VzcyB0byBGSUxURVJJRDAvMSBvbiB0aGlzIHJlcGxpY2F0b3IgaXMgZ29pbmcgdG8gc2hvdwo+
IGRpZmZlcmVudCB2YWx1ZXMgdGhhbiBvbiBhIHN0YW5kYXJkIHJlcGxpY2F0b3IgKDB4MDAgaW5z
dGVhZCBvZiAweEZGKS4KPiBEb2VzIHRoaXMgbmVlZCB0byBiZSBhZGRyZXNzZWQ/Cj4gCgpJIGRv
bid0IHRoaW5rIHdlIG5lZWQgdG8gY2hhbmdlIHRoaXMgYmVjYXVzZSBpdHMgYWN0dWFsbHkgc2hv
d2luZyB0aGUgCnJpZ2h0CnZhbHVlcyBmb3IgdGhlIHJlcGxpY2F0b3IuCgo+IDQgKSBBbiBhbHRl
cm5hdGl2ZSBhcHByb2FjaCBjb3VsZCBiZSB0byBtb2RlbCB0aGUgZHJpdmVyIG9uIHRoZSBFVE0g
Lwo+IENUSSBkcml2ZXJzIHdoZXJlIHRoZSByZWdpc3RlciB2YWx1ZXMgYXJlIGhlbGQgaW4gdGhl
IGRyaXZlciBzdHJ1Y3R1cmUKPiBhbmQgb25seSBhcHBsaWVkIG9uIGVuYWJsZSAvIGRpc2FibGUu
Cj4gCgpUaGlzIGxvb2tzIGdvb2QgdG8gbWUgc2luY2Ugd2UgcmVhbGx5IGRvbid0IG5lZWQgdG8g
cmVzZXQgcmVwbGljYXRvciBpbiAKcHJvYmUsCndlIG5lZWQgdG8gcmVzZXQgaXQgb25seSBpbiBy
ZXBsaWNhdG9yX2VuYWJsZSgpIGFuZCB0aGF0IGVuc3VyZXMgY2xvY2tzIAphcmUgZW5hYmxlZAp3
aXRob3V0IGhhdmluZyB0byBhc3N1bWUgdGhpbmdzKGZyb20gYW1iYSkgYWJvdXQgY29udGV4dCBi
ZWluZyBsb3N0IG9yIApub3Qgd2hlbgpjbG9ja3MgYXJlIGRpc2FibGVkIHNpbmNlIHRoYXQgaXMg
aW1wbGVtZW50YXRpb24gZGVmaW5lZCBhbnl3YXlzLgoKQnV0LCB3aHkgY2FuJ3Qgd2UganVzdCBt
b3ZlIHJlcGxpY2F0b3JfcmVzZXQoKSBmcm9tIHByb2JlIHRvIApyZXBsaWNhdG9yX2VuYWJsZSgp
PwpBbnl0aGluZyB3cm9uZyB3aXRoIGl0PyBTZWVtcyBsaWtlIHJpZ2h0IHRoaW5nIHRvIGRvIGJl
Y2F1c2Ugd2Ugd2lsbCBiZSAKaGF2aW5nCmNsb2NrcyBlbmFibGVkIHdoZW4gd2UgdG91Y2ggdGhl
IHJlcGxpY2F0b3IgcmVnaXN0ZXJzIGFuZCBvbmx5IGluIHRoZSAKZW5hYmxlCnBhdGguCgpUaGFu
a3MsClNhaQoKLS0gClFVQUxDT01NIElORElBLCBvbiBiZWhhbGYgb2YgUXVhbGNvbW0gSW5ub3Zh
dGlvbiBDZW50ZXIsIEluYy4gaXMgYSAKbWVtYmVyCm9mIENvZGUgQXVyb3JhIEZvcnVtLCBob3N0
ZWQgYnkgVGhlIExpbnV4IEZvdW5kYXRpb24KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
