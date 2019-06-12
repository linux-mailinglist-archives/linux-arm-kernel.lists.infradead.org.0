Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1FB422BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Dr4CRlsTsP4cdQ5zAVmuSb9gRH0lNmQokmont084nI=; b=H0SZq65VeQapLX
	FoNSY3lCuZXfrZyeQeRLWIravKtonhoz7wnyld8RpL47DkhqaUOq2mQYNMFtJMfq8Qh03LHc8dlnW
	tpt7O9NReqQcYQDCYALo6/ptIWeqzA73NdXWvYg0ITDigWP3bpEaYOeQutM2lR2DcfI+2+JprEE/s
	vPe4w59vGA+t+3FqJ3BYsf20JpnHJpWMQMlFQEtmlNgU8oPStvH7qDJqR987C7B2jZ+F+Is+LZBV9
	WgZ3JqPKdfI2xtdOJlSD3/HpTpSGSILIq+8gj6u0BmFtjOlVbOFkCbj9e8rqKLZrAIcsOzMt1f3Wp
	grk+LQmZgKHsurVHuXLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0g2-0004Np-AI; Wed, 12 Jun 2019 10:40:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0fm-000414-5t
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 10:40:08 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0327E2082C;
 Wed, 12 Jun 2019 10:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560336005;
 bh=olJE88EuGPDle+9Tm9CK1rEMk80N8UpsGxLJZzTv3x0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rqSGJ26WhA1epEd5iGa6+JzbWjQ8AyZF8ksDozVUYo1vXzZ1K7aEeze82ZJa1JjQB
 BNZU7J5vrqlC3YpGiTfgCyhGB+NnChrdzCZupgVC2hVkdmJy+fipdid2cOkE1tvqt0
 P40EJtFCyc0BT0Au2KyU+1wmtXHN0JS9rs7oBZWY=
Date: Wed, 12 Jun 2019 18:39:27 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>
Subject: Re: [PATCH] ARM: dts: imx7ulp: add crypto support
Message-ID: <20190612103926.GE11086@dragon>
References: <20190606080255.25504-1-horia.geanta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606080255.25504-1-horia.geanta@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_034006_437498_43D1AE66 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Iuliana Prodan <iuliana.prodan@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Franck Lenormand <franck.lenormand@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-crypto@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMDYsIDIwMTkgYXQgMTE6MDI6NTVBTSArMDMwMCwgSG9yaWEgR2VhbnTEgyB3
cm90ZToKPiBGcm9tOiBJdWxpYW5hIFByb2RhbiA8aXVsaWFuYS5wcm9kYW5AbnhwLmNvbT4KPiAK
PiBBZGQgY3J5cHRvIG5vZGUgaW4gZGV2aWNlIHRyZWUgZm9yIENBQU0gc3VwcG9ydC4KPiAKPiBO
b3Rld29ydGh5IGlzIHRoYXQgb24gN3VscCB0aGUgaW50ZXJydXB0IGxpbmUgaXMgc2hhcmVkCj4g
YmV0d2VlbiB0aGUgdHdvIGpvYiByaW5ncy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBJdWxpYW5hIFBy
b2RhbiA8aXVsaWFuYS5wcm9kYW5AbnhwLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBGcmFuY2sgTEVO
T1JNQU5EIDxmcmFuY2subGVub3JtYW5kQG54cC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSG9yaWEg
R2VhbnTEgyA8aG9yaWEuZ2VhbnRhQG54cC5jb20+Cj4gLS0tCj4gCj4gSSd2ZSBqdXN0IHJlYWxp
emVkIHRoYXQgdGhpcyBwYXRjaCBzaG91bGQgYmUgbWVyZ2VkIHRocm91Z2ggdGhlIGNyeXB0byB0
cmVlLAo+IGVsc2UgYmlzZWN0YWJpbGl0eSBjb3VsZCBiZSBhZmZlY3RlZCBkdWUgdG8gY3J5cHRv
ZGV2LTIuNgo+IGNvbW1pdCAzODVjZmM4NGE1YTggKCJjcnlwdG86IGNhYW0gLSBkaXNhYmxlIHNv
bWUgY2xvY2sgY2hlY2tzIGZvciBpTVg3VUxQIikKPiAoIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5l
bC5vcmcvcGF0Y2gvMTA5NzAwMTcvICkKPiB3aGljaCBzaG91bGQgY29tZSBmaXJzdC4KCkknbSBu
b3Qgc3VyZSBJIGZvbGxvdyBpdC4gIFRoaXMgaXMgYSBuZXcgZGV2aWNlIGFkZGVkIHRvIGlteDd1
bHAgRFQuCkl0J3MgbmV2ZXIgd29ya2VkIGJlZm9yZSBvbiBpbXg3dWxwLiAgSG93IHdvdWxkIGl0
IGFmZmVjdCBnaXQgYmlzZWN0PwoKU2hhd24KCj4gCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDd1
bHAuZHRzaSB8IDIzICsrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAy
MyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDd1
bHAuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDd1bHAuZHRzaQo+IGluZGV4IGQ2YjcxMTAx
MWNiYS4uZTIwNDgzNzE0YmU1IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDd1
bHAuZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDd1bHAuZHRzaQo+IEBAIC0xMDAs
NiArMTAwLDI5IEBACj4gIAkJcmVnID0gPDB4NDAwMDAwMDAgMHg4MDAwMDA+Owo+ICAJCXJhbmdl
czsKPiAgCj4gKwkJY3J5cHRvOiBjcnlwdG9ANDAyNDAwMDAgewo+ICsJCQljb21wYXRpYmxlID0g
ImZzbCxzZWMtdjQuMCI7Cj4gKwkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsJCQkjc2l6ZS1j
ZWxscyA9IDwxPjsKPiArCQkJcmVnID0gPDB4NDAyNDAwMDAgMHgxMDAwMD47Cj4gKwkJCXJhbmdl
cyA9IDwwIDB4NDAyNDAwMDAgMHgxMDAwMD47Cj4gKwkJCWNsb2NrcyA9IDwmcGNjMiBJTVg3VUxQ
X0NMS19DQUFNPiwKPiArCQkJCSA8JnNjZzEgSU1YN1VMUF9DTEtfTklDMV9CVVNfRElWPjsKPiAr
CQkJY2xvY2stbmFtZXMgPSAiYWNsayIsICJpcGciOwo+ICsKPiArCQkJc2VjX2pyMDoganIwQDEw
MDAgewo+ICsJCQkJY29tcGF0aWJsZSA9ICJmc2wsc2VjLXY0LjAtam9iLXJpbmciOwo+ICsJCQkJ
cmVnID0gPDB4MTAwMCAweDEwMDA+Owo+ICsJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDU0IElS
UV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsJCQl9Owo+ICsKPiArCQkJc2VjX2pyMToganIxQDIwMDAg
ewo+ICsJCQkJY29tcGF0aWJsZSA9ICJmc2wsc2VjLXY0LjAtam9iLXJpbmciOwo+ICsJCQkJcmVn
ID0gPDB4MjAwMCAweDEwMDA+Owo+ICsJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDU0IElSUV9U
WVBFX0xFVkVMX0hJR0g+Owo+ICsJCQl9Owo+ICsJCX07Cj4gKwo+ICAJCWxwdWFydDQ6IHNlcmlh
bEA0MDJkMDAwMCB7Cj4gIAkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDd1bHAtbHB1YXJ0IjsKPiAg
CQkJcmVnID0gPDB4NDAyZDAwMDAgMHgxMDAwPjsKPiAtLSAKPiAyLjE3LjEKPiAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
