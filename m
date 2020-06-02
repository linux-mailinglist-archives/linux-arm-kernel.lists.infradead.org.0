Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6593F1EB757
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 10:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phu5uXyrXMHqz/ocVSRAUZP3vK3b4UPh+j3UW0aOXm4=; b=ItzHwakbX5pDFX
	hKaXKJ7/rh90DWON1MKAlfAWd+/zGgBOtJjNf1Xmx61FWoB3Tl4tlG6nvyEpLhOFuFuWXrTmUkH9U
	Vn3huH/q2oc0AtAOb39QOudogtZC7NAe+wgBSRt8PUdYbfg19cHJ8fJuIkVnunI/AZxHozzqiRDTU
	iupmzem136Fkh4lUUKaQ3rpUckEoJZSLpNRarvZ8FTpSS9wJpSaGwUKgcJNZHOQY5/mdDEiX/vZve
	9U5QNam6EEzwt3RM6cIZXkUogbkgCPqqgvvn4wJlnnZWgcduL/ZGOLlQ34wu7DHGZYijiP+d9jNmk
	Z5lGS9xBwHqSXgChdXiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg2Hb-0006pb-Jt; Tue, 02 Jun 2020 08:28:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2HU-0006ne-4p
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 08:28:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id j10so2422098wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 01:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=THpbqsIqcsaX8JFjkYqBpTRk1wV1aSkOMzOPc76FV+E=;
 b=Z2jt/IiEH08fKBjSDJW/rFkEDpi1SROeqBKQwYrsMkbHq7Dk0FvTxMe18SCdyWn6DA
 cA7BkgouNeJ2A7P1omaDU8w8B91/5SCDKgmVGagtq0OQs8PrixL9xFUzs+pALxIKecSU
 vOHjiyh7QDf/XqPep7KcBc6jTB9OaU9RYAQ+HSgUTVGn4lLHChfpp4t1Tn9XktuWJbc1
 u9GwPRfQV65HNE4RYo03toMPhu9gqrAotSVEmwwNKMIGcE32PgYrdRKt6LGFszNh4OMG
 tZc6ajirZPPYUDTwyrN/iyIE3WKyotRCT6gJqNAfvU4tXgrLZfMg8HloFXERP7qv8th3
 rILg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=THpbqsIqcsaX8JFjkYqBpTRk1wV1aSkOMzOPc76FV+E=;
 b=HTrc2pd2uRGMftJz7UsMfJL1FleSHj2zhwKc5V/5+80CwnCD4wwlI3EByYwQYJ78Fp
 SHxJwgugDxC0IRFdhPPG1ulB3H8WhMtrF8sdZmdQ73UPfy8LjAEGGzmLnYwN81X4kigx
 udoBDbzrqB0fi7hcf/9jkAMANxw2pkO+Qoo3SSUUCcTFUfe9TDS6vskyOmM5Z4Q1/H2k
 HVT9pJv7aSQBZkcTqZx6HU8A5PBhdfYmadxzN6j+aXS36Q+68e2lMaW6rX5Sa3xa/jK6
 W0mq37aeJwotiMpZ1AsnvuA1o200D7fdolGCxm3S6gX1kxvA1u/kOd3JMgMKryFF80Jp
 g7Ug==
X-Gm-Message-State: AOAM533dEAjqORtReU0hAN8r6eia81QCrggHAAOfrSCEvUA+3a/wHdaN
 yXaLkUlVThqOXzkmZjYyy2TUcw==
X-Google-Smtp-Source: ABdhPJyfWM51ssitVrKZ+ILxEdr3bQxiA49aRTHpesRfUbEo6cvOqTynK9IKviDUA5E06Y92l1RKIg==
X-Received: by 2002:adf:fd41:: with SMTP id h1mr26422025wrs.374.1591086498236; 
 Tue, 02 Jun 2020 01:28:18 -0700 (PDT)
Received: from dell ([95.147.198.92])
 by smtp.gmail.com with ESMTPSA id l2sm2480817wru.58.2020.06.02.01.28.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 01:28:17 -0700 (PDT)
