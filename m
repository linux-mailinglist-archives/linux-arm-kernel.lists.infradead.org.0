Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F13D160A30
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 06:57:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9HY6ywYm1mOsZYgile8JFkvoWbEDlkRhbZQell3F01Y=; b=o60a2mutS/N2wh
	P9uBdw/cqXJhqPRm+mA5sPMDTczzb7J1NvKbDywxvn8oqy6sinEX4bAhl27kbXSdV9Ch8h3v1CMFj
	2vt8JlF0iEvoD8jG84h7ZGKnwXOmmd0Vbj9tGXRhBNLTxkGH7nsktpFTXt0BvCfO5ShWfAH97J+ym
	3UFBCZjdOSYZ69XPvWDHaoLOisD+EE7ql7rXJMqt833zRTYoP56SQ8/iq8oig6VlTk/l+fseDm/Fu
	XrrKJar6KUby3hCpy7x2wqXpSpnqG78gDYW/YiuFkBGo4BnWpjOeWgDqkihn1I3o8rkmKn8XnK8Qb
	4xpxC1Tbi8EhpSZws12w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ZPi-0001d2-7z; Mon, 17 Feb 2020 05:57:50 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ZPa-0001cW-NP
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 05:57:44 +0000
Received: by mail-wm1-x341.google.com with SMTP id a5so15823444wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 21:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ZXuMKcZyj/idpOZmGXYQMfUcYkxlliPEMPEeNplqlRo=;
 b=jgvk7ken0jTTqqtTNtyefWsUXW4+4AkbkUxler3NbAYhbYQEw06uZfZ+o0P/Qx74NW
 eWx0lLZOQrFNzNlaVcxoVzNIjFdBWKL3h/bq8/DeM9OmdSrRfFIA/oj/DnSSxWio70Xs
 UUd74XVKYM463TiTXCtv2Y9LCPcLVgoQSgIX4fl+5dXzIWDV8AEFN3MTqzBwvG+83X4I
 bg23iGsdVN32JhgL1jXnAQnMdaRpy/nqE+If/bXn2zyyZ5VqQeizgiJnQLr/M4Bij6bq
 IsNhPgOvH2Moend9O5ivriLrjm6DsxtLkNSHsvAcfSrrtQjx653WJENd4yyKiOBdqx8j
 AMUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ZXuMKcZyj/idpOZmGXYQMfUcYkxlliPEMPEeNplqlRo=;
 b=dXrJWHA/vA6FH+MODMSqSIS4+DMIdUG1Gi01JECh70EGhwOyYbFNRFMYz+/6Dkmd5I
 n0zLGQUfKHhUvnrTX56xbLd/LxrUOdssS7sfIWAoP+//QfoUcwZ5hWZn2PYe2n7Ukimq
 ZG1RwER90NgtXeiAO372qyGxPfnVwVb/j9XFl0270eRHn7Poc0gBVe2QL6S3Zxt55Je8
 HtrsXx4ZPFjhnUBNan9Nd2N51qktRejolBCmN2JJneVw4HIUe7zj0+mbwi17j5SZ4dKv
 eCmu8iBIalhUuEJR74C+FBPBJQP5VXpWE85YJmXrrKGz8MfAD9uy3QJzuErwDmEQ/rLW
 Tenw==
X-Gm-Message-State: APjAAAUQkqdKIZa2cuHzBbq5XiKyUtHN7uGmo1AosdsrlTHtQj9bmUg8
 E2tW00PXVkgdAF2jJB9HWDwgaA==
X-Google-Smtp-Source: APXvYqy4DcCMx4ZQzKPPXY+K/mHB0y/EkYkOwcFNUZ1+4YuKE84Oq5iaB6C9hx1gKGozChYFngBdJw==
X-Received: by 2002:a1c:740a:: with SMTP id p10mr20128249wmc.65.1581919059979; 
 Sun, 16 Feb 2020 21:57:39 -0800 (PST)
Received: from apalos.home (ppp-2-87-54-32.home.otenet.gr. [2.87.54.32])
 by smtp.gmail.com with ESMTPSA id v22sm18366526wml.11.2020.02.16.21.57.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 21:57:39 -0800 (PST)
Date: Mon, 17 Feb 2020 07:57:36 +0200
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH net-next] net: page_pool: API cleanup and comments
Message-ID: <20200217055736.GA15371@apalos.home>
References: <20200216094056.8078-1-ilias.apalodimas@linaro.org>
 <20200216.195300.260413184133485319.davem@davemloft.net>
 <20200216.195957.2300038427552527679.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200216.195957.2300038427552527679.davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_215742_773494_B8B3D4DE 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mcoquelin.stm32@gmail.com, kuba@kernel.org, alexandre.torgue@st.com,
 daniel@iogearbox.net, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, linux-kernel@vger.kernel.org, jaswinder.singh@linaro.org,
 joabreu@synopsys.com, thomas.petazzoni@bootlin.com, jonathan.lemon@gmail.com,
 peppe.cavallaro@st.com, bpf@vger.kernel.org, lorenzo@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 hawk@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBGZWIgMTYsIDIwMjAgYXQgMDc6NTk6NTdQTSAtMDgwMCwgRGF2aWQgTWlsbGVyIHdy
