Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5431515B8D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 06:15:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hBRLqNwxWzJ9lZ0DzsqTUqIeLF4jI/VFAZyZ3DCfGgI=; b=MlFzVXH77zN4lv
	egzpMWOIP9d1oGhTXyYpegmJvfWXn1n2I7vrzrBWSKs0rnXdMZhBJfZR9H/twrwkKilaraqG/aklG
	i036wJMBAtFPnefw4cc68TaXR2LHkAij4cVnKdUmyjp9SzgCPwJHj7/Xq7BBGEux+kLqPYxoG+XEc
	w14uxGdDzQxnPBveyMVtaamKL1g5l65DcOkaXG4qkiMXOaBjNxa6W8ErHluFmGhCrJtYyhx3Dj2ok
	y40fkAvONfuYVT0UJjhhTLfMsc87gNlqT6lTYt0ei0jh/hbkfQxXF0qV4B0pesGYWxGP2t/PqrVO2
	pkdnW5Y5muKmFnpAS90g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j26qU-0005Ww-A9; Thu, 13 Feb 2020 05:15:26 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j26qO-0005WM-7B
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 05:15:21 +0000
Received: by mail-pf1-x442.google.com with SMTP id p14so2434110pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 21:15:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Fh8+e0MHgQc517ub6mcnCLJ3IIKeFZfvHhkBKX9KMe8=;
 b=RgvoMhCcy5+AAiFK4p445waTzEkyhCFqRTXNUFx0PqcszqyEXjRAlJ6au5J9fDsYen
 UeEYFHCzPDGD3rbfFsqKiykwSOzx/i4Fz02HOe6i2evkH4J3cmEbdGFBWz+Mc/xOC8UA
 jPWWh6KpHv7gp1nhNB1ZNPFMqmBiog2vj9HdE24wgFwfcZNyIfxCJjDcyy8epFwVA+Xi
 dZ09r22Rm29KTTF7RkmNypJXWk5zXj4JGEvl3dFKTK5jsdqR/eTMwL1qLhbB/qvlneyi
 eALVpWIXkSSZkRu1KBtPRJXO7ZYpY/zHXJ9E72tHnMfFFHtAli/A3Eet/GnYm71IMTIu
 m1Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Fh8+e0MHgQc517ub6mcnCLJ3IIKeFZfvHhkBKX9KMe8=;
 b=Z01zPq8/+d2IT7pEqnPytQy3gHgS8lZhmpBMcjf1/YgpTxYlv2QmWZDmonpllboOHN
 bgt1VqncTSoDLElOalWDvwURx3fvp68y4cuZyOM/FAKPXWG3nNVPclJt9PoDoerMvGsb
 ngpI/sUIZ5SzOHbDZtQtoKYPRt/SbUgQ/Bsd9Nq3pidhFqX7UVqe7/ruiosqTJLd5VlL
 OugfOA5xg1Mu7z4mHlhr4eNbo6Rh/Uq7C4ix4H0g8g3J9H++gGMTH87eGGjWm1i5PzVG
 dYOm/rtByH4a1yGJkvuzKIv6PlNYGhJNqvGW4myexrVuME44RpTqg88Pvb33nD5UmYsB
 UcFw==
X-Gm-Message-State: APjAAAUGP3wn+D4gObRvHrPu0A9R7wk2IXKCl6mtx3PWaagy13KUgVlU
 HoCtHvrkfYmKDZdGmqOJuqU=
X-Google-Smtp-Source: APXvYqxR8WNATXQylv/cl0HD3MazTyX9n7G+wJGktcOn/tuXVNhgbbTOLAn+ZnuqMR7PkXrBC7981A==
X-Received: by 2002:a63:5525:: with SMTP id j37mr15700855pgb.180.1581570918231; 
 Wed, 12 Feb 2020 21:15:18 -0800 (PST)
Received: from [172.16.1.120] ([125.130.116.2])
 by smtp.gmail.com with ESMTPSA id c74sm1069028pfb.135.2020.02.12.21.15.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Feb 2020 21:15:17 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: [PATCH 0/3] PCI: brcmstb: Add Broadcom STB support