Date: Tue, 2 Jun 2020 09:28:16 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH v10] mfd: mt6360: add pmic mt6360 driver
Message-ID: <20200602082816.GC3714@dell>
References: <1591070142-7653-1-git-send-email-gene.chen.richtek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591070142-7653-1-git-send-email-gene.chen.richtek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_012820_194009_42413F1B 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwMiBKdW4gMjAyMCwgR2VuZSBDaGVuIHdyb3RlOgoKPiBGcm9tOiBHZW5lIENoZW4g
PGdlbmVfY2hlbkByaWNodGVrLmNvbT4KPiAKPiBBZGQgTUZEIGRyaXZlciBmb3IgbXQ2MzYwIHBt
aWMgY2hpcCBpbmNsdWRlIEJhdHRlcnkgQ2hhcmdlci8KPiBVU0JfUEQvRmxhc2gsIExFRC9SR0Ig
YW5kIExFRC9MRE8vQnVjawo+IAo+IFNpZ25lZC1vZmYtYnk6IEdlbmUgQ2hlbiA8Z2VuZV9jaGVu
QHJpY2h0ZWsuY29tPgo+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFy
by5vcmc+CgpJIGRpZCBub3Qgc2lnbiB0aGlzIG9mZi4KCj4gLS0tCj4gIGRyaXZlcnMvbWZkL0tj
b25maWcgICAgICAgIHwgIDEyICsrCj4gIGRyaXZlcnMvbWZkL01ha2VmaWxlICAgICAgIHwgICAx
ICsKPiAgZHJpdmVycy9tZmQvbXQ2MzYwLWNvcmUuYyAgfCA0MjQgKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIGluY2x1ZGUvbGludXgvbWZkL210NjM2MC5o
IHwgMjQwICsrKysrKysrKysrKysrKysrKysrKysrKysKPiAgNCBmaWxlcyBjaGFuZ2VkLCA2Nzcg
aW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZmQvbXQ2MzYwLWNv
cmUuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZmQvbXQ2MzYwLmgKPiAK
PiBjaGFuZ2Vsb2dzIGJldHdlZW4gdjEgJiB2Mgo+IC0gaW5jbHVkZSBtaXNzaW5nIGhlYWRlciBm
aWxlCj4gCj4gY2hhbmdlbG9ncyBiZXR3ZWVuIHYyICYgdjMKPiAtIGFkZCBjaGFuZ2Vsb2dzCj4g
Cj4gY2hhbmdlbG9ncyBiZXR3ZWVuIHYzICYgdjQKPiAtIGZpeCBLY29uZmlnIGRlc2NyaXB0aW9u
Cj4gLSByZXBsYWNlIG10NjM2MF9wbXVfaW5mbyB3aXRoIG10NjM2MF9wbXVfZGF0YQo+IC0gcmVw
bGFjZSBwcm9iZSB3aXRoIHByb2JlX25ldwo+IC0gcmVtb3ZlIHVubmVjZXNzYXJ5IGlycV9jaGlw
IHZhcmlhYmxlCj4gLSByZW1vdmUgYW5ub3RhdGlvbgo+IC0gcmVwbGFjZSBNVDYzNjBfTUZEX0NF
TEwgd2l0aCBPRl9NRkRfQ0VMTAo+IAo+IGNoYW5nZWxvZ3MgYmV0d2VlbiB2NCAmIHY1Cj4gLSBy
ZW1vdmUgdW5uZWNlc3NhcnkgcGFyc2UgZHQgZnVuY3Rpb24KPiAtIHVzZSBkZXZtX2kyY19uZXdf
ZHVtbXlfZGV2aWNlCj4gLSBhZGQgYmFzZS1jb21taXQgbWVzc2FnZQo+IAo+IGNoYW5nZWxvZ3Mg
YmV0d2VlbiB2NSAmIHY2Cj4gLSByZXZpZXcgcmV0dXJuIHZhbHVlCj4gLSByZW1vdmUgaTJjIGlk
X3RhYmxlCj4gLSB1c2UgR1BMIGxpY2Vuc2UgdjIKPiAKPiBjaGFuZ2Vsb2dzIGJldHdlZW4gdjYg
JiB2Nwo+IC0gYWRkIGF1dGhvciBkZXNjcmlwdGlvbgo+IC0gcmVwbGFjZSBNVDYzNjBfUkVHTUFQ
X0lSUV9SRUcgYnkgUkVHTUFQX0lSUV9SRUdfTElORQo+IC0gcmVtb3ZlIG10NjM2MC1wcml2YXRl
LmgKPiAKPiBjaGFuZ2Vsb2dzIGJldHdlZW4gdjcgJiB2OAo+IC0gZml4IGtidWlsZCBhdXRvIHJl
Ym9vdCBieSBpbmNsdWRlIGludGVycnVwdCBoZWFkZXIKPiAKPiBjaGFuZ2Vsb2dzIGJldHdlZW4g
djggJiB2OQo+IC0gZml4IEdQTCBsaWNlbnNlIG91dCBvZiBkYXRlCj4gLSBhZGQgY29tbWl0IG1l
c3NhZ2UgYWJvdXQgQWNrZWQtZm9yLU1GRC1ieQo+IAo+IGNoYW5nZWxvZ3MgYmV0d2VlbiB2OSAm
IHYxMAoKdjkgb2YgdGhpcyBwYXRjaCBpcyBhbHJlYWR5IGFwcGxpZWQuCgpZb3UgY2Fubm90IHNl
bmQgYSB2MTAuCgo+IC0gZml4IGR1cGxpY2F0ZSBkZWZpbmUgb2Yga2J1aWxkIHRlc3QgcmVib290
IGluaXRpYWxpemVyLW92ZXJyaWRlcwoKSSBmaXhlZCB0aGlzIGFscmVhZHkuCgpodHRwczovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9sZWUvbWZkLmdpdC9jb21taXQv
P2g9Zm9yLW1mZC1uZXh0JmlkPTA5OGM0YWRmMjQ5YzE5ODUxOWE0YWJlYmU0ODJiMWU2YjhjNTBl
NDcKCj4gLSBzeW5jIGNvbW1pdCBtZXNzYWdlIGZvcm1hdAoKLS0gCkxlZSBKb25lcyBb5p2O55C8
5pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdp
dHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
