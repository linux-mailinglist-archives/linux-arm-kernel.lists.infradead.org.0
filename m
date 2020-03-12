Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B373A183662
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 17:43:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/I6QoA4ge/m3eBG2aNuDJk7hkJQV0JZ42ztjAv3HJ/Y=; b=F9SwAxrB0EBq9b8bSAVVVckug
	zuD9woSRc+h3odeJq7HOiNxcPDkChE1JfbzPyF+b0pUBkah2GEgKTAi8r2y4uNzTyORc+4TF1+8hR
	ByDQr3lmQVcpopfCtaTPWZPq8XH/Tofo2dC+25+uJN1Yi9T5guXl+lfyvcJFRWRJv0c5nt+oPQf4F
	6RiNIG+OQUqpJi5bAUjtnyAyKF20V3VlJjHgDd9xr8kjuPr9IAi7EEdijoiinPatFl/EBqQibUmF2
	4Jdqi0PV5t3vNQzOSpCGu2cLFF/unzYRcNbEvjExgxGbBVYrbjDAtSgNZ94HJktYjTDTChH56aIRl
	ZMqD2WN6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCQvH-00007n-A6; Thu, 12 Mar 2020 16:43:03 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCQur-0008Mf-BA
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 16:42:39 +0000
Received: from roundcube.remlab.net (ip6-localhost [IPv6:::1])
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTP id 9E9CD5FADD;
 Thu, 12 Mar 2020 17:42:35 +0100 (CET)
MIME-Version: 1.0
Date: Thu, 12 Mar 2020 18:42:35 +0200
From: Remi Denis-Courmont <remi@remlab.net>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: move kimage_vaddr to .rodata
Organization: Remlab Tmi
In-Reply-To: <20200312164035.GA21120@lakrids.cambridge.arm.com>
References: <20200312094002.153302-1-remi@remlab.net>
 <20200312164035.GA21120@lakrids.cambridge.arm.com>
Message-ID: <e87d4a759618c13dfc9d814112e6352a@remlab.net>
X-Sender: remi@remlab.net
User-Agent: Roundcube Webmail/1.2.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_094237_567582_93FE7B57 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: suzuki.poulose@arm.com, catalin.marinas@arm.com, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgMjAyMC0wMy0xMiAxODo0MCwgTWFyayBSdXRsYW5kIGEgw6ljcml0wqA6Cj4gT24gVGh1LCBN
YXIgMTIsIDIwMjAgYXQgMTE6NDA6MDJBTSArMDIwMCwgUsOpbWkgRGVuaXMtQ291cm1vbnQgd3Jv
dGU6Cj4+IEZyb206IFJlbWkgRGVuaXMtQ291cm1vbnQgPHJlbWkuZGVuaXMuY291cm1vbnRAaHVh
d2VpLmNvbT4KPj4gCj4+IFRoaXMgZGF0dW0gaXMgbm90IHJlZmVyZW5jZWQgZnJvbSAuaWRtYXAu
dGV4dDogaXQgZG9lcyBub3QgbmVlZCB0byBiZQo+PiBtYXBwZWQgaW4gaWRtYXAuIExldHMgbW92
ZSBpdCB0byAucm9kYXRhIGFzIGl0IGlzIG5ldmVyIHdyaXR0ZW4gdG8gCj4+IGFmdGVyCj4+IGVh
cmx5IGJvb3Qgb2YgdGhlIHByaW1hcnkgQ1BVLgo+PiAoTWF5YmUgLmRhdGEucm9fYWZ0ZXJfaW5p
dCB3b3VsZCBiZSBjbGVhbmVyIHRob3VnaD8pCj4gCj4gQ2FuIHdlIG1vdmUgdGhpcyBpbnRvIGFy
Y2gvYXJtNjQvbW0vbW11LmMsIHdoZXJlIHdlIGFscmVhZHkgaGF2ZQo+IGtpbWFnZV92b2Zmc2V0
Ogo+IAo+IHwgdTY0IGtpbWFnZV92b2Zmc2V0IF9fcm9fYWZ0ZXJfaW5pdDsKPiB8IEVYUE9SVF9T
WU1CT0woa2ltYWdlX3ZvZmZzZXQpOwo+IAo+IC4uLiBvciBpcyBpdCBub3QgcG9zc2libGUgdG8g
aW5pdGlhbGl6ZSBraW1hZ2VfdmFkZHIgY29ycmVjdGx5IGluIEM/CgpHb29kIHF1ZXN0aW9uLi4u
IEknbGwgY2hlY2sgdG9tb3Jyb3cuCgotLSAKUsOpbWkgRGVuaXMtQ291cm1vbnQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
