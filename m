Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9058184FE2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 17:29:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDCX49KHrcO+qsQOl2ybHBg27Bn4xXFtF7IDH4EkUqU=; b=LUGjw5tAQnImAY
	Ed2KFY/KoKl7c/AVxnG64cfNJDub42VTpW3zw3gr2MqEqJ6IqPyWyOBFy+3mWzLPpalVIHZM+gDQZ
	RsdCK+kwTE20vB6qAE5fHY8ASTxTwLGJUwl9oL/L2ANUGGbYKBzI8j0fH2q7/hTvg7ynnTxaBOyYS
	s2D5Gd31fhDZvwxugozS1N8k4iYn0yz7X6Q5L4OmvHyWp+ZS3I0hE0hyEb3vP9ZFFXdpS5Tc/D0rA
	pWZNAQs2FhMei31ej6AYmr6p/UGSktXvxx2bg9rUjgPzPfQ1tCyEtaGM6nDZItnxYW78qxME1zoNi
	eqxOBJclco5p2ZzZ/YRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNry-0003Qv-6g; Wed, 07 Aug 2019 15:28:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNri-0003QL-KN
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 15:28:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id v19so449396wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 08:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=J2AxcJjTu4Em2coCWWa3ZaD+BRTicwzIxGa7Qvvd3rw=;
 b=pko8c1D1aNeK/Wvm+bO/5XEEt4y6uMaXC6vj+i+eNuI9tg6Uie6LjG7sAOcNEHYoOk
 mYHbOpwvmIGq91Ky9OIaoq465kLZkBefxD2SuHoGpQ1wdbxLSizqITWpsjPzP/XQKLrQ
 nDSvlTxMLqD5kUrn6FftauflqcjP4FXSt6T+d34I32aGNTctXvhgAbt/cFgv2HSiVHrO
 lGjRV7s1wjwkbHTgciB7d23c+3ylZPOmAIY+p017qY3Ll2rcCkpZhVm8ONKBZd8irT7e
 lIGabt0+pkI1YymwB+hZnffI/I8eDAYfYVLI6aFrMvsuYQqyO35K4yiJJKj1bt3fGasB
 mouw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=J2AxcJjTu4Em2coCWWa3ZaD+BRTicwzIxGa7Qvvd3rw=;
 b=H+i8mywmJPBR4SVB6fz4QXjPlmzUqZb66Shx0bc6PgAjWho5aiQF7QculIhUA2D4/r
 bqOzn8GdVVaU/pcWr6E+W4SH161U6asbvSYw0/eHmUpnXosNrFKvnZSUclEjcDQBeiFx
 scFqgIdGvNfwtXqUf4FUSc/LFHmJai/3HgX5MqDwGiRNBK/LZ3gGqDd5zH/xldoTp0qb
 VgpCfGWwVoWhxJPrKaJ73+bcPBHYTV/4+DJD9XSjunpgJELFvGRarAX0CdI0mcuI/nia
 Lvfuw2H+HMYIeDPhEs3zRzYkOUOKJKUiBrOo/hED3x9Plfw6OG6O6wD2vmIGE+Lc5pIc
 WZVg==
X-Gm-Message-State: APjAAAV666hnVcK7DFMR9YFBz/EWgOMSr/Z53z/M+bTZcTmkHwW7TALZ
 zRZgZi2XChTcXFhalxKIXqNJ24TgJpM1LMcUeD0=
X-Google-Smtp-Source: APXvYqwW5WCgzinAjb7xq61mUOt92YHJ1JbOQnTpyr7Jy8pOLiPx/RMXO6UztD9op0ES3Y54p/AuIMtAs4mN+LKyH0E=
X-Received: by 2002:a7b:c051:: with SMTP id u17mr496286wmc.25.1565191716999;
 Wed, 07 Aug 2019 08:28:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190723084104.12639-1-daniel.baluta@nxp.com>
 <20190723084104.12639-4-daniel.baluta@nxp.com>
 <d85909d6-c7cb-c64b-dfa9-6cee6c0da2cb@linux.intel.com>
 <CAEnQRZDr+gj_eiESLNbVUVy1rreRE1nnDgtb3g=CjaRF5Aq9Vw@mail.gmail.com>
 <CAEnQRZDctjdzQ2RjJXhQh+s=d0y_j3Taa51hDaR4bqJ62C=7iQ@mail.gmail.com>
 <85b4a2c4-761e-bdcf-f05e-2fb16c06f11e@linux.intel.com>
