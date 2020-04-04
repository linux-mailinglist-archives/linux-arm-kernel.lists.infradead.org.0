Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8130819E279
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 05:19:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ys/F3lYA80DUfr6Cp4+On9qhv5wHqZo5aty2BFkG9a0=; b=H9JcHXF7t8/wYm
	a5vyTyZQSSOIhZyAdb+uhdGJCWMg+6oiPCKI1f6f1u2eJjmMTtcY8zskY3ldo6OpQY2NPAtUWkmcA
	ZzDhAz5GHFDj125q7LuykplM25f83J7H1j0JGxv7S3fggWoJ6wEsENfMevR7NMbA33xkzNLiEMINe
	OVEyVS/EfRlHtaeKExkW7sA1hv+Ge8SnGVBGdXrIAzl21vBFlpby/yG7fcuIztSljW9aQ6zHuihJJ
	AnGXh6E9+y2SNUNMsCAv2SjY1WSbOL7/iw1vsGHzwLFQdZ8sWANRxpqGzs6PYqI595nnsC+2ZtdT4
	1c629O+l1UXperdVsXFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKZLG-0007Ak-In; Sat, 04 Apr 2020 03:19:30 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKZLA-0007AA-A3; Sat, 04 Apr 2020 03:19:25 +0000
Received: by mail-ot1-x343.google.com with SMTP id r19so9517098otn.7;
 Fri, 03 Apr 2020 20:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=RTly8p3iJA54wQveLK6xwcKTq81ZrBUHxfgTAcTA1Z8=;
 b=PBPm3xk3Zhyh4WEtZGT4iZUioZXpoQWPKvTJlrPLgJIW7R3KHXQyy44rW7bb3gQmRr
 MAjFLXSHLR0/mMeCx1NsP108UpaOg6DZEj2Ay8Emby/wekk51VdfVEjYYXypWVpMgSWu
 9lmbohH8AYCxPu68IG6shouyhXXUV3g+xyYs3XRaoOQw8it4wZnSDokQTSyL8dZ8JWlH
 4NMi1/IIEQB84ELgmXBy20XjVB8gUbbxGZ+HhVim6pc84LVBKvPWziEk2VoJBESoTXiN
 H4+67Ph/bJYjsO9JJjJBJVqeUjS4M6usqoDjjvjSNJbVoConiSJpeAwCxCItb7j3wg1K
 sjjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=RTly8p3iJA54wQveLK6xwcKTq81ZrBUHxfgTAcTA1Z8=;
 b=jX1ZAu/BytDS1BLjY46lypYrshsBbOCdXHcaeAT49ow/dSC2g70B3gAmysSNTR2q/s
 Ce3cCa9gD4R6G2WeVMiVjiuFkZ2ghvKvOKWZD99KnL5h5HCJ+vhSlfuBctt0Vyve4E6o
 AR2IEKdctwfcU7aVxawNyxK/CUcHzyDE84GJJ4Xp4W6KcsOi8gX36amdKU8Mr3PfSems
 lr4THrXMXlsdU/BzoR6cvJkmjyVwWq5i6pdy5URQEJwCkj59Hpe0PWjczU6J/kw3a6uv
 JBcBWJhrJka2+KCuQQzXD5xviuU2qN/UsxfnvCf/kd8nWhsv0x6FExeJHQdaW/OlgsSm
 uciA==
X-Gm-Message-State: AGi0PuZTjKMrL9Yte/IEqNx+nqmhHBpg7nZJQAvJZoiL/1ok+KAjjSKd
 vVbbi2T7FY/EIWkhQaR4HBbFbUGWOJ8ZoWA4UKk=
X-Google-Smtp-Source: APiQypLv6No4WClkuaXzzhXvWFmPvXoxH6GZGX5Z0oivPxYgzY5GBClyMuhj5EwhtDn3Wicr/GZFbALmhg+fsa11XJc=
X-Received: by 2002:a9d:1b6d:: with SMTP id l100mr8444823otl.70.1585970361154; 
 Fri, 03 Apr 2020 20:19:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200403112830.505720-1-gch981213@gmail.com>
 <20200403180911.Horde.9xqnJvjcRDe-ttshlJbG6WE@www.vdorst.com>
In-Reply-To: <20200403180911.Horde.9xqnJvjcRDe-ttshlJbG6WE@www.vdorst.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sat, 4 Apr 2020 11:19:10 +0800
Message-ID: <CAJsYDVJj1JajVxeGifaOprXYstG-gC_OYwd5LrALUY_4BdtR3A@mail.gmail.com>
Subject: Re: [PATCH] net: dsa: mt7530: fix null pointer dereferencing in port5
 setup
