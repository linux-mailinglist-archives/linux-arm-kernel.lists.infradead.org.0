Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC90E8D193
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GGgyC5Uoz3eNgxGF1Z3bY8l/ig+ru+Et5GumwrZVWxs=; b=dToDLgh0jPfQGA
	t3+Ty3cP6p1MLk0JjIZqNsMHLpwG94oAK6StXoVmhuLBtYH8f4dgeTex20k8sDyEmvRPiQx7SfXOU
	jAXAyRPlpLq8rmOcRLFPVX/MbIXlA7/bDF03EI4XreaWyfGtecm5mRd2LjrDNSwIQHRn41l1iJr1w
	LBAXmZR1u+ox165MIO21ewUuZ6XEc3yVqicH8H7T3XJZtdYRg3fxkdAt/aR6/zjxpLO7fqcUAGfQO
	j+N33fKfVnQonkKBuRcFg5wJi3M+vQQ9crmUQKf0twurTphlgK+ymghtBHlK3F4C5XBwU8z1SEsoN
	VpPciO+GGyqCDX/L1tEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqva-00018Z-94; Wed, 14 Aug 2019 10:54:50 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqvS-00017g-Hm
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:54:43 +0000
Received: by mail-wm1-x343.google.com with SMTP id o4so4048672wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 03:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=tT1WBkErjAogTXzuIr64b4Ipw6zSwCNCCPdgxI3cPic=;
 b=SdT02fPizF4VsboyubypNXDpHVLnbdZbIsuPH+ovAlV5oBYyfxf+IqaHkW/lXVSOgg
 kwC+GscgHbhE+BM34hlIzT1cHQV6ngH7tNC6TG6DmwZgNBLe2MCZ3Jmg07GXmPHYOjbr
 k8NQN/NtlfNnCZyMXOYOJxsiWf1JmP53Mq5BITPOgRDzYyO3Cs8pF9uq2ZIMQNO8QJF9
 o884eKSq00ZGTYrgQWUjcD9Rs6p7yHWWqjEpnGMmjiHchQLPx/2yM62XgRZYSEQ7tqg2
 rDfQ/uBtjTxdZcZUQXerWQzzjolGQb0sTjZZnUuqFYftQRe7QZM7gpY1vADKoRV3FXTd
 puUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=tT1WBkErjAogTXzuIr64b4Ipw6zSwCNCCPdgxI3cPic=;
 b=d4ELz5duk5uR8RWdFkk2cb51v9ItMJfz12VNWgUhYA3k1UFf3N27mf8FkACFomtAJU
 MQtRWICpsl7VqpowIEjWE53xpWI0m3aXOihjyl4lZOfaSZtZ+X137dmajpPwqnAt8mNo
 Ao3qYv6Zxqx39P2HoLL/4/IfG2ms1e0gHoeWmEVSVLoXPz84dv1fn0OHyThlsMPRCTwn
 Pcckmr+tdD2fwBgMeWXkxT3p73sMyi/IZxyf6fQ6/E/YCmNztjSisdiYS9sG0N8qNOnf
 vvdynAYfVKstyoQOSqzW//f98xf98nklw4/NPP9hHTut0Uxg/HZDvnsSBX3FnoEhTXtQ
 DHwg==
X-Gm-Message-State: APjAAAUFqVXlO5s3eibW2uJiogWUVqfLHEOVUxNBqyKU2Q3q1S7Sx/UM
 AA/9jbTMEQbG7hGEXIBc1N2Xog==
X-Google-Smtp-Source: APXvYqyKLin58q1G/qvQ8vEt+Ct9hq4RH5l/rpi6T0U8tdIutWirP+pgkhY/ww5FQqvj81PeYCpPOA==
X-Received: by 2002:a1c:a8c9:: with SMTP id r192mr8019337wme.43.1565780080798; 
 Wed, 14 Aug 2019 03:54:40 -0700 (PDT)
Received: from dell ([2.27.35.255])
 by smtp.gmail.com with ESMTPSA id e9sm2998336wrm.43.2019.08.14.03.54.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 14 Aug 2019 03:54:39 -0700 (PDT)
Date: Wed, 14 Aug 2019 11:54:37 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 3/3] dt-bindings: aspeed: Remove mention of deprecated
 compatibles
Message-ID: <20190814105437.GE26727@dell>
References: <20190724081313.12934-1-andrew@aj.id.au>
 <20190724081313.12934-4-andrew@aj.id.au>
 <CACRpkdZCJWeZO6CFvkq4uhnX+o_q_AfkDZ=a2kmUgbS3JtDqfA@mail.gmail.com>
 <20190812101504.GF26727@dell>
 <CACRpkdapA_-yp4ihY3S+CHMmDMKU2b0u=sj2UhJ-cvv39Dji_g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdapA_-yp4ihY3S+CHMmDMKU2b0u=sj2UhJ-cvv39Dji_g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_035442_593737_46308A1F 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxNCBBdWcgMjAxOSwgTGludXMgV2FsbGVpaiB3cm90ZToKCj4gT24gTW9uLCBBdWcg
MTIsIDIwMTkgYXQgMTI6MTUgUE0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3Jv
dGU6Cj4gPiBPbiBNb24sIDA1IEF1ZyAyMDE5LCBMaW51cyBXYWxsZWlqIHdyb3RlOgo+ID4KPiA+
ID4gT24gV2VkLCBKdWwgMjQsIDIwMTkgYXQgMTA6MTMgQU0gQW5kcmV3IEplZmZlcnkgPGFuZHJl
d0Bhai5pZC5hdT4gd3JvdGU6Cj4gPiA+Cj4gPiA+ID4gR3VpZGUgcmVhZGVycyBhd2F5IGZyb20g
dXNpbmcgdGhlIGFzcGVlZCxnWzQ1XS4qIGNvbXBhdGlibGUgcGF0dGVybnMuCj4gPiA+ID4KPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRyZXcgSmVmZmVyeSA8YW5kcmV3QGFqLmlkLmF1Pgo+ID4g
Pgo+ID4gPiBQYXRjaCBhcHBsaWVkIHRvIHRoZSBwaW5jdHJsIHRyZWUuCj4gPgo+ID4gV2l0aCBt
eSBBY2s/Cj4gCj4gU29ycnkgbm8uIDooIFdhcyBJIHRvbyB0cmlnZ2VyLWhhcHB5Pwo+IAo+IFVz
dWFsbHkgSSB0YWtlIFJvYidzIEFDSyBhcyBhdXRob3JpdGF0aXZlIGZvciBhbnl0aGluZyB1bmRl
cgo+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZSBidXQgaWYgeW91IGhhdmUgY29uY2VybnMgYWJv
dXQgdGhlCj4gcGF0Y2ggZnJvbSBhbiBNRkQgcG9pbnQgb2YgdmlldyBJIHdpbGwgcmV2ZXJ0IGl0
IHBlbmRpbmcgZnVydGhlcgo+IGRpc2N1c3Npb24uCgpObyBuZWVkLiAgSSB3b3VsZCBoYXZlIEFj
a2VkIGl0LgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5p
Y2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0Nz
CkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
