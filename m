Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9801F1FF2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 21:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ww0GpbHbLJ6hOdHrpmiGBsO2Z1rBgLx4fngFC0oJWGs=; b=V5Opze1IED/GO6
	zGS9mSqHsQ4aOh72IvBA2qHuX3iR9iCcRG6r1f3XXzWkWRdfkFdz84Zv/PxaluJ7CwHQD6q0dMoJf
	hacamjqUvu0eVSF1sZEYAhlnl7ZL+nMRqX9CbeqUUKLCuPcoM7XSNh1P+LJU7zCpOHCH7BoZ0VI55
	6Ivqqst+khL/33nX3wAtTDyRQj17R94L5jqX9P0d3oZh5vqYSVacuPLjs/91gGl1IeWGG1/sBMwIB
	IR6n6Ux9/uNTl9H7vGc3rc4Ku/suwJQhLiuuw4srt3mcLMfcpNmBE6V5/pJuqUEdJ2b+Rqb94g1jf
	EW8vc2QqeVPFavKuCRqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiNTk-0007DI-B8; Mon, 08 Jun 2020 19:30:40 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiNRg-0003Eb-Rg
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 19:28:35 +0000
Received: by mail-wr1-x443.google.com with SMTP id x6so18665644wrm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 12:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=nNfoDipJXnYq7VJ5hMTMW93JkoBjEN3XF2dENorzijs=;
 b=EhpM/xsxL6PmflZhqLC1Kz1772OJH/9mtEZ9xvB5MG7h4Ta7W8GwdjMKzhPwwup78R
 x3NA7CMImhUeJzDJe9tz2HDD/hiYzRWRRaKGwDP8i+/GAq80GTqev0yKjj1z05GzJxnI
 XQzU5YBbvUTu+7LTSog2YHO4eGxNjwO0t4X5IugL9GgaXjArxsvt4eEncBh8F5yg753d
 V2ViUW1FvckLJChRrKKE6sPjS9fQKVOTbxH7pszf+DYjMfBM+1Hc5KsGKFzXoRuMCHdq
 qcIog949KsxfTcnLMEjp/n5ZzR92+H2nxE/UzteEtxPNVswUgdyHEkmFQJO9wL+foEcN
 CXXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=nNfoDipJXnYq7VJ5hMTMW93JkoBjEN3XF2dENorzijs=;
 b=Te6liTK0/f/opvLC+zJPhC5cTsTT+RinvQe9yrLhuEortLDys6KWzKs63lHNPAfMBG
 FwJ9mf879ISq/vLu23gjhzuzxvA/xpi+0oTGjgs1oAEoWflMiofq7PN0PbLlEATevVy9
 +Rl5JSQ/6DgDwG0wNvRuXTdZc6aDjGHqrlG4MmgoI7n32BF0Ho/ozAmbmc8UN8KYf4L3
 nmtXveD3XOKIl36T8LvOlQJKDq7YwXwlqYkz7MHts1hQ3R+UKEbdlyTmGfGMmtxojVy8
 mWuENYnK4UQmQUNE+YRrwqYv7OPzoOEh8FEusLuaRSXkTiVI07EgU7gWlZUoERgkYcwx
 6Dtw==
X-Gm-Message-State: AOAM530zl+RlGQy073UuxM0ToaLLGHlpk5Xj4/ZeMoh9K4E2+2SvwVlD
 6ys09m2GOy3mqgeRlCk9G56kWw==
X-Google-Smtp-Source: ABdhPJwFT/4AGR1g3XBLbVOb2Lb1zJ42emgmqdFC7+HcborRvYs9taXcrKFmaFuvTjXIcnZBJadnAA==
X-Received: by 2002:adf:9d8e:: with SMTP id p14mr347943wre.236.1591644511323; 
 Mon, 08 Jun 2020 12:28:31 -0700 (PDT)
Received: from dell ([95.147.198.92])
 by smtp.gmail.com with ESMTPSA id c70sm473889wme.32.2020.06.08.12.28.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 12:28:30 -0700 (PDT)
Date: Mon, 8 Jun 2020 20:28:29 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH] mfd: mt6360: Fix register driver NULL pointer by add
 driver name
