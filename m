Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D25DA0393
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 15:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZ9AaOcKu2Acd3uKymVO+sXGOz8kVmYVyuZ6HdI3yhw=; b=WZnac7Af9uCUTQ
	DRAYpmiO9DGbs/XbIaZyIKokYNugiQa5ebqfjwXbydZKYSGmwncHJsvsih/Erwon+g5IQv7Y4wLxs
	fA+BBcYn72xvxE1llSlD8ftTD8NLbXyiGVLhXSUu9Uv5cGgNsLKPEFKsUvU8Vliyvp5vbaacoORHK
	AhtIsguBe9ho6+U0xN9p/fs3OtukBkdyErHXqYcElQB6Wt76KDLts8NjNQ8EBwuk9a3OPmfrj3/Jf
	fAmjWcQMjL/38XrScP48tdnzzUm7KGr1jCRh1GiFO/Defuv8G6DdgTStFfQTTtNa6TzUtrhDNXveS
	8iHMIl5n3DyUMR5dmqhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2yFg-0004IZ-G5; Wed, 28 Aug 2019 13:44:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2yFV-0004HC-BV
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 13:44:34 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B2A820828;
 Wed, 28 Aug 2019 13:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566999872;
 bh=QlupAS3RfeI5A1uPe9N/I+gSPY2FBj6YvaOURwrJHwY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2Re7+m2Zd6OJEwIEDzCWMLY21KIvrt8xleHK0sUBWWQTtkpwC6FvwIkQknZauLNHZ
 hfuis8Gx7MSDdOtF5Kyopee3s0ACpvR/s9/VCkqfGFP6wVBpMTGA5JVIMB2rlrifK0
 4dIuMz0qP3CGKffZqzrTz4sEoW348kozAO+7/Ka8=
