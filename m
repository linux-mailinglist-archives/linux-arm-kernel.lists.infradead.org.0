Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D61F4639B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LBjc0RZziPEdj8agLJ7NdFl8XZqVm0tpTcIx3Vk7wdQ=; b=QAqgzdrJ7Iy6Fc
	eQnyn54seAzkNq5IPjkrwU1NlDdDLlHtQuhdTG3DuU7W8AQoGYwpIcrMyvi2wo8rDSxRDoeW1IdxB
	FT1sXpBRonbFYSoBhxjDjrvRqhuR9ZyIHEFSM5DIUQR5yUzOBaHILpfNwAErSCs1kdqbUTcdQSwtL
	R+VhG/sYN8xokC3u8UtdZwcn+0fZcJMJ9GHNphleMnfSrX1xuPdpXlIWTFOPc4mumLDZiIGXSjQZ/
	EJOtTMj7p9jgNyOWmMjmjDyA6gfL+tStdE0nbGg8i9au3kmS6i+a6JgB/436fX85ZngW5ARxSFHgQ
	1AaXkqncT9CZe2GSq7zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hboiH-0007He-3M; Fri, 14 Jun 2019 16:06:01 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hboi6-0007H0-Sp
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:05:52 +0000
Received: by mail-oi1-x243.google.com with SMTP id 65so2299526oid.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Uc+JtWf7tjShWffGBpHhBR6sL8s2yKg1xyiiol0y6TU=;
 b=jNX16PwC7jFoacYJBbXHgDUaI8EEkt+toHx0bARDoPrn6Yb0mkvXjPVO3IkrWfqVjX
 SAgWyJGD7qe11HulyiUDTLWcoJYTRMtw/hRzJCW5H1y3BznhVaJyTk+EBh4SslWoqMu8
 uutE5qGiT6Mqq5/drcrwuzl6KYXez3+ZNfGbTu3Wc7tnftRgq42kcSXLdcW6oa+Gq5lF
 3keQDKiG0zVp9DX7m8humbrjMtrSbDbDD6L4zzDzgpQvjNy7Z4SyeMRYLF1USd5C34yW
 GT81fCt9qXkwZi4a8AUno2w8yKZfB2/tqeXJQgoF2OXOHaNudML8RtkEX+YuHtuYny5g
 yhsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Uc+JtWf7tjShWffGBpHhBR6sL8s2yKg1xyiiol0y6TU=;
 b=YFQ531pG55qHVoW3pl66AAvL/xg2Qw993hCBte1CUZ62GYpV3Bjqn2PaWCqGduMtHT
 dJsTbtNR9TpmPRC1F3CNp2Cu6Q+DlzmcwPG3X4imRRr1Eauai8Y55+b3pGp1CCqxxvaC
 Ht5SZWnI0UVce9eSAeH6/QgRos9XHMotY8u9ipGvEJzhSguuaT5PUzVqLoQS6Z9PpU1L
 yUGM54dpqWIgpVKi/l91ovfJrVtjArbbrXaNf9ueblgJGwSmA0qQF4Cw6FGNbXmrxE82
 4yFsBZEeWaINCCQ6QvRX+2Rz+xURQStWW4K9A+JisD56xVBWemq5Wk1t8CFwxvQ/AK0i
 uaxA==
X-Gm-Message-State: APjAAAWWHxAKiDmteT+oJQgIhaa2aro+4z++uDMuXPU+mku0L9iZS3xR
 QHICKKs14TyIxCGzOaBrlNscm5IRvj08Sm/boPXECQ==
X-Google-Smtp-Source: APXvYqy1jMfHcpdvS7qiLT9q3NTNxL9C8ueJRGCVtvj+w2jRGYcmawLSzlsRzRHAUSICaj8u7FRJxJ+FX2xa32Ts36E=
X-Received: by 2002:aca:3dd7:: with SMTP id k206mr25745oia.47.1560528346412;
 Fri, 14 Jun 2019 09:05:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190614145755.10926-1-GNUtoo@cyberdimension.org>
