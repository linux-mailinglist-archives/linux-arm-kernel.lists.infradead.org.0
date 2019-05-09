Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B25E1834C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 03:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfSRNRSF6XFvS2Zw7eOBWZM0AuMHpR+TDBgKLB+rotk=; b=jSzZghiq95Ha9v
	FVE6gzd1CXk8xiXBl8km8Chi71QvNkR42PdxlXG92fN2Bxo0lHn9EtiaHn30FWVs9mSJEjMoG8xFd
	onVKO7s36bGDsK2l9G+llIqez8TCoryDLeGRPnzIiWdbE9MVLNDVMSvEnSt0XIpjXxE+y5OFG1N+f
	TQjxLWj/BOkd+nM7h3Z0cb6q+POh7TxzWnoUVkyeV4uMn6S++6Hn2S6rL5/uil8RkyHvviC+fH+pV
	mbOWoIixgpTn43+kacYQ7e4d99pteT+Dr9jOHF1ubvYOPEUP0+WhH1zq8rLJwMyzuqKY8M1yp4ivt
	SQH++RINTz/gSn0730vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOY72-0008EV-VB; Thu, 09 May 2019 01:44:44 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOY6m-00087H-2V
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 01:44:29 +0000
Received: by mail-oi1-x241.google.com with SMTP id u3so644138oic.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 18:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=QSowrtvBxHuy+9EtWeAofxxOlDhK9Glv13XxPGgRs0g=;
 b=FTGotLa6Bju72vqFYtTwvrZTvNQYiOOMZ8o54hYAiqK0uOAsAPU6VON80aO9vkjLYa
 3p36iyGFyGMmdjmtWezMbuNGmm4PJZc7fgr4OxSLHOoXPBTIpg7sCURZt1/+XMeYKRBR
 NGTKH6iXjpRw5d3JMYy9oQ3EtG87RB7qukZhTndr+vz7FUeOQKjWGooGsi73ybtKST9J
 FwJbyJmujVUKKizeBjDd4ax7kwcNa2SInbgwCc0gYSRif97Lmpo4JHO9kOyF5dPD0THU
 WoFQdJk0wAxMYuWmVJY7aOrQppqlhYN3ghgKHjohHV1AMNO+bWx0fwuSn+a8d4VUM2Yd
 Qs1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QSowrtvBxHuy+9EtWeAofxxOlDhK9Glv13XxPGgRs0g=;
 b=IKmLuz/kWbhm/ZfBuOJpqLl2LQDM8ftkA7F6OyTR8Q2baS4EBwC+u9n0jOol4F3HdF
 15LVoqXwzh6Nrov21/zikpbSoyIjjRjHPAKktNS7sVK6QkVuJAZZ9/IJ4mCuxQcNB0kk
 ESQBut6NlK0eZkYFBzG/5+x3PwIU+46SlqE37UJRy+5Eq8aD8ieo9o2rxAqdBn+CyM8x
 F/jDAhmotFrRwgrUCutgffmrX9sxgYy+lByBOoSZCqag7VmDVzrJd3uULI18A17RCVNA
 p/82I0S15B+kcYYjr34PWx0wjKSu9DXxMq69ft/3VW5cIfzETvfret4AGqnXzZUdXK8h
 yKPA==
X-Gm-Message-State: APjAAAUUS7IyDYebLFVBK47cqOuGybxSWNL7HacsZpXnQBABmDuSzPlA
 R9DV3r/GPQLlDt4U0k4RGL0rnE3ClbPyabIabNqwmw==
X-Google-Smtp-Source: APXvYqzeAfiNSljb+terykWDGmzDf8vkicYkCQIEsAaSxE2qpBV2t5nSNufIAYmBBr/EXFEAH0HCtdLqIeY8uZ0KA/A=
X-Received: by 2002:aca:61c3:: with SMTP id v186mr569894oib.27.1557366266348; 
 Wed, 08 May 2019 18:44:26 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1557206859.git.baolin.wang@linaro.org>
 <1ddb1abe8722154dd546d265d5c4536480a24a87.1557206859.git.baolin.wang@linaro.org>
 <8746a913-0014-7036-7fab-4e0dfab04e1b@gmail.com>
In-Reply-To: <8746a913-0014-7036-7fab-4e0dfab04e1b@gmail.com>
From: Baolin Wang <baolin.wang@linaro.org>
Date: Thu, 9 May 2019 09:44:15 +0800
Message-ID: <CAMz4kuJaP2UGiqCRrRX=cwwyqfnmiJ0CG-BXBkTpwKE825xKsQ@mail.gmail.com>
Subject: Re: [PATCH 2/8] soc: tegra: fuse: Change to the correct
 __dma_request_channel() prototype
