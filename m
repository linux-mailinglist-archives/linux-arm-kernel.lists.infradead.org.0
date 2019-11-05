Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F487EFA96
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:13:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+GL9pQTtFO1oKh9861VXDqxdZ0FB0DxdX5QJ+0gQQg=; b=oSrwVWsmrcex4+
	96ykSlD5FOYdF5ihwk77DfAajheYID4Xg7pZPDBblhSZ8YqdOzaodCc5zGK29f47IR11YtAAUeKEm
	6jzMsMyJn6dfoOagXEgoT9+MRJ5sXt1NW6Hv6+gwL3rqr9GMk5SOKwXvXFH/aVTmOAN+W7tgeboDZ
	piOLsBbQ44b+/TYt8ROxwm+vLYD4b7MT8Ey6hp0vYDTc9/hSfnM4CfPyDMh1FP0r0MIwydMZDLsVo
	gH+m6w9ibIe7jYJEP0fV9uAM7HuCBOJ1I6zqPRT6JBIzuJQA7umJunXBIFTQpVWHPv1hxXNFV03CB
	wGJe6U7jf6JN452FKwkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRvpu-0004AY-77; Tue, 05 Nov 2019 10:13:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRvpm-0004A0-8t
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:13:11 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1961F21929;
 Tue,  5 Nov 2019 10:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572948789;
 bh=EkFkzMw/9Q7TmseCjgj4zggdTDwYFvDKTbwOc9WSrrs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=huX++/6ld4+kzCEovk5TNI25d6Y7ZwmKcSiqHq0C3aq0lczH3A2WFkTPtIGOPYMHX
 YUBgihd44UMBnXiRZQslpZ2GYIE3zMWZel0TsiM8XlAcCOz3wgqPDYG7+FyonKaNz4
 15Md/fEU+jyT4CvadT9+ekOEnTWr+9gdRIbDSX3Y=
Date: Tue, 5 Nov 2019 11:13:06 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Marcel Holtmann <marcel@holtmann.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: net: bluetooth: add DT binding for
 Realtek controllers
Message-ID: <20191105101306.GA3876@gilmour.lan>
References: <20191030224333.70241-1-bonstra@bonstra.fr.eu.org>
 <20191030224333.70241-2-bonstra@bonstra.fr.eu.org>
 <20191101080256.gjc4tacltehro3iw@hendrix>
 <6C5CE71F-37F2-4C8A-9D94-1BC75937B478@holtmann.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6C5CE71F-37F2-4C8A-9D94-1BC75937B478@holtmann.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_021310_328445_230856E0 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Johan Hedberg <johan.hedberg@gmail.com>,
 Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>,
 linux-bluetooth@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBOb3YgMDQsIDIwMTkgYXQgMDM6MjA6NTlQTSArMDEwMCwgTWFyY2VsIEhvbHRtYW5u
IHdyb3RlOgo+ID4+IFRoZSBydGxfYnQgZHJpdmVyIGFscmVhZHkgc3VwcG9ydHMgc29tZSBSZWFs
dGVrIGNvbnRyb2xsZXJzIG9uIEFDUEkKPiA+PiBwbGF0Zm9ybXMuCj4gPj4gVGhpcyBjb21taXQg
YWRkcyBiaW5kaW5ncyBmb3IgRFQtb25seSBwbGF0Zm9ybXMuCj4gPj4KPiA+PiBTaWduZWQtb2Zm
LWJ5OiBIdWdvIEdyb3N0YWJ1c3NpYXQgPGJvbnN0cmFAYm9uc3RyYS5mci5ldS5vcmc+Cj4gPj4g
LS0tCj4gPj4gLi4uL2JpbmRpbmdzL25ldC9yZWFsdGVrLWJsdWV0b290aC50eHQgICAgICAgIHwg
MjUgKysrKysrKysrKysrKysrKysrKwo+ID4+IDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25z
KCspCj4gPj4gY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9uZXQvcmVhbHRlay1ibHVldG9vdGgudHh0Cj4gPgo+ID4gWW91IHNob3VsZCB3cml0ZSB0
aGF0IGJpbmRpbmcgdXNpbmcgYSBZQU1MIGRlc2NyaXB0aW9uLiBGcmVlLWZvcm0KPiA+IGRldmlj
ZSB0cmVlIGJpbmRpbmdzIGFyZSBtb3JlIG9yIGxlc3MgZGVwcmVjYXRlZCBub3cuCj4KPiB1bmxl
c3Mgd2UgY2hhbmdlIGFsbCB0aGUgQmx1ZXRvb3RoIGRlc2NyaXB0aW9ucywgSSBwcmVmZXIgd2Ug
a2VlcCBpdCB0aGUg4oCcb2xk4oCdIHdheS4KCkZXSVcsIHRoaXMgaXMgYSB3YXJuaW5nIGluIGNo
ZWNrcGF0Y2ggbm93LgoKTWF4aW1lCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
