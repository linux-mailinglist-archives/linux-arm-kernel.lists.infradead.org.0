Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DCB56B7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VyTbCpMwkA2jrQkL+/vkaGuK9TsaGhpnPT03VDwOt+M=; b=pHJw4Bx6yf61IN
	jSLRvmQzfnU4EKCcwrScP1i4J9tzypcKCqu+WaKl+XQzy94zdaufT8FpCKOmlpaRi3JxLSVLyRSPu
	nKTv43h7Jj2uO4xbL7SjW1mlDBay62dp+E8qpv2tFdv0QyV9kWRtF+0EGo886C3EQQafTr1fZS3kN
	qgqZSVCWlmxMF//pfxRwMvYtzMBs8LSW/EDrUP600InCwqsqch5dFHQaNfVwBHoOm6B+2G7Ek+dDR
	/VRSq1Kge1788VYRvVcL+pIRfC52pvtOQgYhXx4ZypVzVbG4yanw8vMrLF8OV7tzwJOGLrjh0eS0g
	Q9CXSGaW1V5eM1hVyYvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8Wu-0000nt-4V; Wed, 26 Jun 2019 14:04:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8Wg-0000nB-Ew
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:03:55 +0000
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C2DF1214DA
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561557834;
 bh=0EZ735cO6WH/zngCSpQYINiI6lsHShiMasjlVmMZiqE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=W2dvXsfmTlJ5ZxCUixGz+eN0toacav4i4Qqfl01vqSuO7PYoLOQNveiYV9Dh01J26
 S0VHWWdYGs0BlZrl/M23HVxxxbttUpAX9x/0kSPspy2JGz2ruC8N77pHWRPgmWJiVI
 Sh8qaOc+cB/bvQKpxEMfcsAIUPx7qjseSy5zm7tQ=
Received: by mail-lf1-f46.google.com with SMTP id b11so1663071lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 07:03:53 -0700 (PDT)
X-Gm-Message-State: APjAAAUqvhGhcffmqBXOQPFkoteyGxOiY/6MpcS82BGk4TcOafmVzYIP
 qX1RUfvgNB/JClmo0DBbbvXPnhH+z5W5yhftlhw=
X-Google-Smtp-Source: APXvYqyvRHLVun8VIxnYqIMpihADmlhhPWXQ+dcfiSv6kMVGtgzFKGF77U1LP5lSdXe0G6tHdeMBQn2d+loljViWvfA=
X-Received: by 2002:ac2:5601:: with SMTP id v1mr2820771lfd.106.1561557832087; 
 Wed, 26 Jun 2019 07:03:52 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190605091304eucas1p21e0717cafa17a14de569f1773cc7abe5@eucas1p2.samsung.com>
 <20190605091236.24263-1-l.luba@partner.samsung.com>
 <20190605091236.24263-5-l.luba@partner.samsung.com>
 <CAGTfZH2kTNWtx=Jp1UJaLN50Qxbq+Q9ThV4vhQ240QbOy1TRMQ@mail.gmail.com>
 <7498059d-95f7-e154-cf49-bcbc8ee6fdb9@partner.samsung.com>
In-Reply-To: <7498059d-95f7-e154-cf49-bcbc8ee6fdb9@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 26 Jun 2019 16:03:41 +0200
X-Gmail-Original-Message-ID: <CAJKOXPc6304D=HNQnrvhBH6qKxhkf=VQ2Gg6Q2FMP2hYOTYSDQ@mail.gmail.com>
Message-ID: <CAJKOXPc6304D=HNQnrvhBH6qKxhkf=VQ2Gg6Q2FMP2hYOTYSDQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] Documentation: devicetree: add PPMU events
 description
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_070354_518063_6A1BB2E5 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree <devicetree@vger.kernel.org>,
 willy.mh.wolff.ml@gmail.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 kgene@kernel.org, linux-pm@vger.kernel.org,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, linux-kernel <linux-kernel@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, kyungmin.park@samsung.com,
 robh+dt@kernel.org, cwchoi00@gmail.com, s.nawrocki@samsung.com,
 myungjoo.ham@samsung.com, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyNiBKdW4gMjAxOSBhdCAxNTo1OCwgTHVrYXN6IEx1YmEgPGwubHViYUBwYXJ0bmVy
LnNhbXN1bmcuY29tPiB3cm90ZToKPgo+IEhpIENoYW53b28sCj4KPiBPbiA2LzI2LzE5IDEwOjIz
IEFNLCBDaGFud29vIENob2kgd3JvdGU6Cj4gPiBIaSBMdWthc3osCj4gPgo+ID4gMjAxOeuFhCA2
7JuUIDXsnbwgKOyImCkgMTg6MTQsIEx1a2FzeiBMdWJhIDxsLmx1YmFAcGFydG5lci5zYW1zdW5n
LmNvbQo+ID4gPG1haWx0bzpsLmx1YmFAcGFydG5lci5zYW1zdW5nLmNvbT4+64uY7J20IOyekeyE
sToKPiA+Cj4gPiAgICAgRXh0ZW5kIHRoZSBkb2N1bWVuYXRpb24gYnkgZXZlbnRzIGRlc2NyaXB0
aW9uIHdpdGggbmV3ICdldmVudC1kYXRhLXR5cGUnCj4gPiAgICAgZmllbGQuIEFkZCBleGFtcGxl
IGhvdyB0aGUgZXZlbnQgbWlnaHQgYmUgZGVmaW5lZCBpbiBEVC4KPiA+Cj4gPiAgICAgU2lnbmVk
LW9mZi1ieTogTHVrYXN6IEx1YmEgPGwubHViYUBwYXJ0bmVyLnNhbXN1bmcuY29tCj4gPiAgICAg
PG1haWx0bzpsLmx1YmFAcGFydG5lci5zYW1zdW5nLmNvbT4+Cj4gPiAgICAgU2lnbmVkLW9mZi1i
eTogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ftc3VuZy5jb20KPiA+ICAgICA8bWFpbHRvOmN3
MDAuY2hvaUBzYW1zdW5nLmNvbT4+Cj4gPiAgICAgLS0tCj4gPiAgICAgICAuLi4vYmluZGluZ3Mv
ZGV2ZnJlcS9ldmVudC9leHlub3MtcHBtdS50eHQgICAgfCAyNiArKysrKysrKysrKysrKysrKy0t
Cj4gPiAgICAgICAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPiA+Cj4gPgo+ID4KPiA+IEFja2VkLWJ5OiBDaGFud29vIENob2kgPGN3MDAuY2hvaUBzYW1z
dW5nLmNvbQo+Cj4gVGhhbmsgeW91IGZvciB0aGUgQUNLcyBmb3IgdGhpcyBhIDIvNSBwYXRjaC4K
PiBEbyB5b3UgdGhpbmsgdGhlIHY0IGNvdWxkIGJlIG1lcmdlZCBub3c/CgpJIHRoaW5rIHlvdSBo
YXZlIGFsbCBuZWNlc3NhcnkgYWNrcy4gSSBjYW4gdGFrZSB0aGUgRFRTIHBhdGNoICg1LzUpCmFs
dGhvdWdoIHByb2JhYmx5IGZvciBuZXh0IG1lcmdlIHdpbmRvdyBhcyBJIGp1c3Qgc2VudCBvbmUu
CgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
