Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 760AD17DC4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 10:21:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KCOMrW74A9/yT/4wzZQQ+C7ddurcFSRRdf0AkBDK9I=; b=GKwPHiRdxO+LGw
	irWALlFRfUQqR537zqcn/HLWFgp0DnR07NXF0St3wyLPiHpsks5noU1Nk5tpciqxZRZk1gY8K0ZTn
	nAXSr5zKv+4qBM2kzucoFDCewW6gDud/zOT9jiyQzjGcPKpa/RwH6LGxXdaZpc0VRP2EDRNF2tIQ4
	kmjbPBovQeQlkdm2LC8JrsmKXgHwWFUIOnHQQ09d54X0JRrbv1vRd+y+nS0DtJuKCYOILxXvqwFbQ
	/wO7hx2U3jBJ9qT1zBlNqOBS5+oX8Jj3vTHB/oFuppDNpda4KxWCnCfhMW7SCGjq0L8OvMrSP6JdA
	XvesfuY1zCRrRTj4bDNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBEba-0006Zv-IX; Mon, 09 Mar 2020 09:21:46 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBEbT-0006ZX-Cg
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 09:21:40 +0000
Received: by mail-oi1-f196.google.com with SMTP id c1so9451303oiy.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 02:21:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cW5QRu/WQLX7HG/+uT7JbwnBxTD9IJb8uwxzlsc003A=;
 b=IfcQBdY46Tdmc0s4NL2N4GCDqaMCf6rlItxNh+0yEtQgc3b1AusICPWyg8tfVvCweT
 iQYR2TRojW/yeVShTU4tyYCVupKSZnaqtz4PnthTpn39pLLp2386GeskYsUmOHjCTEw4
 7WtonuzXbNs27/up6IBcyiQw4cuz12fQBY7n4kbo9/EgFmWweEtws8kkgOUV9db56koc
 eL1eOv0s1R9ixo8HqcUjSMIH4UiMPZImUcptC6GrbgJLMGFYhNO5NYlSnNwJTgcFMQaw
 jjn+GmfVkBbRkCMTJvRDNECm6p3/ljQ2oJ/8gf29NS7PQsK7VGT37ESNrWJ2bgQBiJ3w
 d1Vw==
X-Gm-Message-State: ANhLgQ1qkbfm4ZvwR68dRYehfa7xvVTe4KVqOEV7a/D2q5ZdyKFuIQ/B
 peUyBDM7k0mQ62hOI4P0RFIE7w+0bhz2Qg9zkFN75Q==
X-Google-Smtp-Source: ADFU+vtbOXPyRFXaIDFk8cCnkW2knsMp8Sqc7CbW2cu0aR3vXAMSmqmgZ8onL4mKFmGV/6odqwEBcjQBfTTlYHMNcO0=
X-Received: by 2002:aca:5ed4:: with SMTP id s203mr6496923oib.102.1583745697858; 
 Mon, 09 Mar 2020 02:21:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200306110025.24747-1-geert+renesas@glider.be>
 <20200308163543.GD2975348@oden.dyn.berto.se>
In-Reply-To: <20200308163543.GD2975348@oden.dyn.berto.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 9 Mar 2020 10:21:25 +0100
Message-ID: <CAMuHMdWprMpoyQuDFCs+R4NJR87FVnufQNqxmJGTiJXK_v5C6Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77961: Add thermal nodes
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_022139_429893_8BA12F3D 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux PM list <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTmlrbGFzLAoKT24gU3VuLCBNYXIgOCwgMjAyMCBhdCA1OjM1IFBNIE5pa2xhcyBTw7ZkZXJs
dW5kCjxuaWtsYXMuc29kZXJsdW5kQHJhZ25hdGVjaC5zZT4gd3JvdGU6Cj4gT24gMjAyMC0wMy0w
NiAxMjowMDoyNSArMDEwMCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+ID4gQWRkIGEgZGV2
aWNlIG5vZGUgZm9yIHRoZSBUaGVybWFsIFNlbnNvci9DaGlwIEludGVybmFsIFZvbHRhZ2UgTW9u
aXRvcgo+ID4gaW4gdGhlIFItQ2FyIE0zLVcrIChSOEE3Nzk2MSkgU29DLCBhbmQgZGVzY3JpYmUg
dGhlIHRoZXJtYWwgem9uZXMuCj4gPgo+ID4gQWNjb3JkaW5nIHRvIHRoZSBSLUNhciBHZW4zIEhh
cmR3YXJlIE1hbnVhbCBFcnJhdGEgZm9yIFJldmlzaW9uIDIuMDAgb2YKPiA+IEphbiAzMSwgMjAy
MCwgdGhlIHRoZXJtYWwgcGFyYW1ldGVycyBmb3IgUi1DYXIgTTMtVysgYXJlIHRoZSBzYW1lIGFz
IGZvcgo+ID4gUi1DYXIgTTMtVy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0ZXJo
b2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgoKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcmVuZXNhcy9yOGE3Nzk2MS5kdHNpCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JlbmVzYXMvcjhhNzc5NjEuZHRzaQoKPiA+IEBAIC03ODUsNiArNzk5LDcgQEAKPiA+ICAgICAg
ICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gICAgICAgICAgICAgICB9
Owo+ID4KPiA+ICsKPgo+IFRoaXMgZG9uJ3QgbG9va3MgbGlrZSBpdCdzIG5lZWRlZCA6LSkgV2l0
aCB0aGlzIGZpeGVkLAo+Cj4gUmV2aWV3ZWQtYnk6IE5pa2xhcyBTw7ZkZXJsdW5kIDxuaWtsYXMu
c29kZXJsdW5kK3JlbmVzYXNAcmFnbmF0ZWNoLnNlPgoKVGhhbmtzLCBxdWV1ZWQgaW4gcmVuZXNh
cy1kZXZlbCBmb3IgdjUuNywgd2l0aCB0aGUgYWJvdmUgZml4ZWQuCgpHcntvZXRqZSxlZXRpbmd9
cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgoKLS0KR2VlcnQgVXl0dGVyaG9ldmVu
IC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhr
Lm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkg
Y2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3Rz
IEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