Date: Wed, 28 Aug 2019 14:44:28 +0100
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V9 1/3] perf: imx8_ddr_perf: add AXI ID filter support
Message-ID: <20190828134427.z4zmqucm7fcuuies@willie-the-truck>
References: <20190828120524.9038-1-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828120524.9038-1-qiangqing.zhang@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_064433_413201_3FF35473 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBdWcgMjgsIDIwMTkgYXQgMTI6MDc6NTJQTSArMDAwMCwgSm9ha2ltIFpoYW5nIHdy
b3RlOgo+IEFYSSBmaWx0ZXJpbmcgaXMgdXNlZCBieSBDU1YgbW9kZXMgMHg0MSBhbmQgMHg0MiB0
byBjb3VudCByZWFkcyBvcgo+IHdyaXRlcyB3aXRoIGFuIEFSSUQgb3IgQVdJRCBtYXRjaGluZyBm
aWx0ZXIgc2V0dGluZy4gR3JhbnVsYXJpdHkgaXMgYXQKPiBzdWJzeXN0ZW0gbGV2ZWwuIEltcGxl
bWVudGF0aW9uIGRvZXMgbm90IGFsbG93IGZpbHRyaW5nIGJldHdlZW4gbWFzdGVycwo+IHdpdGhp
biBhIHN1YnN5c3RlbS4gRmlsdGVyIGlzIGRlZmluZWQgd2l0aCAyIGNvbmZpZ3VyYXRpb24gcGFy
YW1ldGVycy4KPiAKPiAtLUFYSV9JRCBkZWZpbmVzIEF4SUQgbWF0Y2hpbmcgdmFsdWUKPiAtLUFY
SV9NQVNLSU5HIGRlZmluZXMgd2hpY2ggYml0cyBvZiBBeElEIGFyZSBtZWFuaW5nZnVsIGZvciB0
aGUgbWF0Y2hpbmcKPiAJMO+8mmNvcnJlc3BvbmRpbmcgYml0IGlzIG1hc2tlZAo+IAkxOiBjb3Jy
ZXNwb25kaW5nIGJpdCBpcyBub3QgbWFza2VkLCBpLmUuIHVzZWQgdG8gZG8gdGhlIG1hdGNoaW5n
Cj4gCj4gV2hlbiBub24tbWFza2VkIGJpdHMgYXJlIG1hdGNoaW5nIGNvcnJlc3BvbmRpbmcgQVhJ
X0lEIGJpdHMgdGhlbiBjb3VudGVyCj4gaXMgaW5jcmVtZW50ZWQuIFRoaXMgZmlsdGVyIGFsbG93
cyBjb3VudGluZyByZWFkIG9yIHdyaXRlIGFjY2VzcyBmcm9tIGEKPiBzdWJzeXN0ZW0gb3IgbXVs
dGlwbGUgc3Vic3lzdGVtcy4KPiAKPiBQZXJmIGNvdW50ZXIgaXMgaW5jcmVtZW50ZWQgaWYgQXhJ
RCAmJiBBWElfTUFTS0lORyA9PSBBWElfSUQgJiYgQVhJX01BU0tJTkcKPiAKPiBBWElfSUQgYW5k
IEFYSV9NQVNLSU5HIGFyZSBtYXBwZWQgb24gRFBDUjEgcmVnaXN0ZXIgaW4gcGVyZm9ybWFuY2Ug
Y291bnRlci4KPiAKPiBSZWFkIGFuZCB3cml0ZSBBWEkgSUQgZmlsdGVyIHNob3VsZCB3cml0ZSBz
YW1lIHZhbHVlIHRvIERQQ1IxIGlmIHdhbnQgdG8KPiBzcGVjaWZ5IGF0IHRoZSBzYW1lIHRpbWUg
YXMgdGhpcyBmaWx0ZXIgaXMgc2hhcmVkIGJldHdlZW4gY291bnRlcnMuCj4gCj4gZS5nLgo+IHBl
cmYgc3RhdCAtYSAtZSBpbXg4X2RkcjAvYXhpZC1yZWFkLGF4aV9tYXNrPTB4TU1NTSxheGlfaWQ9
MHhERERELyBjbWQKPiBwZXJmIHN0YXQgLWEgLWUgaW14OF9kZHIwL2F4aWQtd3JpdGUsYXhpX21h
c2s9MHhNTU1NLGF4aV9pZD0weEREREQvIGNtZAo+IAo+IE5PVEU6IGF4aV9tYXNrIGlzIGludmVy
dGVkIGluIHVzZXJzcGFjZShpLmUuIHNldCBiaXRzIGFyZSBiaXRzIHRvIG1hc2spLCBhbmQKPiBp
dCB3aWxsIGJlIHJldmVydGVkIGluIGRyaXZlciBhdXRvbWF0aWNhbGx5LiBzbyB0aGF0IHRoZSB1
c2VyIGNhbiBqdXN0IHNwZWNpZnkKPiBheGlfaWQgdG8gbW9uaXRvciBhIHNwZWNpZmljIGlkLCBy
YXRoZXIgdGhhbiBoYXZpbmcgdG8gc3BlY2lmeSBheGlfbWFzay4KPiBlLmcuCj4gcGVyZiBzdGF0
IC1hIC1lIGlteDhfZGRyMC9heGlkLXJlYWQsYXhpX2lkPTB4MTIvIGNtZCwgd2hpY2ggd2lsbCBt
b25pdG9yIEFSSUQ9MHgxMgo+IAo+IFNpZ25lZC1vZmYtYnk6IEpvYWtpbSBaaGFuZyA8cWlhbmdx
aW5nLnpoYW5nQG54cC5jb20+CgpUaGFua3MsIEkndmUgcHVzaGVkIHRoaXMgc2VyaWVzIG91dCB0
bzoKCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3dpbGwv
bGludXguZ2l0L2xvZy8/aD1mb3ItbmV4dC9wZXJmCgphbmQgcGxhbiB0byBzZW5kIGl0IGZvciA1
LjQuIEkgZGlkIHJld3JpdGUgdGhlIGNvbW1pdCBtZXNzYWdlcywgc28gcGxlYXNlCnRha2UgYSBs
b29rLiBJIGFsc28gZm9sZGVkIHRoZSBvdGhlciB0d28gcGF0Y2hlcyB0b2dldGhlci4KClRoYW5r
cywKCldpbGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