In-Reply-To: <20190614145755.10926-1-GNUtoo@cyberdimension.org>
From: Jann Horn <jannh@google.com>
Date: Fri, 14 Jun 2019 18:05:19 +0200
Message-ID: <CAG48ez30+VOj78rCiWMKtm0tHdVR67CcrHVCV-FFCfK-nRQTOw@mail.gmail.com>
Subject: Re: [PATCH] security: do not enable CONFIG_GCC_PLUGINS by default
To: "Denis 'GNUtoo' Carikli" <GNUtoo@cyberdimension.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_090550_958801_952B0918 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Russell King <linux@armlinux.org.uk>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Emese Revfy <re.emese@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KzMyLWJpdCBBUk0gZm9sa3MKCk9uIEZyaSwgSnVuIDE0LCAyMDE5IGF0IDU6MTAgUE0gRGVuaXMg
J0dOVXRvbycgQ2FyaWtsaQo8R05VdG9vQGN5YmVyZGltZW5zaW9uLm9yZz4gd3JvdGU6Cj4gT24g
YSBHYWxheHkgU0lJSSAoSTkzMDApLCB0aGUgcGF0Y2ggbWVudGlvbmVkIGJlbG93IGJyb2tlIGJv
b3Q6Cj4gLSBUaGUgZGlzcGxheSBzdGlsbCBoYWQgdGhlIGJvb3Rsb2FkZXIgbG9nbywgd2hpbGUg
d2l0aCB0aGlzCj4gICBwYXRjaCwgdGhlIDQgVHV4IGxvZ28gYXBwZWFycy4KPiAtIE5vIHByaW50
IGFwcGVhcmVkIG9uIHRoZSBzZXJpYWwgcG9ydCBhbnltb3JlIGFmdGVyIHRoZSBrZXJuZWwKPiAg
IHdhcyBsb2FkZWQsIHdoZXJlYXMgd2l0aCB0aGlzIHBhdGNoLCB3ZSBoYXZlIHRoZSBzZXJpYWwK
PiAgIGNvbnNvbGUgd29ya2luZywgYW5kIHRoZSBkZXZpY2UgYm9vdGluZy4KPgo+IEJvb3Rpbmcg
d2FzIGJyb2tlbiBieSB0aGUgZm9sbG93aW5nIGNvbW1pdDoKPiAgIDlmNjcxZTU4MTU5YSAoInNl
Y3VyaXR5OiBDcmVhdGUgImtlcm5lbCBoYXJkZW5pbmciIGNvbmZpZyBhcmVhIikKPgo+IEFzIHRo
ZSBib290bG9hZGVyIG9mIHRoaXMgZGV2aWNlIGVuYWJsZXMgdGhlIE1NVSwgSSBoYWQgdGhlIGZv
bGxvd2luZwo+IHBhdGNoIGFwcGxpZWQgZHVyaW5nIHRoZSB0ZXN0czoKPiAgIEF1dGhvcjogQXJ2
ZSBIasO4bm5ldsOlZyA8YXJ2ZUBhbmRyb2lkLmNvbT4KPiAgIERhdGU6ICAgRnJpIE5vdiAzMCAx
NzowNTo0MCAyMDEyIC0wODAwCj4KPiAgICAgICBBTkRST0lEOiBhcm06IGRlY29tcHJlc3Nvcjog
Rmx1c2ggdGxiIGJlZm9yZSBzd2ljaGluZyBkb21haW4gMCB0byBjbGllbnQgbW9kZQo+Cj4gICAg
ICAgSWYgdGhlIGJvb3Rsb2FkZXIgdXNlZCBhIHBhZ2UgdGFibGUgdGhhdCBpcyBpbmNvbXBhdGli
bGUgd2l0aCBkb21haW4gMAo+ICAgICAgIGluIGNsaWVudCBtb2RlLCBhbmQgYm9vdHMgd2l0aCB0
aGUgbW11IG9uLCB0aGVuIHN3aXRoaW5nIGRvbWFpbiAwIHRvCj4gICAgICAgY2xpZW50IG1vZGUg
Y2F1c2VzIGEgZmF1bHQgaWYgd2UgZG9uJ3QgZmx1c2ggdGhlIHRsYiBhZnRlciB1cGRhdGluZwo+
ICAgICAgIHRoZSBwYWdlIHRhYmxlIHBvaW50ZXIuCj4KPiAgICAgICB2MjogQWRkIElTQiBiZWZv
cmUgbG9hZGluZyBkYWNyLgo+Cj4gICBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9jb21wcmVz
c2VkL2hlYWQuUyBiL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9oZWFkLlMKPiAgIGluZGV4IDcx
MzU4MjBmNzZkNC4uNmU4N2NlZGEzYjI5IDEwMDY0NAo+ICAgLS0tIGEvYXJjaC9hcm0vYm9vdC9j
b21wcmVzc2VkL2hlYWQuUwo+ICAgKysrIGIvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL2hlYWQu
Uwo+ICAgQEAgLTgzNyw2ICs4MzcsOCBAQCBfX2FybXY3X21tdV9jYWNoZV9vbjoKPiAgICAgICAg
ICAgICAgICAgICBiaWMgICAgIHI2LCByNiwgIzEgPDwgMzEgICAgICAgIEAgMzItYml0IHRyYW5z
bGF0aW9uIHN5c3RlbQo+ICAgICAgICAgICAgICAgICAgIGJpYyAgICAgcjYsIHI2LCAjKDcgPDwg
MCkgfCAoMSA8PCA0KSAgICBAIHVzZSBvbmx5IHR0YnIwCj4gICAgICAgICAgICAgICAgICAgbWNy
bmUgICBwMTUsIDAsIHIzLCBjMiwgYzAsIDAgICBAIGxvYWQgcGFnZSB0YWJsZSBwb2ludGVyCj4g
ICArICAgICAgICAgICAgICAgbWNybmUgICBwMTUsIDAsIHIwLCBjOCwgYzcsIDAgICBAIGZsdXNo
IEksRCBUTEJzCj4gICArICAgICAgICAgICAgICAgbWNyICAgICBwMTUsIDAsIHIwLCBjNywgYzUs
IDQgICBAIElTQgo+ICAgICAgICAgICAgICAgICAgIG1jcm5lICAgcDE1LCAwLCByMSwgYzMsIGMw
LCAwICAgQCBsb2FkIGRvbWFpbiBhY2Nlc3MgY29udHJvbAo+ICAgICAgICAgICAgICAgICAgIG1j
cm5lICAgcDE1LCAwLCByNiwgYzIsIGMwLCAyICAgQCBsb2FkIHR0YiBjb250cm9sCj4gICAgI2Vu
ZGlmCj4KPiBTaWduZWQtb2ZmLWJ5OiBEZW5pcyAnR05VdG9vJyBDYXJpa2xpIDxHTlV0b29AY3li
ZXJkaW1lbnNpb24ub3JnPgo+IC0tLQo+ICBzY3JpcHRzL2djYy1wbHVnaW5zL0tjb25maWcgfCAx
IC0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9zY3Jp
cHRzL2djYy1wbHVnaW5zL0tjb25maWcgYi9zY3JpcHRzL2djYy1wbHVnaW5zL0tjb25maWcKPiBp
bmRleCBlOWM2NzdhNTNjNzQuLmFmYTFkYjNkMzQ3MSAxMDA2NDQKPiAtLS0gYS9zY3JpcHRzL2dj
Yy1wbHVnaW5zL0tjb25maWcKPiArKysgYi9zY3JpcHRzL2djYy1wbHVnaW5zL0tjb25maWcKPiBA
QCAtMTgsNyArMTgsNiBAQCBjb25maWcgR0NDX1BMVUdJTlMKPiAgICAgICAgIGJvb2wKPiAgICAg
ICAgIGRlcGVuZHMgb24gSEFWRV9HQ0NfUExVR0lOUwo+ICAgICAgICAgZGVwZW5kcyBvbiBQTFVH
SU5fSE9TVENDICE9ICIiCj4gLSAgICAgICBkZWZhdWx0IHkKPiAgICAgICAgIGhlbHAKPiAgICAg
ICAgICAgR0NDIHBsdWdpbnMgYXJlIGxvYWRhYmxlIG1vZHVsZXMgdGhhdCBwcm92aWRlIGV4dHJh
IGZlYXR1cmVzIHRvIHRoZQo+ICAgICAgICAgICBjb21waWxlci4gVGhleSBhcmUgdXNlZnVsIGZv
ciBydW50aW1lIGluc3RydW1lbnRhdGlvbiBhbmQgc3RhdGljIGFuYWx5c2lzLgoKSSBkb24ndCB0
aGluayBHQ0NfUExVR0lOUyBhbG9uZSBpcyBzdXBwb3NlZCB0byBnZW5lcmF0ZSBhbnkgY29kZT8g
SXQKanVzdCBtYWtlcyBpdCBwb3NzaWJsZSB0byBlbmFibGUgYSBidW5jaCBvZiBvdGhlciBrY29u
ZmlnIGZsYWdzIHRoYXQKY2FuIGdlbmVyYXRlIGNvZGUuCgpTVEFDS1BST1RFQ1RPUl9QRVJfVEFT
SyBkZWZhdWx0cyB0byB5IGFuZCBkZXBlbmRzIG9uIEdDQ19QTFVHSU5TLCBzbwppcyB0aGF0IHBl
cmhhcHMgd2hhdCBicm9rZT8gQ2FuIHlvdSB0cnkgd2hldGhlciBkaXNhYmxpbmcganVzdCB0aGF0
CndvcmtzIGZvciB5b3U/CgpNeSBndWVzcyBpcyB0aGF0IG1heWJlIHRoZXJlIGlzIHNvbWUgZWFy
bHkgYm9vdCBjb2RlIHRoYXQgbmVlZHMgdG8KaGF2ZSB0aGUgc3RhY2sgcHJvdGVjdG9yIGRpc2Fi
bGVkLCBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