Message-ID: <20200608192829.GG4106@dell>
References: <1591609125-3761-1-git-send-email-gene.chen.richtek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591609125-3761-1-git-send-email-gene.chen.richtek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_122832_940046_04F128CE 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAwOCBKdW4gMjAyMCwgR2VuZSBDaGVuIHdyb3RlOgoKPiBGcm9tOiBHZW5lIENoZW4g
PGdlbmVfY2hlbkByaWNodGVrLmNvbT4KPiAKPiBhY2NpZGVudGFsbHkgcmVtb3ZlIGRyaXZlciBu
YW1lIHdoZW4KPiByZXBsYWNlIHByb2JlIGJ5IHByb2JlX25ldyBpbiBhZGQgbXQ2MzYwIG1mZCBk
cml2ZXIgcGF0Y2ggdjQKPiAKPiBbICAxMjEuMjQzMDEyXSBFQVg6IGMyYThiYzY0IEVCWDogMDAw
MDAwMDAgRUNYOiAwMDAwMDAwMCBFRFg6IDAwMDAwMDAwCj4gWyAgMTIxLjI0MzAxMl0gRVNJOiBj
MmE4YmM3OSBFREk6IDAwMDAwMDAwIEVCUDogZTU0YmRlYTggRVNQOiBlNTRiZGVhMAo+IFsgIDEy
MS4yNDMwMTJdIERTOiAwMDdiIEVTOiAwMDdiIEZTOiAwMDAwIEdTOiAwMDAwIFNTOiAwMDY4IEVG
TEFHUzogMDAwMTAyODYKPiBbICAxMjEuMjQzMDEyXSBDUjA6IDgwMDUwMDMzIENSMjogMDAwMDAw
MDAgQ1IzOiAwMmVjMzAwMCBDUjQ6IDAwMDAwNmIwCj4gWyAgMTIxLjI0MzAxMl0gQ2FsbCBUcmFj
ZToKPiBbICAxMjEuMjQzMDEyXSAga3NldF9maW5kX29iaisweDNkLzB4YzAKPiBbICAxMjEuMjQz
MDEyXSAgZHJpdmVyX2ZpbmQrMHgxNi8weDQwCj4gWyAgMTIxLjI0MzAxMl0gIGRyaXZlcl9yZWdp
c3RlcisweDQ5LzB4MTAwCj4gWyAgMTIxLjI0MzAxMl0gID8gaTJjX2Zvcl9lYWNoX2RldisweDM5
LzB4NTAKPiBbICAxMjEuMjQzMDEyXSAgPyBfX3Byb2Nlc3NfbmV3X2FkYXB0ZXIrMHgyMC8weDIw
Cj4gWyAgMTIxLjI0MzAxMl0gID8gY2h0X3djX2RyaXZlcl9pbml0KzB4MTEvMHgxMQo+IFsgIDEy
MS4yNDMwMTJdICBpMmNfcmVnaXN0ZXJfZHJpdmVyKzB4MzAvMHg4MAo+IFsgIDEyMS4yNDMwMTJd
ICA/IGludGVsX2xwc3NfcGNpX2RyaXZlcl9pbml0KzB4MTYvMHgxNgo+IFsgIDEyMS4yNDMwMTJd
ICBtdDYzNjBfcG11X2RyaXZlcl9pbml0KzB4Zi8weDExCj4gWyAgMTIxLjI0MzAxMl0gIGRvX29u
ZV9pbml0Y2FsbCsweDMzLzB4MWEwCj4gWyAgMTIxLjI0MzAxMl0gID8gcGFyc2VfYXJncysweDFl
Yi8weDNkMAo+IFsgIDEyMS4yNDMwMTJdICA/IF9fbWlnaHRfc2xlZXArMHgzMS8weDkwCj4gWyAg
MTIxLjI0MzAxMl0gID8ga2VybmVsX2luaXRfZnJlZWFibGUrMHgxMGEvMHgxN2YKPiBbICAxMjEu
MjQzMDEyXSAga2VybmVsX2luaXRfZnJlZWFibGUrMHgxMmMvMHgxN2YKPiBbICAxMjEuMjQzMDEy
XSAgPyByZXN0X2luaXQrMHgxMTAvMHgxMTAKPiBbICAxMjEuMjQzMDEyXSAga2VybmVsX2luaXQr
MHhiLzB4MTAwCj4gWyAgMTIxLjI0MzAxMl0gID8gc2NoZWR1bGVfdGFpbF93cmFwcGVyKzB4OS8w
eGMKPiBbICAxMjEuMjQzMDEyXSAgcmV0X2Zyb21fZm9yaysweDE5LzB4MjQKPiBbICAxMjEuMjQz
MDEyXSBNb2R1bGVzIGxpbmtlZCBpbjoKPiBbICAxMjEuMjQzMDEyXSBDUjI6IDAwMDAwMDAwMDAw
MDAwMDAKPiBbICAxMjEuMjQzMDEyXSByYW5kb206IGdldF9yYW5kb21fYnl0ZXMgY2FsbGVkIGZy
b20gaW5pdF9vb3BzX2lkKzB4M2EvMHg0MCB3aXRoIGNybmdfaW5pdD0wCj4gWyAgMTIxLjI0MzAx
Ml0gLS0tWyBlbmQgdHJhY2UgMzhhODAzNDAwZjFhMmJlZSBdLS0tCj4gWyAgMTIxLjI0MzAxMl0g
RUlQOiBzdHJjbXArMHgxMS8weDMwCgpIb3cgZGlkIHRoaXMgZHJpdmVyIGV2ZXIgd29yayBmb3Ig
eW91PwoKPiBTaWduZWQtb2ZmLWJ5OiBHZW5lIENoZW4gPGdlbmVfY2hlbkByaWNodGVrLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9tZmQvbXQ2MzYwLWNvcmUuYyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQvbXQ2MzYwLWNv
cmUuYyBiL2RyaXZlcnMvbWZkL210NjM2MC1jb3JlLmMKPiBpbmRleCBkYjhjZGY1Li5lOWNhY2My
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWZkL210NjM2MC1jb3JlLmMKPiArKysgYi9kcml2ZXJz
L21mZC9tdDYzNjAtY29yZS5jCj4gQEAgLTQxMiw2ICs0MTIsNyBAQCBNT0RVTEVfREVWSUNFX1RB
QkxFKG9mLCBtdDYzNjBfcG11X29mX2lkKTsKPiAgCj4gIHN0YXRpYyBzdHJ1Y3QgaTJjX2RyaXZl
ciBtdDYzNjBfcG11X2RyaXZlciA9IHsKPiAgCS5kcml2ZXIgPSB7Cj4gKwkJLm5hbWUgPSAibXQ2
MzYwX3BtdSIsCj4gIAkJLnBtID0gJm10NjM2MF9wbXVfcG1fb3BzLAo+ICAJCS5vZl9tYXRjaF90
YWJsZSA9IG9mX21hdGNoX3B0cihtdDYzNjBfcG11X29mX2lkKSwKPiAgCX0sCgotLSAKTGVlIEpv
bmVzIFvmnY7nkLzmlq9dClNlbmlvciBUZWNobmljYWwgTGVhZCAtIERldmVsb3BlciBTZXJ2aWNl
cwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93
IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
