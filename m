Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E37FEDAA6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:38:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1imRt6ggm1RN51Ckb2incarWFhLs96bRVTdYhRlky+g=; b=SHwQCKGJNsG0Kz
	YD3125uO8SVhApcuVsthMB1sqbxrRzVE08vJEu247IPqwdQpolqzlJqb9t85Q31thCAyJXoxd9vcI
	W1FJ7xyX1AoyIdrg/XshP3Q2w8gLB0/ZCac3uE+3DqdrcTaKQ8W7kW9CM4KdZfP5LnInUbf8Azg6v
	gpy0/4PRPYpr1IK+21ygoYR5K9HeuwozdQF1gQe9TNzaJB+GpCtuViLysVKpgMqJKNwjY+/TNsSxZ
	yTFd9ZmbOu9gGMsLjAEOQXOuMfLGikpgaL8NM1URF8FTJPQFqs3W82/J4BLuCQb/yz6rWSx96URtc
	4ZQbv7pxDtiNdi9gFpQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXsP-0006z7-Uc; Mon, 04 Nov 2019 08:38:17 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXsI-0006yd-Q8
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 08:38:12 +0000
Received: by mail-lf1-x143.google.com with SMTP id a6so8161169lfo.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 00:38:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aAvLvQnBn2etU9QWbHrMgTtrty/V9iZf2pUKjOUNug8=;
 b=CRqPRRvMc4CiyGWwN0n+HhobnmdoLfjL+0AzezW7ETOIFz5sHfNHH5JNGG6YI+/403
 MsQNEzWz0NSvbA0uWvsbCgqAT3tGi1qsOO0oSW4TRw1r9cIbKDUlQ9wzYhXtlrQDdRZs
 PV5CVnB5sUcQ4tEXqmk5O+Wt9y6sGHLcWmnV4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aAvLvQnBn2etU9QWbHrMgTtrty/V9iZf2pUKjOUNug8=;
 b=KBzIRAl0k7CQAOIBnxJ4S3i1adqijEfkgz702YSFF7b3A0SPg4dYxy+LNAVrUJ1aLd
 L0XTTVVidjI4vcKm1tU5ZDxRBY4IZ1yCr1O2y7cETyhLK2XrdgjYz0jsKR+QMYCbdNLX
 7UayFnDTfgQakd94ciRhGD9k62jIaG8Jv0sP8Ensls6DJw/r8sEVqcPzGbXI7ZcKHXN0
 EjwxJY2hAkI4JjlBhlHluDwBS5ZYi6bQAyGMVL1OxAt0h4n9XhGDbH/yPyb65XP61V1Q
 uYczSOmSL/l/7BKAAFQ2+oksCWRLdWOtkVP4Uj1C/JGf8fgS+XgRqiILu5BJXjd2OU9P
 xVwQ==
X-Gm-Message-State: APjAAAVF9DbgAakaNU3lkfLc3sqg13O+36m3r82qqX+c0ZisHNYjpN7Z
 2rruMi6TLv7kJSnyqYntX7zxMw==
X-Google-Smtp-Source: APXvYqzGJdH19phuRzqBS1a9feyj40vilK5OuKVvLX9t8OwmcbQ9em9T2maQ71sFqH2o8LzrUCr3gg==
X-Received: by 2002:ac2:549a:: with SMTP id t26mr15512173lfk.25.1572856688914; 
 Mon, 04 Nov 2019 00:38:08 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u11sm8744096lfq.54.2019.11.04.00.38.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 04 Nov 2019 00:38:08 -0800 (PST)
Subject: Re: [PATCH v3 35/36] net/wan: make FSL_UCC_HDLC explicitly depend on
 PPC32
To: Leo Li <leoyang.li@nxp.com>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Qiang Zhao <qiang.zhao@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-36-linux@rasmusvillemoes.dk>
 <4e2ac670-2bf4-fb47-2130-c0120bcf0111@c-s.fr>
 <VE1PR04MB6687D4620E32176BDC120DBA8F620@VE1PR04MB6687.eurprd04.prod.outlook.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <24ea27b6-adea-cc74-f480-b68de163f531@rasmusvillemoes.dk>
