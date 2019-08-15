Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700668ED2F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 15:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACUvXgNSNmrzRIp4F4XGGDVFLlAH987sBrz+sRcqzzM=; b=Vd3TuWHudTf1ZW
	a6CqEdfDELHCK239ai1xgJ+HS6b4cbkKWJK/d3eWnUI5ocbZto3uZff58Uo2hA/efV/RcAiW8kHi7
	QXR6Hca8tJq/VgPf+mto7+1skAAv/R6F/CcT+8u6bNBLq1tZ9ahlg4iRN2988X54VTl80apRfweqO
	3Lwrxa3sjCuPauPShGiFkCkc1Uozuob3DvtY728JlOTXwnUpr87xhcRT02Gw3h5UCnNVCr4Pe/zNg
	uMh8/g7s3E3dnEUn+WZofzjpRDY4vp08DLMt8WxvmtHCr+zLgkzuAn3kKh+NIBR9zR4Bb7u5jgAhI
	qQBnw/GNx00BzseWFkEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyG3C-0002WG-MB; Thu, 15 Aug 2019 13:44:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyG2z-0002VP-Bz
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 13:44:12 +0000
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E9D42173B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 13:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565876648;
 bh=BdDVze++kobDRbQfo5kqbHuTszHekzFi8W8/Yee/97U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pSaQFREKkeHL2Eq2UHzL1H+omLTGRR59RyTv7RVzaQqKh/Vsl+yXDjNqt4c6SILoD
 T5nICWxrzV4iiuHn+hCN5ct9b39FYXXpkRMQ8MmLCkDHFtBEF0nyy30KLeODbmjtto
 3qHIZICqRAJtFkIpmOqkx2YSRtcgtwaEYwrAhfkg=
Received: by mail-qk1-f179.google.com with SMTP id d23so1902127qko.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 06:44:08 -0700 (PDT)
X-Gm-Message-State: APjAAAVCMSrqJ4EW4bGx2T+d2TJYA3hYodorAzYPdIMvtW2IfctIncWG
 yCj+CaakBlYHoAxo75W0zRFxtK+MvTdzImVS/g==
X-Google-Smtp-Source: APXvYqxC9xQ6Q1ocGYRDuxKbiP6NP21p0YyDQx2l9SALQGFg6LxmBR43l1CbQ66Q0ERY868FfWbPmxkSODG7cJUnq5g=
X-Received: by 2002:a37:a010:: with SMTP id j16mr4193785qke.152.1565876647784; 
 Thu, 15 Aug 2019 06:44:07 -0700 (PDT)
MIME-Version: 1.0
References: <1563954573-370205-1-git-send-email-s.riedmueller@phytec.de>
 <20190813160448.GA27548@bogus>
 <073f9466-9dd3-a22c-e000-e9f4c60f90a0@phytec.de>
In-Reply-To: <073f9466-9dd3-a22c-e000-e9f4c60f90a0@phytec.de>
From: Rob Herring <robh@kernel.org>
Date: Thu, 15 Aug 2019 07:43:56 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJHfVDfpC9Yr7o3HO4wU7QR+sp0mxFLkxwVcGXXLeAyJw@mail.gmail.com>
Message-ID: <CAL_JsqJHfVDfpC9Yr7o3HO4wU7QR+sp0mxFLkxwVcGXXLeAyJw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Add PHYTEC i.MX6 UL/ULL
 devicetree bindings
