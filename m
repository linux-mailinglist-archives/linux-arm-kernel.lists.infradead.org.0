Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FE71C041
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 03:06:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nk+F6cKAJJCHAUv0kRnGBWQiKep541HhLJHtviESP7Y=; b=OYE85br1MKGBGA
	sa2UJYN03Jt4p9YUaocoi+36z4JluOMX6TD3bU8/7Jo7+amJrOyGy9ZDf51NWJwpnSKyOVSVSnYGM
	kxXY/Xi5c3/xN7tRRiEZ66eKljvjuKqKiueSUbemAEjJtBYM20NQl6Xz4g2Sv9GbElXswUBPzWZ3M
	8mTHOtYYo1qkDPLHBON4ziuBeWctmtqbPYbpncw6hMK2gl9LQwthL9PqvuBwRBMHJxoXxit7gWTxM
	rI7rYB7xadS8J0a9gkKVCfPyOlmDc+Q4N5JWGdN3+UNFqaVR+vKrjaNJQJd1M4xPFny8t5jHoa550
	LHfpvKk9ieEuy1G8bF+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQLu1-00011I-3d; Tue, 14 May 2019 01:06:45 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQLtt-00010z-Sz
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 01:06:39 +0000
Received: by mail-oi1-x244.google.com with SMTP id t187so7539895oie.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 18:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=az2VtHYhE9+JpA8cUOPC5jdS+VizjCy/so0vBfIYfFA=;
 b=IvtD+fsmF46s5B91oqgwwGuo1YzL/SYuipbHcjZ/9GI/hBZ8PyMKsnYQhvnQAlzG44
 ImgWDagypszG7aDH65xqYDbZixPAh+zlm4Cmd/tvJ77H2+JH80WUQ76YC9y8FcIFJ4mZ
 csWOr9aBBOsK8y46yeH5K6M/b3d6VKo26FWAEQAvaiL9d2gDPkFLoHXqRZEP4C0ykIj3
 voX7YrnVLjsFN4N54c5EO0JeKNE57wyyQ/8QYcMvMsrL8COFTOOq/NFypfLkqYkarxT/
 DPCS2vVEieQu6By1NWrA4xXKrynEnhJMvXdMNwroBHstBV/ok6FfvsjZmhJtI8/zERBV
 CvOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=az2VtHYhE9+JpA8cUOPC5jdS+VizjCy/so0vBfIYfFA=;
 b=qvyqg2+iicAA1NH5F/3JFVM8BWWMcppaSoz6n1btsaO+ovFSOz1dn2bc1ePgzSbdx/
 4JwTXcHTWrsK1exNey2BeJbVJjn+mPOK8E69OZLTuaGsWt6rld+R6V6xo+rs7VmEgAm7
 S0UbgPiiT9hV9DoXz7/AV/lyyilzenuihCNEJ+z6CxFj+fFjTNEX9d9bjbdi7zQsy9HE
 ney9l/Xb5v1yZnxdewRf7CAVILgPqR6HIJOIC36ZpWrebH2j8fzsDYOE849te5m0Q/6S
 YhOEJ7EfyE8xmZ7ca+vy6NfyPpd8HGdYVLXhpuBZG+PVKAYKv/8AuN41pTaXFQz/stxP
 DPHA==
X-Gm-Message-State: APjAAAU2GaalMaKQrKn/VZZRssTNYKFt9U/HTZ0h5GLMJEcxBrINxazQ
 AQaQIttZrkNNOezQOGnqTTpBuywv
X-Google-Smtp-Source: APXvYqz/BCor5GpnG2rGahbKDUwYB533VnqugF3TX+xwj08ARzAw1qurIiLczHXIWUn2ILh+C2UAAg==
X-Received: by 2002:aca:de45:: with SMTP id v66mr1229220oig.84.1557795993621; 
 Mon, 13 May 2019 18:06:33 -0700 (PDT)
Received: from [192.168.1.2] (ip68-101-123-102.oc.oc.cox.net. [68.101.123.102])
 by smtp.googlemail.com with ESMTPSA id g84sm5899811oia.31.2019.05.13.18.06.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 18:06:32 -0700 (PDT)
Subject: Re: [PATCH v3] ARM: dts: imx: Fix the AR803X phy-mode
To: Sasha Levin <sashal@kernel.org>, "George G. Davis"
 <george_davis@mentor.com>
