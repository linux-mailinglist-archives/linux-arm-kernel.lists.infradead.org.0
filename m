Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C435E1812C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:19:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f7LL4QVfF0hvJdi8z9NWoRusIdyZIgCLrWS93TLSgiQ=; b=NnlsNDVQ/amVVKuVKR8P7b8BQ
	o8PE3O4dnFfYoUuOCpBiweT+P8qQoToYq7GJbOwWX/nIOPomj89Hh5mnrzY2SMUDuz8tBHeEoANZ2
	DFCLL3GlvsAaciCXoAVEe4UKaI5BjScim3YcnGAfuVOy/0v7+NeuaI1Q40dS46thvrZ3BRpy/5jaD
	FagIkD4eFAeAyNkV5BVy8KTJZx2XO/oga64T0ritGcukfMhMhMuIhJr37iYBUqZY+iMC/Z1G7KPZN
	x6u6DVWN64UcJ5hEkbDxNLiVS2xe4fE1lpC7y+7TsOmGEWnKGyVACOwVE2uwe4MWqsLN2mRneo+Bk
	GGazRhkDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwZv-0004eO-14; Wed, 11 Mar 2020 08:18:59 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwZl-0004du-Pt
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:18:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1583914722; x=1586506722;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+FT0xyoVEdWWWpxZVpYXRhwYiY/JC7F6IoOhZ4Ciuoo=;
 b=Eg9zd08s8cWElRa8ovnYUl6cCTRkZQohhC+AJPzSVrDuS492DMr9bIIvBgATt9E4
 RBa/rzLTc3vAWKdGjMcjq0LdeGYYhoUS48SogbUFQmLv5rP+J/TsVEgNzQqHZ2NC
 +WRq8cy8dLxqba+qa6R99KRwmuLolmsLy1NSIwhs0Ns=;
X-AuditID: c39127d2-dcfff7000000245c-1e-5e689ee2381b
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id B5.B4.09308.2EE986E5;
 Wed, 11 Mar 2020 09:18:42 +0100 (CET)
Received: from [172.16.23.108] ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2020031109184285-317470 ;
 Wed, 11 Mar 2020 09:18:42 +0100 
Subject: Re: [PATCH v4] ARM: dts: imx6: phycore-som: fix arm and soc minimum
 voltage
To: Shawn Guo <shawnguo@kernel.org>
References: <20200227110246.8624-1-m.felsch@pengutronix.de>
 <20200311073248.GP29269@dragon>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <486b3eda-00a3-80e6-ceb4-dcb0983f2101@phytec.de>
Date: Wed, 11 Mar 2020 09:18:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200311073248.GP29269@dragon>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 11.03.2020 09:18:42,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 11.03.2020 09:18:42
X-TNEFEvaluated: 1
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrNLMWRmVeSWpSXmKPExsWyRoCBS/fRvIw4g/fLLCye3bzFZvFiToDF
 qqk7WSw2Pb7GavFh11Vmi9a9R9gtXmwRd2D3eDphMrvHplWdbB6bl9R79P818Hi68QRTAGsU
 l01Kak5mWWqRvl0CV8bl/kdMBa/4K+ZMOcPSwHiHp4uRk0NCwESiccNnxi5GLg4hga2MEhPO
 drODJIQEzjBK3LkfAWILC4RJdM1+zAJiiwgoS5za2AdWwyxwhVHiwWEViPpYiU/N98Fq2ASc
 JBaf72ADsXkFbCSu/1jBCGKzCKhKrH70nxXEFhWIkHi+/QYjRI2gxMmZT4B6OTg4BXQkrjUJ
 gNwjATK+5elPNohDhSROLz7LDLHXTGLe5odQtrjErSfzmSBsbYllC18zT2AUmoVk7CwkLbOQ
 tMxC0rKAkWUVo1BuZnJ2alFmtl5BRmVJarJeSuomRmCEHJ6ofmkHY98cj0OMTByMhxglOJiV
 RHjj5dPjhHhTEiurUovy44tKc1KLDzFKc7AoifNu4C0JExJITyxJzU5NLUgtgskycXBKNTA6
 WhpdOqL15nemc4uc02deI/dw9drUewY/6w4v5XYK/+2mdrQzRYjXTl/51a/r6RunS2yOSf+X
 HDzTilFk2uzyIsdXTEvn5HPH+Vzz9fp3R6/WR/jDrYdiSrxvBX8+ZWSe5R0XyRLX8XNBit6R
 7OnaQtFztiqzse3cbKjHnrAx82ZRm56zoBJLcUaioRZzUXEiABDTLKJ+AgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_011850_171715_A17240C6 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Marco Felsch <m.felsch@pengutronix.de>, chf.fritz@googlemail.com,
 robh+dt@kernel.org, kernel@pengutronix.de, c.hemp@phytec.de,
 contact@stefanchrist.eu, s.christ@phytec.de,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2hhd24sCgpPbiAxMS4wMy4yMCAwODozMywgU2hhd24gR3VvIHdyb3RlOgo+IE9uIFRodSwg
