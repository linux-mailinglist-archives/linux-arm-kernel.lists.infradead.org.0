Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A768A93B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vIDrREly11f9tNCNvu0JrukdNc5eG/rMpFPQfZw65mg=; b=H/P8he0HGzeEAs
	Lb1U/TpEpjSv5oSKU2Xx8VHkEfrQNb7l97EobS7TEf8N4Hpwk1dn+qD08c+AHt7T+2vCCVt+ONdbt
	DxRnFhhSKgG8xSs47xi/WYDk/xrTLUHI/vnSbEjwV467f9yZOLkxYGanJm4q2GZPwSuKFlt/K0nbR
	R5OKoxBwh3HtpjRRP4WCQoa7d+Xdx8VP0Uzt9eJlXDCfKHi8f0uNNeuhDmtJ4+xSMw95i5UWa7Wgt
	5nJRsUgDCrTO/YDerL+hBhq9wkgWxCNVi9LUk4TFp37LYYMF8kvPLdbsek6OikNKvqJMMCmf8Ue7R
	7PCWQ1t3XZWUpBSbxbwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHmC-0007YJ-Hd; Mon, 12 Aug 2019 21:22:48 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHlz-0007Xu-Lf
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 21:22:36 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 47AE8737;
 Mon, 12 Aug 2019 21:22:35 +0000 (UTC)
Date: Mon, 12 Aug 2019 15:22:34 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Jonathan =?UTF-8?B?TmV1c2Now6RmZXI=?= <j.neuschaefer@gmx.net>
Subject: Re: [PATCH 1/2] Documentation/arm/sa1100: Remove some obsolete
 documentation
Message-ID: <20190812152234.267a609d@lwn.net>
In-Reply-To: <20190808165929.16946-1-j.neuschaefer@gmx.net>
References: <20190808165929.16946-1-j.neuschaefer@gmx.net>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_142235_712629_110CEC4F 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAgOCBBdWcgMjAxOSAxODo1ODo1NSArMDIwMApKb25hdGhhbiBOZXVzY2jDpGZlciA8
ai5uZXVzY2hhZWZlckBnbXgubmV0PiB3cm90ZToKCj4gVGhlIHN1cHBvcnQgZm9yIHRoZSBmb2xs
b3dpbmcgYm9hcmRzLCBhbW9uZyBvdGhlcnMsIHdhcyByZW1vdmVkIGluIDIwMDQKPiB3aXRoIGNv
bW1pdCAiW0FSTV0gUmVtb3ZlIGJyb2tlbiBTQTExMDAgbWFjaGluZSBzdXBwb3J0LiI6Cj4gCj4g
LSBBRFMgQml0c3kKPiAtIEJydXR1cwo+IC0gRnJlZWJpcmQKPiAtIEFEUyBHcmFwaGljc0NsaWVu
dCBQbHVzCj4gLSBBRFMgR3JhcGhpY3NNYXN0ZXIKPiAtIEjDtmZ0ICYgV2Vzc2VsIFdlYnBhbmVs
Cj4gLSBDb21wYXEgSXRzeQo+IC0gbmFub0VuZ2luZQo+IC0gUGFuZ29saW4KPiAtIFBMRUIKPiAt
IFlvcHkKPiAKPiBUaWZvbiBzdXBwb3J0IGhhcyBiZWVuIHJlbW92ZWQgaW4gMi40LjMuMy4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBKb25hdGhhbiBOZXVzY2jDpGZlciA8ai5uZXVzY2hhZWZlckBnbXgu
bmV0PgoKV2VsbCwgeW91IGtub3csIHdlIGRvbid0IGxpa2UgdG8gYmUgdG9vIGhhc3R5IGFib3V0
IHN1Y2ggdGhpbmdzLi4uOikKCkFwcGxpZWQsIHRoYW5rcyBmb3IgaGVscGluZyB0byBjbGVhbiBv
dXQgc29tZSBvZiB0aGUgY29id2VicyEKCmpvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
