Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C271D8C30
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 02:24:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYRmubl7dr0aOH3+srMtui9E7YbRVMlEz0jatW967F4=; b=Fa54+VOoJhBnyQ
	2X0OnBlCRBFDeZIasgk8lesVlaW4g3zBCCyRaDPgQITQl2zNiYt4KsdfPCJEfriCKMqpP3GlutwCf
	L2ondusfvm+Vna1L9SNYMAC9IG2Mott7jdUmdu/PuzjIqHenAYAT1qsJKP/NiZXMZUMgPBziqxG5s
	DhYGCZ85AbFyXJ8JIh4Q2J2921FrsnS4e5wqahahU5+doSoPMsOLB6ZldIaqQU/BzVanyALtLQWF3
	U1uqKyAj9qlYfXBr7vdKxHfOrX+gB1vJbnjq5r0H9Tluz592c5iYHOx9QoDWck42lOr/pjYXU29vM
	ApDwnxSsgNzKH+WlXdOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaq2y-0006Iy-CX; Tue, 19 May 2020 00:23:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaq2m-0006Hx-1G; Tue, 19 May 2020 00:23:41 +0000
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65D0920715;
 Tue, 19 May 2020 00:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589847819;
 bh=yXFIXoaaIhCB0WBUDuO8+foBCMcSuBqnKo4TZIde9+s=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VYkk+hfQEWe2QCIlDVTrL0JzYcHPFEh2pQdt0SJC4kVCkK3WALYEsbyaJdgWQcF6F
 ZQ1Ir+MKj5YNMBlpRtBD5GfHYyxoMlFJREA29gDzJMhBnSfjLFBttiypFO4VGrQPht
 bot2fl/Y2FZV3XsyOX+jXE6j5v20TbVwRNA45tOM=
Received: by mail-ed1-f41.google.com with SMTP id d24so2218305eds.11;
 Mon, 18 May 2020 17:23:39 -0700 (PDT)
X-Gm-Message-State: AOAM531RbUO+NyTcF5ArINUi5nSjx7fonDqMjQkqGbMN28zUt5aIqBK0
 5pZuKRdBGxG7/ndRG/E5YR2YBlrdvDMl8m/xCw==
X-Google-Smtp-Source: ABdhPJyrGc6vsnr+WmOKuIm4SqDP52pR/PCq2FPaelMHb8IdDO8nVnID9dGFbWG/aRvWQ0W2/TOp4xkr7PE1zmaiNLM=
X-Received: by 2002:aa7:d84b:: with SMTP id f11mr13610097eds.288.1589847817907; 
 Mon, 18 May 2020 17:23:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200518113156.25009-1-matthias.bgg@kernel.org>
 <20200518113156.25009-2-matthias.bgg@kernel.org>
In-Reply-To: <20200518113156.25009-2-matthias.bgg@kernel.org>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Tue, 19 May 2020 08:23:24 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-jo3sjsYPD7MPtuyOxN6XZuGJ1Vd_xUrUoBK94maU5ew@mail.gmail.com>
Message-ID: <CAAOTY_-jo3sjsYPD7MPtuyOxN6XZuGJ1Vd_xUrUoBK94maU5ew@mail.gmail.com>
Subject: Re: [PATCH 2/4] clk/soc: mediatek: mt6797: Bind clock driver from
 platform device
