Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F0318F3F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 12:58:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0ZrtaS6qFhZz5P/8XGoiZwbVt8/k7CDvqiB8sV2hf4=; b=Svs/hRXo7RfDbE
	Y4EuPoJtAMFR3RnukcYME9AeqAoud27kMs3vkhoraApW0Was0hieTeT8r8ijQPk4Swm0PO1Z1Y865
	u5M+eFhLDIu4mB3EUkkcFlXMNsg+tjCXJecnLIK+DZ/a8+e1u9iFTeS7jbVI7D+OFoMayf4iqnmft
	SiWb/gbzo4XphX9hquaioBajmv3Y8Pirco/gu03/gIMWjo2XXlGT7nYqdRi/ULThkxdUJmktJcay3
	shm1TLjGbOwJ2kHJHUu4SJg1SJUrJaox+HzfxgAOCkaxor+NFhiTpF0mz99r1RSqvfm6UelovcpTS
	LJUL2ZP0+XNQgzeqtKeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGLim-0007TV-KF; Mon, 23 Mar 2020 11:58:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGLid-0007T4-UH
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 11:58:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 465AB1FB;
 Mon, 23 Mar 2020 04:58:11 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C14BF3F52E;
 Mon, 23 Mar 2020 04:58:09 -0700 (PDT)
Date: Mon, 23 Mar 2020 11:58:04 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 3/3] arm64: reduce trampoline data alignment
Message-ID: <20200323115804.GA2597@C02TD0UTHF1T.local>
References: <1938400.7m7sAWtiY1@basile.remlab.net>
 <20200319091407.51449-3-remi@remlab.net>
 <20200321134056.GB3052@mbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200321134056.GB3052@mbp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_045812_021036_45194DF0 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: james.morse@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 =?utf-8?B?UsOpbWk=?= Denis-Courmont <remi@remlab.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBNYXIgMjEsIDIwMjAgYXQgMDE6NDE6MDFQTSArMDAwMCwgQ2F0YWxpbiBNYXJpbmFz
IHdyb3RlOgo+IE9uIFRodSwgTWFyIDE5LCAyMDIwIGF0IDExOjE0OjA3QU0gKzAyMDAsIFLDqW1p
IERlbmlzLUNvdXJtb250IHdyb3RlOgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVs
L2VudHJ5LlMgYi9hcmNoL2FybTY0L2tlcm5lbC9lbnRyeS5TCj4gPiBpbmRleCBjMzY3MzNkOGNk
NzUuLmVjYWQxNTQ0MzY1NSAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL2VudHJ5
LlMKPiA+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL2VudHJ5LlMKPiA+IEBAIC04NTgsNyArODU4
LDcgQEAgU1lNX0NPREVfRU5EKHRyYW1wX2V4aXRfY29tcGF0KQo+ID4gIAkucG9wc2VjdGlvbgkJ
CQkvLyAuZW50cnkudHJhbXAudGV4dAo+ID4gICNpZmRlZiBDT05GSUdfUkFORE9NSVpFX0JBU0UK
PiA+ICAJLnB1c2hzZWN0aW9uICIucm9kYXRhIiwgImEiCj4gPiAtCS5hbGlnbiBQQUdFX1NISUZU
Cj4gPiArCS5hbGlnbgk0CS8vIGFsbCAucm9kYXRhIG11c3QgYmUgaW4gYSBzaW5nbGUgZml4bWFw
IHBhZ2UKPiA+ICBTWU1fREFUQV9TVEFSVChfX2VudHJ5X3RyYW1wX2RhdGFfc3RhcnQpCj4gPiAg
CS5xdWFkCXZlY3RvcnMKPiA+ICBTWU1fREFUQV9FTkQoX19lbnRyeV90cmFtcF9kYXRhX3N0YXJ0
KQo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvbW0vbW11LmMgYi9hcmNoL2FybTY0L21tL21t
dS5jCj4gPiBpbmRleCA5YjA4ZjdjN2U2ZjAuLjZhMGU3NWY0OGU3YiAxMDA2NDQKPiA+IC0tLSBh
L2FyY2gvYXJtNjQvbW0vbW11LmMKPiA+ICsrKyBiL2FyY2gvYXJtNjQvbW0vbW11LmMKPiA+IEBA
IC01OTksOSArNTk5LDggQEAgc3RhdGljIGludCBfX2luaXQgbWFwX2VudHJ5X3RyYW1wb2xpbmUo
dm9pZCkKPiA+ICAJaWYgKElTX0VOQUJMRUQoQ09ORklHX1JBTkRPTUlaRV9CQVNFKSkgewo+ID4g
IAkJZXh0ZXJuIGNoYXIgX19lbnRyeV90cmFtcF9kYXRhX3N0YXJ0W107Cj4gPiAgCj4gPiAtCQlf
X3NldF9maXhtYXAoRklYX0VOVFJZX1RSQU1QX0RBVEEsCj4gPiAtCQkJICAgICBfX3BhX3N5bWJv
bChfX2VudHJ5X3RyYW1wX2RhdGFfc3RhcnQpLAo+ID4gLQkJCSAgICAgUEFHRV9LRVJORUxfUk8p
Owo+ID4gKwkJcGFfc3RhcnQgPSBfX3BhX3N5bWJvbChfX2VudHJ5X3RyYW1wX2RhdGFfc3RhcnQp
ICYgUEFHRV9NQVNLOwo+ID4gKwkJX19zZXRfZml4bWFwKEZJWF9FTlRSWV9UUkFNUF9EQVRBLCBw
YV9zdGFydCwgUEFHRV9LRVJORUxfUk8pOwo+ID4gIAl9Cj4gPiAgCj4gPiAgCXJldHVybiAwOwo+
IAo+IEZvciBzb21lIHJlYXNvbiwgSSBoYXZlbid0IGludmVzdGlnYXRlZCB5ZXQsIGEga2VybmVs
IHdpdGggS0FTQU4gYW5kIDY0Swo+IHBhZ2VzIGVuYWJsZWQgZG9lcyBub3QgYm9vdCAoc2VlIHRo
ZSBhdHRhY2hlZCBjb25maWcpLiBJdCBzZWVtcyB0byBsb2NrCj4gdXAgd2hlbiBzdGFydGluZyB1
c2VyIHNwYWNlLiBCaXNlY3RlZCB0byB0aGlzIGNvbW1pdCwgcmV2ZXJ0aW5nIGl0IGZpeGVzCj4g
dGhlIGlzc3VlLgoKSSB0aGluayB0aGUgaXNzdWUgbWlnaHQgYmUgZHVlIHRvIEFEUlAgKyBBREQg
OmxvMTI6IHVzaW5nIDRLIG9mZnNldHMsCmFuZCBzbyBwYXRjaCAxIGlzbid0IHF1aXRlIHJpZ2h0
IGZvciAhNEsga2VybmVscywgYXMgd2UncmUgbm90CmFjY291bnRpbmcgZm9yIDQgYml0cyBvZiB0
aGUgYWRkcmVzcyB3aGVuIHdlIHRyeSB0byBnZW5lcmF0ZSBpdC4KCkknbGwgY2hlY2sgdGhhdCBu
b3cuCgpUaGFua3MsCk1hcmsuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
