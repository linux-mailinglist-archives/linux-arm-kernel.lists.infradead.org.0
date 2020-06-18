Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A7E1FEDC3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 10:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0Kbe7i1XS7M66iGBxeJA0BeyBFG7qJ17lRqWfODu2Q=; b=rXtSanjdoyEbUp
	JxepOqOYD8dkPzULlESdADhV0xb7H0PxPeiBGUj3d/Ia6YhpJmQhQMawYWdIXxy9AWQPqv29e9WOp
	oSRwItPxK26tWwXGnJzZO+TFZI3cILdVnUlKlg2z6sRyhOU87oCy1F+crRLTTHQSiHRxLuehZL/iF
	PY4QfXTNBN5lMlz09TcqI9z1KziHzOC7W1HGFw5MtJrVTBSUQN2d70JnnbwT0fHMr8nUWv2X83OBY
	QyYpdjpMypQFI7NBnUApwvZNMbM8ZHx0NR0M+iH4epC49q8hyPtPUJ4wWrisYtnmLYx74luIdZ+h3
	UMcIzMj0Sa6dvhwlL+Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlq3g-0002Fv-FZ; Thu, 18 Jun 2020 08:38:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlq3X-0002FK-CW
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 08:37:56 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06E98214DB;
 Thu, 18 Jun 2020 08:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592469475;
 bh=Ez1sAY6wye/LdUoU9WtMXLAOsGJl3uVt1CESoc80Q00=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W9j9XUiVAQQj40ZsuUtEWonuLqdMGpkXSmxx5f19XoETN/3lX4vgMuzbUwFK4aFhB
 T2E+cJL10e9Cl+fmj1vRTd3qVTIJdu87TThInUX0GrWMihtKt056tiagW807xpQMPi
 JKuuj232Aiwcof75iHhvf4Nr2o7VmQF2uAzGOLF4=
Date: Thu, 18 Jun 2020 09:37:50 +0100
From: Will Deacon <will@kernel.org>
To: "kernelci.org bot" <bot@kernelci.org>
Subject: Re: arm64/for-kernelci build: 2 builds: 1 failed, 1 passed, 1 error, 
 8 warnings (v5.8-rc1-8-gb9249cba25a5)
Message-ID: <20200618083749.GA5232@willie-the-truck>
References: <5eea630c.1c69fb81.6acae.21cf@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5eea630c.1c69fb81.6acae.21cf@mx.google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_013755_442037_E5891FAF 
X-CRM114-Status: UNSURE (   6.55  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, kernelci-results@groups.io,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMTcsIDIwMjAgYXQgMTE6Mzg6MDRBTSAtMDcwMCwga2VybmVsY2kub3JnIGJv
dCB3cm90ZToKPiBCdWlsZCBGYWlsdXJlIERldGVjdGVkOgo+IAo+IGFybTY0Ogo+ICAgICBhbGxt
b2Rjb25maWc6IChnY2MtOCkgRkFJTAo+IAo+IEVycm9ycyBhbmQgV2FybmluZ3MgRGV0ZWN0ZWQ6
Cj4gCj4gYXJtNjQ6Cj4gICAgIGFsbG1vZGNvbmZpZyAoZ2NjLTgpOiAxIGVycm9yCj4gICAgIGRl
ZmNvbmZpZyAoZ2NjLTgpOiA4IHdhcm5pbmdzCj4gCj4gRXJyb3JzIHN1bW1hcnk6Cj4gCj4gICAg
IDEgICAgaW5jbHVkZS9saW51eC9jb21waWxlci5oOjM5MjozODogZXJyb3I6IGNhbGwgdG8g4oCY
X19jb21waWxldGltZV9hc3NlcnRfMjI34oCZIGRlY2xhcmVkIHdpdGggYXR0cmlidXRlIGVycm9y
OiBCVUlMRF9CVUdfT04gZmFpbGVkOiBvZmZzZXRvZihzdHJ1Y3QgdGFza19zdHJ1Y3QsIHdha2Vf
ZW50cnlfdHlwZSkgLSBvZmZzZXRvZihzdHJ1Y3QgdGFza19zdHJ1Y3QsIHdha2VfZW50cnkpICE9
IG9mZnNldG9mKHN0cnVjdCBfX2NhbGxfc2luZ2xlX2RhdGEsIGZsYWdzKSAtIG9mZnNldG9mKHN0
cnVjdCBfX2NhbGxfc2luZ2xlX2RhdGEsIGxsaXN0KQoKVGhpcyBzaG91bGQgYmUgZml4ZWQgaW4g
dGlwL3NjaGVkL3VyZ2VudC4KCldpbGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
