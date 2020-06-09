Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA84A1F379E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzJpum/3M2y/Lkv1y/c9RJt4KuS0pWE14OuKZobCdDY=; b=KNnhlXT6WXlUyq
	4r2LeOrr6hjMNHS9jZsbehkmRvvUbibXuqlYGKDb/bDMqMGAJ2BV85CTHcZhxy0LcP5vTIWwBb/e/
	qj5vahkYMshKvLyv6ya2zdvDq7q+/M/qBici+uqeHPrUfDW7SrRPxh4B+OPozIvw/GuVjClWIKqbs
	ckN/6MZAAVH4m6sN40NrsFUtXCy5nsw4Mv+fqyiED/Orot1vcAC45TOH4BiV0OQRHMCHaY01hF34Z
	iJcOUnuFSaZHpKhymJ5j3AsUug2TNDyXaHeHn2PnYcWONZYKK5yWJGmS3H2eA/WmM5u9oXJDOBIn2
	gikOiA27+v+rkoS45h8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibB0-0007KO-4z; Tue, 09 Jun 2020 10:08:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibAs-0007JK-13
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 10:08:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BEBAD1FB;
 Tue,  9 Jun 2020 03:08:03 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F08C93F73D;
 Tue,  9 Jun 2020 03:08:02 -0700 (PDT)
Subject: Re: [kvmtool][PATCH v2] arm64: Obtain text offset from kernel image
To: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
References: <20200608152801.1415902-1-maz@kernel.org>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <4aa35134-d2b6-9db7-9299-d866d4693a95@arm.com>
Date: Tue, 9 Jun 2020 11:08:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200608152801.1415902-1-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_030806_114226_CB952E1D 
X-CRM114-Status: GOOD (  16.16  )
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

SGksCgpPbiA2LzgvMjAgNDoyOCBQTSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IFJlY2VudCBjaGFu
Z2VzIG1hZGUgdG8gTGludXggNS44IGhhdmUgb3V0bGluZWQgdGhhdCBrdm10b29sCj4gaGFyZGNv
ZGVzIHRoZSB0ZXh0IG9mZnNldCBpbnN0ZWFkIG9mIHJlYWRpbmcgaXQgZnJvbSB0aGUgYXJtNjQK
PiBpbWFnZSBpdHNlbGYuCj4KPiBUbyBhZGRyZXNzIHRoaXMsIGltcG9ydCB0aGUgaW1hZ2UgaGVh
ZGVyIHN0cnVjdHVyZSBpbnRvIGt2bXRvb2wKPiBhbmQgZG8gdGhlIHJpZ2h0IHRoaW5nLiAzMmJp
dCBndWVzdHMgYXJlIHN0aWxsIGxvYWRlZCB0byB0aGVpcgo+IHVzdWFsIGxvY2F0aW9ucy4KPgo+
IFdoaWxlIHdlJ3JlIGF0IGl0LCBjaGVjayB0aGUgaW1hZ2UgbWFnaWMgYW5kIGRlZmF1bHQgdG8g
dGhlIHRleHQKPiBvZmZzZXQgdG8gYmUgMHg4MDAwMCB3aGVuIGltYWdlX3NpemUgaXMgMCwgYXMg
ZGVzY3JpYmVkIGluIHRoZQo+IGtlcm5lbCdzIGJvb3RpbmcucnN0IGRvY3VtZW50Lgo+Cj4gQ2M6
IEFsZXhhbmRydSBFbGlzZWkgPGFsZXhhbmRydS5lbGlzZWlAYXJtLmNvbT4KPiBSZXBvcnRlZC1i
eTogQXJkIEJpZXNoZXV2ZWwgPGFyZGJAa2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBNYXJj
IFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPgo+IC0tLQo+Cj4gTm90ZXM6Cj4gICAgIHYyOiBDaGVj
ayBtYWdpYywgYXNzdW1lIG9mZnNldCB0byBiZSAweDgwMDAgaWYgaW1hZ2Vfc2l6ZSBpcyAwLgo+
Cj4gWy4uXQoKSSB3YW50ZWQgdG8gcmV2aWV3IHRoZSBwYXRjaCwgYnV0IHRoZW4gSSBub3RpY2Vk
IHRoYXQgV2lsbCBtZXJnZWQgaXQuIFNvIEkgc2V0dGxlZApmb3IgdGVzdGluZyBpdCwgdG8gbWFr
ZSBzdXJlIG5vdGhpbmcgYnJlYWtzLiBJIHdhcyBhYmxlIHRvIHJlcHJvZHVjZSB0aGUgaXNzdWUK
cmVwb3J0ZWQgb24gdGhlIG1haWxpbmcgbGlzdCAtIHdpdGhvdXQgdGhpcyBwYXRjaCwgd2hlbiB0
aGUga2VybmVsIGlzIGNvbXBpbGVkCndpdGggQ09ORklHX1JBTkRPTUlaRV9CQVNFIG5vdCBzZXQs
IHRoZSBrZXJuZWwgZG9lc24ndCBib290OyB3aXRoIHRoaXMgcGF0Y2gKYXBwbGllZCwgdGhlIHNh
bWUga2VybmVsIGJvb3RzIHN1Y2Nlc3NmdWxseS4KCkkgYWxzbyB0ZXN0ZWQgaXQgd2l0aCBhbiBh
YXJjaDMyIGtlcm5lbCwgdGhpcyBpcyB3aGF0IEkgZ290OgoKJCB0YXNrc2V0IC1jIDQsNSAuL2xr
dm0gcnVuIC1jMiAtbTEwMjQgLWsgLi4va3ZtdG9vbC12bXMvekltYWdlIC1kCi4uL2t2bXRvb2wt
dm1zL2RlYmlhbi0xMC4zLjAuaW1nwqAgLXAgJ2Vhcmx5Y29uIHJvb3Q9L2Rldi92ZGEyJwrCoCAj
IGxrdm0gcnVuIC1rIC4uL2t2bXRvb2wtdm1zL3pJbWFnZSAtbSAxMDI0IC1jIDIgLS1uYW1lIGd1
ZXN0LTE4MzQKwqAgV2FybmluZzogS2VybmVsIGltYWdlIG1hZ2ljIG5vdCBtYXRjaGluZwrCoCBX
YXJuaW5nOiB1bmFibGUgdG8gdHJhbnNsYXRlIGhvc3QgYWRkcmVzcyAweDEzMTE1YTRjODJkMDVh
NGQgdG8gZ3Vlc3QKwqAgRmF0YWw6IGtlcm5lbCBpbWFnZSB0b28gYmlnIHRvIGNvbnRhaW4gaW4g
Z3Vlc3QgbWVtb3J5LgoKSU1PLCB3b3JrcyBhcyBleHBlY3RlZC4KClRoYW5rcywKQWxleAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
