Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A03E1E1FEE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:40:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00S61Z+o6dbcToeLsdKojdthnu4pZvSPTHycNb9EPVE=; b=NtO8QLpne7sy44
	2Po/3a+YbN1vPobCykq/MS3e9OuSrEOsYW/PNfB+sLWTFNIVnZdWK0rBgyEHKe8bgLm5zE7XLN8Oh
	x9zOlZyP8mMzhnbc7PDAFFZ7TjO6jd7Oo9Che2741URLR2FHJPUBJsuB46p/lSXIk5Nnvh7BxFV6u
	UAOv+XeXQpZrSG8MPe/JZ2zXpHCS1npTmNhwq7iezwc1iwNTwuhKxHarsj5BJUwN5e1vASaD1XJQU
	a8YvfIUrSaX64PFZdZiaKLnJpso32NOk0wINqDAw2+fRBpeky8eAmpsL0wXo1NOAOJsoD9U6HlNdf
	pnoB97N+0HLjDRC1l6XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdX0h-0005rS-MS; Tue, 26 May 2020 10:40:39 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdX0A-0003fQ-BR
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:40:09 +0000
Received: by mail-ot1-f68.google.com with SMTP id 63so15863485oto.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 03:40:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dTaB15/ZleBqDK53ohM/31ShTHP4GnhoecVhCtwiqFU=;
 b=pzOElfF7Gx1LU0EDTdEeNKjC4ELNfRc/w+JlbvCzWGviQ5+3/LLzpi1piJPGMwyXXk
 OkMC+mvRA9KFbcYX0jSYOLLj0+rKjZ1DhBXu4BYAHwwkX1VXqIFynMbftEb1Znm/IPd/
 yOfMvbKL2Abdd+A2btml5ZFKN0LkU5ndZjMBbgozqBe3/ludJjBicfm6yuS2DOmqw+Ny
 4GzMzCYEFR1Cv+TcI8vUPVsHttIHZasTCi1782gUfTfqIZJkWD5tMYFbrOxmHZsQd0nd
 i9Jyekl1A+2qJMQfI84oje4Y0ACaRZPdlx0HAJz/Y06wmEw4IxtfCTLez25M0eG01vgw
 dpsg==
X-Gm-Message-State: AOAM531uRVCDros+8AtqPTJ/CW6xOk211oOxywugp7qLvE+EYuGFwqD9
 hrZPwcwQX1DZrw447ouJG4YLn1IcrtZlwR5VLns=
X-Google-Smtp-Source: ABdhPJxkfLttUGiOUgqdiWLlHCoBdZw0pBOxG2BykOGgx3dfJ7lQPvh1Hg7DEmLz6ytyeXpXRq06Z9Je6ABlFop6tfw=
X-Received: by 2002:a05:6830:1151:: with SMTP id
 x17mr370069otq.250.1590489603970; 
 Tue, 26 May 2020 03:40:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
 <20200511110611.3142-7-ricardo.canuelo@collabora.com>
 <20200514015412.GF7425@pendragon.ideasonboard.com>
 <20200514093617.dwhmqaasc3z5ixy6@rcn-XPS-13-9360>
 <20200514152239.GG5955@pendragon.ideasonboard.com>
 <20200525074335.grnjvdjnipq5g3kf@rcn-XPS-13-9360>
 <20200526014444.GB6179@pendragon.ideasonboard.com>
 <CAMuHMdXinhY13us9rt9h7EvrT_8zhnQg6tmOBtA0nEQ=1G1O7Q@mail.gmail.com>
 <20200526101158.GA5903@pendragon.ideasonboard.com>