RmViIDI3LCAyMDIwIGF0IDEyOjAyOjQ2UE0gKzAxMDAsIE1hcmNvIEZlbHNjaCB3cm90ZToKPj4g
VGhlIGN1cnJlbnQgc2V0IG1pbmltdW0gdm9sdGFnZSBvZiA3MzAwMDDCtVYgc2VlbXMgdG8gYmUg
d3JvbmcuIEkgZG9uJ3QKPj4ga25vdyB0aGUgZG9jdW1lbnQgd2hpY2ggc3BlY2lmaWVzIHRoYXQg
YnV0IHRoZSBpbXg2cWRsIGRhdGFzaGVldHMgc2F5cwo+PiB0aGF0IHRoZSBtaW5pbXVtIHZvbHRh
Z2Ugc2hvdWxkIGJlIDAuOTI1ViBmb3IgVkREX0FSTSAoTERPIGJ5cGFzc2VkLAo+PiBsb3dlc3Qg
b3BwKSBhbmQgMS4xNVYgZm9yIFZERF9TT0MgKExETyBieXBhc3NlZCwgbG93ZXN0IG9wcCkuCj4g
Cj4gU3RlZmFuLAo+IAo+IEFueSBjb21tZW50IG9uIHRoaXMgY2hhbmdlPwoKbG9va3MgZ29vZCB0
byBtZS4gVGhhbmtzIGZvciBhc2tpbmcuCgpSZXZpZXdlZC1ieTogU3RlZmFuIFJpZWRtdWVsbGVy
IDxzLnJpZWRtdWVsbGVyQHBoeXRlYy5kZT4KClJlZ2FyZHMsClN0ZWZhbgoKPiAKPiBTaGF3bgo+
IAo+Pgo+PiBGaXhlczogZGRlYzVkMWMwMDQ3ICgiQVJNOiBkdHM6IGlteDY6IEFkZCBpbml0aWFs
IHN1cHBvcnQgZm9yIHBoeUNPUkUtaS5NWCA2IFNPTSIpCj4+IFNpZ25lZC1vZmYtYnk6IE1hcmNv
IEZlbHNjaCA8bS5mZWxzY2hAcGVuZ3V0cm9uaXguZGU+Cj4+IC0tLQo+PiB2NDoKPj4gLSByZWJh
c2VkIG9udG9wIG9mIHY1LjYtcmMxCj4+IHYzOgo+PiAtIGZpeCBjb21taXQgbWVzc2FnZQo+PiB2
MjoKPj4gLSB1c2UgbGRvIGJ5cGFzc2VkIHZhbHVlcwo+Pgo+PiAgIGFyY2gvYXJtL2Jvb3QvZHRz
L2lteDZxZGwtcGh5dGVjLXBoeWNvcmUtc29tLmR0c2kgfCA0ICsrLS0KPj4gICAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC1waHl0ZWMtcGh5Y29yZS1zb20uZHRzaSBiL2FyY2gv
YXJtL2Jvb3QvZHRzL2lteDZxZGwtcGh5dGVjLXBoeWNvcmUtc29tLmR0c2kKPj4gaW5kZXggNGQx
ODk1MjY1OGY4Li43N2Q4NzEzNDBlYjcgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDZxZGwtcGh5dGVjLXBoeWNvcmUtc29tLmR0c2kKPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9k
dHMvaW14NnFkbC1waHl0ZWMtcGh5Y29yZS1zb20uZHRzaQo+PiBAQCAtMTEyLDcgKzExMiw3IEBA
Cj4+ICAgCQlyZWd1bGF0b3JzIHsKPj4gICAJCQl2ZGRfYXJtOiBidWNrMSB7Cj4+ICAgCQkJCXJl
Z3VsYXRvci1uYW1lID0gInZkZF9hcm0iOwo+PiAtCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0
ID0gPDczMDAwMD47Cj4+ICsJCQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8OTI1MDAwPjsK
Pj4gICAJCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTM4MDAwMD47Cj4+ICAgCQkJCXJl
Z3VsYXRvci1pbml0aWFsLW1vZGUgPSA8REE5MDYzX0JVQ0tfTU9ERV9TWU5DPjsKPj4gICAJCQkJ
cmVndWxhdG9yLWFsd2F5cy1vbjsKPj4gQEAgLTEyMCw3ICsxMjAsNyBAQAo+PiAgIAo+PiAgIAkJ
CXZkZF9zb2M6IGJ1Y2syIHsKPj4gICAJCQkJcmVndWxhdG9yLW5hbWUgPSAidmRkX3NvYyI7Cj4+
IC0JCQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NzMwMDAwPjsKPj4gKwkJCQlyZWd1bGF0
b3ItbWluLW1pY3Jvdm9sdCA9IDwxMTUwMDAwPjsKPj4gICAJCQkJcmVndWxhdG9yLW1heC1taWNy
b3ZvbHQgPSA8MTM4MDAwMD47Cj4+ICAgCQkJCXJlZ3VsYXRvci1pbml0aWFsLW1vZGUgPSA8REE5
MDYzX0JVQ0tfTU9ERV9TWU5DPjsKPj4gICAJCQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4gLS0g
Cj4+IDIuMjAuMQo+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
