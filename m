Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7724D1822B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 20:45:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTMT6BYjiTQ0AuP+zbGIGjmFAzB7hSqbemaevBDd0qM=; b=Luh00CiaT7frp9
	YzjJUye0lWBTXH1GylEGsAbOvNbBo+g4GqcPgJgqX/HDT2dttPXauP1N0j7ieXxAs+jrpJyg+yepD
	SXz4cBhXi0sGbAXUIxhpfq0BQmA5/V3ijw0IlhfPaacR+QlmKuu8ekKNh0Urkn9BwiBelOG33bLk1
	duTNRQazjuyL7dCqDBQhOqfg3pcOA4LSoIhwPi8q58YXoCQVw2yOZvdrAxjVJgty+0kSR1j20lrPR
	3iSTVH2uZomxG7IyfLAWl4Fc8snXK5WCZ/a4BI/pCICYJeBpUfZB97LngBbMfMmGDODMVyafq60iT
	UJ+OLG9gBfJnM5QEU6VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC7I1-0002io-DC; Wed, 11 Mar 2020 19:45:13 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC7Hg-0002iI-Ta
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 19:44:54 +0000
Received: from zn.tnic (p200300EC2F12AA006409EF873197E31D.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f12:aa00:6409:ef87:3197:e31d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 4932B1EC0CE5;
 Wed, 11 Mar 2020 20:44:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1583955884;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qhR6fZY9T1iS1MlozbrwkvsgypJ7t9l1Cqgx8z0l+kI=;
 b=QxSjkDa88cjKLLavCeDIljf3TJTfbpfbXYijlZarldmJUMiZo8E2ovyQL0oOO0w3QRL619
 4rZ5pA3j48Xqft54Rhc+/eNztqXUw93f+Y+SKPGkqGvHi+1vFhT1fIuqAugLvom2WqzvWf
 4p1J9rX8TTK11yvJ3fSlQV0Cex0eCWA=
Date: Wed, 11 Mar 2020 20:44:46 +0100
From: Borislav Petkov <bp@alien8.de>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v4 1/6] x86/elf: Add table to document READ_IMPLIES_EXEC
Message-ID: <20200311194446.GL3470@zn.tnic>
References: <20200225051307.6401-1-keescook@chromium.org>
 <20200225051307.6401-2-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225051307.6401-2-keescook@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_124453_115276_C8D3D134 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jann Horn <jannh@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 x86@kernel.org, Hector Marco-Gisbert <hecmargi@upv.es>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Jason Gunthorpe <jgg@mellanox.com>,
 kernel-hardening@lists.openwall.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T3plbm4gTW9uLCBGZWIgMjQsIDIwMjAgYXQgMDk6MTM6MDJQTSAtMDgwMCwgS2VlcyBDb29rIHdy
b3RlOgo+IEFkZCBhIHRhYmxlIHRvIGRvY3VtZW50IHRoZSBjdXJyZW50IGJlaGF2aW9yIG9mIFJF
QURfSU1QTElFU19FWEVDIGluCj4gcHJlcGFyYXRpb24gZm9yIGNoYW5naW5nIHRoZSBiZWhhdmlv
ci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4K
PiBSZXZpZXdlZC1ieTogSmFzb24gR3VudGhvcnBlIDxqZ2dAbWVsbGFub3guY29tPgo+IC0tLQo+
ICBhcmNoL3g4Ni9pbmNsdWRlL2FzbS9lbGYuaCB8IDE5ICsrKysrKysrKysrKysrKysrKysKPiAg
MSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC94
ODYvaW5jbHVkZS9hc20vZWxmLmggYi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9lbGYuaAo+IGluZGV4
IDY5YzBmODkyZTMxMC4uNzMzZjY5YzJiMDUzIDEwMDY0NAo+IC0tLSBhL2FyY2gveDg2L2luY2x1
ZGUvYXNtL2VsZi5oCj4gKysrIGIvYXJjaC94ODYvaW5jbHVkZS9hc20vZWxmLmgKPiBAQCAtMjgx
LDYgKzI4MSwyNSBAQCBleHRlcm4gdTMyIGVsZl9od2NhcDI7Cj4gIC8qCj4gICAqIEFuIGV4ZWN1
dGFibGUgZm9yIHdoaWNoIGVsZl9yZWFkX2ltcGxpZXNfZXhlYygpIHJldHVybnMgVFJVRSB3aWxs
Cj4gICAqIGhhdmUgdGhlIFJFQURfSU1QTElFU19FWEVDIHBlcnNvbmFsaXR5IGZsYWcgc2V0IGF1
dG9tYXRpY2FsbHkuCj4gKyAqCj4gKyAqIFRoZSBkZWNpc2lvbiBwcm9jZXNzIGZvciBkZXRlcm1p
bmluZyB0aGUgcmVzdWx0cyBhcmU6Cj4gKyAqCj4gKyAqIMKgIMKgIMKgIMKgIMKgIMKgIMKgQ1BV
OiB8IGxhY2tzIE5YKiDCoHwgaGFzIE5YLCBpYTMyIMKgIMKgIHwgaGFzIE5YLCB4ODZfNjQgfAo+
ICsgKiBFTEY6IMKgIMKgIMKgIMKgIMKgIMKgIMKgfCDCoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqB8IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfAo+ICsgKiAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tfC0tLS0tLS0tLS0tLS0tLS0tLXwtLS0tLS0tLS0t
LS0tLS0tfAo+ICsgKiBtaXNzaW5nIEdOVV9TVEFDSyB8IGV4ZWMtYWxsIMKgIHwgZXhlYy1hbGwg
wqAgwqAgwqAgwqAgfCBleGVjLWFsbCDCoCDCoCDCoCB8Cj4gKyAqIEdOVV9TVEFDSyA9PSBSV1gg
wqB8IGV4ZWMtYWxsIMKgIHwgZXhlYy1hbGwgwqAgwqAgwqAgwqAgfCBleGVjLWFsbCDCoCDCoCDC
oCB8Cj4gKyAqIEdOVV9TVEFDSyA9PSBSVyDCoCB8IGV4ZWMtbm9uZSDCoHwgZXhlYy1ub25lIMKg
IMKgIMKgIMKgfCBleGVjLW5vbmUgwqAgwqAgwqB8CgpJbiBhbGwgdGhvc2UgdGFibGVzLCB5b3Ug
d2FubmEgZG86CgpzL0dOVV9TVEFDSy9QVF9HTlVfU1RBQ0svZwoKc28gdGhhdCBpdCBpcyBjbGVh
ciB3aGF0IHRoaXMgZGVmaW5lIGlzLgoKVGh4LgoKLS0gClJlZ2FyZHMvR3J1c3MsCiAgICBCb3Jp
cy4KCmh0dHBzOi8vcGVvcGxlLmtlcm5lbC5vcmcvdGdseC9ub3Rlcy1hYm91dC1uZXRpcXVldHRl
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
