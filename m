Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A5A11C8C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 10:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I8GCTpbMbuPOmW9ctCAaFaxy0YuiMJx7pnPDJWNFa8s=; b=aMcE7H11IJ+j1wmZPgtaDeG2l
	nZm7PvzxfRneJUgIm01WsRjpsgM7q1da5C2Wmruak1GMRM2aUVmFPPGV7KY8IRb5Q5T5lbWaEh/xi
	Xet3JfdhtXyaWxIggUh5s4WaVi3OecRJFKok+HD7J7Np6kHMrsdyB9KAtn5tXQmeZUhBpzHtzLuNt
	8GdaZjRCkiY4Y8z61gvs/6vu5w58kjy3kwFmTK01/vwW8ZlNs3gcExEhdx6anKkTop4ZmzrRGx5Dh
	C2ulFqd/HOJwgVRrSogLBZdErYUzJsDWuLc0ZLCzO1JZhO4yeDrFkPIjsRpvovWjh2KExMNe3U1Sf
	1R0RvRZtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifKKb-0001b0-56; Thu, 12 Dec 2019 09:00:21 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifKKR-0000ft-Lk
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 09:00:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1576141201; x=1578733201;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oG+FcZmrPC0uDmvJDBQ3f0AVY1iMzZeAUro22epdC4A=;
 b=Z7W3IJK8n+q34xhEHCb2+ywzZ8fcvh83pI0ZMo53Sn4x1rGy17H4I/4QzSXeMLGv
 jHJBD29F8Gvd2/mL8ej732A+7gYTq5PVA3YNcSDyLzEfXCAOTiuKMo+MDcJpM1SH
 sqwp3LJ2dni2mnGZtozd1M6II+Il+gsVbMc+Ugtayug=;
X-AuditID: c39127d2-df9ff7000000408f-44-5df201901d88
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id B9.E5.16527.09102FD5;
 Thu, 12 Dec 2019 10:00:00 +0100 (CET)
Received: from [172.16.23.108] ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019121210000069-6988 ;
 Thu, 12 Dec 2019 10:00:00 +0100 
Subject: Re: [PATCH 2/3] ARM: dts: imx6: phycore-som: fix emmc supply
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20191129164859.15632-1-m.felsch@pengutronix.de>
 <20191129164859.15632-2-m.felsch@pengutronix.de>
 <6eece2d7-4695-ef2a-7376-cff39aaef8be@phytec.de>
 <20191210090920.a5aswmgihjzvsk25@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <27152e13-57c6-9668-4500-d79148ecb019@phytec.de>
Date: Thu, 12 Dec 2019 10:00:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191210090920.a5aswmgihjzvsk25@pengutronix.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 12.12.2019 10:00:00,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 12.12.2019 10:00:00
X-TNEFEvaluated: 1
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOLMWRmVeSWpSXmKPExsWyRoCBS3ci46dYg8v9TBbPbt5is3h41d9i
 1dSdLBabHl9jtej6tZLZ4sOuq8wWrXuPsFu82CLuwOGxc9Zddo+nEyaze2xa1cnmsXlJvcfG
 dzuYPPr/GgSwRXHZpKTmZJalFunbJXBltN7qZCr4L1CxqGMCUwPjLd4uRk4OCQETiYuvZ7F0
 MXJxCAlsZZT4fXIfO4RzilFiS98lZpAqYQFXiTc/57GD2CICWhJ/2/+zghQxC5xnlLj15AgT
 SEJI4CqjxPFf6iA2m4CTxOLzHWwgNq+AjcSEPU/BbBYBVYl5v7+CDRIViJB4vv0GI0SNoMTJ
 mU9YQGxOAVuJt0caWSDOu8Io0fxUG8IWkji9+CzYQcwCZhLzNj+EssWBbpjPBGFrSyxb+Jp5
 AqPQLCRjZyFpmYWkZRaSlgWMLKsYhXIzk7NTizKz9QoyKktSk/VSUjcxAiPn8ET1SzsY++Z4
 HGJk4mA8xCjBwawkwnu87V2sEG9KYmVValF+fFFpTmrxIUZpDhYlcd4NvCVhQgLpiSWp2amp
 BalFMFkmDk6pBsbpWaevzJ4bk6EWvjjw79coy0V/pyQm2SmtTbgqpbJKfUXEQr8Exptqphv9
 ZOvOHnu3yIE52WqN4IetWk/u38krmXjvh++xl4oZAtm5z9N4Jk4Vebiv+5a8RceSl5P+28+a
 2GVk/oF958ZvJ7XWLXl4a+pH1w9Nte9ecdxcHfovaVd1i17btc6zSizFGYmGWsxFxYkANrG3
 fooCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_010012_127993_41C221B3 