To: =?UTF-8?Q?Stefan_Riedm=C3=BCller?= <s.riedmueller@phytec.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_064409_448156_A39C27A7 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Andrew Smirnov <andrew.smirnov@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMTUsIDIwMTkgYXQgNDo1NSBBTSBTdGVmYW4gUmllZG3DvGxsZXIKPHMucmll
ZG11ZWxsZXJAcGh5dGVjLmRlPiB3cm90ZToKPgo+IEhpIFJvYiwKPgo+IE9uIDEzLjA4LjE5IDE4
OjA0LCBSb2IgSGVycmluZyB3cm90ZToKPiA+IE9uIFdlZCwgSnVsIDI0LCAyMDE5IGF0IDA5OjQ5
OjMyQU0gKzAyMDAsIFN0ZWZhbiBSaWVkbXVlbGxlciB3cm90ZToKPiA+PiBBZGQgZGV2aWNldHJl
ZSBiaW5kaW5ncyBmb3IgaS5NWDYgVUwvVUxMIGJhc2VkIHBoeUNPUkUtaS5NWDYgVUwvVUxMIGFu
ZAo+ID4+IHBoeUJPQVJELVNlZ2luLgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIFJp
ZWRtdWVsbGVyIDxzLnJpZWRtdWVsbGVyQHBoeXRlYy5kZT4KPiA+PiAtLS0KPiA+PiAgIERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vZnNsLnlhbWwgfCA4ICsrKysrKysrCj4g
Pj4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4gPj4KPiA+PiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vZnNsLnlhbWwKPiA+PiBpbmRleCA3Mjk0
YWMzNmY0YzAuLjQwZjAwNzg1OTA5MiAxMDA2NDQKPiA+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1sCj4gPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbAo+ID4+IEBAIC0xNjEsMTIgKzE2MSwyMCBA
QCBwcm9wZXJ0aWVzOgo+ID4+ICAgICAgICAgICBpdGVtczoKPiA+PiAgICAgICAgICAgICAtIGVu
dW06Cj4gPj4gICAgICAgICAgICAgICAgIC0gZnNsLGlteDZ1bC0xNHgxNC1ldmsgICAgICAjIGku
TVg2IFVsdHJhTGl0ZSAxNHgxNCBFVksgQm9hcmQKPiA+PiArICAgICAgICAgICAgICAtIHBoeXRl
YyxpbXg2dWwtcGJhY2QxMCAgICAgIyBQSFlURUMgcGh5Qk9BUkQtU2VnaW4gd2l0aCBpLk1YNiBV
TAo+ID4+ICsgICAgICAgICAgICAgIC0gcGh5dGVjLGlteDZ1bC1wYmFjZDEwLWVtbWMgICMgUEhZ
VEVDIHBoeUJPQVJELVNlZ2luIGVNTUMgS2l0Cj4gPj4gKyAgICAgICAgICAgICAgLSBwaHl0ZWMs
aW14NnVsLXBiYWNkMTAtbmFuZCAgIyBQSFlURUMgcGh5Qk9BUkQtU2VnaW4gTkFORCBLaXQKPiA+
PiArICAgICAgICAgICAgICAtIHBoeXRlYyxpbXg2dWwtcGNsMDYzICAgICAgIyBQSFlURUMgcGh5
Q09SRS1pLk1YIDZVTAo+ID4KPiA+IFRoaXMgZG9lc24ndCBtYXRjaCB3aGF0IGlzIGluIHRoZSBk
dHMgZmlsZXM6Cj4gPgo+ID4gYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsLXBoeXRlYy1wY2wwNjMu
ZHRzaTogICAgY29tcGF0aWJsZSA9ICJwaHl0ZWMsaW14NnVsLXBjbDA2MyIsICJmc2wsaW14NnVs
IjsKPiA+IGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZ1bC1waHl0ZWMtcGh5Ym9hcmQtc2VnaW4tZnVs
bC5kdHM6ICAgICAgY29tcGF0aWJsZSA9ICJwaHl0ZWMsaW14NnVsLXBiYWNkMTAiLCAicGh5dGVj
LGlteDZ1bC1wY2wwNjMiLAo+ID4gImZzbCxpbXg2dWwiOwo+ID4gYXJjaC9hcm0vYm9vdC9kdHMv
aW14NnVsLXBoeXRlYy1waHlib2FyZC1zZWdpbi5kdHNpOiAgICBjb21wYXRpYmxlID0gInBoeXRl
YyxpbXg2dWwtcGJhY2QtMTAiLCAicGh5dGVjLGlteDZ1bC1wY2wwNjMiLAo+ID4gImZzbCxpbXg2
dWwiOwo+Cj4gU2hhd24gYWxyZWFkeSBhcHBsaWVkIG15IHBhdGNoZXMgd2hpY2ggcmVuYW1lIHRo
ZSBjb21wYXRpYmxlcywgc2VlCj4gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvNy8yMy80MgoK
SW4gYW55IGNhc2UsIGl0IHN0aWxsIGRvZXNuJ3QgbWF0Y2guIEZvciBleGFtcGxlLCBmcm9tIHRo
b3NlIHBhdGNoZXM6CgorIG1vZGVsID0gIlBIWVRFQyBwaHlCT0FSRC1TZWdpbiBpLk1YNiBVTEwg
RnVsbCBGZWF0dXJlZCB3aXRoIGVNTUMiOworIGNvbXBhdGlibGUgPSAicGh5dGVjLGlteDZ1bGwt
cGJhY2QxMC1lbW1jIiwgInBoeXRlYyxpbXg2dWxsLXBiYWNkMTAiLAorICAgICAicGh5dGVjLGlt
eDZ1bGwtcGNsMDYzIiwiZnNsLGlteDZ1bGwiOwoKVGhlIGNvcnJlY3Qgc2NoZW1hIGZvciB0aGlz
IHdvdWxkIGJlOgoKaXRlbXM6CiAgLSBjb25zdDogcGh5dGVjLGlteDZ1bGwtcGJhY2QxMC1lbW1j
CiAgLSBjb25zdDogcGh5dGVjLGlteDZ1bGwtcGJhY2QxMAogIC0gY29uc3Q6IHBoeXRlYyxpbXg2
dWxsLXBjbDA2MwogIC0gY29uc3Q6IGZzbCxpbXg2dWxsCgpUaGlzIGRlZmluZXMgaG93IG1hbnkg
ZW50cmllcyAoNCksIHdoYXQgdGhleSBhcmUsIGFuZCB0aGUgb3JkZXIgb2YKdGhlbS4gTWF5YmUg
dGhlIGZpcnN0IGVudHJ5IGNhbiBiZSBhbiBlbnVtIHdpdGggdGhlIC1uYW5kIGNvbXBhdGlibGUK
aWYgdGhvc2UgYXJlIDIgb3B0aW9ucy4KClJ1biAnbWFrZSBkdGJzX2NoZWNrJyBhbmQgbWFrZSBz
dXJlIHRoZXJlIGFyZW4ndCB3YXJuaW5ncyBmb3IgdGhlIHJvb3Qgbm9kZS4KClJvYgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
