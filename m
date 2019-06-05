Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58321364B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 21:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fm6LK9Kr9ADEMwdKR+y8otd5F3Mnq5Ikuf4gnn/xBLE=; b=atmaLVpmK/yanC
	6ztDkP5RZWRKvxBHoj4J4g7IObFODkTZqFRfZVDc19fWYjbB8tyD0l9F1cEhjLvqk5+cMFw3p2AE+
	/u91s/zbEBVQNH7opsD576rn/ioHSv3cpLI4iexHCYjZzePtHv0AropaR3zCGF/hX5yLQMjejm3cu
	sUskYuryXauZl3XGecbB0d/rAkxR0GZWwu3z1dy/BYnR8uxyyUaj6yVngcZ/typHxjFDOFZQg7RTO
	oGjoXUgw4g5W+H918lLaAWUbkzTbTIDbIBBDEOAZkD3xp43ZsCKLZ1kO+KaxZTMlKaooSdGaEYcm6
	fsU5/H3iZ3zCS+n1oFJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbbO-0006qW-Kv; Wed, 05 Jun 2019 19:29:38 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbbH-0006pm-JC
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 19:29:32 +0000
Received: by mail-wm1-x342.google.com with SMTP id f10so43686wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 12:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=D5NcDW+/WmQwqSB+Xi8h1sKYPuuI5ApOFt3kq9BvkTE=;
 b=U4jgD3qb1TiWPeo0I0EQj9YVlGjsjBiUgv3hdUmrYuJZrUIMq1nNLAiutPQCj8EtAU
 YcN2wBjP/xTv7tUdThX93VYX+jHZw5o551/dyZ5nHxveozxZb7mV7AnbhOP3Xm1aNcgb
 zWPwwh4cUFyxAGVJHFgITDfzSo0Fijs3mzurFbu3Dxh9EE16inWaZaO31svsntXTWO+E
 rfQ2q3CIc3i7jCGmbbwjZpRhYeLhJK8BD9iADSXBK+n0GDyNWmK+SIK+418dbmYGmH2y
 bIn0iv+CbWqXWwlNmyM/unKrXJcIfcEAv7F48JcipbDFhbKp/iNFt0eUPUWKtO7DjtrJ
 Jocw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=D5NcDW+/WmQwqSB+Xi8h1sKYPuuI5ApOFt3kq9BvkTE=;
 b=kqNQpNx5gJhxNzWo7RLqHSMMAP+ToGI3fRwYJ2AOQzS/ekBWI7A4yZ9c4Gjei5VHVN
 urcjgoCNkBCFs6HkThYIf5z+4+p3soYfGnpBaKAPVF1BUjDVlqpoRjX++JgpTs5Uwm+s
 T22vd+PrWUJqa/vaGR9Merg5DK+YvSJzyuVLLqbSuuNWpsxkceKHCvcBrKlctsC9gbJC
 lMmmBEMg2vyD5nYaqovrPhBbXLPMmHDdgWAdWMN5/VbGk9qf7B2ob5Hj/Cgw34Np3NFL
 XNTSzUko3TqB1Q26l0bXOoFKZ+AjLiYuiWNnLf0Jv+FKH1fZ0b+tcMofa0JW7eLvFjNE
 w0tg==
X-Gm-Message-State: APjAAAUOajLgmx7/AWC46zdod2WfFEQz3IdYGTvE9/Cg1IpZYvn3JOwK
 oHVRJTnzZytjkv5gUSRVptZnaw==
X-Google-Smtp-Source: APXvYqz8xLqEZUQ1bW9JTYYNxCZRI9YeEhZeMBTkaYKaXpxE3Ij1iNeqP9qVNZUnCX1dMi5d/0Ok/g==
X-Received: by 2002:a1c:ca06:: with SMTP id a6mr23888475wmg.48.1559762968778; 
 Wed, 05 Jun 2019 12:29:28 -0700 (PDT)
Received: from dell ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id w185sm20968659wma.39.2019.06.05.12.29.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 12:29:28 -0700 (PDT)
Date: Wed, 5 Jun 2019 20:29:26 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 7/8] usb: dwc3: qcom: Start USB in 'host mode' on the
 SDM845
Message-ID: <20190605192926.GW4797@dell>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-7-lee.jones@linaro.org>
 <20190605070029.GN22737@tuxbook-pro> <20190605083454.GO4797@dell>
 <20190605191453.GJ4814@minitux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605191453.GJ4814@minitux>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_122931_637050_439EB054 
