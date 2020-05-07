Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDCA1C970D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/GULXyNUSF3UJdIbNz65M4ZvlTzAOQwC45xR9RvBN7c=; b=o4fCyD2RAg55fL
	XfoBWkvXd+V7SsblEy2P0xbrDa6w0LrF1WJJ7IBRnOahwGanAkoU2SVfn7lP+okE31YVIy3e1gMAu
	/tPTXwnwm/v52iKhK415aaXpc5Y4hBrvMVbjGLotFSPFq7O4urw61HtrmxaxzRDZUlwq0lzMns2sj
	GMS+K9S9D1j1dLMoVMyejMI2sogzj6EH9lRkdLuZZTvGVUA7Pv7Jl+Gpy05BQ7VL51LsyhfEXpnzh
	SqLh9lqSVJj4hXxfaWN6d5/EJi1bsJn9dW2We3dtpJq21G0QIo/BcxxHIY3tsenAwqU62DPTFV+gD
	4kuyjXw1+bLAOJ/zZ4fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjwN-0004ZU-0n; Thu, 07 May 2020 17:04:07 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjwF-0004YV-3E
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:04:00 +0000
Received: by mail-qk1-x741.google.com with SMTP id i14so773135qka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 10:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Hld7f/Kw9bjvhfjaZsf7n7gSrldLUvvGkUrL/YswQok=;
 b=EpvVqjRHFxbK1wUeGGCkLIlkrmGeJJgfCrCsU+zmzM1wqgCW5VyfqZ7BHVia1xluk3
 gTvSp++LYK9R3PE9phD5/DFTk3/tQNJuidf/vzvvPtt7kdJynt8wVj/QTKbLYd7LPJNt
 pjmMliIGNvRFvzqCRSw/0q8XbuQA5ONaif8qjvwLZ2fyu5P1nTO6HibWKYEIwhPXjO7N
 aOMb6cpnL80stcrIAMjulGkzuyr/hqMdxxZv/MM075BCRgcShupXD0aySGxg+vn1h/hs
 CN5+wmJ8NlmAuwXJLYvUs2oCDLXSa/LjT1/ErrAonSYhTh8NKuWUUMvQEzUM5Jvz2gik
 yP6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Hld7f/Kw9bjvhfjaZsf7n7gSrldLUvvGkUrL/YswQok=;
 b=pvNQgsTrLafwjnZzF5+Ky3sKR+ndricsAdrqoA+wQguQ2M3dGftyMbZWRycoR6fs1y
 4nrVVFQXwxtr0/QHf+3WbuWWE4czRUp8cKjsQRAWNJnUQDMHlMs5s9GfEuJY7r28c7wm
 1ddVYO8txRGYcj7c5+94KtLBkflr2jm7X5i2QpT1yRvMWxfwlPwxTRLJ6X22iFGLJd17
 uDhexcDLy81FM6Iu0uhMUQefQ7j/fGgqoxveES2W2lcO34dIM4snlu+DVw6Cq2yBmfPY
 GUuYKx0RUD2oTyNi9lXxUt4HWV1/e+hxmdL5ibxsN1rd7tWg6TslDqbwWwsSEm6sXrwE
 1S+Q==
X-Gm-Message-State: AGi0PubqIdiolBqw0xVNjvbArlLTsDG2N+SU+0U9vlD4fq3IEa5R9iL0
 /PAMguigt3fopbKOs/IZziZsvj5FWvXp5gR9KtG0JA==
X-Google-Smtp-Source: APiQypJYPuD7vyBsx50AXMNfbjWRHiKRLtVBSWgqWt5R2mCiujv+F5SYL9Ov+qQKOQm8p348+/a1owCEaNzPso5tN/k=
X-Received: by 2002:a05:620a:65a:: with SMTP id
 a26mr14772836qka.323.1588871035690; 
 Thu, 07 May 2020 10:03:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-6-brgl@bgdev.pl>
 <20200505103105.1c8b0ce3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAMRc=Mf0ipaeLKhHCZaq2YeZKzi=QBAse7bEz2hHxXN5OL=ptg@mail.gmail.com>
 <20200506101236.25a13609@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAMpxmJWckQdKvUGFDAJ1WMtD9WoGWmGe3kyKYhcfRT2nOB93xw@mail.gmail.com>
 <20200507095315.1154a1a6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200507095315.1154a1a6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 7 May 2020 19:03:44 +0200
