Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B80E1667
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 11:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYAx2lqzP5Hx6CSEEwskJ75Pp5sbB4Wo4VlhDmM78tU=; b=Rn9fBocu9sld/F
	pTvC+Js+//MmC/vd8qVu3DlcJeRyDgzFOJ1QvGf5uyTvp/QC7vAVHmTtU1NN/rRGL68x30kRD+jFT
	j9B+AQhjupOjsISna/q07Gr2YopEeIS9tfOi8sFNaq6LbNkroFC2Jir/s0Ynf5WgJArAbju6bs4B2
	J6bkujEN+z2FtXcfIjhJ6jnGeytyTkZLJq1OQWd/k6gabATDRdNKqXIY+tNfSvzp2H+T+MFyBPE58
	FhjE74jdXT5yApfTlsd8SPxwPW2xasEul2cufxdTFa83IKISUhGC3a1+lYWUa/EnpUmIZZliHlfMc
	eiufkzCab/8fhwL9cCKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iND8Z-0001wB-VH; Wed, 23 Oct 2019 09:41:03 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iND8K-0001sR-Oo
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 09:40:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id t16so16155414wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 02:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=T1vZzFViZyMkNTAaMLcRtzCAcI3MmnDKFouAR6APmLw=;
 b=baqvOwE4akmVAZoKsYSgsHLHqy6z2Ogz6Fh2kYLnw+faVDaGNCl83nolJogzWCqyP5
 W0zBf5tSZqoPFjZUkouxLd9gDLNMjFaTkSlQlE6ZdoVRV3DewMuf3jI7i1g2KDITYfCF
 BxvupF/D4ssQasSWtotBkG/uwDB68xzfxuI09jr63uOP+1B5+rbI3cweZ8Kt0keGj7RT
 WZEprvrNLFm8fCHsK1g55qBu9NKRQCGsWJP+YyKFU/1Mi+x0VGHnzgdO0pLNX9ZUTxFt
 5OlGNAMlbAEQG6gENZoOXxfQnaQzwcRwLr83wcDXelInl6p8ZeLiBdX85bjfQjEiwHUE
 KFGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=T1vZzFViZyMkNTAaMLcRtzCAcI3MmnDKFouAR6APmLw=;
 b=Qghy9g9ZXET/iUinXXFHPhe/NrEiyVx2klt3DHsU8YsfCzfP88v+ZD9L3RuvV/ZwiE
 x6VX7BgTGlJlKyozfolMYABqhbZjtotrQkz28u6LpK5RNiLpVyhnJPhftjFVJw5QTZ4q
 iIctREfvvb5ZRPHVJuVEcxitDBYfoU0xhJdz6eoEpqrmZbjR9CQARJmUVm8D1SDm0+Wp
 utg5X9QnfuvXzZqqikd+m7PnduSvmb55SrmQAluzpq47m2a1Qq+NY0/XeYCXwqEs/wXS
 OJcGA4cx0DtOP8/Xly3yX6isUesKX5L08kI+43FonXFxUUiO7oMb7YovMHs2qupk1VwC
 qY9A==
X-Gm-Message-State: APjAAAVLpDvWf9fnUPRax44jjX90xL+yAvVlFopdsRIMl8tLQIrzqCKH
 xrwBpIVfmNcTc/IFGxEY+XnuIw==
X-Google-Smtp-Source: APXvYqycXcyw31uAAhWTtIQ5erAv+53zHhtWrf7wMIsRejx/pwbJLyNDcoWiQ9gT5mZGlllhEUK4wg==
X-Received: by 2002:adf:978a:: with SMTP id s10mr7889652wrb.264.1571823645654; 
 Wed, 23 Oct 2019 02:40:45 -0700 (PDT)
Received: from dell ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id r5sm3650011wrs.57.2019.10.23.02.40.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 23 Oct 2019 02:40:45 -0700 (PDT)
Date: Wed, 23 Oct 2019 10:40:43 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH v3] mfd: mt6360: add pmic mt6360 driver
Message-ID: <20191023094043.GB19477@dell>
References: <1569338741-2784-1-git-send-email-gene.chen.richtek@gmail.com>
 <20191004133324.GE18429@dell>
 <CAE+NS37bQyWknxy+bXYZqyHH_3RbhTQJc5fVd=ibjV6QMz_rew@mail.gmail.com>
 <CAE+NS37TEcfxOy97WL0kQ2u8zM9sbROaEr-1b81hX2eoqh-sfg@mail.gmail.com>
 <20191016100438.GF4365@dell>
 <CAE+NS36Pdc8zutu=GpNQkREyEu07iLF8NDMtSQcUJE3RuuT2VQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAE+NS36Pdc8zutu=GpNQkREyEu07iLF8NDMtSQcUJE3RuuT2VQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_024048_841320_AABEB759 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