In-Reply-To: <85b4a2c4-761e-bdcf-f05e-2fb16c06f11e@linux.intel.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 7 Aug 2019 18:28:25 +0300
Message-ID: <CAEnQRZCE3mxorYpL_nPXiU4MezGDaqUfuFDx8ci0WdXzDa68JA@mail.gmail.com>
Subject: Re: [Sound-open-firmware] [PATCH v2 3/5] ASoC: SOF: Add DT DSP device
 support
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_082838_690150_3A8E9940 
X-CRM114-Status: GOOD (  24.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Peng Fan <peng.fan@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Olaru <paul.olaru@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBBdWcgNywgMjAxOSBhdCA2OjIyIFBNIFBpZXJyZS1Mb3VpcyBCb3NzYXJ0CjxwaWVy
cmUtbG91aXMuYm9zc2FydEBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4KPiA+Pj4+ICtzdGF0
aWMgaW50IHNvZl9kdF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4+Pj4g
K3sKPiA+Pj4+ICsgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gPj4+PiAr
ICAgICBjb25zdCBzdHJ1Y3Qgc29mX2Rldl9kZXNjICpkZXNjOwo+ID4+Pj4gKyAgICAgLypUT0RP
OiBjcmVhdGUgYSBnZW5lcmljIHNuZF9zb2NfeHh4X21hY2ggKi8KPiA+Pj4+ICsgICAgIHN0cnVj
dCBzbmRfc29jX2FjcGlfbWFjaCAqbWFjaDsKPiA+Pj4KPiA+Pj4gSSB3b25kZXIgaWYgeW91IHJl
YWxseSBuZWVkIHRvIHVzZSB0aGUgc2FtZSBzdHJ1Y3R1cmVzLiBGb3IgSW50ZWwgd2UgZ2V0Cj4g
Pj4+IGFic29sdXRlbHkgemVybyBpbmZvIGZyb20gdGhlIGZpcm13YXJlIHNvIHJlbHkgb24gYW4g
QUNQSSBjb2RlYyBJRCBhcyBhCj4gPj4+IGtleSB0byBmaW5kIGluZm9ybWF0aW9uIG9uIHdoaWNo
IGZpcm13YXJlIGFuZCB0b3BvbG9neSB0byB1c2UsIGFuZCB3aGljaAo+ID4+PiBtYWNoaW5lIGRy
aXZlciB0byBsb2FkLiBZb3UgY291bGQgaGF2ZSBhbGwgdGhpcyBpbmZvcm1hdGlvbiBpbiBhIERU
IGJsb2I/Cj4gPj4KPiA+PiBZZXMuIEkgc2VlIHlvdXIgcG9pbnQuIEkgd2lsbCBzdGlsbCBuZWVk
IHRvIG1ha2UgYSBnZW5lcmljIHN0cnVjdHVyZSBmb3IKPiA+PiBzbmRfc29jX2FjcGlfbWFjaCBz
byB0aGF0IGV2ZXJ5b25lIGNhbiB1c2Ugc29mX25vY29kZWNfc2V0dXAgZnVuY3Rpb24uCj4gPj4K
PiA+PiBNYXliZSBzb21ldGhpbmcgbGlrZSB0aGlzOgo+ID4+Cj4gPj4gc3RydWN0IHNuZF9zb2Nf
bWFjaCB7Cj4gPj4gICAgdW5pb24gewo+ID4+ICAgIHN0cnVjdCBzbmRfc29jX2FjcGlfbWFjaCBh
Y3BpX21hY2g7Cj4gPj4gICAgc3RydWN0IHNuZF9zb2Nfb2ZfbWFjaCBvZl9tYWNoOwo+ID4+ICAg
IH0KPiA+PiB9Owo+ID4+Cj4gPj4gYW5kIHRoZW4gY2hhbmdlIHRoZSBwcm90b3R5cGUgb2Ygc29m
X25vY29kZWNfc2V0dXAuCj4gPgo+ID4gSGkgUGllcnJlLAo+ID4KPiA+IEkgZml4ZWQgYWxsIHRo
ZSBjb21tZW50cyBleGNlcHQgdGhlIG9uZSBhYm92ZS4gUmVwbGFjaW5nIHNuZF9zb2NfYWNwaV9t
YWNoCj4gPiB3aXRoIGEgZ2VuZXJpYyBzbmRfc29jX21hY2ggaXMgbm90IHRyaXZpYWwgdGFzay4K
PiA+Cj4gPiBJIHdvbmRlciBpZiBpdCBpcyBhY2NlcHRhYmxlIHRvIGdldCB0aGUgaW5pdGlhbCBw
YXRjaGVzIGFzIHRoZXkgYXJlCj4gPiBub3cgYW5kIGxhdGVyIHN3aXRjaCB0bwo+ID4gZ2VuZXJp
YyBBQ1BJL09GIGFic3RyYWN0aW9uLgo+ID4KPiA+IEFza2luZyB0aGlzIGJlY2F1c2UgZm9yIHRo
ZSBtb21lbnQgb24gdGhlIGkuTVggc2lkZSBJIGhhdmUgb25seQo+ID4gaW1wbGVtZW50ZWQgbm8g
Y29kZWMKPiA+IHZlcnNpb24gYW5kIHdlIGRvbid0IHByb2JlIGFueSBvZiB0aGUgbWFjaGluZSBk
cml2ZXJzIHdlIGhhdmUuCj4gPgo+ID4gU28sIHRoZXJlIGlzIHRoaXMgb25seSBvbmUgbWVtYmVy
IG9mIHNuZF9zb2NfYWNwaV9tYWNoIHRoYXQgaW14Cj4gPiB2ZXJzaW9uIGlzIG1ha2luZyB1c2Ug
b2Y6Cj4gPgo+ID4gICAgbWFjaC0+ZHJ2X25hbWUgPSAic29mLW5vY29kZWMiOwo+ID4KPiA+IFRo
YXQncyBhbGwuCj4gPgo+ID4gSSB0aGluayB0aGUgY2hhbmdlIGFzIGl0IGlzIG5vdyBpcyB2ZXJ5
IGNsZWFuIGFuZCBub24taW50cnVzaXZlLiBMYXRlcgo+ID4gd2Ugd2lsbCBnZXQgb3B0aW9ucyB0
bwo+ID4gcmVhZCBmaXJtd2FyZSBuYW1lIGFuZCBzdHVmZiBmcm9tIERULgo+ID4KPiA+IEFueWhv
dywgSSBkb24ndCB0aGluayB3ZSBjYW4gZ2V0IHJpZCBvZiBzbmRfZGV2X2Rlc2Mgc3RydWN0dXJl
IG9uCj4gPiBpLk1YLiBUaGlzIHdpbGwgYmUgdXNlZAo+ID4gdG8gc3RvcmUgdGhlIGluZm9ybWF0
aW9uIHJlYWQgZnJvbSBEVDoKPiA+Cj4gPiBzdGF0aWMgc3RydWN0IHNvZl9kZXZfZGVzYyBzb2Zf
b2ZfaW14OHF4cF9kZXNjID0gewo+ID4gwrsgICAgICAgLmRlZmF1bHRfZndfcGF0aCA9ICJpbXgv
c29mIiwKPiA+IMK7ICAgICAgIC5kZWZhdWx0X3RwbGdfcGF0aCA9ICJpbXgvc29mLXRwbGciLAo+
ID4gwrsgICAgICAgLm5vY29kZWNfZndfZmlsZW5hbWUgPSAic29mLWlteDgucmkiLAo+ID4gwrsg
ICAgICAgLm5vY29kZWNfdHBsZ19maWxlbmFtZSA9ICJzb2YtaW14OC1ub2NvZGVjLnRwbGciLAo+
ID4gwrsgICAgICAgLm9wcyA9ICZzb2ZfaW14OF9vcHMsCj4gPiB9Owo+ID4KPiA+IEZvciB0aGUg
bW9tZW50IHdlIHdpbGwgb25seSB1c2UgdGhlIGRlZmF1bHQgdmFsdWVzLgo+Cj4gWWVzLCB0aGF0
J3MgZmluZSBmb3Igbm93LiBJZiB5b3UgZG9uJ3QgaGF2ZSBhIHJlYWwgbWFjaGluZSBkcml2ZXIg
dGhlbgo+IHRoZXJlJ3Mgbm90aGluZyB1cmdlbnQgdG8gY2hhbmdlLgo+Cj4gSXMgdGhlIG5ldyB2
ZXJzaW9uIG9uIEdpdEh1Yj8KCk5vdCB5ZXQsIHdpbGwgcHVzaCBpdCB0b2RheSBhbmQgcGluZyB5
b3UuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
