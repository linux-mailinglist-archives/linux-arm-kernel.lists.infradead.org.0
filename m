Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7104B1ECCEF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 11:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZDewyzfvmP8Sgg8Sarf1OXmzZHaBSsNzF36ILsRkXo=; b=u+rht2kaH+9iDZ
	i0mGF7b02T8iFJDzjpZnILllXwTaPm5h322PoIxvJVSr+vLwLYD7eEMIlI2DY0QubH52VUSkw/4x3
	r5f5nAGvi1/XDOB3LNy6d8r3NPUJVz/XfRi6sLCr7aDHd1y5FakcEdIpSns0MG6JM5yxoQj8kbIAk
	Mm3ixpmqK8JdeyUOWc65lB9MGutX0UidCqujot1vgdlncXllYyvgvLj5pEodksXVHxUq+Xocf4Q6C
	PKDt/49Hi8Kf5Lq/M532OSeDkYgMIG481Awv+Y9LXAvNkk7J/6LWjb0DBc5Ge3fh0pRkPnA1qa3mk
	b4MzW6jxqOGGJnfPVwHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgQ1R-00058p-0G; Wed, 03 Jun 2020 09:49:21 +0000
Received: from mail-lf1-f68.google.com ([209.85.167.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgQ16-0004yw-JP
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 09:49:02 +0000
Received: by mail-lf1-f68.google.com with SMTP id c12so892665lfc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 02:48:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PMOVHnGEcXL7cxNnZJH62mImVMlDJ7z1JOGvnBRid68=;
 b=fCZYf80PcCNZjDF64bYSeW9IJWGyqZeUegtIVLzN6wWpOp82ML6ZoOm6y9YPUvyLi4
 Js+jCkBeef0sdy37JivLSs7LBPoA/zYH9AikX6mDqKMCi3Le8TWRkczlm9r2hObNN7ml
 zizTV95TTHBefrreufzKOWnpmKINx8RFGlwEvg3o0lAgkLMZbAISpyVG0/JtNajBJls9
 mLxGndbNhTiXJBeDQsazB9ZaCVa/HJiBL517u+DgJn/rvuepkldiX3JaGc8xxw5Y2+Qx
 Xu7Z7hZoQ49ndSk6IXd9lIENmDtykSSbTjMTesjsn6D+jWy+lmkPkvc4RK9xjsjaQIXg
 cI6w==
X-Gm-Message-State: AOAM532LdSgdpJH5YG6PsSXORjDM3084GdVNuANu9JTKtldGo/IhhIB+
 ZhXaW6L5VpmOgiHSJUnUmmqWLQ1eXZs=
X-Google-Smtp-Source: ABdhPJw5VLCEvt9AGDgR/eGaBZIgfWy79Dyx/eZBTTO+pS3yWzWnqMWxfhrTNtmUtQDWuTpK971EuA==
X-Received: by 2002:ac2:51a7:: with SMTP id f7mr1970208lfk.13.1591177737375;
 Wed, 03 Jun 2020 02:48:57 -0700 (PDT)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com.
 [209.85.208.176])
 by smtp.gmail.com with ESMTPSA id k22sm331964ljk.122.2020.06.03.02.48.56
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Jun 2020 02:48:56 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id 9so1885269ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 02:48:56 -0700 (PDT)
X-Received: by 2002:a2e:8047:: with SMTP id p7mr1551215ljg.190.1591177736679; 
 Wed, 03 Jun 2020 02:48:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200522030743.10204-1-frank@allwinnertech.com>
 <20200522030743.10204-2-frank@allwinnertech.com>
 <20200522151403.7ovbdza2o3cjrb7a@gilmour.lan>
 <d7d6ee84-bfbb-4fef-9ed8-1f7045494594.frank@allwinnertech.com>
In-Reply-To: <d7d6ee84-bfbb-4fef-9ed8-1f7045494594.frank@allwinnertech.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 3 Jun 2020 17:48:44 +0800
X-Gmail-Original-Message-ID: <CAGb2v66rZpX-+DK_MnP7RRp7LL7GrXTd1ExpE6z_AjKDVjVwNg@mail.gmail.com>
Message-ID: <CAGb2v66rZpX-+DK_MnP7RRp7LL7GrXTd1ExpE6z_AjKDVjVwNg@mail.gmail.com>
Subject: Re: [PATCH 1/4] clk: sunxi-ng: add support for the Allwinner A100 CCU
To: =?UTF-8?B?5p2O5oms6Z+s?= <frank@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_024900_675277_D7FBBCAD 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, sboyd <sboyd@kernel.org>,
 mturquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, "tiny.windzz" <tiny.windzz@gmail.com>,
 robh+dt <robh+dt@kernel.org>,
 =?UTF-8?B?6buE54OB55Sf?= <huangshuosheng@allwinnertech.com>,
 Maxime Ripard <maxime@cerno.tech>, "p.zabel" <p.zabel@pengutronix.de>,
 "linus.walleij" <linus.walleij@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMywgMjAyMCBhdCA1OjQyIFBNIOadjuaJrOmfrCA8ZnJhbmtAYWxsd2lubmVy
dGVjaC5jb20+IHdyb3RlOgo+Cj4gPj4gKyAvKiBFbmFibGUgdGhlIGxvY2sgYml0cyBvbiBhbGwg
UExMcyAqLwo+ID4+ICsgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUocGxsX3JlZ3MpOyBpKysp
IHsKPiA+PiArICB2YWwgPSByZWFkbChyZWcgKyBwbGxfcmVnc1tpXSk7Cj4gPj4gKyAgdmFsIHw9
IEJJVCgyOSk7Cj4gPgo+ID5IYXZpbmcgYSBkZWZpbmUgZm9yIHRoYXQgd291bGQgYmUgbmljZSBo
ZXJlCj4gPgo+ID4+ICsgIHdyaXRlbCh2YWwsIHJlZyArIHBsbF9yZWdzW2ldKTsKPiA+PiArIH0K
PiA+PiArCj4gPj4gKyAvKgo+ID4+ICsgICogSW4gb3JkZXIgdG8gcGFzcyB0aGUgRU1JIGNlcnRp
ZmljYXRpb24sIHRoZSBTRE0gZnVuY3Rpb24gb2YKPiA+PiArICAqIHRoZSBwZXJpcGhlcmFsIDEg
YnVzIGlzIGVuYWJsZWQsIGFuZCB0aGUgZnJlcXVlbmN5IGlzIHN0aWxsCj4gPj4gKyAgKiBjYWxj
dWxhdGVkIHVzaW5nIHRoZSBwcmV2aW91cyBkaXZpc2lvbiBmYWN0b3IuCj4gPj4gKyAgKi8KPiA+
PiArIHdyaXRlbCgweGQxMzAzMzMzLCByZWcgKyBTVU41MElfQTEwMF9QTExfUEVSSVBIMV9QQVRU
RVJOMF9SRUcpOwo+ID4KPiA+U2FtZSBoZXJlCj4KPiBIYXZpbmcgYSBkZWZpbmU/IEkgZG9u4oCZ
dCBxdWl0ZSB1bmRlcnN0YW5kIHdoYXQgeW91IG1lYW4sCj4gY2FuIHlvdSBnaXZlIG1lIGFuIGV4
YW1wbGU/CgpXaGF0IE1heGltZSBtZWFucyBpcyB0aGF0IDB4ZDEzMDMzMzMgaXMgYSBtYWdpYyBu
dW1iZXIuCkl0IGlzIGJldHRlciB0byBtYWtlIGEgcHJvcGVybHkgbmFtZWQgbWFjcm8sIG9yIG1h
bnkgbWFjcm9zCnRoYXQgeW91IHRoZW4gYml0d2lzZS1PUiB0b2dldGhlci4gU28geW91IHNob3Vs
ZCBtYWtlIG1hY3Jvcwpmb3IgZWFjaCBiaXRmaWVsZCBpbiB0aGF0IHJlZ2lzdGVyLCB3aGljaCB3
b3VsZCBsaWtlbHkgaW5jbHVkZQp0aGUgU0RNIGNhbGN1bGF0aW9uIGZhY3RvcnMsIHRoZSBlbmFi
bGUgYml0LCBhbmQgYW55IG90aGVyIGZpZWxkcy4KCkNoZW5ZdQoKPiBNQlIsCj4gWWFuZ3RhbwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