T24gVHVlLCAyMiBPY3QgMjAxOSwgR2VuZSBDaGVuIHdyb3RlOgoKPiAyMDE5LTEwLTE2IDE4OjA0
IEdNVCswODowMCwgTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz46Cj4gPiBPbiBUdWUs
IDE1IE9jdCAyMDE5LCBHZW5lIENoZW4gd3JvdGU6Cj4gPgo+ID4+IEhpIExlZSwKPiA+Pgo+ID4+
IHdlIGZpbmQgT0ZfTUZEX0NFTEwgaXMgbm90IGRlZmluZWQgaW4gbWZkL2NvcmUuaCwgd2hpY2gg
aXMgcmVhZHkgdG8KPiA+PiBtZXJnZSB0byBuZXh0IGtlcm5lbCB2ZXJzaW9uCj4gPj4gaHR0cHM6
Ly9rZXJuZWwuZ29vZ2xlc291cmNlLmNvbS9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbmV4dC9s
aW51eC1uZXh0LWhpc3RvcnkvKy9tYXN0ZXIvTmV4dC9tZXJnZS5sb2cKPiA+Cj4gPiBJdCdzIGhl
cmU6Cj4gPgo+ID4gTWVyZ2luZyBtZmQvZm9yLW1mZC1uZXh0ICgzOGE2ZmM2M2EzZWEgbWZkOiBk
Yjg1MDAtcHJjbXU6IEV4YW1wbGUgdXNpbmcgbmV3Cj4gPiBPRl9NRkRfQ0VMTC9NRkRfQ0VMTF9C
QVNJQyBNQUNST3MpCj4gPiAkIGdpdCBtZXJnZSBtZmQvZm9yLW1mZC1uZXh0Cj4gPiBNZXJnZSBt
YWRlIGJ5IHRoZSAncmVjdXJzaXZlJyBzdHJhdGVneS4KPiA+ICBkcml2ZXJzL21mZC9hYjg1MDAt
Y29yZS5jICAgIHwgMTM4Cj4gPiArKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCj4gPiAgZHJpdmVycy9tZmQvZGI4NTAwLXByY211LmMgICB8ICAyMSArKystLS0tCj4g
PiAgZHJpdmVycy9tZmQvaW50ZWwtbHBzcy1wY2kuYyB8ICAyOCArKysrKystLS0KPiA+ICBkcml2
ZXJzL21mZC9pcGFxLW1pY3JvLmMgICAgIHwgICA2ICstCj4gPiAgZHJpdmVycy9tZmQvcms4MDgu
YyAgICAgICAgICB8ICAyMiArKy0tLS0tCj4gPiAgaW5jbHVkZS9saW51eC9tZmQvY29yZS5oICAg
ICB8ICAyOSArKysrKysrKysgICAgICAgICAgICAgICAgPD09PT09IFtUSElTCj4gPiBPTkVdCj4g
PiAgaW5jbHVkZS9saW51eC9tZmQvcms4MDguaCAgICB8ICAgMiArLQo+ID4gIDcgZmlsZXMgY2hh
bmdlZCwgMTA1IGluc2VydGlvbnMoKyksIDE0MSBkZWxldGlvbnMoLSkKPiA+Cj4gPiBodHRwczov
L2tlcm5lbC5nb29nbGVzb3VyY2UuY29tL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xp
bnV4LW5leHQtaGlzdG9yeS8rL21hc3Rlci9OZXh0L21lcmdlLmxvZyM0NDcwCj4gPgo+IAo+IEkg
dGhvdWdodCBpIG5lZWQgdG8gd2FpdCB0aGlzICJtZmQvZm9yLW1mZC1uZXh0IiBwYXRjaCBtZXJn
ZSB0byBsYXRlc3QKPiBjb2RlYmFzZSwgYnV0IHdlIGNhbid0IGFjdHVhbGx5IGdldCB0aGUgZGF0
ZSBvciB2ZXJzaW9uIChlLmcuIExpbnV4Cj4gNS40LXJjNCkgbGFuZGluZwo+IGFuZCBpIHRyeSBj
b21tYW5kICJnaXQgbWVyZ2UgbWZkL2Zvci1tZmQtbmV4dCIgd2hpY2ggYWxzbyBjYW4ndCB3b3Jr
Cj4gbWF5IGkgYXNrIGhvdyB0byBwdWxsIHRoaXMgcGF0Y2ggZm9yIHRlbXBvcmFyaWx5IGJ1aWxk
IHBhc3M/CgpSZWJhc2Ugb250byBmb3ItbWZkLW5leHQgb3IgY2hlcnJ5LXBpY2sgdGhlIGNvbW1p
dCB5b3UgbmVlZC4KClRoZSB0cmVlIGlzIGxvY2F0ZWQgaGVyZToKCiAgaHR0cHM6Ly9naXQua2Vy
bmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbGVlL21mZC5naXQvCgotLSAKTGVlIEpv
bmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3Jn
IOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFj
ZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
