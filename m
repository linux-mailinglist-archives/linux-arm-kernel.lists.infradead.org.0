Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F44B1ABBA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptaSAQoy8kRseOseohBRkPfH8oEi26Q+bMynEn/O7KQ=; b=k0FO5tkeQs6zBk
	d5CNhvUHyHWg+/Y7aB8zK4iu5jAgSYz5IHtRKvMep+h2l4bgBb+FxOAmTMgHn2kS92mDZmm6EZT2W
	v5gswjT56qwG+z+GzxkEm7ZRDaWaSkSbLyBW2BVJeHnwf8DTLXCeOMZ446k7Lmf69/4oL6yJIx3G1
	XZoJYEZbxTYZ4eDhTS5ZIJ98psik3XhoUbQh3/B+DNlDNt5ZctHWpxBaf+JCAIw7KAmb3CMQSQfkj
	oHfs5pOxqtvyQG+97Xvg69LLM4UYuYbw2WuY/sK4a7D/4FwXEsapAyvtGFPmAer9GlduVQla0/5+r
	lTPGEfVjfa7Wp8ltDC8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0C6-0007jx-Tn; Thu, 16 Apr 2020 08:48:22 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP0Bw-0007jA-3Y
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:48:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id i10so3804358wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 01:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=gCC6rxpfNBHEEJoswTl2+v3GlY13e+wv1Apu4C5uUJ0=;
 b=qMyY08os0xXarDJEQ8j9nJU1G/4i1ajvSN1547JGWNAU4kptYy+l0ETyItzmwelvLC
 nCDep5Cl1t95mbiIhlCDcowJNJGFakofRU/UeiPQv049DorrDQDyvOhQ0iXlohLp8hin
 3bAdw+39EFnaQiFiejH+534QfsSXNhMyYx4ZtJs1O8APzJpuT9KiZORIU2xx8m9me3GJ
 nRCzeSz6fhZnRuGUV65gJOj0k8DMrASVs1ffDMfO5wQ+4MKhMzyo1Hf7xWdNJii/ENzy
 uOrTcZOmWLeo1D6phvtKajqfSbjF0JkyzG19tN5chV4GtOZYui9witk4RNmc7L0KIuBW
 GEOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=gCC6rxpfNBHEEJoswTl2+v3GlY13e+wv1Apu4C5uUJ0=;
 b=Eg2vYQ6rtpALhB2VcXJ9kg8LNm+YkDYsPwHUHV7qIO/dksIpjcXEMBmr5BtjlM/VKP
 OmwL6MOb3u+eGU+en9CG4ESyHsmW3xfdWT2p9S3hgYwrgSlhtSQ+y4W/j8ik2uyYn8zV
 ZHJvcqZjwbCnbciDMCNmFZqzPutEVnskzkwVtkT+E/eeLsl3kPZd4HSVdEPWHIMRtPMt
 lpLwEAal4CmlrhhPzid3V584Y/QkaoTH7KS3bIiRMJAj5atARhYqFQI2pNioyU5e87TI
 yoQ7RvF9p2CMYxl30gg1KjtL23b+bKdvG5piqVYEfDRSQqdBR5XZwYSfafmSMjxffJBp
 l18Q==
X-Gm-Message-State: AGi0PuYOzcOMfg04sALZNAipRa4DK3D3J2VUssq05mrMIbmlz5bdTfPN
 AtAc66BtCTPAAfmJsLOqnzwqfQ==
X-Google-Smtp-Source: APiQypLyhDVW4E+VOlBHWErivAdlGrtxixDqwonOAkbRNQamJnKVsV0vJKLtvSLryabLtX0HhH0tLg==
X-Received: by 2002:a5d:4286:: with SMTP id k6mr21252278wrq.222.1587026890846; 
 Thu, 16 Apr 2020 01:48:10 -0700 (PDT)
Received: from dell ([95.149.164.124])
 by smtp.gmail.com with ESMTPSA id z15sm14429845wrs.47.2020.04.16.01.48.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 01:48:10 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:49:10 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v12 1/6] mfd: mt6397: Modify suspend/resume behavior
