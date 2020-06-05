Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002411EF71F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 14:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DW+o1o9EF21R/Mv5HH6QQit4smpCrYVvC7FgWu3fk+Q=; b=mAxDutViT2iNtE
	2zDtTrHc3v0KjRmoz7pDrqa8E4xQTrrA2d2crxcEu1YI6oWa6okkOY+bgpNK2o9fQwDmigRBSqE+j
	z19X6tBhqVCkDUeiLKz1Om9n2aFfQc8r/3Us1o8fEmNYyzTHfIBoZ4WoAeReFBaLU3c8p1Gg7cVRY
	1FxPyxmxQbfgE1bppHP+7ney7haxFa2MuY2H/jHMrbutVyDNLwBse9PPMAv5YV80GFY/ieDHrKLsC
	cpw3Wsglvap50zneoBHihOV3Wn3qb88O0x71bEixsveZRiscKWJa5xkidHto7ybAQFWgn+ieMAzW+
	nbi5Yvav4Ia+WxuQIpmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhBGX-00008H-4P; Fri, 05 Jun 2020 12:16:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhBGQ-00007n-3I
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 12:15:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 92D9E2B;
 Fri,  5 Jun 2020 05:15:54 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C211A3F305;
 Fri,  5 Jun 2020 05:15:53 -0700 (PDT)
Subject: Re: [kvmtool][PATCH] arm64: Obtain text offset from kernel image
To: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
References: <20200605104907.1307967-1-maz@kernel.org>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <e9045c9e-f1c1-a6aa-9a19-37dc7ea02038@arm.com>
Date: Fri, 5 Jun 2020 13:16:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200605104907.1307967-1-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_051558_176509_BA2AA4DA 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDYvNS8yMCAxMTo0OSBBTSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IFJlY2Vu
dCBjaGFuZ2VzIG1hZGUgdG8gTGludXggNS44IGhhdmUgb3V0bGluZWQgdGhhdCBrdm10b29sCj4g
aGFyZGNvZGVzIHRoZSB0ZXh0IG9mZnNldCBpbnN0ZWFkIG9mIHJlYWRpbmcgaXQgZnJvbSB0aGUg
YXJtNjQKPiBpbWFnZSBpdHNlbGYuCj4KPiBUbyBhZGRyZXNzIHRoaXMsIGltcG9ydCB0aGUgaW1h
Z2UgaGVhZGVyIHN0cnVjdHVyZSBpbnRvIGt2bXRvb2wKPiBhbmQgZG8gdGhlIHJpZ2h0IHRoaW5n
LiAzMmJpdCBndWVzdHMgYXJlIHN0aWxsIGxvYWRlZCB0byB0aGVpcgo+IHVzdWFsIGxvY2F0aW9u
cy4KPgo+IFJlcG9ydGVkLWJ5OiBBcmQgQmllc2hldXZlbCA8YXJkYkBrZXJuZWwub3JnPgo+IFNp
Z25lZC1vZmYtYnk6IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+Cj4gLS0tCj4gIE1ha2Vm
aWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMSArCj4gIGFybS9hYXJjaDMyL2luY2x1
ZGUva3ZtL2t2bS1hcmNoLmggfCAgMiArLQo+ICBhcm0vYWFyY2g2NC9pbmNsdWRlL2FzbS9pbWFn
ZS5oICAgIHwgNTkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIGFybS9hYXJjaDY0
L2luY2x1ZGUva3ZtL2t2bS1hcmNoLmggfCAgNSArLS0KPiAgYXJtL2FhcmNoNjQva3ZtLmMgICAg
ICAgICAgICAgICAgICB8IDMwICsrKysrKysrKysrKysrKwo+ICBhcm0va3ZtLmMgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgIDIgKy0KPiAgNiBmaWxlcyBjaGFuZ2VkLCA5NCBpbnNlcnRpb25z
KCspLCA1IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJtL2FhcmNoNjQvaW5j
bHVkZS9hc20vaW1hZ2UuaAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJtL2FhcmNoNjQva3ZtLmMK
Pgo+IFsuLl0KClRoaXMgaXMgYSBncmVhdCBhZGRpdGlvbiB0byBrdm10b29sLCB0aGFuayB5b3Uh
IEJlZm9yZSBJIGRvIGEgbW9yZSBpbi1kZXB0aApyZXZpZXcsIEkgaGF2ZSBzb21lIGdlbmVyYWwg
cXVlc3Rpb25zLgoKUmVnYXJkaW5nIHRoZSBhY3R1YWwgdmFsdWUgb2YgdGV4dF9vZmZzZXQsIHRo
ZSBib290aW5nLnJzdCBkb2N1bWVudCBzYXlzOgoKIlByaW9yIHRvIHYzLjE3LCB0aGUgZW5kaWFu
bmVzcyBvZiB0ZXh0X29mZnNldCB3YXMgbm90IHNwZWNpZmllZC7CoCBJbiB0aGVzZSBjYXNlcwpp
bWFnZV9zaXplIGlzIHplcm8gYW5kIHRleHRfb2Zmc2V0IGlzIDB4ODAwMDAgaW4gdGhlIGVuZGlh
bm5lc3Mgb2YgdGhlIGtlcm5lbC7CoApXaGVyZSBpbWFnZV9zaXplIGlzIG5vbi16ZXJvIGltYWdl
X3NpemUgaXMgbGl0dGxlLWVuZGlhbiBhbmQgbXVzdCBiZSByZXNwZWN0ZWQuwqAKV2hlcmUgaW1h
Z2Vfc2l6ZSBpcyB6ZXJvLCB0ZXh0X29mZnNldCBjYW4gYmUgYXNzdW1lZCB0byBiZSAweDgwMDAw
Ii4KCkFsbCBoZWFkZXIgZmllbGRzIGFyZSBkZWNsYXJlZCBsaXR0bGUtZW5kaWFuLCB3aGljaCBs
b29rcyB0byBtZSBsaWtlIGl0IHdvdWxkCmJyZWFrIGtlcm5lbHMgb2xkZXIgdGhhbiAzLjE3LiBJ
ZiB0aGF0IHdhcyBpbnRlbnRpb25hbCwgSSB0aGluayBpdCdzIHdvcnRoCmRvY3VtZW50aW5nIHNv
bWV3aGVyZSwgb3IgYXQgbGVhc3QgYSBjb21tZW50IGZvciB0aGUga3ZtX19hcmNoX2dldF9rZXJu
X29mZnNldApmdW5jdGlvbi4KCk5vdyB0aGF0IHdlIGFyZSBwYXJzaW5nIHRoZSBrZXJuZWwgaGVh
ZGVyLCBoYXZlIHlvdSBjb25zaWRlcmVkIGNoZWNraW5nIHRoZSBtYWdpYwpudW1iZXIgdG8gbWFr
ZSBzdXJlIHRoZSB1c2VyIHNwZWNpZmllZCBhIHZhbGlkIGtlcm5lbCBpbWFnZT8gSXQgbWlnaHQg
c2F2ZSBzb21lb25lCnNvbWUgdGltZSBkZWJ1Z2dpbmcgd2h5IHRoZSBrZXJuZWwgaXNuJ3QgYm9v
dGluZywgaWYsIGZvciBleGFtcGxlLCB0aGV5IGFyZQpib290aW5nIGFuIGFybXY3IGtlcm5lbCwg
YnV0IHRoZXkgZm9yZ290IHRvIHNwZWNpZnkgLS1hYXJjaDMyLgoKVGhhbmtzLApBbGV4CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
