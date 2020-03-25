Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A5B19239D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 10:04:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Subject:From:To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aB1E4xqRSLdVjfGz0E8ic+AB3DxpGTTPpHS2fOn+lQg=; b=EPHOmoy7rH8MX0
	B8Oo57+ty7EPALP2nidKqvE4dXi8Df0twCTyWDtq6QvLul3fqWLIdC8FGahtQLa933vgCK2B7RF1h
	+c2uzULhnQqk5YLuEv2IFKvW9oTEeEYMZAvMcCyy+ZMWU7Cmz+Ht75s7tvgn4dQwAm47ZZKX0TN75
	4ZagTq8o+eQ+eHti+96xNSse1tNOT9OwHdDluQ+AJeOJf/9VnbEzjPOgsuRaPOZQZgajRgW90bcZq
	mzSJ4vc3/NWk/EHCrEo8BZ7XSZNowpS/arH7Wb5eNIHJozWEP0A3gQHRMwtCYigHQY0CwDfU5RS69
	E4JqsRPCqf4dFLOzW4TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH1xk-0004VY-Ds; Wed, 25 Mar 2020 09:04:36 +0000
Received: from mail2.protonmail.ch ([185.70.40.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH1xV-0004Tp-8y; Wed, 25 Mar 2020 09:04:23 +0000
Date: Wed, 25 Mar 2020 09:04:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1585127056;
 bh=Guy2vOhTyBfZhuCrDbubTIeu//kaLb6ip8d00QcbKFc=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=UQwj5mzFaHihXW13WpxBcrPWmbIGaA8H7Qj+3IufGWtq8INdISQG6sVlJn+S4In/9
 PNcaW1d2j3KDPhCsoCgbgouJj2J1wgZimNSJCD73RXSstTyFiXvNANX31Fd+bqxpU2
 zh9IMKKqAuoKSdZ9hI2GOhyoKL+jj1bU9/CxHvGE=
To: Neil Armstrong <narmstrong@baylibre.com>
From: Simon Ser <contact@emersion.fr>
Subject: Re: [PATCH v4 7/8] drm/fourcc: amlogic: Add modifier definitions for
 the Scatter layout
Message-ID: <JgBZ7eZYMgXRNu_-E4ItS1bud9mEe15xptZEX_XhsM_h8_iIZTOmPokEVxPJYwX0wP0pmb5p-ymubyyZP3kVbcfuDNdmM0__L8wBR5IykfE=@emersion.fr>
In-Reply-To: <20200325085025.30631-8-narmstrong@baylibre.com>
References: <20200325085025.30631-1-narmstrong@baylibre.com>
 <20200325085025.30631-8-narmstrong@baylibre.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on mail.protonmail.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_020421_547680_03EF4C2C 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.70.40.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: Simon Ser <contact@emersion.fr>
Cc: "mjourdan@baylibre.com" <mjourdan@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wednesday, March 25, 2020 9:50 AM, Neil Armstrong <narmstrong@baylibre.com> wrote:

> Amlogic uses a proprietary lossless image compression protocol and format
> for their hardware video codec accelerators, either video decoders or
> video input encoders.
>
> This introduces the Scatter Memory layout, means the header contains IOMMU
> references to the compressed frames content to optimize memory access
> and layout.
>
> In this mode, only the header memory address is needed, thus the content
> memory organization is tied to the current producer execution and cannot
> be saved/dumped neither transferrable between Amlogic SoCs supporting this
> modifier.

I don't think this is suitable for modifiers. User-space relies on
being able to copy a buffer from one machine to another over the
network. It would be pretty annoying for user-space to have a blacklist
of modifiers that don't work this way.

Example of such user-space:
https://gitlab.freedesktop.org/mstoeckl/waypipe/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