Date: Mon, 4 Nov 2019 09:38:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB6687D4620E32176BDC120DBA8F620@VE1PR04MB6687.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_003810_844567_AA71B6AB 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Scott Wood <oss@buserror.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDEvMTEvMjAxOSAyMy4zMSwgTGVvIExpIHdyb3RlOgo+IAo+IAo+PiAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBDaHJpc3RvcGhlIExlcm95IDxjaHJpc3RvcGhlLmxlcm95
QGMtcy5mcj4KPj4gU2VudDogRnJpZGF5LCBOb3ZlbWJlciAxLCAyMDE5IDExOjMwIEFNCj4+IFRv
OiBSYXNtdXMgVmlsbGVtb2VzIDxsaW51eEByYXNtdXN2aWxsZW1vZXMuZGs+OyBRaWFuZyBaaGFv
Cj4+IDxxaWFuZy56aGFvQG54cC5jb20+OyBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT4KPj4g
Q2M6IGxpbnV4cHBjLWRldkBsaXN0cy5vemxhYnMub3JnOyBsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmc7Cj4+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IFNjb3R0IFdv
b2QgPG9zc0BidXNlcnJvci5uZXQ+Owo+PiBuZXRkZXZAdmdlci5rZXJuZWwub3JnCj4+IFN1Ympl
Y3Q6IFJlOiBbUEFUQ0ggdjMgMzUvMzZdIG5ldC93YW46IG1ha2UgRlNMX1VDQ19IRExDIGV4cGxp
Y2l0bHkKPj4gZGVwZW5kIG9uIFBQQzMyCj4+Cj4+Cj4+Cj4+IExlIDAxLzExLzIwMTkgw6AgMTM6
NDIsIFJhc211cyBWaWxsZW1vZXMgYSDDqWNyaXTCoDoKPj4+IEN1cnJlbnRseSwgRlNMX1VDQ19I
RExDIGRlcGVuZHMgb24gUVVJQ0NfRU5HSU5FLCB3aGljaCBpbiB0dXJuCj4+IGRlcGVuZHMKPj4+
IG9uIFBQQzMyLiBBcyBwcmVwYXJhdGlvbiBmb3IgcmVtb3ZpbmcgdGhlIGxhdHRlciBhbmQgdGh1
cyBhbGxvd2luZyB0aGUKPj4+IGNvcmUgUUUgY29kZSB0byBiZSBidWlsdCBmb3Igb3RoZXIgYXJj
aGl0ZWN0dXJlcywgbWFrZSBGU0xfVUNDX0hETEMKPj4+IGV4cGxpY2l0bHkgZGVwZW5kIG9uIFBQ
QzMyLgo+Pgo+PiBJcyB0aGF0IHJlYWxseSBwb3dlcnBjIHNwZWNpZmljID8gQ2FuJ3QgdGhlIEFS
TSBRRSBwZXJmb3JtIEhETEMgb24gVUNDID8KCkkgdGhpbmsgdGhlIGRyaXZlciB3b3VsZCBidWls
ZCBvbiBBUk0uIFdoZXRoZXIgaXQgd29ya3MgSSBkb24ndCBrbm93LiBJCmtub3cgaXQgZG9lcyBu
b3QgYnVpbGQgb24gNjQgYml0IGhvc3RzIChzZWUga2J1aWxkIHJlcG9ydCBmb3IgdjIsMjMvMjMp
LgoKPiBOby4gIEFjdHVhbGx5IHRoZSBIRExDIGFuZCBURE0gYXJlIHRoZSBtYWpvciByZWFzb24g
dG8gaW50ZWdyYXRlIGEgUUUgb24gdGhlIEFSTSBiYXNlZCBMYXllcnNjYXBlIFNvQ3MuCgpbY2l0
YXRpb24gbmVlZGVkXS4KCj4gU2luY2UgUmFzbXVzIGRvZXNuJ3QgaGF2ZSB0aGUgaGFyZHdhcmUg
dG8gdGVzdCB0aGlzIGZlYXR1cmUgUWlhbmcgWmhhbyBwcm9iYWJseSBjYW4gaGVscCB2ZXJpZnkg
dGhlIGZ1bmN0aW9uYWxpdHkgb2YgVERNIGFuZCB3ZSBjYW4gZHJvcCB0aGlzIHBhdGNoLgoKTm8s
IHRoaXMgcGF0Y2ggY2Fubm90IGJlIGRyb3BwZWQuIFBsZWFzZSBzZWUgdGhlIGtidWlsZCBjb21w
bGFpbnRzIGZvcgp2MiwyMy8yMyBhYm91dCB1c2Ugb2YgSVNfRVJSX1ZBTFVFIG9uIG5vdC1zaXpl
b2YobG9uZykgZW50aXRpZXMuIEkgc2VlCmtidWlsZCBoYXMgY29tcGxhaW5lZCBhYm91dCB0aGUg
c2FtZSB0aGluZyBmb3IgdjMgc2luY2UgYXBwYXJlbnRseSB0aGUKc2FtZSB0aGluZyBhcHBlYXJz
IGluIHVjY19zbG93LmMuIFNvIEknbGwgZml4IHRoYXQuCgpNb3Jlb3ZlciwgYXMgeW91IHNheSBh
bmQga25vdywgSSBkbyBub3QgaGF2ZSB0aGUgaGFyZHdhcmUgdG8gdGVzdCBpdCwgc28KSSdtIG5v
dCBnb2luZyB0byBldmVuIGF0dGVtcHQgdG8gZml4IHVwIGZzbF91Y2NfaGRsYy5jLiBJZiBRaWFu
ZyBaaGFvIG9yCnNvbWVib2R5IGVsc2UgY2FuIHZlcmlmeSB0aGF0IGl0IHdvcmtzIGp1c3QgZmlu
ZSBvbiBBUk0gYW5kIGZpeGVzIHRoZQphbGxtb2Rjb25maWcgcHJvYmxlbShzKSwgaGUvc2hlIGlz
IG1vcmUgdGhhbiB3ZWxjb21lIHRvIHNpZ24gb2ZmIG9uIGEKcGF0Y2ggdGhhdCByZW1vdmVzIHRo
ZSBDT05GSUdfUFBDMzIgZGVwZW5kZW5jeSBvciByZXBsYWNlcyBpdCB3aXRoCnNvbWV0aGluZyBl
bHNlLgoKUmFzbXVzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
