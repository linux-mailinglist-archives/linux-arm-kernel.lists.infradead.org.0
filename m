Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 318B81BF5EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RmbRgd2zQyyCnsAnw6PV9RLwl5s7248cNdl4oJ7gyu0=; b=reoWV6qlS7fnNf
	K6CZbui82ILqdah+tiJZGQ0l72pPERAPUELwWJfnqcA22+F0hZWosjpOW1Ot9FtS6kdmiVi1L3Ot1
	202AfhqqDpVaTN/AtznJOkptodOVwnm+g1pZVsUMxJA+/7b9KdLKX9ps1CLPLSsteS9X9WygM/b3B
	OMRjr1lQp3YjIt4ElteIyWYq1tmcZ/4/+3FYOGw6CjSuEbDUtDkOQvG6in1wXUm8h5mMtjmiZnwVS
	/GZxU8rEG4hDrhIlPMIWR6uXM833pMoNNt0miklIlYATTASnBWv/rd/9AMW/mHSCkAndsW1/TcpVn
	+c19HIH66jf1n9a8nCaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU6r5-0003OD-OV; Thu, 30 Apr 2020 10:55:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU6qt-0003NG-NI
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:55:36 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E4A8920784;
 Thu, 30 Apr 2020 10:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588244134;
 bh=Jf2E0MV7+Cee/Yr+WCOWj3Sx25YjrA0dDWa8faaEZBM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G+0uazX5I6tjSX08dCz5kK4cwwK3Rz7e/GYkjJzbJWUCskiuz8D0yCnNLNZDKvi2w
 soJb25dbsZYfEtKSgKLquB+uNM/aSBj18mpDee7huMnIStgr4I3XON3TtS8LK9QSyL
 hDbRK3dWnWdZGoe9Vx9QiFjz976f9hbxZygA5OME=
Date: Thu, 30 Apr 2020 11:55:30 +0100
From: Will Deacon <will@kernel.org>
To: =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH] arm64: kexec_file: print appropriate variable
Message-ID: <20200430105529.GH19932@willie-the-truck>
References: <CGME20200430105048eucas1p129975fe3fd84c4fd2b14117e3474b203@eucas1p1.samsung.com>
 <20200430105034.17513-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430105034.17513-1-l.stelmach@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_035535_776570_23A05B24 
X-CRM114-Status: GOOD (  13.63  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBcHIgMzAsIDIwMjAgYXQgMTI6NTA6MzRQTSArMDIwMCwgxYF1a2FzeiBTdGVsbWFj
aCB3cm90ZToKPiBGaXhlczogNDMxMjA1NzY4MTkyOSAoImFybTY0OiBrZXhlY19maWxlOiBsb2Fk
IGluaXRyZCBhbmQgZGV2aWNlLXRyZWUiKQo+IFNpZ25lZC1vZmYtYnk6IMWBdWthc3ogU3RlbG1h
Y2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+CgotRU5PQ09NTUlUTVNHCgo+IC0tLQo+ICBhcmNo
L2FybTY0L2tlcm5lbC9tYWNoaW5lX2tleGVjX2ZpbGUuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQva2VybmVsL21hY2hpbmVfa2V4ZWNfZmlsZS5jIGIvYXJjaC9hcm02NC9rZXJuZWwvbWFj
aGluZV9rZXhlY19maWxlLmMKPiBpbmRleCBiNDBjM2IwZGVmOTIuLjI3NzZiZGFhODNhNSAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9tYWNoaW5lX2tleGVjX2ZpbGUuYwo+ICsrKyBi
L2FyY2gvYXJtNjQva2VybmVsL21hY2hpbmVfa2V4ZWNfZmlsZS5jCj4gQEAgLTMzMiw3ICszMzIs
NyBAQCBpbnQgbG9hZF9vdGhlcl9zZWdtZW50cyhzdHJ1Y3Qga2ltYWdlICppbWFnZSwKPiAgCWlt
YWdlLT5hcmNoLmR0Yl9tZW0gPSBrYnVmLm1lbTsKPiAgCj4gIAlwcl9kZWJ1ZygiTG9hZGVkIGR0
YiBhdCAweCVseCBidWZzej0weCVseCBtZW1zej0weCVseFxuIiwKPiAtCQkJa2J1Zi5tZW0sIGR0
Yl9sZW4sIGR0Yl9sZW4pOwo+ICsJCQlrYnVmLm1lbSwgZHRiX2xlbiwga2J1Zi5tZW1zeik7CgpJ
IGd1ZXNzIGl0IHdvdWxkIG1ha2Ugc2Vuc2UgdG8gdXNlIGtidWYuYnVmc3ogaW5zdGVhZCBvZiBk
dGJfbGVuIHRvby4KKGFzc3VtaW5nIHRoaXMgaXMgdXNlZnVsIHRvIHNvbWVib2R5PykKCldpbGwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
