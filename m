Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89AC1CDD54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 16:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TZhEOH96ZMKADi2BOieNhAFmL9Og3UFRUPzurPeCA4s=; b=meO9SnlYej8+6bxRiUkaiRWjk
	jPwfJpOEVVaKeQbNTMN9pKB8gwRnWEmoTZSOUjQXefjhRg0/i4dBuk90stYmXRyJ2iM2WvMxBRor+
	twZPfoCB12LvfMI2dHZYe6+EoiiPQHP89PjAsIr3Y2eY4i2kWQDn8ZwLLlH0kecxJ9nGuCx7hseS1
	Aki5F8iCCWSXTPUs6ZmR0gOeiH/83Jn8NmguP+0J8WLZxY+KQLYCfAWKlfoYCxbOOlKtF/cp+JszK
	FNlX+tSmlcie5wq2eCm/CXLtgpv43vMd33jrleIVwD4EwH76yb2wF5xBR8Et5uKce5Iwzm9yQnfA5
	qMFUWUJHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9Vs-0004g3-HI; Mon, 11 May 2020 14:34:36 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9Vi-0004f5-N6
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 14:34:28 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589207666; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=KmJFuQzAYQulb5MKM/wUKfeYZgPONA5Fb64dzs+Vki4=;
 b=H/oanvFLhkeuTnJT2gZvuW7SKuQhw37DqHPwQjUri+HmpJ0IsJr6v9Z3J9wSeSEDRu5Qi4NF
 jJ0n6AKd1eT1m3OkFyMLO/EcIu+qVKbA6PywuFLmHl1foxDmpwU9Lg7aNpZsLkvV3bqUKJDj
 U4AxKOTnRD7kpQC1dW2RocCH4tU=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb96271.7fa74d5c88b8-smtp-out-n02;
 Mon, 11 May 2020 14:34:25 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 018B8C43636; Mon, 11 May 2020 14:34:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5C67FC433CB;
 Mon, 11 May 2020 14:34:24 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 11 May 2020 20:04:24 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
In-Reply-To: <47f6d51bfad0a0bf1553e101e6a2c8c9@codeaurora.org>
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
Message-ID: <ecc4ae11caa4017d813d959b29c0b6ef@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_073426_817997_09D85D00 
X-CRM114-Status: GOOD (  17.46  )
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

