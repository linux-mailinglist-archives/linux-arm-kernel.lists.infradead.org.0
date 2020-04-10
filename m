Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F9E1A4773
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 16:31:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYVE8ge7udeNV1jgEk7g1DhSssCI1ULxHEEBWG3D+Ag=; b=BVbEToNfs/pKqI
	1EE9W0oh3jevAGCi0xzCfGW0zDupB2SrR2hif2FrdnYIBJYFeRcNTyabDpe1e1koaGSq06P7N3cnu
	amlWgQngZCPftIcRdSDW8V/lT9I6xqPtWmrs54wUb6vnf6Yne5eRcr87/3gdnLVvjH+FU+9RGV2p4
	7JI4mapAs5wKie5gWMUZJ7ko64wpJXL7M99LVIyCe3/Bz4PXfGEg957MDeodF+Con1MUE0VZaNzRl
	j2UZCpELknQmhZhJK0gxSNtcRGdIzL26VsKuYutLWJRysZrNeefMuS2hseyIXZ7ppaViHDEt7qQMI
	rxqyo4N3iCr3SbD9iIAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMugz-000316-BT; Fri, 10 Apr 2020 14:31:37 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMugq-00030S-EE; Fri, 10 Apr 2020 14:31:29 +0000
Received: by mail-oi1-f195.google.com with SMTP id o25so1504811oic.11;
 Fri, 10 Apr 2020 07:31:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=KmPT0kqXRKOHeqpvmmMJlgFcmC7GqFpKeaTOCrQ8Wtg=;
 b=s57XVxcNTjll+ZElyUXWtMB34+POUxH9Ni81kQP0EFqYBOh+/5IGP3juhEerCwfV5K
 ouIjSi8aULG0VTCKTFjXgq0unQu444Zlp7CTDXEZqIvVGTqC7IB7UWHzoG2rnsRpgy27
 KRHwFp26g6Xo+BkIiZj4nM/tMQ412tAkDTlddIfjjg04HDwT6zw00SPNDZbuwcmV+qqa
 1UBm0xl4O1uT5T9mL2xuQxH0baxvNOf80/EHZsQtP0dvCfQGt75L47v4z12yE9VadwbM
 M3+e1O7xW0acBW06Hyuz7/CaXuSVavS0w1O6zkIYbwf+NrB8Tj1EFK2i9LgiylYGQ6He
 hg+g==
X-Gm-Message-State: AGi0PubunyP7ILQmU9+4wfXDznsX6iRJfnzhtYAiCIn3MDtU2Jm2jpba
 GmVtc4ZyePXXczWg+JMpQK2j7lG6KH+YGY4xLWc=
X-Google-Smtp-Source: APiQypLr/SVeq2mdMekyoC1fUcboiqejAedCf/X8jFVX6LIVAyFSHTCwj5yNU/ZuaKgxmeqtpp5acBArep16IQooSIY=
X-Received: by 2002:aca:ac09:: with SMTP id v9mr3407739oie.148.1586529086780; 
 Fri, 10 Apr 2020 07:31:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200410142648.18599-1-geert@linux-m68k.org>
In-Reply-To: <20200410142648.18599-1-geert@linux-m68k.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 10 Apr 2020 16:31:15 +0200
Message-ID: <CAMuHMdUghCZuh1zGbi=_9s7pMB34TuawMQ-b6N+f+hDdPOAs0Q@mail.gmail.com>
Subject: Re: [PATCH] netfilter: nft_fwd_netdev: Fix CONFIG_NET_CLS_ACT=n build
To: Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_073128_474375_A4E3C1AD 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Linux IOMMU <iommu@lists.linux-foundation.org>,
 linux-mediatek@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBcHIgMTAsIDIwMjAgYXQgNDoyNiBQTSBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0
QGxpbnV4LW02OGsub3JnPiB3cm90ZToKPiBJZiBDT05GSUdfTkVUX0NMU19BQ1Q9bjoKPgo+ICAg
ICBuZXQvbmV0ZmlsdGVyL25mdF9md2RfbmV0ZGV2LmM6IEluIGZ1bmN0aW9uIOKAmG5mdF9md2Rf
bmV0ZGV2X2V2YWzigJk6Cj4gICAgIG5ldC9uZXRmaWx0ZXIvbmZ0X2Z3ZF9uZXRkZXYuYzozMjox
MDogZXJyb3I6IOKAmHN0cnVjdCBza19idWZm4oCZIGhhcyBubyBtZW1iZXIgbmFtZWQg4oCYdGNf
cmVkaXJlY3RlZOKAmQo+ICAgICAgIHBrdC0+c2tiLT50Y19yZWRpcmVjdGVkID0gMTsKPiAgICAg
ICAgICAgICAgIF5+Cj4gICAgIG5ldC9uZXRmaWx0ZXIvbmZ0X2Z3ZF9uZXRkZXYuYzozMzoxMDog
ZXJyb3I6IOKAmHN0cnVjdCBza19idWZm4oCZIGhhcyBubyBtZW1iZXIgbmFtZWQg4oCYdGNfZnJv
bV9pbmdyZXNz4oCZCj4gICAgICAgcGt0LT5za2ItPnRjX2Zyb21faW5ncmVzcyA9IDE7Cj4gICAg
ICAgICAgICAgICBefgo+Cj4gRml4IHRoaXMgYnkgcHJvdGVjdGluZyB0aGlzIGNvZGUgaHVuayB3
aXRoIHRoZSBhcHByb3ByaWF0ZSAjaWZkZWYuCj4KPiBSZXBvcnRlZC1ieTogbm9yZXBseUBlbGxl
cm1hbi5pZC5hdQo+IEZpeGVzOiBiY2ZhYmVlMWFmZDk5NDg0ICgibmV0ZmlsdGVyOiBuZnRfZndk
X25ldGRldjogYWxsb3cgdG8gcmVkaXJlY3QgdG8gaWZiIHZpYSBpbmdyZXNzIikKPiBTaWduZWQt
b2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0QGxpbnV4LW02OGsub3JnPgoKUGxlYXNl
IGlnbm9yZSwgd3JvbmcgcGF0Y2guClNvcnJ5IGZvciB0aGUgbWVzcy4KCkdye29ldGplLGVldGlu
Z31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2
ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02
OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwg
SSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlz
dHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