X-CRM114-Status: GOOD (  20.62  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: s.christ@phytec.de, chf.fritz@googlemail.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 shawnguo@kernel.org, festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyY28sCgpPbiAxMC4xMi4xOSAxMDowOSwgTWFyY28gRmVsc2NoIHdyb3RlOgo+IEhpIFN0
ZWZhbiwKPiAKPiBPbiAxOS0xMi0wNSAxMzowMCwgU3RlZmFuIFJpZWRtw7xsbGVyIHdyb3RlOgo+
PiBIaSBNYXJjbywKPj4KPj4gT24gMjkuMTEuMTkgMTc6NDgsIE1hcmNvIEZlbHNjaCB3cm90ZToK
Pj4+IEN1cnJlbnRseSB0aGUgdm1tYyBpcyBzdXBwbGllZCBieSB0aGUgMS44ViBwbWljIHJhaWwg
YnV0IHRoaXMgaXMgd3JvbmcuCj4+PiBUaGUgMS44ViBwbWljIHJhaWwgaXMgY29ubmVjdGVkIHRv
IHRoZSBlbW1jIHZjY3EgKHZxbW1jKS4KPj4KPj4gSSBqdXN0IGNoZWNrZWQgdGhlIHNjaGVtYXRp
Y3MgYWdhaW4gYW5kIGFjdHVhbGx5IGJvdGggVkNDIGFuZCBWQ0NRIGFyZQo+PiBjb25uZWN0ZWQg
dG8gdGhlIDMuM1YgcG93ZXIgcmFpbC4gVkNDUSBjYW4gYmUgY29ubmVjdGVkIHRvIHRoZSAxLjhW
IFBNSUMKPj4gcG93ZXIgcmFpbCBieSBzb2xkZXIganVtcGVyIGJ1dCBkZWZhdWx0IGlzIDMuM1Yu
Cj4gCj4gVGhhdCdzIHJpZ2h0Lgo+IAo+PiBTbyBJIHRoaW5rIGVpdGhlciBib3RoIHNob3VsZCBi
ZSBjb25uZWN0ZWQgdG8gYSBmaXhlZCAzLjNWIHJlZ3VsYXRvciBvcgo+PiByZW1vdmVkLCBzaW5j
ZSB0aGUgZGVmYXVsdCBzeXN0ZW0gZG9lcyBub3Qgc3VwcG9ydCBzd2l0Y2hpbmcgdGhlc2Ugdm9s
dGFnZXMuCj4gCj4gVGhlIHF1ZXN0aW9uIGlzIHdoeSB0aGUgcmVndWxhdG9yIG91dHB1dCBpc24n
dCB0aGUgZGVmYXVsdCBjYXNlIGFuZAo+IHNldHRpbmcgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQg
dG8gMy4zViBhbmQgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgdG8KPiAxLjhWPyBUaGUgUE1JQyBM
RE80IHN1cHBvcnRzIG91dHB1dCB2b2x0YWdlcyB1cCB0byAzLjZWIHNvIHRoaXMgc2hvdWxkCj4g
YmUgb2theS4KClRoYXQgaXMgYSByZWFzb25hYmxlIHF1ZXN0aW9uLiBCdXQgc2luY2Ugd2UgY2Fu
J3QgY2hhbmdlIHRoaXMgaGVyZSB3ZSBuZWVkIAp0byB0YWtlIGl0IGFzIGl0IGlzLiBTbyBpdCBp
cyBwcm9iYWJseSBiZXN0IHRvIGp1c3QgZHJvcCBib3RoIHJlZ3VsYXRvcnMuCgpSZWdhcmRzLApT
dGVmYW4KCj4gCj4gQW55d2F5IGRyb3BwaW5nIGJvdGggcmVndWxhdG9ycyBhbmQgdXNpbmcgZHVt
bXktcmVndWxhdG9ycyBzaG91bGQgYmUKPiBmaW5lIHRvby4gSSBvbmx5IHdhbnQgdG8gcmVtb3Zl
IHRoaXMgaXNzdWUuCj4gCj4gUmVnYXJkcywKPiAgICBNYXJjbwo+IAo+PiBSZWdhcmRzLAo+PiBT
dGVmYW4KPj4KPj4+Cj4+PiBGaXhlczogZGRlYzVkMWMwMDQ3ICgiQVJNOiBkdHM6IGlteDY6IEFk
ZCBpbml0aWFsIHN1cHBvcnQgZm9yIHBoeUNPUkUtaS5NWCA2IFNPTSIpCj4+PiBTaWduZWQtb2Zm
LWJ5OiBNYXJjbyBGZWxzY2ggPG0uZmVsc2NoQHBlbmd1dHJvbml4LmRlPgo+Pj4gLS0tCj4+PiAg
ICBhcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLXBoeXRlYy1waHljb3JlLXNvbS5kdHNpIHwgMiAr
LQo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+
Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtcGh5dGVjLXBoeWNv
cmUtc29tLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2cWRsLXBoeXRlYy1waHljb3JlLXNv
bS5kdHNpCj4+PiBpbmRleCA0NmQ0OTUzYzU1ODguLjQ0ZTMzMzg0OGI0ZCAxMDA2NDQKPj4+IC0t
LSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtcGh5dGVjLXBoeWNvcmUtc29tLmR0c2kKPj4+
ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZxZGwtcGh5dGVjLXBoeWNvcmUtc29tLmR0c2kK
Pj4+IEBAIC0xODMsNyArMTgzLDcgQEAKPj4+ICAgIAlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfdXNk
aGM0PjsKPj4+ICAgIAlidXMtd2lkdGggPSA8OD47Cj4+PiAgICAJbm9uLXJlbW92YWJsZTsKPj4+
IC0Jdm1tYy1zdXBwbHkgPSA8JnZkZF9lbW1jXzFwOD47Cj4+PiArCXZxbW1jLXN1cHBseSA9IDwm
dmRkX2VtbWNfMXA4PjsKPj4+ICAgIAlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+Pj4gICAgfTsKPj4+
Cj4+Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
