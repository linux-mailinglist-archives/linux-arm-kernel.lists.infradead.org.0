Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A4F85AB7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 08:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nebtoUczKrTSYP40WG1f6HNLegoW2c+KeTv8OCCuMIs=; b=R81DCI1pUeHxrY
	Dz5XfFLSqze43v7Io4yagOmtULvEc8AbjHhYsOLhLGuoOY1YLTMEVHdsjbuyyDmgDg44lH4OSSCjv
	VxWpq2LwUgigrOLnxtf5pXDwnXaOvuLUdjELQ9NqFyABpNhqc5uT/cPXSnbVnNT9nUzymQDTEVr5I
	93QqgOk8u/nGbfHXSp+agmVlxTlvwVYKvGvzuRuXwJAkL+N/Rh4SG14GoUOJOPS153J8J1UUstPWq
	50SqMoXjhF+NAShhulCPWxwwttW5E4XLccp/OH0NjXBRa5S2t5nlkr5rk8uKEUrvJ+GbJHOD6AjRv
	ce15RAbrkKqQEaAl2tQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvbu9-0001CF-HQ; Thu, 08 Aug 2019 06:28:05 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvbtv-0001Bs-0d
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 06:27:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id n4so93753322wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 23:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pmLe+2hh12AV2fWDLuCLoZwfalLPQvLzD4g62m50b0k=;
 b=CEHHtXeFjhD+tzAhZywdJN5LwSzFPBqCcPSeVgeVB0ZC8DV1HXnAJ6FiFTZsAFvsVn
 wdncjRt3iob6EbqT5FgWKKUJ+mD55V03FSv8G2E4O0KfIbzha6KDxSJO1QE7DqUl2Goy
 uSwk8JviSdCfCLYjlcNRnTddNDKJscCudG86FTGDWPEOMFmapV90N2vff9vf/4ichait
 OfP6P4oxvTaHHvCb1GV+2ko5/wBg+MmCPqbc33E98ssCFewIZrEM0Q0pGklNxnvPIUKP
 savgTzmYGDzDtiRd1TALzqoYIJ/jRrjeU9XCuM2iOdjZNAH0mtqNd/T8K7ILqvY9q6rD
 KPEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pmLe+2hh12AV2fWDLuCLoZwfalLPQvLzD4g62m50b0k=;
 b=obXDv8XRvZFDxdscEqlYmgehmSiy9Ke2WGVwP0BajmqGrC4MkgTl3L7P2k3vzyl/WC
 ccWfxn6nyA1WZHX4TP9DDBxFWLl9XRgACjmJzMFoGDcPijGZu2PbpJQ3znspbAaU2UbW
 WeivIOE+nZb5g72nRMlwsPP7GyltUbeZRSwAN3wJvsx+ELzZA9X/W8Ue8aeT6M0RlNts
 KLGiA0uV8B9iFWnhwXJIJ9vC9k4SJEVlBF2G29yOUU/lUB/eDPmUslRa8GvRTkwsfwO2
 YEPhJ6K38w/Fl/pxZ3Op37zxVblbsub8csC8kuDT7Je6FvYHzzhFPI5Bgs6jCcle4d1o
 DB+w==
X-Gm-Message-State: APjAAAUpdOmW7NVeWi0bxZDfbcgjRbpHqeLseyyP6HB0Z/ZP66kz8Xmb
 mua1w+h4neNoWbYJ87CIOFLXN2K6fiO5AOgeBxE=
X-Google-Smtp-Source: APXvYqyhsrFyIH7cz50WRIDklFfrjHJbj5ngQDSOUJ0FlFhaOO1kHA+UywUlX5g2SYIxq9GcmgjdbYu20O/31kXZY3E=
X-Received: by 2002:a5d:46cf:: with SMTP id g15mr15347063wrs.93.1565245669397; 
 Wed, 07 Aug 2019 23:27:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190723084104.12639-1-daniel.baluta@nxp.com>
 <20190723084104.12639-4-daniel.baluta@nxp.com>
 <d85909d6-c7cb-c64b-dfa9-6cee6c0da2cb@linux.intel.com>
 <CAEnQRZDr+gj_eiESLNbVUVy1rreRE1nnDgtb3g=CjaRF5Aq9Vw@mail.gmail.com>
 <CAEnQRZDctjdzQ2RjJXhQh+s=d0y_j3Taa51hDaR4bqJ62C=7iQ@mail.gmail.com>
 <85b4a2c4-761e-bdcf-f05e-2fb16c06f11e@linux.intel.com>
 <CAEnQRZCE3mxorYpL_nPXiU4MezGDaqUfuFDx8ci0WdXzDa68JA@mail.gmail.com>
