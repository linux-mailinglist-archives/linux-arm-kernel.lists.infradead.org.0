Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 931F41F6CA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 19:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNdbyIvI8GDfi+j9ZLv1MEcz1P6cMl+lfzDxR5mJRZc=; b=W9mdQvONUBApCm
	giDbHuWyA5Pfhge9RZODLwNwuUC0B7BroEZ9/s1LjpuHSlQs5mkQe3+rvnlAbqdv8Vqi5bUD79oga
	i+TlBK4lGc1A6EiBIkH+zSI6gMuRhWe1OUd05dOZvnc0K4Anh7L3sBXHph/LtobWCndgulPCxz7Hs
	j5Tz05oSjudXbC0BHHRNrvqWsvuGtUNcUr2nspohU+DBq5ChaE246/emuav1htCIf6d0g1tccIj6F
	Izzu9E6o9itYIbOOAyDWlcn7Jz8CilSJfCUWQdjNW5ZHbYyfoOpuGz4Goif/Emudy+5cB3QWwn8T2
	iHGLCpUhsVbiPG4ktqSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjQko-0000Di-Pf; Thu, 11 Jun 2020 17:12:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjQke-0000CN-49
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 17:12:29 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4EC3C207ED;
 Thu, 11 Jun 2020 17:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591895547;
 bh=+n3fYC/9iagTFJHZVyX/Y73W3bVcAjcHk8YWZHr8tLw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WIYDmLV4pQ+VScpZK0j6FfcLG6yCMFfeNXbPGe37mo6Gd9wKibO+6WRRvordXe/y4
 b7RQfeNTNqboZp5k3o+YrkhuZgJW74VUEkPUofs2X+5C1xQFBV7AFodxsqZ+0G3eS+
 fYY8Ebx5XUE43Tmfz2xVOmZYnDDblbkkGOKYq78g=
Date: Thu, 11 Jun 2020 18:12:23 +0100
From: Will Deacon <will@kernel.org>
To: Achin Gupta <Achin.Gupta@arm.com>
Subject: Re: [RFC PATCH 1/3] dt-bindings: Add ARM PSA FF binding for
 non-secure VM partitions
Message-ID: <20200611171222.GB7725@willie-the-truck>
References: <20200601094512.50509-1-sudeep.holla@arm.com>
 <20200601094512.50509-2-sudeep.holla@arm.com>
 <20200609223551.GA1620273@bogus>
 <20200610074346.GB15939@willie-the-truck>
 <5B3F18A4-5DA4-411E-9E26-7D25DEE3D414@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5B3F18A4-5DA4-411E-9E26-7D25DEE3D414@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_101228_183907_9AEDA4C8 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sudeep Holla <Sudeep.Holla@arm.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMTEsIDIwMjAgYXQgMDM6NDY6MzVQTSArMDAwMCwgQWNoaW4gR3VwdGEgd3Jv
dGU6Cj4gPiBPbiAxMCBKdW4gMjAyMCwgYXQgMDg6NDMsIFdpbGwgRGVhY29uIDx3aWxsQGtlcm5l
bC5vcmc+IHdyb3RlOgo+ID4gT24gVHVlLCBKdW4gMDksIDIwMjAgYXQgMDQ6MzU6NTFQTSAtMDYw
MCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gPj4gT24gTW9uLCBKdW4gMDEsIDIwMjAgYXQgMTA6NDU6
MTBBTSArMDEwMCwgU3VkZWVwIEhvbGxhIHdyb3RlOgo+ID4+PiBBZGQgZGV2aWNldHJlZSBiaW5k
aW5ncyBmb3IgYSBBcm0gUFNBIEZGLUEgY29tcGxpYW50IG5vbi1zZWN1cmUgcGFydGl0aW9uCj4g
Pj4+IGF0IHZpcnR1YWwgaW50ZXJmYWNlKFZNcykuCj4gPj4+IAo+ID4+PiBTaWduZWQtb2ZmLWJ5
OiBTdWRlZXAgSG9sbGEgPHN1ZGVlcC5ob2xsYUBhcm0uY29tPgo+ID4+PiAtLS0KPiA+Pj4gLi4u
L2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2FybSxwc2EtZmZhLnR4dCAgIHwgNDcgKysrKysrKysr
KysrKysrKysrKwo+ID4+PiAxIGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKQo+ID4+PiBj
cmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9h
cm0scHNhLWZmYS50eHQKPiA+PiAKPiA+PiBJJ20gaG9waW5nIHRoaXMgZ29lcyBhd2F5IGlmIHRo
ZSBmaXJtd2FyZSBpcyBkaXNjb3ZlcmFibGUsIGJ1dCBpZiBub3QgRFQgCj4gPj4gYmluZGluZ3Mg
YXJlIERUIHNjaGVtYSBub3cuCj4gPiAKPiA+IFdlJ2xsIG5lZWQgdGhlIGJpbmRpbmcgZm9yIHRo
ZSBrdm0gaG9zdCBzaWRlLCBiZWNhdXNlIHRoZXJlIGFyZSBwbGVudHkKPiA+IG9mIHBhcnRpdGlv
biBwcm9wZXJ0aWVzIHRoYXQgYXJlIG5vdCBkaXNjb3ZlcmFibGUgKGUuZy4gbnVtYmVyIG9mIHZD
UFVzKS4KPiAKPiBKdXN0IHRyeWluZyB0byB1bmRlcnN0YW5kIHRoZSByZXEuIGEgYml0IGJldHRl
cuKApgo+IAo+IFRoZSBGRi1BIGRyaXZlciBpbiB0aGUgaG9zdCBjYW4gdXNlIEZGQV9QQVJUSVRJ
T05fSU5GT19HRVQgdG8gZGV0ZXJtaW5lCj4gdGhlIGNvdW50IG9mIHBhcnRpdGlvbnMgYW5kIHRo
ZWlyIHZDUFVzLgo+IAo+IElzIHRoaXMgYWJvdXQgYSBndWVzdCBiZWluZyBhYmxlIHRvIGZpbmQg
b3V0IGhvdyBtYW55IHZDUFVzIGl0IGhhcz8gCgpUaGlzIGlzIGFib3V0IEtWTSBmaW5kaW5nIG91
dCB0aGUgaW5mb3JtYXRpb24gaXQgbmVlZHMgaW4gb3JkZXIgdG8gc3Bhd24Kbm9uLXNlY3VyZSBw
YXJ0aXRpb25zLiBJIGRvbid0IHNlZSBob3cgaXQgY2FuIGRvIHRoYXQgd2l0aApGRkFfUEFSVElU
SU9OX0lORk9fR0VUIC0tIHdobyB3b3VsZCByZXNwb25kPwoKQnV0IHlvdSdyZSByaWdodCB0aGF0
IG51bWJlciBvZiB2Q1BVcyB3YXMgYSBiYWQgZXhhbXBsZS4gV2UgYWxzbyBuZWVkCmluZm9ybWF0
aW9uIHN1Y2ggYXMgdGhlIGVudHJ5IHBvaW50LgoKV2lsbAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
