Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFD51C70DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXr9fIxyPGpaEcVrShRy9m9fqumJcNwWvGNnsRDzWxo=; b=CtZq+wbx3eyb4S
	q5BfCyZM4DpzfBEN+VhQGNsKOZv4FSx/PTG8gVc6AZ0udnlUtzeCJ1c9yeYpMjog5qNSEXxgFIYfM
	oHv6goqHMQy7QxHRPSqe0c3os1TqazZxRfr2ZwW8xm0Ki8NYNTOilzkQdbcUgwKL0HVUmkPRhOW40
	YufYFyWF8xAUfSFvZYZ2bTHD+ugGJl2CqeaIBqqJeV6N4oozl9R3UovbkE7o6gbPX/tBDaYpaG3w4
	oob1gfA4+Ew9Bo0YGtJWezPNDqAeOfVm/eukfBaWH32jvaOJeceuMD7WXFk1S1weo5HbIIoW15wFA
	DNWrLqL5KNHaxvStsh/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJYL-0007UH-S3; Wed, 06 May 2020 12:53:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJY9-0007Tu-Ev
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 12:53:22 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A2E22073A;
 Wed,  6 May 2020 12:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588769601;
 bh=GLqGiShNV7uuHX1J4JVdEeZ8Lm493f3dGVJYOjNFwFM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ecG4eBfuUCMEVv8mQ1OercE8djLhgASVwNICQvA98pjw2xky52wgWRWglzCHCz2+r
 R3UAk95i0uT52IkxlFoJan8cyKK6F3Rnge3TttIYTQ1Y4mAqbAwsXSa8DmbgWTYcIo
 a4uziYES9AHwqBmU2vcNSY6Eta7vOlPn5ecrl5oU=
Date: Wed, 6 May 2020 13:53:16 +0100
From: Will Deacon <will@kernel.org>
To: =?utf-8?B?77+91rXvv73vv73vv70vRE9OR0hZRU9L?= CHOE <d7271.choe@samsung.com>
Subject: Re: Reqeust export symbol for API in arch/arm64/*
Message-ID: <20200506125315.GH8043@willie-the-truck>
References: <CGME20200506124645epcas2p25a8efbe59fa20194e19d642227dd47ae@epcas2p2.samsung.com>
 <00bc01d623a4$669d1e70$33d75b50$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00bc01d623a4$669d1e70$33d75b50$@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_055321_518246_F83856BC 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: changki.kim@samsung.com, linux-kernel@vger.kernel.org,
 youngmin.nam@samsung.com, hosung0.kim@samsung.com, hajun.sung@samsung.com,
 gregkh@google.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMDYsIDIwMjAgYXQgMDk6NDY6NDVQTSArMDkwMCwg77+91rXvv73vv73vv70v
RE9OR0hZRU9LIENIT0Ugd3JvdGU6Cj4gSSBhbSBzb2Z0d2FyZSBlbmdpbmVlciBpbiBjaGFyZ2Ug
b2YgQlNQIChTYW1zdW5nIFNPQyB2ZW5kb3IpLgo+IAo+IFJlY2VudGx5LCBHb29nbGUgaW50cm9k
dWNlZCBHS0kgZnJvbSBBbmRyb2lkIFIgdmVyc2lvbi4KPiBXZSBjYW5ub3QgdXNlIG1haW5saW5l
IEFQSSB3aXRob3V0ICdleHBvcnQgc3ltYm9sJyBieSB0aGUgR0tJIHBvbGljeS4KPiBCdXQgd2Ug
d2FudCB0byBtYWtlIGFuIGFybTY0IHNwZWNpZmljIHZlbmRvciBkcml2ZXIgaW4ge2tlcm5lbCBz
b3VyY2UKPiByb290fS9kcml2ZXJzL3NvYy9zYW1zdW5nLyouCj4gCj4gQ291bGQgeW91IHN1cHBv
cnQgdXMgdG8gdXNlIHRoZSBiZWxvdyBBUElzPwoKU29ycnksIGJ1dCBhcyBhIGdlbmVyYWwgcnVs
ZSBvZiB0aHVtYiB0aGUga2VybmVsIGRvZXNuJ3QgRVhQT1JUIHN5bWJvbHMKdGhhdCBhcmUgbm90
IHVzZWQgYnkgaW4tdHJlZSBtb2R1bGVzLiBZb3UnbGwgbmVlZCB0byBzdWJtaXQgeW91ciBkcml2
ZXJzCmFsb25nIHdpdGggdGhlIHBhdGNoZXMgZG9pbmcgdGhlIGV4cG9ydHMgaWYgdGhleSBhcmUg
dG8gYmUgY29uc2lkZXJlZApmb3IgaW5jbHVzaW9uLgoKVGhhbmtzLAoKV2lsbAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