To: matthias.bgg@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_172340_114552_634A949D 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Allison Randal <allison@lohutok.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, mtk01761 <wendell.lin@mediatek.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIE1hdHRoaWFzOgoKPG1hdHRoaWFzLmJnZ0BrZXJuZWwub3JnPiDmlrwgMjAyMOW5tDXmnIgx
OOaXpSDpgLHkuIAg5LiL5Y2INzozMuWvq+mBk++8mgo+Cj4gRnJvbTogTWF0dGhpYXMgQnJ1Z2dl
ciA8bWF0dGhpYXMuYmdnQGdtYWlsLmNvbT4KPgo+IFRoZSBtbXN5cyBkcml2ZXIgaXMgbm93IHRo
ZSB0b3AgbGV2ZWwgZW50cnkgcG9pbnQgZm9yIHRoZSBtdWx0aW1lZGlhCj4gc3lzdGVtIChtbXN5
cyksIHdlIGJpbmQgdGhlIGNsb2NrIGRyaXZlciBieSBjcmVhdGluZyBhIHBsYXRmb3JtIGRldmlj
ZS4KPiBXZSBhbHNvIGJpbmQgdGhlIE1lZGlhVGVrIERSTSBkcml2ZXIgd2hpY2ggaXMgbm90IHll
dCBpbXBsZW1lbnQgYW5kCj4gdGhlcmVmb3Igd2lsbCBlcnJyb3Igb3V0IGZvciBub3cuCj4KClJl
dmlld2VkLWJ5OiBDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4KCj4gU2ln
bmVkLW9mZi1ieTogTWF0dGhpYXMgQnJ1Z2dlciA8bWF0dGhpYXMuYmdnQGdtYWlsLmNvbT4KPiAt
LS0KPgo+ICBkcml2ZXJzL2Nsay9tZWRpYXRlay9jbGstbXQ2Nzk3LW1tLmMgfCA5ICsrLS0tLS0t
LQo+ICBkcml2ZXJzL3NvYy9tZWRpYXRlay9tdGstbW1zeXMuYyAgICAgfCA4ICsrKysrKysrCj4g
IDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9tZWRpYXRlay9jbGstbXQ2Nzk3LW1tLmMgYi9kcml2ZXJz
L2Nsay9tZWRpYXRlay9jbGstbXQ2Nzk3LW1tLmMKPiBpbmRleCA4ZjA1NjUzYjM4N2QuLjAxZmRj
ZTI4NzI0NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Nsay9tZWRpYXRlay9jbGstbXQ2Nzk3LW1t
LmMKPiArKysgYi9kcml2ZXJzL2Nsay9tZWRpYXRlay9jbGstbXQ2Nzk3LW1tLmMKPiBAQCAtOTIs
MTYgKzkyLDEyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX2dhdGUgbW1fY2xrc1tdID0gewo+
ICAgICAgICAgICAgICAgICAgImNsazI2bSIsIDMpLAo+ICB9Owo+Cj4gLXN0YXRpYyBjb25zdCBz
dHJ1Y3Qgb2ZfZGV2aWNlX2lkIG9mX21hdGNoX2Nsa19tdDY3OTdfbW1bXSA9IHsKPiAtICAgICAg
IHsgLmNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ2Nzk3LW1tc3lzIiwgfSwKPiAtICAgICAgIHt9
Cj4gLX07Cj4gLQo+ICBzdGF0aWMgaW50IGNsa19tdDY3OTdfbW1fcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiAgewo+ICsgICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBk
ZXYtPmRldjsKPiArICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSA9IGRldi0+cGFyZW50
LT5vZl9ub2RlOwo+ICAgICAgICAgc3RydWN0IGNsa19vbmVjZWxsX2RhdGEgKmNsa19kYXRhOwo+
ICAgICAgICAgaW50IHI7Cj4gLSAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUgPSBwZGV2
LT5kZXYub2Zfbm9kZTsKPgo+ICAgICAgICAgY2xrX2RhdGEgPSBtdGtfYWxsb2NfY2xrX2RhdGEo
Q0xLX01NX05SKTsKPgo+IEBAIC0xMjEsNyArMTE3LDYgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9y
bV9kcml2ZXIgY2xrX210Njc5N19tbV9kcnYgPSB7Cj4gICAgICAgICAucHJvYmUgPSBjbGtfbXQ2
Nzk3X21tX3Byb2JlLAo+ICAgICAgICAgLmRyaXZlciA9IHsKPiAgICAgICAgICAgICAgICAgLm5h
bWUgPSAiY2xrLW10Njc5Ny1tbSIsCj4gLSAgICAgICAgICAgICAgIC5vZl9tYXRjaF90YWJsZSA9
IG9mX21hdGNoX2Nsa19tdDY3OTdfbW0sCj4gICAgICAgICB9LAo+ICB9Owo+Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc29jL21lZGlhdGVrL210ay1tbXN5cy5jIGIvZHJpdmVycy9zb2MvbWVkaWF0
ZWsvbXRrLW1tc3lzLmMKPiBpbmRleCA3ODNjM2RkMDA4YjIuLmZlZTY0YzhkMzAyMCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3NvYy9tZWRpYXRlay9tdGstbW1zeXMuYwo+ICsrKyBiL2RyaXZlcnMv
c29jL21lZGlhdGVrL210ay1tbXN5cy5jCj4gQEAgLTg4LDYgKzg4LDEwIEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgbXRrX21tc3lzX2RyaXZlcl9kYXRhIG10MjcxMl9tbXN5c19kcml2ZXJfZGF0YSA9
IHsKPiAgICAgICAgIC5jbGtfZHJpdmVyID0gImNsay1tdDI3MTItbW0iLAo+ICB9Owo+Cj4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX21tc3lzX2RyaXZlcl9kYXRhIG10Njc5N19tbXN5c19kcml2
ZXJfZGF0YSA9IHsKPiArICAgICAgIC5jbGtfZHJpdmVyID0gImNsay1tdDY3OTctbW0iLAo+ICt9
Owo+ICsKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBtdGtfbW1zeXNfZHJpdmVyX2RhdGEgbXQ4MTcz
X21tc3lzX2RyaXZlcl9kYXRhID0gewo+ICAgICAgICAgLmNsa19kcml2ZXIgPSAiY2xrLW10ODE3
My1tbSIsCj4gIH07Cj4gQEAgLTMzOSw2ICszNDMsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBv
Zl9kZXZpY2VfaWQgb2ZfbWF0Y2hfbXRrX21tc3lzW10gPSB7Cj4gICAgICAgICAgICAgICAgIC5j
b21wYXRpYmxlID0gIm1lZGlhdGVrLG10MjcxMi1tbXN5cyIsCj4gICAgICAgICAgICAgICAgIC5k
YXRhID0gJm10MjcxMl9tbXN5c19kcml2ZXJfZGF0YSwKPiAgICAgICAgIH0sCj4gKyAgICAgICB7
Cj4gKyAgICAgICAgICAgICAgIC5jb21wYXRpYmxlID0gIm1lZGlhdGVrLG10Njc5Ny1tbXN5cyIs
Cj4gKyAgICAgICAgICAgICAgIC5kYXRhID0gJm10Njc5N19tbXN5c19kcml2ZXJfZGF0YSwKPiAr
ICAgICAgIH0sCj4gICAgICAgICB7Cj4gICAgICAgICAgICAgICAgIC5jb21wYXRpYmxlID0gIm1l
ZGlhdGVrLG10ODE3My1tbXN5cyIsCj4gICAgICAgICAgICAgICAgIC5kYXRhID0gJm10ODE3M19t
bXN5c19kcml2ZXJfZGF0YSwKPiAtLQo+IDIuMjYuMgo+Cj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlz
dAo+IExpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
