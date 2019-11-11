Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 350F2F7FFB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 20:32:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGXOAdE3E0MFqR/qseMPmYvgGO4opHUkFhzmUagezgc=; b=uxFKHaZbmRBdCE
	S92PWkvjeMiS/nawwijupvsdHAXysORDPXuq5rv5ATNcAE/BjJUR+KlN81BYrupU4bPCAhRm7Gn4g
	YmcPg/jJyU6QZ/hDK3MNt9y3aIUzntBkws0KG5kOTOWsKBaU4xWn+0oYRcmx5ikQF2AKPabom4kjf
	PtqlTttGJ46o3P1bMZCbHpjKGBmeFAc7eKBuEHYcpBCZKuF1T+nddocQfkvDR7F1+F1sn7uFNkFID
	iqxquxNFMe32HRUYMaUn8dvKNdtUzYaQi/uA+wD5AoTAx3ef5950MNwKSF3R1y/93rUMQV7ZMAxGQ
	Vw0RCMrfcTVgkRdF0sUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFQ9-0001FS-9v; Mon, 11 Nov 2019 19:32:17 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFPw-0001Cc-2o; Mon, 11 Nov 2019 19:32:06 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1iUFPr-00017a-Bc; Mon, 11 Nov 2019 20:31:59 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from dell2.five-lan.de (pD9E89174.dip0.t-ipconnect.de
 [217.232.145.116]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 xABJVvBQ021691
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Mon, 11 Nov 2019 20:31:58 +0100
Subject: Re: arm64: dts: rockchip: Add SDR104 mode to SD-card I/F on
 rk3399-roc-pc
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <f03c978c-86de-b8bb-22c2-177d7fafed94@fivetechno.de>
 <CAPDyKFqn06LZZMXLD2o-M6A0R6KU97PFUTN=NgYnMtf=ESULTA@mail.gmail.com>
From: Markus Reichl <m.reichl@fivetechno.de>
Message-ID: <e69268d2-4a3f-3cd8-fc2e-57ae52ad337a@fivetechno.de>
Date: Mon, 11 Nov 2019 20:31:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CAPDyKFqn06LZZMXLD2o-M6A0R6KU97PFUTN=NgYnMtf=ESULTA@mail.gmail.com>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1573500724;
 a73da61f; 
X-HE-SMSGID: 1iUFPr-00017a-Bc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_113204_271389_6A892002 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVWxmLAoKQW0gMTEuMTEuMTkgdW0gMTg6Mjcgc2NocmllYiBVbGYgSGFuc3NvbjoKPiBPbiBN
b24sIDExIE5vdiAyMDE5IGF0IDE1OjEzLCBNYXJrdXMgUmVpY2hsIDxtLnJlaWNobEBmaXZldGVj
aG5vLmRlPiB3cm90ZToKPj4KPj4gQWRkIFNEUjEwNCBjYXBhYmlsaXR5IGFuZCByZWd1bGF0b3Jz
IHRvIFNEIGNhcmQgbm9kZS4KPj4gV2hpbGUgYXQgaXQsIGZpeCBhIHR5cG8gaW4gbGNkIHBpbmN0
cmwgYW5kIHJlbW92ZSB0d28KPj4gdW5kb2N1bWVudGVkIGJpbmRpbmdzIGZyb20gcG1pYy4KPj4K
Pj4gU2lnbmVkLW9mZi1ieTogTWFya3VzIFJlaWNobCA8bS5yZWljaGxAZml2ZXRlY2huby5kZT4K
Pj4gLS0tCj4+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvYy1wYy5kdHNpICAgICAg
fCAzMSArKysrKysrKysrKysrKystLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LXJvYy1wYy5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcm9jLXBjLmR0c2kKPj4gaW5kZXggMzNkZjk1ZTM4NGI0Li5lODZhNmRiNTQ0
OTkgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJv
Yy1wYy5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJv
Yy1wYy5kdHNpCj4+IEBAIC0xMzUsNiArMTM1LDIwIEBACj4+ICAgICAgICAgICAgICAgICB2aW4t
c3VwcGx5ID0gPCZ2Y2NfMXY4PjsKPj4gICAgICAgICB9Owo+Pgo+PiArICAgICAgIHZjYzN2MF9z
ZDogdmNjM3YwLXNkIHsKPj4gKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9y
LWZpeGVkIjsKPj4gKyAgICAgICAgICAgICAgIGVuYWJsZS1hY3RpdmUtaGlnaDsKPj4gKyAgICAg
ICAgICAgICAgIGdwaW8gPSA8JmdwaW80IFJLX1BENiBHUElPX0FDVElWRV9ISUdIPjsKPj4gKyAg
ICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ICsgICAgICAgICAgICAg
ICBwaW5jdHJsLTAgPSA8JnZjYzN2MF9zZF9lbj47Cj4+ICsgICAgICAgICAgICAgICByZWd1bGF0
b3ItbmFtZSA9ICJ2Y2MzdjBfc2QiOwo+PiArICAgICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5
cy1vbjsKPiAKPiBUaGlzIGxvb2tzIG9kZC4gQSBHUElPIHJlZ3VsYXRvciBiZWluZyBhbHdheXMg
b24/CgpUaGlzIGlzIGEgc3RhbmRhcmQgbWljcm8gU0QgY2FyZCBzb2NrZXQgdGhhdCBjYW4gYWxz
byBiZSB1c2VkIGZvcgpib290aW5nIHRoZSBib2FyZC4gSSB3YW50ZWQgdG8gYmUgY2F1dGlvdXMg
YW5kIHN0YXJ0Cndvcmtpbmcgd2l0aCBpdCBhbmQgc2V2ZXJhbCBTRCBjYXJkcyBhbmQgZXhwbG9y
ZSB0aGUgY2FwYWJpbGl0aWVzLgoKT24gdGhpcyBib2FyZCBuZWFybHkgYWxsIHJlZ3VsYXRvcnMg
YXJlIHN0aWxsIGNvbnRpbm91c2x5CnN3aXRjaGVkIG9uLiBJIHBsYW4gdG8gcmVtb3ZlIHRoZSBh
bHdheXMtb24gcHJvcGVydGllcyBzdGVwCmJ5IHN0ZXAgZnJvbSB0aGUgcmVndWxhdG9ycyB3aGVu
IHRoZSBib2FyZCBydW5zIHN0YWJsZSB3aXRoIGl0J3MKY29tcG9uZW50cyBhbGwgZW5ibGVkLiAK
Cj4gCj4+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItYm9vdC1vbjsKPj4gKyAgICAgICAgICAg
ICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMwMDAwMDA+Owo+PiArICAgICAgICAgICAg
ICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzAwMDAwMD47Cj4+ICsgICAgICAgICAgICAg
ICB2aW4tc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPj4gKyAgICAgICB9Owo+IAo+IEFzc3VtZXMg
dGhpcyBwb3dlcnMgYW4gU0RJTyBlbWJlZGRlZCBjYXJkLiBPZnRlbiB0aG9zZSBoYXZlIGEgc3Bl
Y2lmaWMKPiBwb3dlciBzZXF1ZW5jZSwganVzdCB3YW50ZWQgdG8gbWFrZSBzdXJlIHRoZSBhYm92
ZSBhcmUgcmVhbGx5Cj4gc3VmZmljaWVudD8gTm8gZGVsYXlzIG9yIGV4dGVybmFsIGNsb2NrIG5l
ZWRlZD8KCkl0J3Mgbm90IGVtYmVkZGVkLCBqdXN0IGEgc3RhbmRhcmQgwrVTRCBwbHVnLiBJdCBp
cyBhbHJlYWR5IGVuYWJsZWQKYnkgbWFpbmxpbmUgVS1Cb290IGFuZCBlamVjdGluZyBhbmQgaW5z
ZXJ0aW5nIHRoZSBjYXJkIHdvcmtzIGZpbmUuCgotLQpHcnXDnywKTWFya3VzCj4gCj4gWy4uLl0K
PiAKPiBLaW5kIHJlZ2FyZHMKPiBVZmZlCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
