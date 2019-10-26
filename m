Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B8FE5D82
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 15:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nAHyuw9TbVX3Wuot2b5w44bl0tR8v0cWZ4QlNlDMeNc=; b=gk22rS2E4cIqBR
	BwfNIDEVPKohS/AJ7RIZNBBtvkWxtkU/aRJZ5NnHZGss+f6s8Q83oIPCfgi/LrP81g7YiiPqT5NWX
	39PRtEnHI8Cm4Kn1dZNPC8Ta6GiuCGoApDGCAhZdC5Ys8I4aCfttsFo5K87GAckk5eDnRyHOv6vBS
	dxuYeWiuXgf/It3GVnthExZY0RcDRhT3B7vpWfnN5oETgMVd98ZoAoiQB/jP/RngD3/sen4y6YKp6
	KcVudmdnyBVxWOVpN5P1Ej/F7jCa8kwCvpZZpAkYCSpO9Qs9QdCM1Hlfg6bMZZ4jvXMIeD+UploqO
	a0Oj9SAHftS74SPbc5zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOMMu-0002ax-QT; Sat, 26 Oct 2019 13:44:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOMMg-0002aa-GZ
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 13:44:23 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 162D520867;
 Sat, 26 Oct 2019 13:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572097462;
 bh=YCv4URIQy3pkQdHVSuQ+eQWwuJTzbg/MkOdHyTJ36e4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=es/koZ9mMCa27TDLFb9+npeSxQoSzx8tu4azO/Cii5Nxn2vNy8oG4f7jw8mZW95KT
 SVq2gwXHkPyC8iCZN1BPF1Mi6YGh0TiLE4BDKqjerpn2r41iF/ttJBt+I7ZtAxlMjZ
 i950RIuSPjFb6t9bhtuQdxo1ycLuXgjx8F9/t0Lk=
Date: Sat, 26 Oct 2019 21:44:04 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Subject: Re: [PATCH v7 0/5] Add initial support for S32V234-EVB
Message-ID: <20191026134403.GQ14401@dragon>
References: <1571230107-8493-1-git-send-email-stefan-gabriel.mirea@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571230107-8493-1-git-send-email-stefan-gabriel.mirea@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_064422_575910_6ED63373 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, corbet@lwn.net,
 gregkh@linuxfoundation.org, jslaby@suse.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 linux-serial@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBPY3QgMTYsIDIwMTkgYXQgMDM6NDg6MjJQTSArMDMwMCwgU3RlZmFuLUdhYnJpZWwg
TWlyZWEgd3JvdGU6Cj4gRWRkeSBQZXRyaciZb3IgKDEpOgo+ICAgZHQtYmluZGluZ3M6IGFybTog
ZnNsOiBBZGQgdGhlIFMzMlYyMzQtRVZCIGJvYXJkCj4gCj4gTWloYWVsYSBNYXJ0aW5hcyAoMik6
Cj4gICBhcm02NDogSW50cm9kdWNlIGNvbmZpZyBmb3IgUzMyCj4gICBhcm02NDogZGVmY29uZmln
OiBFbmFibGUgY29uZmlncyBmb3IgUzMyVjIzNAouLi4KPiBTdG9pY2EgQ29zbWluLVN0ZWZhbiAo
MSk6Cj4gICBhcm02NDogZHRzOiBmc2w6IEFkZCBkZXZpY2UgdHJlZSBmb3IgUzMyVjIzNC1FVkIK
CkFwcGxpZWQgdGhlc2UgNCwgdGhhbmtzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
