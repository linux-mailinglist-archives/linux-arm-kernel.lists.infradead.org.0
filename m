Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D191A8F01
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 01:19:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSPQHvvLRFM1lvAMkir/5jKWaEt62Q2AdmQCs8QReLM=; b=SF910yHu1o7ct+
	PPxcrJxFQOYacyOfwqsj4FbzkUUnNQXi7Yu93vkfhKZvCyNXuBgCY8Yr1n6q/SgEKhJeTlJVscqpl
	j8qAX7gntHjipCkBzKKhPn8vKd3M9qKvPtVb0sqopMQaGovcKg/auHoNmgk2BXTXGknRNGsO3jjx6
	BYGYRxx7E4aIzKLwFAPm0XZh3tbl28/y7sOFa5JUCoOzB+aVPEuihrqzH+iJZhA/gleSmEhLB4iI/
	uglg3xGjeCVsTPxWOw6Wb2DrTMzjRFB+t3gABTL2NjOFYporcB1PPKXgbLmAYlpLhjW3U9kJ4AFAy
	49WlZOn0WqqpBpeY3Y3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOUpW-00064T-8C; Tue, 14 Apr 2020 23:18:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOUpP-000646-2F; Tue, 14 Apr 2020 23:18:52 +0000
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FEF420768;
 Tue, 14 Apr 2020 23:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586906330;
 bh=TIDIviyEYvN23MqFWk6rl7nwsfElsevepgo9cj0fDa0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BlTi57WWPhRfW7sJMv5MxtonFNkCoY3uTo3bX4GCktl3OJfOEMkXo/jFDOgJC3Xhx
 YYZwkDurIo88TwaWUqFS6rvVSLyvaJpZb+mYFSf0te1Mrgh938AILR0wS/rK6kk+wG
 zu0wwxVhweZhfP5OXayIki3MMJ01LkvWJNk014kg=
Received: by mail-ed1-f53.google.com with SMTP id c7so2011578edl.2;
 Tue, 14 Apr 2020 16:18:50 -0700 (PDT)
X-Gm-Message-State: AGi0PubhgNgFf02GGbsjZSvEqforf1ouH4NTA95pjp4vBLVM2emHgcC8
 ySxiAAv8ib7R2M6VxnMSPvQ3GIhRf3mO2OyXmQ==
X-Google-Smtp-Source: APiQypLlqRYq43AAFMZg/IO4wBtIyFmNe19LoGBoUzW3+lEwF9tJ5dD9i42daP7Zkk0pVFZPG7mhoy00oQKf+v9hKRU=
X-Received: by 2002:aa7:c649:: with SMTP id z9mr8144084edr.288.1586906328844; 
 Tue, 14 Apr 2020 16:18:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200414030815.192104-1-hsinyi@chromium.org>
 <20200414030815.192104-2-hsinyi@chromium.org>
In-Reply-To: <20200414030815.192104-2-hsinyi@chromium.org>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Wed, 15 Apr 2020 07:18:37 +0800
X-Gmail-Original-Message-ID: <CAAOTY__oL1LxFxmBSp+cC__ZcGVifQ3f+gPKSWFZKJV4aRCDJw@mail.gmail.com>
Message-ID: <CAAOTY__oL1LxFxmBSp+cC__ZcGVifQ3f+gPKSWFZKJV4aRCDJw@mail.gmail.com>
Subject: Re: [PATCH 2/2] media: mtk-mdp: Use correct aliases name
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_161851_124095_ADC5EECF 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Houlong Wei <houlong.wei@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEhzaW4tWWk6CgpIc2luLVlpIFdhbmcgPGhzaW55aUBjaHJvbWl1bS5vcmc+IOaWvCAyMDIw
5bm0NOaciDE05pelIOmAseS6jCDkuIrljYgxMTowOOWvq+mBk++8mgo+Cj4gYWxpYXNlcyBwcm9w
ZXJ0eSBuYW1lIG11c3QgaW5jbHVkZSBvbmx5IGxvd2VyY2FzZSBhbmQgJy0nLiBGaXggaW4gZHRz
Cj4gYW5kIGRyaXZlci4KPgoKUmV2aWV3ZWQtYnk6IENodW4tS3VhbmcgSHUgPGNodW5rdWFuZy5o
dUBrZXJuZWwub3JnPgoKPiBTaWduZWQtb2ZmLWJ5OiBIc2luLVlpIFdhbmcgPGhzaW55aUBjaHJv
bWl1bS5vcmc+Cj4gUmV2aWV3ZWQtYnk6IE1hdHRoaWFzIEJydWdnZXIgPG1hdHRoaWFzLmJnZ0Bn
bWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbXRrLW1kcC9tdGtfbWRw
X2NvbXAuYyB8IDggKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL210
ay1tZHAvbXRrX21kcF9jb21wLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL210ay1tZHAvbXRr
X21kcF9jb21wLmMKPiBpbmRleCAxNDk5MTY4NWFkYjcuLjU4YWJmYmRmYjgyZCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL210ay1tZHAvbXRrX21kcF9jb21wLmMKPiArKysg
Yi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL210ay1tZHAvbXRrX21kcF9jb21wLmMKPiBAQCAtMTUs
MTAgKzE1LDEwIEBACj4KPgo+ICBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IG10a19tZHBfY29t
cF9zdGVtW01US19NRFBfQ09NUF9UWVBFX01BWF0gPSB7Cj4gLSAgICAgICAibWRwX3JkbWEiLAo+
IC0gICAgICAgIm1kcF9yc3oiLAo+IC0gICAgICAgIm1kcF93ZG1hIiwKPiAtICAgICAgICJtZHBf
d3JvdCIsCj4gKyAgICAgICAibWRwLXJkbWEiLAo+ICsgICAgICAgIm1kcC1yc3oiLAo+ICsgICAg
ICAgIm1kcC13ZG1hIiwKPiArICAgICAgICJtZHAtd3JvdCIsCj4gIH07Cj4KPiAgc3RydWN0IG10
a19tZHBfY29tcF9tYXRjaCB7Cj4gLS0KPiAyLjI2LjAuMTEwLmcyMTgzYmFmMDljLWdvb2cKPgo+
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51
eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKPiBMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQu
b3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1t
ZWRpYXRlawoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