Message-ID: <CAMpxmJUEk3itZs4HujJOXUiL80kmEvGBvLF0NFc2UQoVDVTWRg@mail.gmail.com>
Subject: Re: [PATCH 05/11] net: core: provide devm_register_netdev()
To: Jakub Kicinski <kuba@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_100359_138097_2058BBBA 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 netdev <netdev@vger.kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3p3LiwgNyBtYWogMjAyMCBvIDE4OjUzIEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+
IG5hcGlzYcWCKGEpOgo+Cj4gT24gVGh1LCA3IE1heSAyMDIwIDExOjI1OjAxICswMjAwIEJhcnRv
c3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4gPiDFm3IuLCA2IG1haiAyMDIwIG8gMTk6MTIgSmFrdWIg
S2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gbmFwaXNhxYIoYSk6Cj4gPiA+Cj4gPiA+IE9uIFdl
ZCwgNiBNYXkgMjAyMCAwODozOTo0NyArMDIwMCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+
ID4gPiA+IHd0LiwgNSBtYWogMjAyMCBvIDE5OjMxIEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5l
bC5vcmc+IG5hcGlzYcWCKGEpOgo+ID4gPiA+ID4KPiA+ID4gPiA+IE9uIFR1ZSwgIDUgTWF5IDIw
MjAgMTY6MDI6MjUgKzAyMDAgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiA+ID4gPiA+ID4g
RnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3c2tpQGJheWxpYnJlLmNvbT4KPiA+
ID4gPiA+ID4KPiA+ID4gPiA+ID4gUHJvdmlkZSBkZXZtX3JlZ2lzdGVyX25ldGRldigpIC0gYSBk
ZXZpY2UgcmVzb3VyY2UgbWFuYWdlZCB2YXJpYW50Cj4gPiA+ID4gPiA+IG9mIHJlZ2lzdGVyX25l
dGRldigpLiBUaGlzIG5ldyBoZWxwZXIgd2lsbCBvbmx5IHdvcmsgZm9yIG5ldF9kZXZpY2UKPiA+
ID4gPiA+ID4gc3RydWN0cyB0aGF0IGhhdmUgYSBwYXJlbnQgZGV2aWNlIGFzc2lnbmVkIGFuZCBh
cmUgZGV2cmVzIG1hbmFnZWQgdG9vLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6ZXdza2lAYmF5bGlicmUuY29tPgo+ID4g
PiA+ID4KPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL25ldC9jb3JlL2Rldi5jIGIvbmV0L2NvcmUv
ZGV2LmMKPiA+ID4gPiA+ID4gaW5kZXggNTIyMjg4MTc3YmJkLi45OWRiNTM3Yzk0NjggMTAwNjQ0
Cj4gPiA+ID4gPiA+IC0tLSBhL25ldC9jb3JlL2Rldi5jCj4gPiA+ID4gPiA+ICsrKyBiL25ldC9j
b3JlL2Rldi5jCj4gPiA+ID4gPiA+IEBAIC05NTE5LDYgKzk1MTksNTQgQEAgaW50IHJlZ2lzdGVy
X25ldGRldihzdHJ1Y3QgbmV0X2RldmljZSAqZGV2KQo+ID4gPiA+ID4gPiAgfQo+ID4gPiA+ID4g
PiAgRVhQT1JUX1NZTUJPTChyZWdpc3Rlcl9uZXRkZXYpOwo+ID4gPiA+ID4gPgo+ID4gPiA+ID4g
PiArc3RydWN0IG5ldGRldmljZV9kZXZyZXMgewo+ID4gPiA+ID4gPiArICAgICBzdHJ1Y3QgbmV0
X2RldmljZSAqbmRldjsKPiA+ID4gPiA+ID4gK307Cj4gPiA+ID4gPgo+ID4gPiA+ID4gSXMgdGhl
cmUgcmVhbGx5IGEgbmVlZCB0byBkZWZpbmUgYSBzdHJ1Y3R1cmUgaWYgd2Ugb25seSBuZWVkIGEg
cG9pbnRlcj8KPiA+ID4gPiA+Cj4gPiA+ID4KPiA+ID4gPiBUaGVyZSBpcyBubyBuZWVkIGZvciB0
aGF0LCBidXQgaXQgcmVhbGx5IGlzIG1vcmUgcmVhZGFibGUgdGhpcyB3YXkuCj4gPiA+ID4gQWxz
bzogdXNpbmcgYSBwb2ludGVyIGRpcmVjdGx5IGRvZXNuJ3Qgc2F2ZSB1cyBhbnkgbWVtb3J5IG5v
ciBjb2RlCj4gPiA+ID4gaGVyZS4KPiA+ID4KPiA+ID4gSSBkb24ndCBjYXJlIGVpdGhlciB3YXkg
YnV0IGRldm1fYWxsb2NfZXRoZXJkZXZfbXFzKCkgYW5kIGNvLiBhcmUgdXNpbmcKPiA+ID4gdGhl
IGRvdWJsZSBwb2ludGVyIGRpcmVjdGx5LiBQbGVhc2UgbWFrZSB0aGluZ3MgY29uc2lzdGVudC4g
RWl0aGVyIGRvCj4gPiA+IHRoZSBzYW1lLCBvciBkZWZpbmUgdGhlIHN0cnVjdHVyZSBpbiBzb21l
IGhlYWRlciBhbmQgY29udmVydCBvdGhlcgo+ID4gPiBoZWxwZXJzIHRvIGFsc28gbWFrZSB1c2Ug
b2YgaXQuCj4gPgo+ID4gSW4gb3JkZXIgdG8gdXNlIGRldnJlc19maW5kKCkgdG8gY2hlY2sgaWYg
c3RydWN0IG5ldF9kZXZpY2UgaXMgbWFuYWdlZAo+ID4gaW4gZGV2bV9yZWdpc3Rlcl9uZXRkZXYo
KSBJIG5lZWQgdG8ga25vdyB0aGUgYWRkcmVzcyBvZiB0aGUgcmVsZWFzZQo+ID4gZnVuY3Rpb24g
dXNlZCBieSBkZXZtX2FsbG9jX2V0aGVyZGV2X21xcygpLiBEbyB5b3UgbWluZCBpZiBJIG1vdmUg
YWxsCj4gPiBuZXR3b3JraW5nIGRldnJlcyByb3V0aW5lcyAoY3VycmVudGx5IG9ubHkgZGV2bV9h
bGxvY19ldGhlcmRldl9tcXMoKSkKPiA+IGludG8gYSBzZXBhcmF0ZSAuYyBmaWxlIChlLmcuIHVu
ZGVyIG5ldC9kZXZyZXMuYyk/Cj4KPiBUbyBpbXBsZW1lbnQgRWR3aW4ncyBzdWdnZXN0aW9uPyBN
YWtlcyBzZW5zZSwgYnV0IEknbSBubyBleHBlcnQsIGxldCdzCj4gYWxzbyBDQyBIZWluZXIgc2lu
Y2UgaGUgd2FzIGFza2luZyBhYm91dCBpdCBsYXN0IHRpbWUuCgpZZXMsIGJlY2F1c2UgdGFraW5n
IHRoZSBsYXN0IGJpdCBvZiBwcml2X2ZsYWdzIGZyb20gbmV0X2RldmljZSBzZWVtcwp0byBiZSBt
b3JlIGNvbnRyb3ZlcnNpYWwgYnV0IGlmIG5ldCBtYWludGFpbmVycyBhcmUgZmluZSB3aXRoIHRo
YXQgSQpjYW4gc2ltcGx5IGdvIHdpdGggdGhlIGN1cnJlbnQgYXBwcm9hY2guCgpCYXJ0CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