To: =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_201924_376661_AA886961 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 open list <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 Russell King <rmk+kernel@armlinux.org.uk>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkhCgpPbiBTYXQsIEFwciA0LCAyMDIwIGF0IDI6MDkgQU0gUmVuw6kgdmFuIERvcnN0IDxvcGVu
c291cmNlQHZkb3JzdC5jb20+IHdyb3RlOgo+Cj4gUXVvdGluZyBDaHVhbmhvbmcgR3VvIDxnY2g5
ODEyMTNAZ21haWwuY29tPjoKPgo+IEhpIENodWFuaG9uZywKPgo+ID4gVGhlIDJuZCBnbWFjIG9m
IG1lZGlhdGVrIHNvYyBldGhlcm5ldCBtYXkgbm90IGJlIGNvbm5lY3RlZCB0byBhIFBIWQo+ID4g
YW5kIGEgcGh5LWhhbmRsZSBpc24ndCBhbHdheXMgYXZhaWxhYmxlLgo+ID4gVW5mb3J0dW5hdGVs
eSwgbXQ3NTMwIGRzYSBkcml2ZXIgYXNzdW1lcyB0aGF0IHRoZSAybmQgZ21hYyBpcyBhbHdheXMK
PiA+IGNvbm5lY3RlZCB0byBzd2l0Y2ggcG9ydCA1IGFuZCBzZXR1cCBtdDc1MzAgYWNjb3JkaW5n
IHRvIHBoeSBhZGRyZXNzCj4gPiBvZiAybmQgZ21hYyBub2RlLCBjYXVzaW5nIG51bGwgcG9pbnRl
ciBkZXJlZmVyZW5jaW5nIHdoZW4gcGh5LWhhbmRsZQo+ID4gaXNuJ3QgZGVmaW5lZCBpbiBkdHMu
Cj4KPiBNVDc1MzAgdHJpZXMgdG8gZGV0ZWN0IGlmIDJuZCBHTUFDIGlzIHVzaW5nIGEgcGh5IHdp
dGggcGh5LWFkZHJlc3MgMCBvciA0LgoKV2hhdCBpZiB0aGUgMm5kIEdNQUMgY29ubmVjdHMgdG8g
YW4gZXh0ZXJuYWwgUEhZIG9uIGFkZHJlc3MgMCBvbiBhCmRpZmZlcmVudCBtZGlvLWJ1cz8gVGhp
cyBpcyBhbHJlYWR5IGhhcHBlbmluZyBvbiBtdDc2Mjkgd2hlcmUgdGhlCmludGVncmF0ZWQgUEhZ
IGNvbm5lY3RlZCB0byBnbWFjMiBpcyBvbiBhZGRyZXNzIDAgYW5kIGdtYWMxCmNvbm5lY3RzIHRv
IGV4dGVybmFsIG10NzUzeCBzd2l0Y2guCk9uIG10NzYyMSwgdGhlIFJHTUlJMiBpcyBhbHdheXMg
d2lyZWQgdG8gc3dpdGNoIG1hYzUgYXMgd2VsbCBhcwpleHRlcm5hbCBwaW5zLCBhbmQgb25lIHNo
b3VsZCBkaXNhYmxlIHN3aXRjaCBtYWM1IGluIHRoaXMgY2FzZSBvcgp0aGVyZSdzIHBpbiBjb25m
bGljdC4KCj4gSWYgc28sIHN3aXRjaCBwb3J0IDUgbmVlZHMgdG8gYmUgc2V0dXAgc28gdGhhdCBQ
SFkgMCBvciA0IGlzIGF2YWlsYWJsZQo+IHZpYSBwb3J0IDUgb2YgdGhlIHN3aXRjaC4gQW55IE1B
QyBjYW4gdGFsayB0byBQSFkgMC80IGRpcmVjdGx5IHZpYSBwb3J0IDUuCj4gVGhpcyBpcyBhbHNv
IGV4cGxhaW5lZCBpbiB0aGUga2VybmVsIGRvY3MgbXQ3NTMwLnR4dC4KPgo+IE1heSBiZSB0aGVy
ZSBhcmUgYmV0dGVyIHdheSB0byBkZXRlY3QgdGhhdCBhbnkgbm9kZSBpcyB1c2luZyBwaHkgMC80
IG9mCj4gdGhlIHN3aXRjaC4KCkl0IHNob3VsZCBuZXZlciBiZSBkZXRlY3RlZC4gVGhpcyBwaWVj
ZSBvZiBjb2RlIGlzIHRvIGNvbmZpZ3VyZSBob3cKUkdNSUkyIG9uIG10NzUzMCBpcyB3aXJlZDog
UEhZMC9QSFk0L3N3aXRjaCBNQUM1L29mZi4gQW5kIGl0CnNob3VsZCBiZSBpbXBsZW1lbnRlZCBh
cyBhIGNvbmZpZ3VyYWJsZSBkdCBwcm9wZXJ0eS4gV2Ugc2hvdWxkCm5vdCBtYWtlIGFzc3VtcHRp
b24gdGhhdCAyIFJHTUlJcyBhbHdheXMgY29ubmVjdGVkIHRvIHRoZSB0d28KbWFjcyBvbiBtdGtf
ZXRoX3NvYyBhbmQgd2Ugc2hvdWxkIG5ldmVyIHBhcnNlIHBhcmVudCBldGggZHRzCmluIERTQSBk
cml2ZXIuCgotLSAKUmVnYXJkcywKQ2h1YW5ob25nIEd1bwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
