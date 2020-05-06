Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AB31C799A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 20:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AYm2lq6BGti3w6y7vSQ/5eTwaqgFeywbsKWZrsBO6Ic=; b=d5PtHUZoKB8YK5i6F+wHxh5EHO
	fx8crjM0Yk3Sv4ek+ckRjrFe8PKeLoMXlXqYQ8XHOAhFYEZcR1pxXgtXJZ+DHZ+nTpl4t/u9t6bpY
	gbp0gBw8HbZ1bP+wJM1XMjVglweSv+PNypcGzE7/MvAVy9Fl2dOpmZZoWgJWpA+ivSb3jY8ZRLLet
	2mTMd061Zrlzd2PqAKJFsifOvLlhozPLO+sBqswGAEZnKctMcutcIN24x2gkq7bHDMU0sa4kZqDIo
	5BNSvoXJcFu2SDfr4Y5hZT7lYLErZJdqw6vJCje3MbTnQpnFc3GCbSNwLe8sYWEh6tuj6b5qpjUPl
	SkpWGjkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWP1E-00064v-BO; Wed, 06 May 2020 18:43:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWP16-00064O-9n
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 18:43:37 +0000
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
 [209.85.167.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7DF5920736
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 May 2020 18:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588790615;
 bh=Q6RkpgZui4xxKW3IPW+WWsSAA2i9xVEZ218yB9mb8U4=;
 h=References:In-Reply-To:From:Date:Subject:To:From;
 b=yFn884xni9JY20CkoXo0VPjlSlH/8PHEY4WJ6cNaUqZe9ZVpDdQpj8qzDSgrc2y7B
 YDDtgOYeKFkALfNNGAAwmxo/+22HFHIu3qAYYTuSQmnQNvPxuRcevZzBCnBBg4+EJF
 GO+UBadiRhdE5swnNjFh+YBd4wWG4h5Xt5EeucKc=
Received: by mail-oi1-f169.google.com with SMTP id b18so2684792oic.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 11:43:35 -0700 (PDT)
X-Gm-Message-State: AGi0PuavPVGDLJwHgny7X1d59rH91a6LdhxTwr1qbSD09kGRQ51A8sW6
 P9rC5Pg6OBXoGUDh2/OL9zUTOh2XccRKSZP1sQ==
X-Google-Smtp-Source: APiQypLTEYXk8ZoVzmC89c8YzRW4Bi0nYQXkI3b3h7xtEyMlZUH63k5FskEtailA/G6ud2E6uDe2zYlaVZvTzY9+99c=
X-Received: by 2002:a05:6808:24f:: with SMTP id
 m15mr3991289oie.152.1588790614731; 
 Wed, 06 May 2020 11:43:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
 <20200501083227.10886-6-ricardo.canuelo@collabora.com>
 <20200505185607.GA25651@bogus>
 <20200506131057.uqdo7uca32ehglcd@rcn-XPS-13-9360>
In-Reply-To: <20200506131057.uqdo7uca32ehglcd@rcn-XPS-13-9360>
From: Rob Herring <robh@kernel.org>
Date: Wed, 6 May 2020 13:43:23 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLs_0NV0VKsUw2rKq+Ua82Ay7LCroiyweOgkSQMA9EPZQ@mail.gmail.com>
Message-ID: <CAL_JsqLs_0NV0VKsUw2rKq+Ua82Ay7LCroiyweOgkSQMA9EPZQ@mail.gmail.com>
Subject: Re: [RFT PATCH 5/5] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
To: Rob Herring <robh@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Collabora Kernel ML <kernel@collabora.com>, devicetree@vger.kernel.org, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, Wei Xu <xuwei5@hisilicon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_114336_382341_A71E30D4 
X-CRM114-Status: GOOD (  21.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgNiwgMjAyMCBhdCA4OjExIEFNIFJpY2FyZG8gQ2HDsXVlbG8KPHJpY2FyZG8u
Y2FudWVsb0Bjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEhpIFJvYiwgdGhhbmtzIGZvciB0YWtp
bmcgdGhlIHRpbWUgdG8gcmV2aWV3IHRoZSBwYXRjaC4gU29tZSBjb21tZW50cwo+IGJlbG93Ogo+
Cj4gT24gbWFyIDA1LTA1LTIwMjAgMTM6NTY6MDcsIFJvYiBIZXJyaW5nIHdyb3RlOgo+ID4gPiAr
ICAjIGFkaSxpbnB1dC1zdHlsZSBhbmQgYWRpLGlucHV0LWp1c3RpZmljYXRpb24gYXJlIHJlcXVp
cmVkIGV4Y2VwdCBpbgo+ID4gPiArICAjICJyZ2IgMXgiIGFuZCAieXV2NDQ0IDF4IiBtb2Rlcy4K
PiA+ID4gKyAgLSBpZjoKPiA+ID4gKyAgICAgIG5vdDoKPiA+ID4gKyAgICAgICAgcHJvcGVydGll
czoKPiA+ID4gKyAgICAgICAgICBhZGksaW5wdXQtY29sb3JzcGFjZToKPiA+ID4gKyAgICAgICAg
ICAgIGNvbnRhaW5zOgo+ID4gPiArICAgICAgICAgICAgICBlbnVtOiBbIHJnYiwgeXV2NDQ0IF0K
PiA+ID4gKyAgICAgICAgICBhZGksaW5wdXQtY2xvY2s6Cj4gPiA+ICsgICAgICAgICAgICBjb250
YWluczoKPiA+ID4gKyAgICAgICAgICAgICAgY29uc3Q6IDF4Cj4gPgo+ID4gSSBiZWxpZXZlIHRo
aXMgd2lsbCBiZSB0cnVlIChiZWZvcmUgdGhlIG5vdCkgaWYgdGhlIHByb3BlcnRpZXMgYXJlIG5v
dAo+ID4gcHJlc2VudC4gWW91IG5lZWQgJ3JlcXVpcmVkJyBpZiB0aGF0J3Mgbm90IHdoYXQgeW91
IHdhbnQuCj4KPiBJJ20gbm90IHN1cmUgSSB1bmRlcnN0YW5kIHdoYXQgeW91IG1lYW4sIGJ1dCBk
dF9iaW5kaW5nX2NoZWNrIGRvZXNuJ3QKPiBzYXkgYW55dGhpbmcgYWJvdXQgYWRpLGlucHV0LXN0
eWxlIGFuZCBhZGksaW5wdXQtanVzdGlmaWNhdGlvbiBiZWluZwo+IHJlcXVpcmVkIHdoZW4gYWRp
LGlucHV0LWNvbG9yc3BhY2UgYW5kIGFkaSxpbnB1dC1jbG9jayBhcmUgbm90IHByZXNlbnQuCj4K
PiBJIHRoaW5rIEkgY292ZXJlZCBldmVyeSBwb3NzaWJsZSBjYXNlIHdydCB0aG9zZSBwcm9wZXJ0
aWVzIHdoZW4gcnVubmluZwo+IGR0X2JpbmRpbmdfY2hlY2sgYW5kIEkgZ290IHRoZSByZXN1bHRz
IEkgd2FzIGxvb2tpbmcgZm9yOgo+Cj4gLSBXaGVuIGNvbXBhdGlibGUgaXMgZWl0aGVyICJhZGks
YWR2NzUzMyIgb3IgImFkaSxhZHY3NTM1IiwKPiAgIGFkaSxpbnB1dC1jb2xvcnNwYWNlIGFuZCBh
ZGksaW5wdXQtY2xvY2sgYXJlbid0IHJlcXVpcmVkCj4KPiAtIEZvciBhbnkgb2YgdGhlIG90aGVy
IGNvbXBhdGlibGUgc3RyaW5ncywgYWRpLGlucHV0LWNvbG9yc3BhY2UgYW5kCj4gICBhZGksaW5w
dXQtY2xvY2sgYXJlIHJlcXVpcmVkLgo+Cj4gLSBXaGVuIGFkaSxpbnB1dC1jb2xvcnNwYWNlIGFu
ZCBhZGksaW5wdXQtY2xvY2sgYXJlIGRlZmluZWQgYW5kIHRoZXkgYXJlCj4gICBkaWZmZXJlbnQg
dGhhbiAicmdiIDF4IiBvciAieXV2NDQ0IDF4IiwgYWRpLGlucHV0LXN0eWxlIGFuZAo+ICAgYWRp
LGlucHV0LWp1c3RpZmljYXRpb24gYXJlIHJlcXVpcmVkLgo+Cj4gVGhlcmUncyBhbiBpc3N1ZSBJ
IGNhbid0IGZpZ3VyZSBvdXQsIHRob3VnaC4gYWRpLGlucHV0LWNvbG9yc3BhY2UgYW5kCj4gYWRp
LGlucHV0LWNsb2NrIGFyZSBkZWZpbmVkIG9ubHkgZm9yIGRldmljZXMgb3RoZXIgdGhhbiAiYWRp
LGFkdjc1MzMiCj4gYW5kICJhZGksYWR2NzUzNSIsIGJ1dCBhIERUIGZvciBvbmUgb2YgdGhlc2Ug
ZGV2aWNlcyBjYW4gdXNlIHRob3NlCj4gcHJvcGVydGllcyBhbmQgdGhlIGJpbmRpbmcgY2hlY2sg
d29uJ3QgY29tcGxhaW4uIE1vcmVvdmVyLCBpdCB3aWxsIGNoZWNrCj4gdGhlIGFib3ZlIGNvbmRp
dGlvbiBldmVuIGlmIGl0IGRvZXNuJ3QgbWFrZSBzZW5zZSBmb3IgdGhlbSAoaWUuIGl0IG1heQo+
IGNvbXBsYWluIHRoYXQgYWRpLGlucHV0LXN0eWxlIGFuZCBhZGksaW5wdXQtanVzdGlmaWNhdGlv
biBhcmUgcmVxdWlyZWQKPiBldmVuIGlmIHRoZXkgYXJlbid0IGRlZmluZWQgZm9yICJhZGksYWR2
NzUzMyIgYW5kICJhZGksYWR2NzUzNSIpLgo+Cj4gSSB0aGluayBpdCdzIGEgbWlub3IgaXNzdWUs
IGJ1dCBkbyB5b3Uga25vdyBpZiB0aGVyZSdzIGEgd2F5IHRvIG1vZGVsCj4gdGhhdD8gQXJlIHBy
b3BlcnRpZXMgYWx3YXlzIHVuY29uZGl0aW9uYWxseSBkZWZpbmVkPwoKSSB0aGluayB5b3Ugd2Fu
dCBzb21ldGhpbmcgbGlrZSB0aGlzOgoKaWY6CiAgcHJvcGVydGllczoKICAgIGNvbXBhdGlibGU6
CiAgICAgIGNvbnRhaW5zOgogICAgICAgIGVudW06CiAgICAgICAgICAtIGFkaSxhZHY3NTMzCiAg
ICAgICAgICAtIGFkaSxhZHY3NTM1CnRoZW46CiAgbm90OgogICAgcHJvcGVydGllczoKICAgICAg
YWRpLGlucHV0LXN0eWxlOiBmYWxzZQogICAgICBhZGksaW5wdXQtanVzdGlmaWNhdGlvbjogZmFs
c2UKCldoaWNoIG1lYW5zIHRoZSBzY2hlbWEgZmFpbHMgaWYgZWl0aGVyIHByb3BlcnR5IGlzIHBy
ZXNlbnQuCgpJdCBtYXkgYWxzbyBqdXN0IGJlIGVhc2llciB0byBzcGxpdCB0aGlzIHNjaGVtYSBp
bnRvIDIuIEl0J3MgYQpqdWRnZW1lbnQgY2FsbCBvbiBob3cgbXVjaCBpcyBzaGFyZWQgdnMuIGhv
dyBtdWNoIGlmL3RoZW4vZWxzZSBsb2dpYwp0aGVyZSBpcy4KClJvYgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