T24gMjAyMC0wNS0xMSAxOTo0NiwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+IEhpIE1pa2Us
Cj4gCj4gT24gMjAyMC0wNS0xMSAxNjo0NCwgTWlrZSBMZWFjaCB3cm90ZToKPiBbLi4uXQo+IAo+
Pj4gCj4+PiBJIGNoZWNrZWQgd2l0aCB0aGUgZGVidWcgdGVhbSBhbmQgdGhlcmUgaXMgYSBsaW1p
dGF0aW9uIHdpdGgKPj4+IHRoZSByZXBsaWNhdG9yKHN3YW9fcmVwbGljYXRvcikgaW4gdGhlIEFP
U1MgZ3JvdXAgd2hlcmUgaXQKPj4+IGxvc2VzIHRoZSBpZGZpbHRlciByZWdpc3RlciBjb250ZXh0
IHdoZW4gdGhlIGNsb2NrIGlzIGRpc2FibGVkLgo+Pj4gVGhpcyBpcyBub3QganVzdCBpbiBTQzcx
ODAgU29DIGJ1dCBhbHNvIHJlcG9ydGVkIG9uIHNvbWUgbGF0ZXN0Cj4+PiB1cGNvbWluZyBRQ09N
IFNvQ3MgYXMgd2VsbCBhbmQgd2lsbCBuZWVkIHRvIGJlIHRha2VuIGNhcmUgaW4KPj4+IG9yZGVy
IHRvIGVuYWJsZSBjb3Jlc2lnaHQgb24gdGhlc2UgY2hpcHNldHMuCj4+PiAKPj4+IEhlcmUncyB3
aGF0J3MgaGFwcGVuaW5nIC0gIEFmdGVyIHRoZSByZXBsaWNhdG9yIGlzIGluaXRpYWxpemVkLAo+
Pj4gdGhlIGNsb2NrIGlzIGRpc2FibGVkIGluIGFtYmFfcG1fcnVudGltZV9zdXNwZW5kKCkgYXMg
YSBwYXJ0IG9mCj4+PiBwbSBydW50aW1lIHdvcmtxdWV1ZSB3aXRoIHRoZSBhc3N1bXB0aW9uIHRo
YXQgdGhlcmUgd2lsbCBiZSBubwo+Pj4gbG9zcyBvZiBjb250ZXh0IGFmdGVyIHRoZSByZXBsaWNh
dG9yIGlzIGluaXRpYWxpemVkLiBCdXQgaXQgZG9lc24ndAo+Pj4gaG9sZCBnb29kIHdpdGggdGhl
IHJlcGxpY2F0b3JzIHdpdGggdGhlc2UgdW5mb3J0dW5hdGUgbGltaXRhdGlvbgo+Pj4gYW5kIHRo
ZSBpZGZpbHRlciByZWdpc3RlciBjb250ZXh0IGlzIGxvc3QuCj4+PiAKPj4+IFsgICAgNS44ODk0
MDZdIGFtYmFfcG1fcnVudGltZV9zdXNwZW5kIGRldm5hbWU9NmIwNjAwMC5yZXBsaWNhdG9yIAo+
Pj4gcmV0PTAKPj4+IFsgICAgNS45MTQ1MTZdIFdvcmtxdWV1ZTogcG0gcG1fcnVudGltZV93b3Jr
Cj4+PiBbICAgIDUuOTE4NjQ4XSBDYWxsIHRyYWNlOgo+Pj4gWyAgICA1LjkyMTE4NV0gIGR1bXBf
YmFja3RyYWNlKzB4MC8weDFkMAo+Pj4gWyAgICA1LjkyNDk1OF0gIHNob3dfc3RhY2srMHgyYy8w
eDM4Cj4+PiBbICAgIDUuOTI4MzgyXSAgZHVtcF9zdGFjaysweGMwLzB4MTA0Cj4+PiBbICAgIDUu
OTMxODk2XSAgYW1iYV9wbV9ydW50aW1lX3N1c3BlbmQrMHhkOC8weGUwCj4+PiBbICAgIDUuOTM2
NDY5XSAgX19ycG1fY2FsbGJhY2srMHhlMC8weDE0MAo+Pj4gWyAgICA1Ljk0MDMzMl0gIHJwbV9j
YWxsYmFjaysweDM4LzB4OTgKPj4+IFsgICAgNS45NDM5MjZdICBycG1fc3VzcGVuZCsweGVjLzB4
NjE4Cj4+PiBbICAgIDUuOTQ3NTIyXSAgcnBtX2lkbGUrMHg1Yy8weDNmOAo+Pj4gWyAgICA1Ljk1
MDg1MV0gIHBtX3J1bnRpbWVfd29yaysweGE4LzB4YzAKPj4+IFsgICAgNS45NTQ3MThdICBwcm9j
ZXNzX29uZV93b3JrKzB4MWY4LzB4NGMwCj4+PiBbICAgIDUuOTU4ODQ4XSAgd29ya2VyX3RocmVh
ZCsweDUwLzB4NDY4Cj4+PiBbICAgIDUuOTYyNjIzXSAga3RocmVhZCsweDEyYy8weDE1OAo+Pj4g
WyAgICA1Ljk2NTk1N10gIHJldF9mcm9tX2ZvcmsrMHgxMC8weDFjCj4+PiAKPj4+IFRoaXMgaXMg
YSBwbGF0Zm9ybS9Tb0Mgc3BlY2lmaWMgcmVwbGljYXRvciBpc3N1ZSwgc28gd2UgY2FuIGVpdGhl
cgo+Pj4gaW50cm9kdWNlIHNvbWUgRFQgcHJvcGVydHkgZm9yIHJlcGxpY2F0b3JzIHRvIGlkZW50
aWZ5IHdoaWNoIAo+Pj4gcmVwbGljYXRvcgo+Pj4gaGFzIHRoaXMgbGltaXRhdGlvbiwgY2hlY2sg
aW4gcmVwbGljYXRvcl9lbmFibGUoKSBhbmQgcmVzZXQgdGhlCj4+PiByZWdpc3RlcnMKPj4+IG9y
IGhhdmUgc29tZXRoaW5nIGxpa2UgYmVsb3cgZGlmZiB0byBjaGVjayB0aGUgaWRmaWx0ZXIgcmVn
aXN0ZXJzIGluCj4+PiByZXBsaWNhdG9yX2VuYWJsZSgpIGFuZCB0aGVuIHJlc2V0IHdpdGggY2xl
YXIgY29tbWVudCBzcGVjaWZ5aW5nIGl04oCZcwo+Pj4gdGhlCj4+PiBoYXJkd2FyZSBsaW1pdGF0
aW9uIG9uIHNvbWUgUUNPTSBTb0NzLiBQbGVhc2UgbGV0IG1lIGtub3cgeW91ciAKPj4+IHRob3Vn
aHRzCj4+PiBvbgo+Pj4gdGhpcz8KPj4+IAo+IAo+IFNvcnJ5IGZvciBodXJyeWluZyB1cCBhbmQg
c2VuZGluZyB0aGUgcGF0Y2ggLQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BhdGNod29yay9w
YXRjaC8xMjM5OTIzLy4KPiBJIHdpbGwgc2VuZCB2MiBiYXNlZCBvbiBmdXJ0aGVyIGZlZWRiYWNr
cyBoZXJlIG9yIHRoZXJlLgo+IAo+PiAKPj4gMSkgZG9lcyB0aGlzIHJlcGxpY2F0b3IgcGFydCBo
YXZlIGEgdW5pcXVlIElEIHRoYXQgZGlmZmVycyBmcm9tIHRoZQo+PiBzdGFuZGFyZCBBUk0gZGVz
aWduZWQgcmVwbGljYXRvcnM/Cj4+IElmIHNvIHBlcmhhcHMgbGluayB0aGUgbW9kaWZpY2F0aW9u
IGludG8gdGhpcy4gKGV2ZW4gaWYgdGhlIHBhcnQgbm8gaW4KPj4gUElEUjAvMSBpcyB0aGUgc2Ft
ZSB0aGUgVUNJIHNob3VsZCBiZSBkaWZmZXJlbnQgZm9yIGEgZGlmZmVyZW50Cj4+IGltcGxlbWVu
dGF0aW9uKQo+PiAKPiAKPiBwaWQ9MHgyYmI5MDkgZm9yIGJvdGggcmVwbGljYXRvcnMuIFNvIHBh
cnQgbnVtYmVyIGlzIHNhbWUuCj4gVUNJIHdpbGwgYmUgZGlmZmVyZW50IGZvciBkaWZmZXJlbnQg
aW1wbGVtZW50YXRpb24oUUNPTSBtYXliZQo+IGRpZmZlcmVudCBmcm9tIEFSTSksCj4gYnV0IHdp
bGwgaXQgYmUgZGlmZmVyZW50IGZvciBkaWZmZXJlbnQgcmVwbGljYXRvcnMgdW5kZXIgdGhlIHNh
bWUKPiBpbXBsKGkuZS4sIG9uIFFDT00pLgo+IAoKSGVyZSBpcyB0aGUgY2lkPTB4YjEwNTkwMGQg
Zm9yIGJvdGggcmVwbGljYXRvcnMuCgpUaGFua3MsClNhaQoKLS0gClFVQUxDT01NIElORElBLCBv
biBiZWhhbGYgb2YgUXVhbGNvbW0gSW5ub3ZhdGlvbiBDZW50ZXIsIEluYy4gaXMgYSAKbWVtYmVy
Cm9mIENvZGUgQXVyb3JhIEZvcnVtLCBob3N0ZWQgYnkgVGhlIExpbnV4IEZvdW5kYXRpb24KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