References: <20190403221241.4753-1-festevam@gmail.com>
 <20190513171826.GA18591@mam-gdavis-lt> <20190514004539.GG11972@sasha-vm>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 a9BQwACgnzGuH1BVeT2J0Ra+ZYgkx7DaPR0=
Message-ID: <e7a3c9f6-8a29-3048-a0b9-8e7955f25b54@gmail.com>
Date: Mon, 13 May 2019 18:06:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514004539.GG11972@sasha-vm>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_180637_965534_1EBE6843 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, baruch@tkos.co.il, aford173@gmail.com,
 ken.lin@advantech.com, stable@vger.kernel.org, smoch@web.de,
 stwiss.opensource@diasemi.com, linux-imx@nxp.com, kernel@pengutronix.de,
 Marc Kleine-Budde <mkl@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgNS8xMy8xOSDDoCA1OjQ1IFBNLCBTYXNoYSBMZXZpbiBhIMOpY3JpdMKgOgo+IE9uIE1vbiwg
TWF5IDEzLCAyMDE5IGF0IDAxOjE4OjI3UE0gLTA0MDAsIEdlb3JnZSBHLiBEYXZpcyB3cm90ZToK
Pj4gSGVsbG8sCj4+Cj4+IE9uIFdlZCwgQXByIDAzLCAyMDE5IGF0IDA3OjEyOjQxUE0gLTAzMDAs
IEZhYmlvIEVzdGV2YW0gd3JvdGU6Cj4+PiBDb21taXQgNmQ0Y2QwNDFmMGFmICgibmV0OiBwaHk6
IGF0ODAzeDogZGlzYWJsZSBkZWxheSBvbmx5IGZvciBSR01JSQo+Pj4gbW9kZSIpCj4+PiBleHBv
c2VkIGFuIGlzc3VlIG9uIGlteCBEVFMgZmlsZXMgdXNpbmcgQVI4MDMxL0FSODAzNSBQSFlzLgo+
Pj4KPj4+IFRoZSBlbmQgcmVzdWx0IGlzIHRoYXQgdGhlIGJvYXJkcyBjYW4gbm8gbG9uZ2VyIG9i
dGFpbiBhbiBJUCBhZGRyZXNzCj4+PiB2aWEgVURIQ1AsIGZvciBleGFtcGxlLgo+Pj4KPj4+IFF1
b3RpbmcgQW5kcmV3IEx1bm46Cj4+Pgo+Pj4gIlRoZSBwcm9ibGVtIGhlcmUgaXMsIGFsbCB0aGUg
RFRzIHdlcmUgYnJva2VuIHNpbmNlIGRheSAwLiBIb3dldmVyLAo+Pj4gYmVjYXVzZSB0aGUgUEhZ
IGRyaXZlciB3YXMgYWxzbyBicm9rZW4sIG5vYm9keSBub3RpY2VkIGFuZCBpdAo+Pj4gd29ya2Vk
LiBOb3cgdGhhdCB0aGUgUEhZIGRyaXZlciBoYXMgYmVlbiBmaXhlZCwgYWxsIHRoZSBidWdzIGlu
IHRoZQo+Pj4gRFRzIG5vdyBiZWNvbWUgYW4gaXNzdWUiCj4+Pgo+Pj4gVG8gZml4IHRoaXMgcHJv
YmxlbSwgdGhlIHBoeS1tb2RlIHByb3BlcnR5IG5lZWRzIHRvIGJlICJyZ21paS1pZCIswqAKPj4+
IHdoaWNoCj4+PiBoYXMgdGhlIGZvbGxvd2luZyBtZWFuaW5nIGFzIHBlcgo+Pj4gRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9ldGhlcm5ldC50eHQ6Cj4+Pgo+Pj4gIlJHTUlJ
IHdpdGggaW50ZXJuYWwgUlggYW5kIFRYIGRlbGF5cyBwcm92aWRlZCBieSB0aGUgUEhZLCB0aGUg
TUFDCj4+PiBzaG91bGQKPj4+IG5vdCBhZGQgdGhlIFJYIG9yIFRYIGRlbGF5cyBpbiB0aGlzIGNh
c2UpIgo+Pj4KPj4+IFRlc3RlZCBvbiBpbXg2LXNhYnJlc2QsIGlteDZzeC1zZGIgYW5kIGlteDdk
LXBpY28gYm9hcmRzIHdpdGgKPj4+IHN1Y2Nlc3NmdWxseSByZXN0b3JlZCBuZXR3b3JraW5nLgo+
Pj4KPj4+IEJhc2VkIG9uIHRoZSBpbml0aWFsIHN1Ym1pc3Npb24gZnJvbSBTdGV2ZSBUd2lzcyBm
b3IgdGhlCj4+PiBpbXg2cWRsLXNhYnJlc2QuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRmFiaW8g
RXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPgo+Pj4gVGVzdGVkLWJ5OiBCYXJ1Y2ggU2lhY2gg
PGJhcnVjaEB0a29zLmNvLmlsPgo+Pj4gVGVzdGVkLWJ5OiBTb2VyZW4gTW9jaCA8c21vY2hAd2Vi
LmRlPgo+Pj4gVGVzdGVkLWJ5OiBTdGV2ZSBUd2lzcyA8c3R3aXNzLm9wZW5zb3VyY2VAZGlhc2Vt
aS5jb20+Cj4+PiBUZXN0ZWQtYnk6IEFkYW0gVGhvbXNvbiA8QWRhbS5UaG9tc29uQGRpYXNlbWku
Y29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogU3RldmUgVHdpc3MgPHN0d2lzcy5vcGVuc291cmNlQGRp
YXNlbWkuY29tPgo+Pj4gVGVzdGVkLWJ5OiBNYXJjIEtsZWluZS1CdWRkZSA8bWtsQHBlbmd1dHJv
bml4LmRlPgo+Pj4gU2lnbmVkLW9mZi1ieTogTWFyYyBLbGVpbmUtQnVkZGUgPG1rbEBwZW5ndXRy
b25peC5kZT4KPj4+IC0tLQo+Pj4gQ2hhbmdlcyBzaW5jZSB2MjoKPj4+IC0gQWxzbyBmaXhlZCBp
bXg2cS1iYTE2Cj4+PiAtIFJlbW92ZWQgc3RhYmxlIHRhZyBhcyBpdCBkb2VzIG5vdCBhcHBseSBj
bGVhbmx5IG9uIG9sZGVyCj4+PiBzdGFibGUgdHJlZXMuIEkgY2FuIG1hbnVhbGx5IGdlbmVyYXRl
IHZlcnNpb25zIGZvciBzdGFibGUKPj4+IHRyZWVzIGFmdGVyIHRoaXMgb25lIGhpdHMgbWFpbmxp
bmUuCj4+Cj4+IFBsZWFzZSBhZGQgdGhpcyBjb21taXQgdG8gdGhlIHY1LjEueCBzdGFibGUgcXVl
dWUgdG8gcmVzb2x2ZSBORlMgcm9vdAo+PiBicmVha2FnZQo+PiBpbiB2NS4xLiBJIGNhbiBjb25m
aXJtIHRoYXQgaXQgYXBwbGllcyBjbGVhbmx5IHRvIHY1LjEuMSBhbmQgcmVzb2x2ZXMKPj4gTkZT
IHJvb3QKPj4gYnJlYWthZ2UgdGhhdCBvY2N1cnMgb24gaS5NWDYgYm9hcmRzIGluIHY1LjEueCwg
dGVzdGVkIG9uCj4+IGlteDZxLXNhYnJlYXV0by5kdHMKPj4gYW5kIGlteDZxLXNhYnJlc2QuZHRz
LiBBbHRob3VnaCB0aGUgZml4IHNob3VsZCBiZSBiYWNrcG9ydGVkIHRvCj4+IHByZS12NS4xLngK
Pj4gc3RhYmxlIHNlcmllcyBhcyB3ZWxsLCBpdCBkb2VzIG5vdCBjYXVzZSBwcm9ibGVtcyBmb3Ig
cHJlLXY1LjEgYnV0Cj4+IHJlc3VsdHMgaW4KPj4gTkZTIHJvb3QgYnJlYWthZ2UgZm9yIHY1LjEu
eC4KPiAKPiBXaGF0J3MgdGhlIGNvbW1pdCBpZCBpbiBMaW51cydzIHRyZWU/IEkgZG9uJ3Qgc2Vl
IGl0LgoKVGhhdCB3b3VsZCBiZSA2ZDRjZDA0MWYwYWY1YjRjOGZjNzQyYjRhNjhlYWMyMmU0MjBl
MjhjICgibmV0OiBwaHk6CmF0ODAzeDogZGlzYWJsZSBkZWxheSBvbmx5IGZvciBSR01JSSBtb2Rl
IikuCgpJIHdvdWxkIHVzZSB0aGF0IGFzIGEgRml4ZXM6IHRhZyBCVFcuCi0tIApGbG9yaWFuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
