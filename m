Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D11CCDD3
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 04:00:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFkKQKaxdzjzn5X6l3vQG+vjuqrEZpj+9aIefVsgaeY=; b=b8nJPTdJpCPlvw
	qpHm2y5td58n9LnDzOcsHBTwuJwH9SovxTIga0wX4VlpIMrEGzOSDRfGoK8U7PmGkayhk5BUs2CCp
	CQyGGTcOpd6QtgoJkOHFB9tl6bDHZWrub/fTxHbohKoRwi4zbIy0fBwsNw1XDGsVp1nEXhLSPmqOF
	ecqgLnaEkmYL2XZSz9k6HM47vu73/o3bAyvVD89R7AfjmZjEtDR8eDYwGKNKrUUXTYcPLXmT7BaDp
	SxV+3rK1eCrFNCKaKTa13K0JuBz+Z3AwETlTt8GCaJG5MURDfAKuW+7obxU0jlspgIHnx9DX1Idpm
	zLfpgr9Az1dfGpY+gsZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGvqe-0003if-LO; Sun, 06 Oct 2019 02:00:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGvqX-0003i6-IA
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 02:00:30 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E53A218AC;
 Sun,  6 Oct 2019 01:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570327229;
 bh=c+PDK9PdBWeKgicXAkks/m/JE6AGhT/LowZoiedqZro=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fR5wuOg5eKsMSOc4WOitA6WL61fR4NMKj+yAPKAo51oRtS1FuQwft2UTm46fefZWI
 fq74W2Ux64Wiil1DSbB3MljCikBphpo5Af9hVuVpn5o0eE6SaeOcfx70RYWhq38n3+
 m0pejNP7trXxFEtmLaMpzsYoPY/iN+/KFLlC68m4=
Date: Sun, 6 Oct 2019 09:59:44 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Subject: Re: [PATCH v4 1/6] dt-bindings: arm: fsl: Add the S32V234-EVB board
Message-ID: <20191006015942.GK7150@dragon>
References: <20190905115803.19565-1-stefan-gabriel.mirea@nxp.com>
 <20190905115803.19565-2-stefan-gabriel.mirea@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905115803.19565-2-stefan-gabriel.mirea@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_190029_620980_E03077F1 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Eddy Petrisor <eddy.petrisor@nxp.com>, "corbet@lwn.net" <corbet@lwn.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBTZXAgMDUsIDIwMTkgYXQgMTE6NTg6MzJBTSArMDAwMCwgU3RlZmFuLWdhYnJpZWwg
TWlyZWEgd3JvdGU6Cj4gRnJvbTogRWRkeSBQZXRyaciZb3IgPGVkZHkucGV0cmlzb3JAbnhwLmNv
bT4KPiAKPiBBZGQgZW50cnkgZm9yIHRoZSBOWFAgUzMyVjIzNCBDdXN0b21lciBFdmFsdWF0aW9u
IEJvYXJkIHRvIHRoZSBib2FyZC9Tb0MKPiBiaW5kaW5ncy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBF
ZGR5IFBldHJpyJlvciA8ZWRkeS5wZXRyaXNvckBueHAuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFN0
ZWZhbi1HYWJyaWVsIE1pcmVhIDxzdGVmYW4tZ2FicmllbC5taXJlYUBueHAuY29tPgo+IFJldmll
d2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgoKSSdtIGFib3V0IHRvIGFwcGx5
IHRoZSBwYXRjaGVzLCBidXQgZm91bmQgdGhlIG1lc3NhZ2VzIGFyZSB1c2luZyBiYXNlNjQKQ29u
dGVudC1UcmFuc2Zlci1FbmNvZGluZywgd2hpY2ggaXMgZGlmZmljdWx0IGZvciBtZSB0byBhcHBs
eSBwYXRjaApmcm9tLiAgUGxlYXNlIGZpeCBpdCBhbmQgcmVzZW5kLgoKU2hhd24KCj4gLS0tCj4g
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vZnNsLnlhbWwgfCA2ICsrKysr
Kwo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vZnNsLnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1sCj4gaW5kZXggNzI5NGFjMzZmNGMw
Li41OTdjNTYzYmRlYzkgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2FybS9mc2wueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9hcm0vZnNsLnlhbWwKPiBAQCAtMzA5LDQgKzMwOSwxMCBAQCBwcm9wZXJ0aWVzOgo+ICAg
ICAgICAgICAgICAgIC0gZnNsLGxzMjA4OGEtcmRiCj4gICAgICAgICAgICAtIGNvbnN0OiBmc2ws
bHMyMDg4YQo+ICAKPiArICAgICAgLSBkZXNjcmlwdGlvbjogUzMyVjIzNCBiYXNlZCBCb2FyZHMK
PiArICAgICAgICBpdGVtczoKPiArICAgICAgICAgIC0gZW51bToKPiArICAgICAgICAgICAgICAt
IGZzbCxzMzJ2MjM0LWV2YiAgICAgICAgICAgIyBTMzJWMjM0LUVWQjIgQ3VzdG9tZXIgRXZhbHVh
dGlvbiBCb2FyZAo+ICsgICAgICAgICAgLSBjb25zdDogZnNsLHMzMnYyMzQKPiArCj4gIC4uLgo+
IC0tIAo+IDIuMjIuMAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
