Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E22201D45
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 23:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDRFZYzvjL9s2xTyvFgtffKvyWmbiHS7srI2IAeKiag=; b=FCdwBjt9GTxaH4
	kxOkQVZwjX3kuWpW6Io4TbDzh9dQ5rr5JX3aRJNNMvWDOgsFLjr+HA9OoujEKb47KIc8C50aFGVpv
	TzJErDuJCFa2ivrXe3Tj8MgP3ydWIE/KPvn1EoB8/G2gy7H+tvkVUcMntvxDv5idfwKeXJFusdOsX
	aBkGXcPb1c7nEJBTKekWTTOpPv2cIm4ERK5v8VW/8FL0CP++VCMVXLT3kq8tcI1tDfd14nFQTKDN9
	OTUQc6p1PQLIyDEyiKVtTtbvhhkqVP0yAEoeNLLlPGH34bvtztqOyzNx3+oRUpIOg/wZAgaPnvIKd
	wTx5zr4Gf52KJZ3SCSQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmOqA-00039F-OR; Fri, 19 Jun 2020 21:46:26 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmOq1-00038t-AH
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 21:46:18 +0000
Received: by mail-lf1-x142.google.com with SMTP id w15so6362287lfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 14:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=A2wfnvUJcArOzvROBSxEDoq/2XoIUAY6WzwwQK6XXBA=;
 b=nLnUGLWAs48Qa1AROnzflrVrnCMRfjEeC6MyFecZs6Oasf93l21ztEgIrdY2KtNx1K
 2p27y+xawFZoVJYq1xw2kTX2YDQQCYljEBBmVQfZxy4Wfb6FQjiixh3E3BtTEx3EaI0A
 iGOfbOGUZXcU40AeUlMw5R8mcyRPPNrikomeI3CkDC//fMrg7nWgsMCgfUKAbTPnEfj/
 qaFieEIEyFBb/Ihz5mu/lSzOtprP62AG9GOV4rlzVHmv/JJHEozRPeZL30wJ3s/P+5Df
 yVP+rCkMO/3Imq4eJhTLcWxYY8SbjKHC8BlbgebI3tAj0onkSUkwcDRYHr2aKTUQrEWB
 zYdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=A2wfnvUJcArOzvROBSxEDoq/2XoIUAY6WzwwQK6XXBA=;
 b=QMvh6zFaoOCWX6VIirlfP64rZRSjvBnZhb1pJ4Tb21wX3VgTrAo+UaNueDRfIj/dIj
 uTAIVCLwwcAsZTYZ8JYkPW8i8CAvPv1XPCdSTv+XC2cEZUEjo12WsI52qvcW/m/UxeLQ
 1JMDAHSiBaWdEGJDstRBLMtc8Kc9ogIjdqZpdR73RGxgONUpr9veSruUfa5Hwg3pv4vH
 R02Y0O5nW4pAKd3+p/fiq1OsHYw5OksWglTez6AaeU5qY3DLJjyFVpVXyMMrGS+d/9Ws
 vjWQmpX/LEeP8ywFG4IMf8Wb0p1vt7uCYBv4bfHCES0GIA0fuSPfZKUvQXTXQA0S05hi
 SVeg==
X-Gm-Message-State: AOAM531SNJUxlLqOXAZWVE19IF9t1ErTw6zU+dKswceY46a9AB4JKw3X
 9F+0gejAOx3r6V3zIpCAIolcMCig5+fUxRE9YG8=
X-Google-Smtp-Source: ABdhPJwWM6oTSAjc4wRs57WscBG5w+nASFiuy+YVLKsV9iMVF+FCGc49KUQHQWCk1HhyNLNvYNpZTOhdDg0A4ZqvkK4=
X-Received: by 2002:a19:c214:: with SMTP id l20mr1072998lfc.56.1592603175449; 
 Fri, 19 Jun 2020 14:46:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200619213347.27826-1-horia.geanta@nxp.com>
 <20200619213347.27826-5-horia.geanta@nxp.com>
