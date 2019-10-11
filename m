Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CC2D477F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 20:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMSpx8fc6CHJL6DAXkCNQb1sGIK7QoKZWrPslFjbA0A=; b=kL1CiCqshJwfQ/
	PyXaZAjpIWBy9w34ycmd4ThKfUTBn5RxHQvpgEZWGG5dPq20vJ8rFn3qO87w4kSFLJoRJQBUcgnW9
	1HpvUdbO9386lcGvg3yrZe1+NbsJL3uqZqFLsIPtFUZhWTCeBqzwGOb8v0hZ22em0gUt44kthw/2o
	M6jyxIbqK05cC3YIlILI7ItFqclCwZ7CNtQau10OMJlKkxBoZQhGkHkDGF5ZqInvw1qBRkxTZa/hz
	JEF0RIVi9MSvFMrPFZiBzbrXeyaqmjpzPbxinMRsdLWMYLG6I6GHTzRx175EODgjICUdcCNX5Zrvg
	/8Xpo60JG6qca3+LUEPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzZ0-0000rA-96; Fri, 11 Oct 2019 18:22:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzYe-0000jD-It
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 18:22:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 972581570;
 Fri, 11 Oct 2019 11:22:31 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E4C683F703;
 Fri, 11 Oct 2019 11:22:30 -0700 (PDT)
Subject: Re: [PATCH 1/4] arm64: errata: Hide CTR_EL0.DIC on systems affected
 by Neoverse-N1 #1542419
To: Suzuki K Poulose <suzuki.poulose@arm.com>
References: <20191002094935.48848-1-james.morse@arm.com>
 <20191002094935.48848-2-james.morse@arm.com>
 <0f473a08-d5c6-7880-3070-94494d802930@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <bad51442-adba-8b21-0eb2-8d1665c71524@arm.com>
Date: Fri, 11 Oct 2019 19:22:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <0f473a08-d5c6-7880-3070-94494d802930@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_112232_706921_5B3CBCEC 
X-CRM114-Status: GOOD (  17.41  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3V6dWtpLAoKT24gMDcvMTAvMjAxOSAxMDozOCwgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToK
PiBPbiAwMi8xMC8yMDE5IDEwOjQ5LCBKYW1lcyBNb3JzZSB3cm90ZToKPj4gQ29yZXMgYWZmZWN0
ZWQgYnkgTmVvdmVyc2UtTjEgIzE1NDI0MTkgY291bGQgZXhlY3V0ZSBhIHN0YWxlIGluc3RydWN0
aW9uCj4+IHdoZW4gYSBicmFuY2ggaXMgdXBkYXRlZCB0byBwb2ludCB0byBmcmVzaGx5IGdlbmVy
YXRlZCBpbnN0cnVjdGlvbnMuCj4+Cj4+IFRvIHdvcmthcm91bmQgdGhpcyBpc3N1ZSB3ZSBuZWVk
IHVzZXItc3BhY2UgdG8gaXNzdWUgdW5uZWNlc3NhcnkKPj4gaWNhY2hlIG1haW50ZW5hbmNlIHRo
YXQgd2UgY2FuIHRyYXAuIFN0YXJ0IGJ5IGhpZGluZyBDVFJfRUwwLkRJQy4KCgo+PiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvY3B1X2VycmF0YS5jIGIvYXJjaC9hcm02NC9rZXJuZWwv
Y3B1X2VycmF0YS5jCj4+IGluZGV4IDFlNDNiYTVjNzliNy4uYTdkZTBkNWRkZTlhIDEwMDY0NAo+
PiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9jcHVfZXJyYXRhLmMKPj4gKysrIGIvYXJjaC9hcm02
NC9rZXJuZWwvY3B1X2VycmF0YS5jCj4+IEBAIC05MCwxMCArOTAsMTggQEAgc3RhdGljIHZvaWQK
Pj4gwqAgY3B1X2VuYWJsZV90cmFwX2N0cl9hY2Nlc3MoY29uc3Qgc3RydWN0IGFybTY0X2NwdV9j
YXBhYmlsaXRpZXMgKl9fdW51c2VkKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgdTY0IG1hc2sgPSBh
cm02NF9mdHJfcmVnX2N0cmVsMC5zdHJpY3RfbWFzazsKPj4gK8KgwqDCoCBib29sIGVuYWJsZV91
Y3RfdHJhcCA9IGZhbHNlOwo+PiDCoCDCoMKgwqDCoMKgIC8qIFRyYXAgQ1RSX0VMMCBhY2Nlc3Mg
b24gdGhpcyBDUFUsIG9ubHkgaWYgaXQgaGFzIGEgbWlzbWF0Y2ggKi8KPj4gwqDCoMKgwqDCoCBp
ZiAoKHJlYWRfY3B1aWRfY2FjaGV0eXBlKCkgJiBtYXNrKSAhPQo+PiDCoMKgwqDCoMKgwqDCoMKg
wqAgKGFybTY0X2Z0cl9yZWdfY3RyZWwwLnN5c192YWwgJiBtYXNrKSkKPj4gK8KgwqDCoMKgwqDC
oMKgIGVuYWJsZV91Y3RfdHJhcCA9IHRydWU7Cj4+ICsKPj4gK8KgwqDCoCAvKiAuLi4gb3IgaWYg
dGhpcyBDUFUgaXMgYWZmZWN0ZWQgYnkgYW4gZXJyYXRhICovCj4+ICvCoMKgwqAgaWYgKHRoaXNf
Y3B1X2hhc19jYXAoQVJNNjRfV09SS0FST1VORF8xNTQyNDE5KSkKPj4gK8KgwqDCoMKgwqDCoMKg
IGVuYWJsZV91Y3RfdHJhcCA9IHRydWU7Cj4gCj4gSSB0aGluayB3ZSBuZWVkIHRvIHRyYXAgdGhl
IENUUiBhY2Nlc3NlcyBvbiBhbGwgdGhlIENQVXMgaWYgYXQgbGVhc3Qgb25lCj4gb2YgdGhlIENQ
VSBpcyBhZmZlY3RlZCBieSB0aGUgRXJyYXRhLiBpLmUsIGV2ZW4gaWYgYm90aCB0aGUgTElUVExF
IGFuZCB0aGUKPiBiaWcgQ1BVIGhhcyBESUMsIHdlIG11c3QgdHJhcCB0aGlzIG9uIGJvdGggdHlw
ZXMgdG8gbWFrZSBzdXJlIHRoZSBhcHBsaWNhdGlvbgo+IGRvZXNuJ3QgdXNlIGEgY2FjaGVkIHZh
bHVlIG9mIHRoZSBESUMgcmVhZCBvbiB0aGUgQ1BVIHRoYXQgaXMgbm90IGFmZmVjdGVkLgoKR29v
ZCBwb2ludCEgLi4uIEkgaGFkbid0IGNvbnNpZGVyZWQgYmlnLWxpdHRsZS4KCgpUaGFua3MsCgpK
YW1lcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
