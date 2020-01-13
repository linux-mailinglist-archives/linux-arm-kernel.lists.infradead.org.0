Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F471398A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:16:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUQfcM+qiGlwQi3VkJReoTM/DOfJApg2wyOPCDD3WaQ=; b=oFxq0oxmZfOmo2
	tRGO+T6nahYroL9kJAknrmQn2T5Wz+eBpTfIySOOj0VGVvG7OfFq9d785kTEPVrIsZ/K/frl59MOi
	c59FHX4FmPJM8lR/cW+Plt8O3xnzOVkx6qIrcVaoaf275mOCCnvKoY1KxL/insSrQR7ft0uY9/VX2
	k85GUL6v10ox+2L6PEeWd0l2OF+xyBMU+bQTB3VDIjg3Gb0wGL9EeU3YsxYiW7h5zpKZbw+81OKcf
	iD6lxTS2DHFSWOCG4EGH0+9j03YixjiFvCj9lnlqr9W4vi3NYdSHup50WDqlVhasjRlM3zh57XNaL
	GjNYaLJcJ8DGVrisVVFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4GP-0000QJ-DN; Mon, 13 Jan 2020 18:16:33 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4Fj-0008UC-Ih
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 18:15:52 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 08BD58047;
 Mon, 13 Jan 2020 18:16:26 +0000 (UTC)
Date: Mon, 13 Jan 2020 10:15:42 -0800
From: Tony Lindgren <tony@atomide.com>
To: =?utf-8?B?QW5kcsOp?= Hentschel <nerv@dawncrow.de>
Subject: Re: [PATCH v3 2/2] ARM: dts: Add omap3-echo
Message-ID: <20200113181542.GN5885@atomide.com>
References: <20200102214304.8225-1-nerv@dawncrow.de>
 <20200102214304.8225-2-nerv@dawncrow.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102214304.8225-2-nerv@dawncrow.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_101551_688797_8F2F9655 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux@arm.linux.org.uk,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, bcousson@baylibre.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KiBBbmRyw6kgSGVudHNjaGVsIDxuZXJ2QGRhd25jcm93LmRlPiBbMjAwMTAyIDIxOjQ0XToKPiBU
aGlzIGlzIHRoZSBmaXJzdCBnZW5lcmF0aW9uIEFtYXpvbiBFY2hvIGZyb20gMjAxNi4KPiBBdWRp
byBzdXBwb3J0IGlzIG5vdCB5ZXQgaW1wbGVtZW50ZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogQW5k
csOpIEhlbnRzY2hlbCA8bmVydkBkYXduY3Jvdy5kZT4KPiAtLS0KPiAKPiB2MjogRG9uJ3QgZGlz
YWJsZSBzZ3gsIGFzIHRoZSBwcmV2aW91cyBwYXRjaCBjaGFuZ2VzIGR0c2kgZmlsZXMgYWNjb3Jk
aW5nbHkKPiB2MzogSW5jbHVkZSBkbTM3MjUuZHRzaQoKVGhhbmtzIGFwcGx5aW5nIGJvdGggaW50
byBvbWFwLWZvci12NS42L2R0LgoKVG9ueQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
