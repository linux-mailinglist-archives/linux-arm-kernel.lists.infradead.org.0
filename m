Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9933A12EA8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 20:34:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwgoPcZxeNRy4MIoeBdxAo+wtBo1M9m4KSCCL31O8h8=; b=eD7GWPPhGxxcrJ
	fm8tEvy+OiQYcZDAxENuqK1eWdA0w0ehxEVM4Nhj58RQwLc5TJnSnRxdMPeO+7UKIfSq+k5SY+l7f
	rk0jN1txAXefF6G6Mtzt83JuDMoGkgFYrglVjDDzypvaKi43dMsm/0/3nCxKbXSsJZNhSBnltfzet
	hG16zOQD5RLZQuV7qVl1axrFSSRN/1rzZOaH2DHd1CvbUgOz07lGmccMDembu1Fp1Brj04270ueA0
	FI92YoINBn58Iplwt8lHAwhgfmlpFFkB0+nH5I70dT3IazI10qWbRJV+nwnf11F8eiX2jxhyPZkuW
	ns+b7olVdfCMGos0q6sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in6EU-0005cU-K2; Thu, 02 Jan 2020 19:34:10 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in6EN-0005bo-FQ
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 19:34:06 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id B42DE8087;
 Thu,  2 Jan 2020 19:34:43 +0000 (UTC)
Date: Thu, 2 Jan 2020 11:33:59 -0800
From: Tony Lindgren <tony@atomide.com>
To: =?utf-8?B?QW5kcsOp?= Hentschel <nerv@dawncrow.de>
Subject: Re: [PATCH v2 1/2] ARM: dts: Move interconnect target module for
 omap3 sgx to separate dtsi files
Message-ID: <20200102193359.GE16702@atomide.com>
References: <20191230202037.28836-1-nerv@dawncrow.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191230202037.28836-1-nerv@dawncrow.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_113403_555864_F0AC54CD 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux@arm.linux.org.uk,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, bcousson@baylibre.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KiBBbmRyw6kgSGVudHNjaGVsIDxuZXJ2QGRhd25jcm93LmRlPiBbMTkxMjMwIDIwOjIyXToKPiBP
bmx5IGRtMzczMCBhbmQgYW0zNzE1IGNvbWUgd2l0aCBTR1ggc3VwcG9ydAoKQUZBSUsgZG0zNzMw
IGlzIGp1c3QgYSBtYXJrZXRpbmcgbmFtZSBmb3IgYSBjYXRhbG9nIHZlcnNpb24gb2YKb21hcDM2
MzAuIFNvIHVzaW5nIG9tYXAzNnh4LmR0c2kgaXMgY29ycmVjdCBhbmQgd2Ugc2hvdWxkIG5vdApj
aGFuZ2UgdGhhdC4KCkNhbiB5b3UgcGxlYXNlIGp1c3QgYWRkIGEgbWluaW1hbCBkbTM3MjUuZHRz
aSB0aGF0IHlvdXIgYm9hcmQgZHRzCmNhbiBpbmNsdWRlIGFuZCBhdm9pZCBkaXNhYmxpbmcgc2d4
IGluIHRoZSBib2FyZCBzcGVjaWZpYyBmaWxlPwpUaGF0IGlzIGFzc3VtaW5nIHlvdSBoYXZlIGRt
MzcyNSB3aXRoIGRzcCBhbmQgaXNwIGJ1dCBubyBzZ3guCgpZb3UgY2FuIHJlYWQgdGhlIGRldGVj
dGVkIFNvQyB3aXRoOgoKIyBjYXQgL3N5cy9idXMvc29jL2RldmljZXMvc29jMC9tYWNoaW5lCgpU
aGlzIGF2b2lkcyBzb21lYm9keSAocHJvYmFibHkgbWUgYWdhaW4pIHBhdGNoaW5nIGFsbCBvdmVy
IHRoZQpib2FyZCBzcGVjaWZpYyBmaWxlcyB0cnlpbmcgdG8gZ3Vlc3Mgd2hpY2ggU29DIHRoZSBk
ZXZpY2UgbWlnaHQKaGF2ZS4KClJlZ2FyZHMsCgpUb255CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
