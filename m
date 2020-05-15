Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AC11D4F96
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 15:53:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqoITRc47IQi5HXtCIwv7TWoDZzDQ4nPj5DZQhynLFg=; b=jWd7HuaXVAaPJ3
	oEWuRK4ze92voPmyoK3rklJglyDEyXgXb4YYM15mxMgvNlLing4YpTtx5zBOoduF05P2nisO9oOdT
	UFHb2GJCBKBbHDpEAagprsy0+yrxoTqjU7TKGdXHwaV/pqh13oDP16bPN1J1ut1FOKhOc3JMeVBsh
	YoGYot/R1z0x2a3wkKOyUzBFKtudZo2FW/3Mvigw3JRb1z7tVSdxyGVWqSxg9u8EfKdayQk0Ss7bE
	H7RULpefXILnuZNoF4wYZi3q5xn3Fb6Gd7si8om5sRAX2z2yhyTD5KylZqDGHVMOOBbV9H4wN34pN
	zHZSckXlAWIN9uIw6lBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZalr-0004Mc-Tw; Fri, 15 May 2020 13:53:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZalg-0004M3-Cn
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 13:52:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 756DB2F;
 Fri, 15 May 2020 06:52:51 -0700 (PDT)
Received: from bogus (unknown [10.37.12.6])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E59F63F71E;
 Fri, 15 May 2020 06:52:47 -0700 (PDT)
Date: Fri, 15 May 2020 14:52:37 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v3 3/7] firmware: smccc: Add the definition for SMCCCv1.2
 version/error codes
Message-ID: <20200515135237.GA7336@bogus>
References: <20200506164411.3284-1-sudeep.holla@arm.com>
 <20200506164411.3284-4-sudeep.holla@arm.com>
 <20200515113801.GC67718@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515113801.GC67718@C02TD0UTHF1T.local>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_065252_478115_6EDAE561 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Steven Price <steven.price@arm.com>,
 harb@amperecomputing.com, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMTUsIDIwMjAgYXQgMTI6Mzg6MDFQTSArMDEwMCwgTWFyayBSdXRsYW5kIHdy
b3RlOgo+IE9uIFdlZCwgTWF5IDA2LCAyMDIwIGF0IDA1OjQ0OjA3UE0gKzAxMDAsIFN1ZGVlcCBI
b2xsYSB3cm90ZToKPiA+IEFkZCB0aGUgZGVmaW5pdGlvbiBmb3IgU01DQ0MgdjEuMiB2ZXJzaW9u
IGFuZCBuZXcgZXJyb3IgY29kZSBhZGRlZC4KPiA+IFdoaWxlIGF0IGl0LCBhbHNvIGFkZCBhIG5v
dGUgdGhhdCBBUk0gREVOIDAwNzBBIGlzIGRlcHJlY2F0ZWQgYW5kIGlzCj4gPiBub3cgbWVyZ2Vk
IGludG8gdGhlIG1haW4gU01DQ0Mgc3BlY2lmaWNhdGlvbihBUk0gREVOIDAwMjhDKS4KPiA+IAo+
ID4gUmV2aWV3ZWQtYnk6IFN0ZXZlbiBQcmljZSA8c3RldmVuLnByaWNlQGFybS5jb20+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBTdWRlZXAgSG9sbGEgPHN1ZGVlcC5ob2xsYUBhcm0uY29tPgo+IAo+IEht
bS4uLiB0aGUgU01DQ0MgdjEuMiBkb2Mgc3RpbGwgc2VlbXMgdG8gYmUgRUFDIHJhdGhlciB0aGFu
IGEgZmluYWwKPiByZWxlYXNlLgo+CgpSaWdodCwgSSB3YXMgdG9sZCBmaW5hbCByZWxlYXNlIHNv
bWV0aW1lIGluIHRoZSByZWNlbnQgcGFzdCDwn5iECkkgbWVhbiBBcHJpbCBvciBtaWQtTWF5LCBJ
IHdpbGwgY2hlY2sgb24gdGhhdCBidXQgeWVzIEkgYWdyZWUgb24geW91cgpjb25jZXJucy4KCj4g
SSBkb24ndCBleHBlY3QgdGhhdCB0aGlzIHdvdWxkIGNoYW5nZSwgYnV0IEkgYW0gYSBsaXR0bGUg
aGVzaXRhbnQgdG8gYWRkCj4gb3RoZXIgc3R1ZmYgYmFzZWQgb24gYW4gdW5maW5hbGl6ZWQgc3Bl
Yy4gRG8gd2Uga25vdyB3aGVuIHRoZSBmaW5hbAo+IHJlbGVhc2Ugd2lsbCBiZT8KPgoKSSBoYXZl
IGFza2VkIGZvciB0aGUgc2FtZSBhcyBJIHdyaXRlIHRoaXMgZW1haWwuCgotLSAKUmVnYXJkcywK
U3VkZWVwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