In-Reply-To: <20200526101158.GA5903@pendragon.ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 26 May 2020 12:39:52 +0200
Message-ID: <CAMuHMdUV+qHpfLfbYwQwPXAUsh7HXvonUNWNh-SeTC-RpHwrog@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] dt-bindings: drm: bridge: adi, adv7511.txt: convert
 to yaml
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_034007_655309_C2925749 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGF1cmVudCwKCk9uIFR1ZSwgTWF5IDI2LCAyMDIwIGF0IDEyOjEyIFBNIExhdXJlbnQgUGlu
Y2hhcnQKPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4gd3JvdGU6Cj4gT24gVHVl
LCBNYXkgMjYsIDIwMjAgYXQgMDk6MDM6MDlBTSArMDIwMCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdy
b3RlOgo+ID4gT24gVHVlLCBNYXkgMjYsIDIwMjAgYXQgMzo0NCBBTSBMYXVyZW50IFBpbmNoYXJ0
IHdyb3RlOgo+ID4gPiBPbiBNb24sIE1heSAyNSwgMjAyMCBhdCAwOTo0MzozNUFNICswMjAwLCBS
aWNhcmRvIENhw7F1ZWxvIHdyb3RlOgo+ID4gPiA+IE9uIGp1ZSAxNC0wNS0yMDIwIDE4OjIyOjM5
LCBMYXVyZW50IFBpbmNoYXJ0IHdyb3RlOgo+ID4gPiA+ID4gPiBJZiB3ZSB3YW50IHRvIGJlIG1v
cmUgc3RyaWN0IGFuZCByZXF1aXJlIHRoZSBkZWZpbml0aW9uIG9mIGFsbCB0aGUKPiA+ID4gPiA+
ID4gc3VwcGxpZXMsIHRoZXJlIHdpbGwgYmUgbWFueSBtb3JlIERUcyBjaGFuZ2VzIGluIHRoZSBz
ZXJpZXMsIGFuZCBJJ20gbm90Cj4gPiA+ID4gPiA+IHN1cmUgSSdsbCBiZSBhYmxlIHRvIGRvIHRo
YXQgaW4gYSByZWFzb25hYmxlIGFtb3VudCBvZiB0aW1lLiBJJ20gbG9va2luZwo+ID4gPiA+ID4g
PiBhdCB0aGVtIGFuZCBpdCdzIG5vdCBhbHdheXMgY2xlYXIgd2hpY2ggcmVndWxhdG9ycyB0byB1
c2Ugb3IgaWYgdGhleSBhcmUKPiA+ID4gPiA+ID4gZXZlbiBkZWZpbmVkLgo+ID4gPiA+ID4KPiA+
ID4gPiA+IFdlIGNhbiBkZWNvdXBsZSB0aGUgdHdvIHRob3VnaCAoSSB0aGluaykuIFRoZSBiaW5k
aW5ncyBzaG91bGQgcmVmbGVjdAo+ID4gPiA+ID4gd2hhdCB3ZSBjb25zaWRlciByaWdodCwgYW5k
IHRoZSBkdHMgZmlsZXMgY291bGQgYmUgZml4ZWQgb24gdG9wLgo+ID4gPiA+Cj4gPiA+ID4gRG8g
eW91IGhhdmUgYSBzdWdnZXN0aW9uIG9uIGhvdyB0byBkbyB0aGlzPyBJZiB3ZSBkZWNvdXBsZSB0
aGUgdHdvCj4gPiA+ID4gdGFza3MgbW9zdCBvZiB0aGUgd29yayB3b3VsZCBiZSBzZWFyY2hpbmcg
Zm9yIERUcyB0byBmaXggYW5kIGZpbmRpbmcgYQo+ID4gPiA+IHdheSB0byBmaXggZWFjaCBvbmUg
b2YgdGhlbSwgYW5kIHVubGVzcyBJIGRvIHRoaXMgX2JlZm9yZV8gdGhlIGJpbmRpbmcKPiA+ID4g
PiBjb252ZXJzaW9uIEknbGwgZ2V0IGEgbG90IG9mIGR0YnNfY2hlY2sgZXJyb3JzLgo+ID4gPgo+
ID4gPiBSb2Igc2hvdWxkIGFuc3dlciB0aGlzIHF1ZXN0aW9uIGFzIGl0IHdpbGwgYmUgaGlzIGRl
Y2lzaW9uLCBidXQgSSd2ZQo+ID4gPiBwZXJzb25hbGx5IG5ldmVyIGNvbnNpZGVyZWQgbm9uLWNv
bXBsaWFudCBEVCBzb3VyY2VzIHRvIGJlIGFuIG9ic3RhY2xlCj4gPiA+IHRvIGJpbmRpbmdzIGNv
bnZlcnNpb24gdG8gWUFNTC4gVGhlIERUIHNvdXJjZXMgc2hvdWxkIGJlIGZpeGVkLCBidXQgSQo+
ID4gPiBkb24ndCBzZWUgaXQgYXMgYSBwcmVyZXF1aXNpdGUgKGFsdGhvdWdoIGl0J3MgYSBnb29k
IHByYWN0aWNlKS4KPiA+Cj4gPiBJIGRvIG15IGJlc3QgdG8gYXZvaWQgaW50cm9kdWNpbmcgcmVn
cmVzc2lvbnMgd2hlbiB0aGUgYmluZGluZyBjb252ZXJzaW9ucwo+ID4gZ28gdXBzdHJlYW0uCj4K
PiBQbGVhc2Ugbm90ZSB0aGF0IHdlJ3JlIG5vdCB0YWxraW5nIGFib3V0IHJ1bnRpbWUgcmVncmVz
c2lvbnMsIGFzIGRyaXZlcnMKPiBhcmUgbm90IHVwZGF0ZWQuIEl0J3MgIm9ubHkiIGR0YnNfY2hl
Y2sgdGhhdCB3b3VsZCBwcm9kdWNlIG5ldyBlcnJvcnMuCgpFeGFjdGx5LiAgSSB3YXMgdGFsa2lu
ZyBhYm91dCAibWFrZSBkdGJzX2NoZWNrIiByZWdyZXNzaW9ucywgdG9vLgoKR3J7b2V0amUsZWV0
aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhv
ZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgt
bTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxl
LCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFs
aXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