b3RlOgo+IEZyb206IERhdmlkIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4KPiBEYXRlOiBT
dW4sIDE2IEZlYiAyMDIwIDE5OjUzOjAwIC0wODAwIChQU1QpCj4gCj4gPiBGcm9tOiBJbGlhcyBB
cGFsb2RpbWFzIDxpbGlhcy5hcGFsb2RpbWFzQGxpbmFyby5vcmc+Cj4gPiBEYXRlOiBTdW4sIDE2
IEZlYiAyMDIwIDExOjQwOjU1ICswMjAwCj4gPiAKPiA+PiBGdW5jdGlvbnMgc3RhcnRpbmcgd2l0
aCBfXyB1c3VhbGx5IGluZGljYXRlIHRob3NlIHdoaWNoIGFyZSBleHBvcnRlZCwKPiA+PiBidXQg
c2hvdWxkIG5vdCBiZSBjYWxsZWQgZGlyZWN0bHkuIFVwZGF0ZSBzb21lIG9mIHRob3NlIGRlY2xh
cmVkIGluIHRoZQo+ID4+IEFQSSBhbmQgbWFrZSBpdCBtb3JlIHJlYWRhYmxlLgo+ID4+IAo+ID4+
IHBhZ2VfcG9vbF91bm1hcF9wYWdlKCkgYW5kIHBhZ2VfcG9vbF9yZWxlYXNlX3BhZ2UoKSB3ZXJl
IGRvaW5nCj4gPj4gZXhhY3RseSB0aGUgc2FtZSB0aGluZy4gS2VlcCB0aGUgcGFnZV9wb29sX3Jl
bGVhc2VfcGFnZSgpIHZhcmlhbnQKPiA+PiBhbmQgZXhwb3J0IGl0IGluIG9yZGVyIHRvIHNob3cg
dXAgb24gcGVyZiBsb2dzLgo+ID4+IEZpbmFsbHkgcmVuYW1lIF9fcGFnZV9wb29sX3B1dF9wYWdl
KCkgdG8gcGFnZV9wb29sX3B1dF9wYWdlKCkgc2luY2Ugd2UKPiA+PiBjYW4gbm93IGRpcmVjdGx5
IGNhbGwgaXQgZnJvbSBkcml2ZXJzIGFuZCByZW5hbWUgdGhlIGV4aXN0aW5nCj4gPj4gcGFnZV9w
b29sX3B1dF9wYWdlKCkgdG8gcGFnZV9wb29sX3B1dF9mdWxsX3BhZ2UoKSBzaW5jZSB0aGV5IGRv
IHRoZSBzYW1lCj4gPj4gdGhpbmcgYnV0IHRoZSBsYXR0ZXIgaXMgdHJ5aW5nIHRvIHN5bmMgdGhl
IGZ1bGwgRE1BIGFyZWEuCj4gPj4gCj4gPj4gQWxzbyB1cGRhdGUgbmV0c2VjLCBtdm5ldGEgYW5k
IHN0bW1hYyBkcml2ZXJzIHdoaWNoIHVzZSB0aG9zZSBmdW5jdGlvbnMuCj4gPj4gCj4gPj4gU3Vn
Z2VzdGVkLWJ5OiBKb25hdGhhbiBMZW1vbiA8am9uYXRoYW4ubGVtb25AZ21haWwuY29tPgo+ID4+
IFNpZ25lZC1vZmYtYnk6IElsaWFzIEFwYWxvZGltYXMgPGlsaWFzLmFwYWxvZGltYXNAbGluYXJv
Lm9yZz4KPiA+IAo+ID4gQXBwbGllZCB0byBuZXQtbmV4dCwgdGhhbmtzLgo+IAo+IEFjdHVhbGx5
IHRoaXMgZG9lc24ndCBjb21waWxlLCBwbGVhc2UgcmVzcGluOgoKT29vcHMgOigKSSB3YXMgY29t
cGlsaW5nIGZvciBhcm12Nywgc3RtbWFjIGFuZCBtdm5ldGEgYXJlIGluY2x1ZGVkIGJ1dCBuZXRz
ZWMgaXNuJ3QuIApTb3JyeSBmb3IgdGhlIG5vaXNlLCBpJ2xsIHNlbmQgYSB2MgoKPiAKPiBkcml2
ZXJzL25ldC9ldGhlcm5ldC9zb2Npb25leHQvbmV0c2VjLmM6IEluIGZ1bmN0aW9uIOKAmG5ldHNl
Y191bmluaXRfcGt0X2RyaW5n4oCZOgo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L3NvY2lvbmV4dC9u
ZXRzZWMuYzoxMjAxOjQ6IGVycm9yOiB0b28gZmV3IGFyZ3VtZW50cyB0byBmdW5jdGlvbiDigJhw
YWdlX3Bvb2xfcHV0X3BhZ2XigJkKPiAgICAgcGFnZV9wb29sX3B1dF9wYWdlKGRyaW5nLT5wYWdl
X3Bvb2wsIHBhZ2UsIGZhbHNlKTsKPiAgICAgXn5+fn5+fn5+fn5+fn5+fn5+Cj4gSW4gZmlsZSBp
bmNsdWRlZCBmcm9tIGRyaXZlcnMvbmV0L2V0aGVybmV0L3NvY2lvbmV4dC9uZXRzZWMuYzoxNzoK
PiAuL2luY2x1ZGUvbmV0L3BhZ2VfcG9vbC5oOjE3Mjo2OiBub3RlOiBkZWNsYXJlZCBoZXJlCj4g
IHZvaWQgcGFnZV9wb29sX3B1dF9wYWdlKHN0cnVjdCBwYWdlX3Bvb2wgKnBvb2wsIHN0cnVjdCBw
YWdlICpwYWdlLAo+ICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fgoKVGhhbmtzCi9JbGlhcwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