In-Reply-To: <CAEnQRZCE3mxorYpL_nPXiU4MezGDaqUfuFDx8ci0WdXzDa68JA@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 8 Aug 2019 09:27:37 +0300
Message-ID: <CAEnQRZCmKXNxx=mjHRcn6rYQJxzaaPLL4WQf79RZ5Aqdzqcu3Q@mail.gmail.com>
Subject: Re: [Sound-open-firmware] [PATCH v2 3/5] ASoC: SOF: Add DT DSP device
 support
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_232751_087326_65DC4A51 
X-CRM114-Status: GOOD (  26.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

T24gV2VkLCBBdWcgNywgMjAxOSBhdCA2OjI4IFBNIERhbmllbCBCYWx1dGEgPGRhbmllbC5iYWx1
dGFAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgQXVnIDcsIDIwMTkgYXQgNjoyMiBQTSBQ
aWVycmUtTG91aXMgQm9zc2FydAo+IDxwaWVycmUtbG91aXMuYm9zc2FydEBsaW51eC5pbnRlbC5j
b20+IHdyb3RlOgo+ID4KPiA+Cj4gPiA+Pj4+ICtzdGF0aWMgaW50IHNvZl9kdF9wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPj4+PiArewo+ID4gPj4+PiArICAgICBzdHJ1
Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ID4gPj4+PiArICAgICBjb25zdCBzdHJ1Y3Qg
c29mX2Rldl9kZXNjICpkZXNjOwo+ID4gPj4+PiArICAgICAvKlRPRE86IGNyZWF0ZSBhIGdlbmVy
aWMgc25kX3NvY194eHhfbWFjaCAqLwo+ID4gPj4+PiArICAgICBzdHJ1Y3Qgc25kX3NvY19hY3Bp
X21hY2ggKm1hY2g7Cj4gPiA+Pj4KPiA+ID4+PiBJIHdvbmRlciBpZiB5b3UgcmVhbGx5IG5lZWQg
dG8gdXNlIHRoZSBzYW1lIHN0cnVjdHVyZXMuIEZvciBJbnRlbCB3ZSBnZXQKPiA+ID4+PiBhYnNv
bHV0ZWx5IHplcm8gaW5mbyBmcm9tIHRoZSBmaXJtd2FyZSBzbyByZWx5IG9uIGFuIEFDUEkgY29k
ZWMgSUQgYXMgYQo+ID4gPj4+IGtleSB0byBmaW5kIGluZm9ybWF0aW9uIG9uIHdoaWNoIGZpcm13
YXJlIGFuZCB0b3BvbG9neSB0byB1c2UsIGFuZCB3aGljaAo+ID4gPj4+IG1hY2hpbmUgZHJpdmVy
IHRvIGxvYWQuIFlvdSBjb3VsZCBoYXZlIGFsbCB0aGlzIGluZm9ybWF0aW9uIGluIGEgRFQgYmxv
Yj8KPiA+ID4+Cj4gPiA+PiBZZXMuIEkgc2VlIHlvdXIgcG9pbnQuIEkgd2lsbCBzdGlsbCBuZWVk
IHRvIG1ha2UgYSBnZW5lcmljIHN0cnVjdHVyZSBmb3IKPiA+ID4+IHNuZF9zb2NfYWNwaV9tYWNo
IHNvIHRoYXQgZXZlcnlvbmUgY2FuIHVzZSBzb2Zfbm9jb2RlY19zZXR1cCBmdW5jdGlvbi4KPiA+
ID4+Cj4gPiA+PiBNYXliZSBzb21ldGhpbmcgbGlrZSB0aGlzOgo+ID4gPj4KPiA+ID4+IHN0cnVj
dCBzbmRfc29jX21hY2ggewo+ID4gPj4gICAgdW5pb24gewo+ID4gPj4gICAgc3RydWN0IHNuZF9z
b2NfYWNwaV9tYWNoIGFjcGlfbWFjaDsKPiA+ID4+ICAgIHN0cnVjdCBzbmRfc29jX29mX21hY2gg
b2ZfbWFjaDsKPiA+ID4+ICAgIH0KPiA+ID4+IH07Cj4gPiA+Pgo+ID4gPj4gYW5kIHRoZW4gY2hh
bmdlIHRoZSBwcm90b3R5cGUgb2Ygc29mX25vY29kZWNfc2V0dXAuCj4gPiA+Cj4gPiA+IEhpIFBp
ZXJyZSwKPiA+ID4KPiA+ID4gSSBmaXhlZCBhbGwgdGhlIGNvbW1lbnRzIGV4Y2VwdCB0aGUgb25l
IGFib3ZlLiBSZXBsYWNpbmcgc25kX3NvY19hY3BpX21hY2gKPiA+ID4gd2l0aCBhIGdlbmVyaWMg
c25kX3NvY19tYWNoIGlzIG5vdCB0cml2aWFsIHRhc2suCj4gPiA+Cj4gPiA+IEkgd29uZGVyIGlm
IGl0IGlzIGFjY2VwdGFibGUgdG8gZ2V0IHRoZSBpbml0aWFsIHBhdGNoZXMgYXMgdGhleSBhcmUK
PiA+ID4gbm93IGFuZCBsYXRlciBzd2l0Y2ggdG8KPiA+ID4gZ2VuZXJpYyBBQ1BJL09GIGFic3Ry
YWN0aW9uLgo+ID4gPgo+ID4gPiBBc2tpbmcgdGhpcyBiZWNhdXNlIGZvciB0aGUgbW9tZW50IG9u
IHRoZSBpLk1YIHNpZGUgSSBoYXZlIG9ubHkKPiA+ID4gaW1wbGVtZW50ZWQgbm8gY29kZWMKPiA+
ID4gdmVyc2lvbiBhbmQgd2UgZG9uJ3QgcHJvYmUgYW55IG9mIHRoZSBtYWNoaW5lIGRyaXZlcnMg
d2UgaGF2ZS4KPiA+ID4KPiA+ID4gU28sIHRoZXJlIGlzIHRoaXMgb25seSBvbmUgbWVtYmVyIG9m
IHNuZF9zb2NfYWNwaV9tYWNoIHRoYXQgaW14Cj4gPiA+IHZlcnNpb24gaXMgbWFraW5nIHVzZSBv
ZjoKPiA+ID4KPiA+ID4gICAgbWFjaC0+ZHJ2X25hbWUgPSAic29mLW5vY29kZWMiOwo+ID4gPgo+
ID4gPiBUaGF0J3MgYWxsLgo+ID4gPgo+ID4gPiBJIHRoaW5rIHRoZSBjaGFuZ2UgYXMgaXQgaXMg
bm93IGlzIHZlcnkgY2xlYW4gYW5kIG5vbi1pbnRydXNpdmUuIExhdGVyCj4gPiA+IHdlIHdpbGwg
Z2V0IG9wdGlvbnMgdG8KPiA+ID4gcmVhZCBmaXJtd2FyZSBuYW1lIGFuZCBzdHVmZiBmcm9tIERU
Lgo+ID4gPgo+ID4gPiBBbnlob3csIEkgZG9uJ3QgdGhpbmsgd2UgY2FuIGdldCByaWQgb2Ygc25k
X2Rldl9kZXNjIHN0cnVjdHVyZSBvbgo+ID4gPiBpLk1YLiBUaGlzIHdpbGwgYmUgdXNlZAo+ID4g
PiB0byBzdG9yZSB0aGUgaW5mb3JtYXRpb24gcmVhZCBmcm9tIERUOgo+ID4gPgo+ID4gPiBzdGF0
aWMgc3RydWN0IHNvZl9kZXZfZGVzYyBzb2Zfb2ZfaW14OHF4cF9kZXNjID0gewo+ID4gPiDCuyAg
ICAgICAuZGVmYXVsdF9md19wYXRoID0gImlteC9zb2YiLAo+ID4gPiDCuyAgICAgICAuZGVmYXVs
dF90cGxnX3BhdGggPSAiaW14L3NvZi10cGxnIiwKPiA+ID4gwrsgICAgICAgLm5vY29kZWNfZndf
ZmlsZW5hbWUgPSAic29mLWlteDgucmkiLAo+ID4gPiDCuyAgICAgICAubm9jb2RlY190cGxnX2Zp
bGVuYW1lID0gInNvZi1pbXg4LW5vY29kZWMudHBsZyIsCj4gPiA+IMK7ICAgICAgIC5vcHMgPSAm
c29mX2lteDhfb3BzLAo+ID4gPiB9Owo+ID4gPgo+ID4gPiBGb3IgdGhlIG1vbWVudCB3ZSB3aWxs
IG9ubHkgdXNlIHRoZSBkZWZhdWx0IHZhbHVlcy4KPiA+Cj4gPiBZZXMsIHRoYXQncyBmaW5lIGZv
ciBub3cuIElmIHlvdSBkb24ndCBoYXZlIGEgcmVhbCBtYWNoaW5lIGRyaXZlciB0aGVuCj4gPiB0
aGVyZSdzIG5vdGhpbmcgdXJnZW50IHRvIGNoYW5nZS4KPiA+Cj4gPiBJcyB0aGUgbmV3IHZlcnNp
b24gb24gR2l0SHViPwo+Cj4gTm90IHlldCwgd2lsbCBwdXNoIGl0IHRvZGF5IGFuZCBwaW5nIHlv
dS4KClBSIHVwZGF0ZWQ6IGh0dHBzOi8vZ2l0aHViLmNvbS90aGVzb2Zwcm9qZWN0L2xpbnV4L3B1
bGwvMTA0OAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