From: Jaedon Shin <jaedon.shin@gmail.com>
In-Reply-To: <6ba4bb21-034b-93f0-d4b7-13ac7c5a925d@gmail.com>
Date: Thu, 13 Feb 2020 14:15:12 +0900
Message-Id: <44052F86-D0DD-4FDD-A62B-09280E956405@gmail.com>
References: <20200213025930.27943-1-jaedon.shin@gmail.com>
 <6ba4bb21-034b-93f0-d4b7-13ac7c5a925d@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_211520_285687_AABDED8A 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jaedon.shin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Gregory Fong <gregory.0xf0@gmail.com>, linux-gpio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, Jim Quinlan <james.quinlan@Broadcom.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4gMjAyMC4gMi4gMTMuIOyYpO2bhCAxMjo1NCwgRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxs
aUBnbWFpbC5jb20+IOyekeyEsToKPiAKPiArSmltLAo+IAo+IE9uIDIvMTIvMjAyMCA2OjU5IFBN
LCBKYWVkb24gU2hpbiB3cm90ZToKPj4gVGhpcyBzZXJpZXMgZW5hYmxlcyB0aGUgQVJNIGJhc2Vk
IEJyb2FkY29tIFNUQiBTb0NzIGFuZCBzdXBwb3J0cyBHUElPCj4+IGJhc2VkIHJlZ3VsYXRvcnMg
Zm9yIGl0cyBwb3dlciBzdXBwbGllcy4gYW5kIHRoaXMgaGFzIGFuIGltcHJvdmVtZW50IG9uCj4+
IGRldm1fIEFQSVMuCj4gCj4gV2hpY2ggQVJNLWJhc2VkIFNvQ3MgZGlkIHlvdSB0cnkgdGhpcyBv
bj8gV2Ugc3RpbGwgaGF2ZSBhbiBpc3N1ZSB3aXRoCj4gdGhlIG11bHRpcGxlIGRtYS1yYW5nZXMg
dGhhdCBtdXN0IGJlIGhhbmRsZWQgdG8gc3VwcG9ydCA3NDQ1IHdpdGggbWVtb3J5Cj4gaW4gdGhl
IGV4dGVuc2lvbiByZWdpb25zIGFzIHdlbGwgYXMgNzI3OCBhbmQgNzIxNi4KCgpJJ20gdXNpbmcg
QkNNNzI2MDQgd2hpY2ggaGFzIG9ubHkgb25lIG1lbWMuIGFuZCBkZXZpY2UgaXMgUXVhbGNvbW0g
QXRoZXJvcwpRQ0E2MTc0IFdpLUZpIG1vZHVsZS4KCj4gCj4gU2VlIGNvbW1lbnRzIGluIHNwZWNp
ZmljIHBhdGNoZXMuCj4gCj4+IAo+PiBKYWVkb24gU2hpbiAoMyk6Cj4+ICBQQ0k6IGJyY21zdGI6
IEVuYWJsZSBBUkNIX0JSQ01TVEIKPj4gIFBDSTogYnJjbXN0YjogQWRkIHJlZ3VsYXRvciBzdXBw
b3J0Cj4+ICBQQ0k6IGJyY21zdGI6IERyb3AgY2xrX3B1dCB3aGVuIHByb2JlIGZhaWxzIGFuZCBy
ZW1vdmUKPj4gCj4+IC4uLi9iaW5kaW5ncy9wY2kvYnJjbSxzdGItcGNpZS55YW1sICAgICAgICAg
ICB8ICA4ICstCj4+IGRyaXZlcnMvZ3Bpby9ncGlvLWJyY21zdGIuYyAgICAgICAgICAgICAgICAg
ICB8IDEzICsrKy0KPj4gZHJpdmVycy9wY2kvY29udHJvbGxlci9LY29uZmlnICAgICAgICAgICAg
ICAgIHwgIDIgKy0KPj4gZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLWJyY21zdGIuYyAgICAg
ICAgIHwgNzggKysrKysrKysrKysrKysrKysrLQo+PiA0IGZpbGVzIGNoYW5nZWQsIDk3IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4+IAo+IAo+IC0tIAo+IEZsb3JpYW4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
