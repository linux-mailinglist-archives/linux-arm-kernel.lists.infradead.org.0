Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBF211A75F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:37:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndUThRub2r6Zi+BsAuMkNkV1rZHa2Ekd2/NX7t1Y8UA=; b=mLW5AAQtCSOrem
	PC41IuP2+LX1P7DzczsyTAdNPX8szW/CqA9OByb1WWWPBhBbroPv+QALE8xumAV/Nwmp9agnhYuEv
	MnPII7yFRJHNi0+y3dWiBqAfhi+spk3laVfZ7mVPa7zwO07lQvNp+nMVsEp3loTHyfi6wu4mjdRPS
	B9/zbpYIjssiPhj8bMpHNzWS3zlUjxFxAyKHM/pO29Zo5jy+7lKmWQtvTlvYtLvflmMtj+LcinMD2
	1KSdrfdEDFsyr9bvARABIngqa51o4qpiZ5IeKxNPuqON2AxMbI+LuOXsgcqffNHjWiStSRDTIoxmE
	dQmY9n2ZEuqLAmZZ88pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyQX-0006eJ-VC; Wed, 11 Dec 2019 09:37:02 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyQQ-0006dc-Td
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:36:56 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1ieyQ8-0008Ql-42; Wed, 11 Dec 2019 17:36:36 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1ieyQ3-0003HT-Iz; Wed, 11 Dec 2019 17:36:31 +0800
Date: Wed, 11 Dec 2019 17:36:31 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2] crypto: Fix Kconfig indentation
Message-ID: <20191211093631.sf2es6tnao6ypk52@gondor.apana.org.au>
References: <1574306448-31868-1-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574306448-31868-1-git-send-email-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_013655_106573_551CDC97 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Aymen Sghaier <aymen.sghaier@nxp.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-crypto@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Atul Gupta <atul.gupta@chelsio.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBOb3YgMjEsIDIwMTkgYXQgMDQ6MjA6NDhBTSArMDEwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBBZGp1c3QgaW5kZW50YXRpb24gZnJvbSBzcGFjZXMgdG8gdGFiICgrb3B0
aW9uYWwgdHdvIHNwYWNlcykgYXMgaW4KPiBjb2Rpbmcgc3R5bGUgd2l0aCBjb21tYW5kIGxpa2U6
Cj4gCSQgc2VkIC1lICdzL14gICAgICAgIC9cdC8nIC1pICovS2NvbmZpZwo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KPiBSZXZpZXdlZC1i
eTogSG9yaWEgR2VhbnTEgyA8aG9yaWEuZ2VhbnRhQG54cC5jb20+Cj4gCj4gLS0tCj4gCj4gQ2hh
bmdlcyBzaW5jZSB2MToKPiAxLiBGaXggYWxzbyA3LXNwYWNlIGFuZCB0YWIrMSBzcGFjZSBpbmRl
bnRhdGlvbiBpc3N1ZXMuCj4gLS0tCj4gIGRyaXZlcnMvY3J5cHRvL0tjb25maWcgICAgICAgICB8
IDIyICsrKysrKysrKysrLS0tLS0tLS0tLS0KPiAgZHJpdmVycy9jcnlwdG8vY2FhbS9LY29uZmln
ICAgIHwgMTQgKysrKysrKy0tLS0tLS0KPiAgZHJpdmVycy9jcnlwdG8vY2hlbHNpby9LY29uZmln
IHwgMzAgKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvY3J5cHRvL3N0
bTMyL0tjb25maWcgICB8ICA2ICsrKy0tLQo+ICBkcml2ZXJzL2NyeXB0by91eDUwMC9LY29uZmln
ICAgfCAxNiArKysrKysrKy0tLS0tLS0tCj4gIDUgZmlsZXMgY2hhbmdlZCwgNDQgaW5zZXJ0aW9u
cygrKSwgNDQgZGVsZXRpb25zKC0pCgpQYXRjaCBhcHBsaWVkLiAgVGhhbmtzLgotLSAKRW1haWw6
IEhlcmJlcnQgWHUgPGhlcmJlcnRAZ29uZG9yLmFwYW5hLm9yZy5hdT4KSG9tZSBQYWdlOiBodHRw
Oi8vZ29uZG9yLmFwYW5hLm9yZy5hdS9+aGVyYmVydC8KUEdQIEtleTogaHR0cDovL2dvbmRvci5h
cGFuYS5vcmcuYXUvfmhlcmJlcnQvcHVia2V5LnR4dAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