X-CRM114-Status: GOOD (  23.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 david.brown@linaro.org, alokc@codeaurora.org, kramasub@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNSBKdW4gMjAxOSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgoKPiBPbiBXZWQgMDUg
SnVuIDAxOjM0IFBEVCAyMDE5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gCj4gPiBPbiBXZWQsIDA1IEp1
biAyMDE5LCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4gPiAKPiA+ID4gT24gVHVlIDA0IEp1biAw
Mzo0NCBQRFQgMjAxOSwgTGVlIEpvbmVzIHdyb3RlOgo+ID4gPiAKPiA+ID4gPiBXaGVuIGJvb3Rp
bmcgd2l0aCBEZXZpY2UgVHJlZSwgdGhlIGN1cnJlbnQgZGVmYXVsdCBib290IGNvbmZpZ3VyYXRp
b24KPiA+ID4gPiB0YWJsZSBvcHRpb24sIHRoZSByZXF1ZXN0IHRvIGJvb3QgdmlhICdob3N0IG1v
ZGUnIGNvbWVzIGZyb20gdGhlCj4gPiA+ID4gImRyX21vZGUiIHByb3BlcnR5Lgo+ID4gPiAKPiA+
ID4gVGhpcyBoYXMgYmVlbiB0aGUgZGVmYXVsdCBvbiB0aGUgTVRQLCBidXQgdGhpcyBpcyBjaGFu
Z2luZyBhcyB0aGlzIGlzCj4gPiA+IGNhdXNpbmcgaXNzdWVzIHdoZW4gY29ubmVjdGVkIGRvd25z
dHJlYW0gZnJvbSBhIGh1YiAodGhlIHR5cGljYWwKPiA+ID4gZGV2ZWxvcG1lbnQgY2FzZSBmb3Ig
dGhlIHByaW1hcnkgVVNCIHBvcnQgb2YgYSBwaG9uZSBsaWtlIGRldmljZSkgYW5kCj4gPiA+IG1v
cmUgaW1wb3J0YW50bHkgd2UgZG9uJ3QgaGF2ZSBzdXBwb3J0IGZvciB0aGUgUE1JQyBibG9ja3Mg
dGhhdCBjb250cm9sCj4gPiA+IFZCVVMuCj4gPiAKPiA+IE15IHBvaW50IGlzIG5vdCBhYm91dCB3
aGljaCBtb2RlIGlzIGN1cnJlbnRseSBjaG9zZW4uICBJdCdzIG1vcmUgYWJvdXQKPiA+IHRoZSBj
YXBhYmlsaXR5IG9mIGNob29zaW5nIHdoaWNoIG1vZGUgaXMgYXBwcm9wcmlhdGUgZm9yIGEgZ2l2
ZW4KPiA+IHN5c3RlbSB2aWEgRFQuCj4gPiAKPiA+ID4gT25jZSB0aGVzZSBpc3N1ZXMgYXJlIHJl
c29sdmVkIHRoZSBkcl9tb2RlIHdvdWxkIGJlICJvdGciLgo+ID4gCj4gPiBPVEcgZG9lc24ndCB3
b3JrIG9uIHRoaXMgSC9XLCBzbyB3ZSBuZWVkIHRvIHNwZWNpZnkgImhvc3QiIG1vZGUuCj4gCj4g
TXkgb2JqZWN0aW9uIGlzIHRoYXQgd2hlbiB5b3Ugc2F5ICJ0aGlzIEgvVyIgeW91IG1lYW4gYSBw
YXJ0aWN1bGFyCj4gcHJvZHVjdCwgYnV0IHlvdSdyZSBtYWtpbmcgdGhpcyBkZWNpc2lvbiBmb3Ig
YWxsIFNETTg0NSBiYXNlZCBwcm9kdWN0cwo+IHVzaW5nIEFDUEkuCj4gCj4gSSBkb24ndCBrbm93
IGlmIHRoZXJlIGlzIGEgV2luZG93cyBwaG9uZSBiYXNlZCBvbiBTRE04NDUsIGJ1dCBpZiB0aGVy
ZQo+IGlzIHRoZW4gSSBkb24ndCB0aGluayBmb3JjaW5nIGl0IHRvIGhvc3Qgd291bGQgYmUgY29y
cmVjdC4KCllvdSBtZWFuIGlmIHNvbWVvbmUgd2FudGVkIHRvIGJvb3QgTGludXggb24gYSBXaW5k
b3dzIHBob25lPyAgTm90IHN1cmUKaG93IGxpa2VseSB0aGF0IGlzLCBidXQgZXZlbiBpZiBhKSB0
aGVyZSBpcyBhbiBTRE04NDUgYmFzZWQgV2luZG93cwpwaG9uZSBhbmQgYikgc29tZW9uZSBpcyBj
cmF6eSBlbm91Z2ggdG8gcnVuIExpbnV4IG9uIGl0LCBpdCBzaG91bGQgYmUKdHJpdmlhbCBmb3Ig
dGhlbSB0byBjb25kdWN0IHNvbWUgZGV2aWNlIG1hdGNoaW5nIGFuZCBjaG9vc2UgYQpkaWZmZXJl
bnQgcHJvcGVydHkgYmFzZWQgb24gdGhlIHJlc3VsdC4KClsuLi5dCgo+ID4gPiBBbmQgdGhpcyBk
cml2ZXIgaXMgdXNlZCBvbiBhIHJhbmdlIG9mIGRpZmZlcmVudCBRdWFsY29tbSBwbGF0Zm9ybXMs
IHNvIEkKPiA+ID4gZG9uJ3QgdGhpbmsgdGhpcyBpcyBTRE04NDUgc3BlY2lmaWMuCj4gPiAKPiA+
IEFDUEkgYmFzZWQgcGxhdGZvcm1zPwo+ID4gCj4gPiBBbGwgdGhlIG9uZXMgSSd2ZSBzZWVuIHVz
ZSB0aGUgWEhDSSBVU0IgZHJpdmVyIGRpcmVjdGx5ICgiUE5QMEQxMCIpLgo+IAo+IE1TTTg5OTgg
KDgzNSkgaGFzIHRoZSBzYW1lIGNvbnRyb2xsZXIsIHNvIHRoaXMgc2hvdWxkIGFmZmVjdCB0aG9z
ZQo+IGxhcHRvcHMgYXMgd2VsbC4KClRoaXMgd291bGQgYWxzbyBiZSB0aGUgY29ycmVjdCBjb25m
aWd1cmF0aW9uIGZvciB0aGVtIHRvby4gIE9URwpkb2Vzbid0IG1ha2UgbXVjaCBzZW5zZSBmb3Ig
YSBsYXB0b3AgZm9ybSBmYWN0b3IuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBT
ZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