In-Reply-To: <20200619213347.27826-5-horia.geanta@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 19 Jun 2020 18:46:04 -0300
Message-ID: <CAOMZO5AZLUxXhX-Maop8iQc0Qan5YqH2QFXaDpYq0hL+BP-L+w@mail.gmail.com>
Subject: Re: [PATCH 4/4] hwrng: imx-rngc: enable driver for i.MX6
To: =?UTF-8?Q?Horia_Geant=C4=83?= <horia.geanta@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_144617_358288_699A35DF 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Martin Kaiser <martin@kaiser.cx>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Iuliana Prodan <iuliana.prodan@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Franck Lenormand <franck.lenormand@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Matt Mackall <mpm@selenic.com>, Silvano Di Ninno <silvano.dininno@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdW4gMTksIDIwMjAgYXQgNjozNCBQTSBIb3JpYSBHZWFudMSDIDxob3JpYS5nZWFu
dGFAbnhwLmNvbT4gd3JvdGU6Cj4KPiBpLk1YNiBTTCwgU0xMLCBVTEwsIFVMWiBTb0NzIGhhdmUg
YW4gUk5HQiBibG9jay4KPgo+IFNpbmNlIGlteC1ybmdjIGRyaXZlciBzdXBwb3J0cyBhbHNvIHJu
Z2IsCj4gbGV0J3MgZW5hYmxlIGl0IGZvciB0aGVzZSBTb0NzIHRvby4KPgo+IFNpZ25lZC1vZmYt
Ynk6IEhvcmlhIEdlYW50xIMgPGhvcmlhLmdlYW50YUBueHAuY29tPgo+IC0tLQo+ICBkcml2ZXJz
L2NoYXIvaHdfcmFuZG9tL0tjb25maWcgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9od19y
YW5kb20vS2NvbmZpZyBiL2RyaXZlcnMvY2hhci9od19yYW5kb20vS2NvbmZpZwo+IGluZGV4IDBh
ZDE3ZWZjOTZkZi4uNTNmNmE3ZTQzOTJmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2hhci9od19y
YW5kb20vS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvY2hhci9od19yYW5kb20vS2NvbmZpZwo+IEBA
IC0yNDUsNyArMjQ1LDcgQEAgY29uZmlnIEhXX1JBTkRPTV9NWENfUk5HQQo+ICBjb25maWcgSFdf
UkFORE9NX0lNWF9STkdDCj4gICAgICAgICB0cmlzdGF0ZSAiRnJlZXNjYWxlIGkuTVggUk5HQyBS
YW5kb20gTnVtYmVyIEdlbmVyYXRvciIKPiAgICAgICAgIGRlcGVuZHMgb24gSEFTX0lPTUVNICYm
IEhBVkVfQ0xLCj4gLSAgICAgICBkZXBlbmRzIG9uIFNPQ19JTVgyNSB8fCBDT01QSUxFX1RFU1QK
PiArICAgICAgIGRlcGVuZHMgb24gU09DX0lNWDI1IHx8IFNPQ19JTVg2U0wgfHwgU09DX0lNWDZT
TEwgfHwgU09DX0lNWDZVTCB8fCBDT01QSUxFX1RFU1QKCklmIGluIHRoZSBmdXR1cmUgbW9yZSBT
b0NzIHdpbGwgdXNlIHRoaXMgSVAsIHRoZW4gd2Ugd2lsbCBuZWVkIHRvIGtlZXAKZXh0ZW5kaW5n
IHRoaXMgbGlzdCBvdmVyIGFuZCBvdmVyIGFnYWluLgoKTWF5YmUgeW91IGNvdWxkIHVzZToKCmRl
cGVuZHMgb24gTUFDSF9JTVggfHwgQ09NUElMRV9URVNUCgoKCj4gICAgICAgICBkZWZhdWx0IEhX
X1JBTkRPTQo+ICAgICAgICAgaGVscAo+ICAgICAgICAgICBUaGlzIGRyaXZlciBwcm92aWRlcyBr
ZXJuZWwtc2lkZSBzdXBwb3J0IGZvciB0aGUgUmFuZG9tIE51bWJlcgo+IC0tCj4gMi4xNy4xCj4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