Message-ID: <20200416084910.GX2167633@dell>
References: <1586333531-21641-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1586333531-21641-2-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586333531-21641-2-git-send-email-hsin-hsiung.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_014812_159567_5CB87BC0 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 linux-rtc@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>, srv_heupstream@mediatek.com,
 Sebastian Reichel <sre@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwOCBBcHIgMjAyMCwgSHNpbi1Ic2l1bmcgV2FuZyB3cm90ZToKCj4gU29tZSBwbWlj
cyBkb24ndCBuZWVkIGJhY2t1cCBpbnRlcnJ1cHQgc2V0dGluZ3MsIHNvIHdlIGNoYW5nZSB0byB1
c2UKPiBwbSBub3RpZmllciBmb3IgdGhlIHBtaWNzIHdoaWNoIGFyZSBuZWNlc3NhcnkgdG8gc3Rv
cmUgc2V0dGluZ3MuCj4gCj4gU2lnbmVkLW9mZi1ieTogSHNpbi1Ic2l1bmcgV2FuZyA8aHNpbi1o
c2l1bmcud2FuZ0BtZWRpYXRlay5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL210NjM5Ny1jb3Jl
LmMgICAgICAgfCAzMCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgZHJpdmVycy9t
ZmQvbXQ2Mzk3LWlycS5jICAgICAgICB8IDM1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKystCj4gIGluY2x1ZGUvbGludXgvbWZkL210NjM5Ny9jb3JlLmggfCAgMiArKwo+ICAzIGZp
bGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDMxIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL21mZC9tdDYzOTctY29yZS5jIGIvZHJpdmVycy9tZmQvbXQ2Mzk3LWNv
cmUuYwo+IGluZGV4IDA0MzdjODUuLmQyZTcwZDggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZmQv
bXQ2Mzk3LWNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvbWZkL210NjM5Ny1jb3JlLmMKPiBAQCAtMTAw
LDM1ICsxMDAsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG1mZF9jZWxsIG10NjM5N19kZXZzW10g
PSB7Cj4gIAl9Cj4gIH07Cj4gIAo+IC0jaWZkZWYgQ09ORklHX1BNX1NMRUVQCj4gLXN0YXRpYyBp
bnQgbXQ2Mzk3X2lycV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiAtewo+IC0Jc3RydWN0
IG10NjM5N19jaGlwICpjaGlwID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gLQo+IC0JcmVnbWFw
X3dyaXRlKGNoaXAtPnJlZ21hcCwgY2hpcC0+aW50X2NvblswXSwgY2hpcC0+d2FrZV9tYXNrWzBd
KTsKPiAtCXJlZ21hcF93cml0ZShjaGlwLT5yZWdtYXAsIGNoaXAtPmludF9jb25bMV0sIGNoaXAt
Pndha2VfbWFza1sxXSk7Cj4gLQo+IC0JZW5hYmxlX2lycV93YWtlKGNoaXAtPmlycSk7Cj4gLQo+
IC0JcmV0dXJuIDA7Cj4gLX0KPiAtCj4gLXN0YXRpYyBpbnQgbXQ2Mzk3X2lycV9yZXN1bWUoc3Ry
dWN0IGRldmljZSAqZGV2KQo+IC17Cj4gLQlzdHJ1Y3QgbXQ2Mzk3X2NoaXAgKmNoaXAgPSBkZXZf
Z2V0X2RydmRhdGEoZGV2KTsKPiAtCj4gLQlyZWdtYXBfd3JpdGUoY2hpcC0+cmVnbWFwLCBjaGlw
LT5pbnRfY29uWzBdLCBjaGlwLT5pcnFfbWFza3NfY3VyWzBdKTsKPiAtCXJlZ21hcF93cml0ZShj
aGlwLT5yZWdtYXAsIGNoaXAtPmludF9jb25bMV0sIGNoaXAtPmlycV9tYXNrc19jdXJbMV0pOwo+
IC0KPiAtCWRpc2FibGVfaXJxX3dha2UoY2hpcC0+aXJxKTsKPiAtCj4gLQlyZXR1cm4gMDsKPiAt
fQo+IC0jZW5kaWYKPiAtCj4gLXN0YXRpYyBTSU1QTEVfREVWX1BNX09QUyhtdDYzOTdfcG1fb3Bz
LCBtdDYzOTdfaXJxX3N1c3BlbmQsCj4gLQkJCW10NjM5N19pcnFfcmVzdW1lKTsKPiAtCj4gIHN0
cnVjdCBjaGlwX2RhdGEgewo+ICAJdTMyIGNpZF9hZGRyOwo+ICAJdTMyIGNpZF9zaGlmdDsKPiBA
QCAtMjM4LDcgKzIwOSw2IEBAIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIG10NjM5N19k
cml2ZXIgPSB7Cj4gIAkuZHJpdmVyID0gewo+ICAJCS5uYW1lID0gIm10NjM5NyIsCj4gIAkJLm9m
X21hdGNoX3RhYmxlID0gb2ZfbWF0Y2hfcHRyKG10NjM5N19vZl9tYXRjaCksCj4gLQkJLnBtID0g
Jm10NjM5N19wbV9vcHMsCj4gIAl9LAo+ICAJLmlkX3RhYmxlID0gbXQ2Mzk3X2lkLAo+ICB9Owo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9tdDYzOTctaXJxLmMgYi9kcml2ZXJzL21mZC9tdDYz
OTctaXJxLmMKPiBpbmRleCBiMmQzY2UxLi4yOTI0OTE5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bWZkL210NjM5Ny1pcnEuYwo+ICsrKyBiL2RyaXZlcnMvbWZkL210NjM5Ny1pcnEuYwo+IEBAIC05
LDYgKzksNyBAQAo+ICAjaW5jbHVkZSA8bGludXgvb2ZfaXJxLmg+Cj4gICNpbmNsdWRlIDxsaW51
eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgo+ICsjaW5j
bHVkZSA8bGludXgvc3VzcGVuZC5oPgo+ICAjaW5jbHVkZSA8bGludXgvbWZkL210NjMyMy9jb3Jl
Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9tZmQvbXQ2MzIzL3JlZ2lzdGVycy5oPgo+ICAjaW5jbHVk
ZSA8bGludXgvbWZkL210NjM5Ny9jb3JlLmg+Cj4gQEAgLTgxLDcgKzgyLDcgQEAgc3RhdGljIHN0
cnVjdCBpcnFfY2hpcCBtdDYzOTdfaXJxX2NoaXAgPSB7Cj4gIHN0YXRpYyB2b2lkIG10NjM5N19p
cnFfaGFuZGxlX3JlZyhzdHJ1Y3QgbXQ2Mzk3X2NoaXAgKm10NjM5NywgaW50IHJlZywKPiAgCQkJ
CSAgaW50IGlycWJhc2UpCj4gIHsKPiAtCXVuc2lnbmVkIGludCBzdGF0dXM7Cj4gKwl1bnNpZ25l
ZCBpbnQgc3RhdHVzID0gMDsKClRoaXMgbG9va3MgbGlrZSBhbiB1bnJlbGF0ZWQgY2hhbmdlLCBu
bz8KCj4gIAlpbnQgaSwgaXJxLCByZXQ7Cj4gIAo+ICAJcmV0ID0gcmVnbWFwX3JlYWQobXQ2Mzk3
LT5yZWdtYXAsIHJlZywgJnN0YXR1cyk7Cj4gQEAgLTEyOCw2ICsxMjksMzYgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBpcnFfZG9tYWluX29wcyBtdDYzOTdfaXJxX2RvbWFpbl9vcHMgPSB7Cj4gIAku
bWFwID0gbXQ2Mzk3X2lycV9kb21haW5fbWFwLAo+ICB9OwoKT3RoZXIgdGhhbiB0aGF0LgoKRm9y
IG15IG93biByZWZlcmVuY2U6CiAgQWNrZWQtZm9yLU1GRC1ieTogTGVlIEpvbmVzIDxsZWUuam9u
ZXNAbGluYXJvLm9yZz4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2Vz
IFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBB
Uk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