To: Dmitry Osipenko <digetx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_184428_117201_4066F82C 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: jroedel@suse.de, Vincent Guittot <vincent.guittot@linaro.org>,
 Zubair.Kakakhel@imgtec.com, dmaengine@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, LKML <linux-kernel@vger.kernel.org>,
 Jon Hunter <jonathanh@nvidia.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>, Vinod Koul <vkoul@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-tegra@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCA4IE1heSAyMDE5IGF0IDIzOjE1LCBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFp
bC5jb20+IHdyb3RlOgo+Cj4gMDcuMDUuMjAxOSA5OjA5LCBCYW9saW4gV2FuZyDQv9C40YjQtdGC
Ogo+ID4gU2luY2Ugd2UndmUgaW50cm9kdWNlZCBvbmUgZGV2aWNlIG5vZGUgcGFyYW1ldGVyIGZv
ciBfX2RtYV9yZXF1ZXN0X2NoYW5uZWwoKSwKPiA+IHRodXMgY2hhbmdlIHRvIHRoZSBjb3JyZWN0
IGZ1bmN0aW9uIHByb3RvdHlwZS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBCYW9saW4gV2FuZyA8
YmFvbGluLndhbmdAbGluYXJvLm9yZz4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvc29jL3RlZ3JhL2Z1
c2UvZnVzZS10ZWdyYTIwLmMgfCAgICAyICstCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL3Rl
Z3JhL2Z1c2UvZnVzZS10ZWdyYTIwLmMgYi9kcml2ZXJzL3NvYy90ZWdyYS9mdXNlL2Z1c2UtdGVn
cmEyMC5jCj4gPiBpbmRleCA0OWZmMDE3Li5lMjU3MWI2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9zb2MvdGVncmEvZnVzZS9mdXNlLXRlZ3JhMjAuYwo+ID4gKysrIGIvZHJpdmVycy9zb2MvdGVn
cmEvZnVzZS9mdXNlLXRlZ3JhMjAuYwo+ID4gQEAgLTExMCw3ICsxMTAsNyBAQCBzdGF0aWMgaW50
IHRlZ3JhMjBfZnVzZV9wcm9iZShzdHJ1Y3QgdGVncmFfZnVzZSAqZnVzZSkKPiA+ICAgICAgIGRt
YV9jYXBfemVybyhtYXNrKTsKPiA+ICAgICAgIGRtYV9jYXBfc2V0KERNQV9TTEFWRSwgbWFzayk7
Cj4gPgo+ID4gLSAgICAgZnVzZS0+YXBiZG1hLmNoYW4gPSBfX2RtYV9yZXF1ZXN0X2NoYW5uZWwo
Jm1hc2ssIGRtYV9maWx0ZXIsIE5VTEwpOwo+ID4gKyAgICAgZnVzZS0+YXBiZG1hLmNoYW4gPSBf
X2RtYV9yZXF1ZXN0X2NoYW5uZWwoJm1hc2ssIGRtYV9maWx0ZXIsIE5VTEwsIE5VTEwpOwo+ID4g
ICAgICAgaWYgKCFmdXNlLT5hcGJkbWEuY2hhbikKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIC1F
UFJPQkVfREVGRVI7Cj4gPgo+ID4KPgo+IDEpIEtlcm5lbCBzaG91bGQgYmUga2VwdCBiaXNlY3Qn
YWJsZSBieSBub3QgaGF2aW5nIGludGVybWVkaWF0ZSBwYXRjaGVzCj4gdGhhdCBicmVhayBjb21w
aWxhdGlvbi4gSGVuY2UgeW91IHNob3VsZCBzcXVhc2ggdGhlIGNoYW5nZXMgaW50byBhCj4gc2lu
Z2xlIHBhdGNoLgo+Cj4gMikgQmV0dGVyIHRvIHJlcGxhY2UgX19kbWFfcmVxdWVzdF9jaGFubmVs
KCkgd2l0aCBkbWFfcmVxdWVzdF9jaGFubmVsKCkKPiBzaW5jZSB0aGV5IGFyZSBlcXVhbC4KCkdv
b2QgcG9pbnQuIEknbGwgY2hhbmdlIHRvIHVzZSBkbWFfcmVxdWVzdF9jaGFubmVsKCkgaW4gbmV4
dCB2ZXJzaW9uCmlmIG5vIG90aGVyIG9iamVjdGlvbnMuIFRoYW5rcy4KCi0tIApCYW9saW4gV2Fu
ZwpCZXN0IFJlZ2FyZHMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
