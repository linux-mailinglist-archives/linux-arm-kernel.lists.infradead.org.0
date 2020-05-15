Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 579C41D475C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJil9bb6TpWLPw+aRDWloeuPqvl9OR7kKBx7n4HzskQ=; b=nybdww7BEHvwuk
	r4nhTQMTe1WVBusbu99HJF6np3DphJJKKTAiFnO8dXMaoRF3oP9WMucAvbYkkJaTI/WVMgoM+NXQT
	6J493sG7TLz76mADG6Ftp9Dyx0mSrlTCmKLkLqPgohXrKwZoiiNfrnFqmGj7Qyt0eVP57aV+SKC/v
	z+MCDJJw1cD5brP9LQzrjmrSI1BI0NOvKvVwI27HhxitJteglEejZV4o4bFX6/1qFSG3WWQqL2fLF
	3P+Jr93BQTipZdgf3FqUcd1PRTq9DsjIViNCmIR07JAUHJTOoZaSJwSJzjwIYIHxcB7M85oIuVQIN
	p6WbRhx+mt81xLuisWNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZV64-0000wa-Eg; Fri, 15 May 2020 07:49:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZV5u-0000vE-8k; Fri, 15 May 2020 07:49:23 +0000
Received: from localhost (unknown [122.178.196.30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15F35206F4;
 Fri, 15 May 2020 07:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589528961;
 bh=hiG4bQ7MQyZN5lGrfPWrCEefiCNplXpHLb+0Mi5heto=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KSrx2nxFwOyF8wwohGG6EF+GEC9wVTV9KUxaxf7I1c4j01NtR8LS4aTdZoqnCjei2
 HKjNRzSBsxWneTImqZkq7o8gJcKnLLvaYWHg2S5jVqQeUySRTH3xWkcAn9rpQVZGMt
 AXfFn32m+rf8kyO/7GOGYzKYK+4brCLr3vGmPKuk=
Date: Fri, 15 May 2020 13:19:17 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH v2 0/6] phy: meson8b-usb2: small fixes and improvements
Message-ID: <20200515074917.GN333670@vkoul-mobl>
References: <20200512222424.549351-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512222424.549351-1-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_004922_328344_6097E6E1 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 hexdump0815@googlemail.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 robh+dt@kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13-05-20, 00:24, Martin Blumenstingl wrote:
> This is a batch of fixes and improvements for the phy-meson8b-usb2
> driver:
> - convert the existing dt-bindings to json-schema and add a fallback
>   compatible string which is already in existing .dtsi files
> - differentiate between Meson8 and Meson8m2 using a new compatible
>   string for the latter
> - simplify the code by using a MMIO regmap
> - set / unset the IDDQ and ACA enable bits depending on the operating
>   mode (and for the latter also the compatible string)
> 
> I suggest that all of these are applied to -next because we will need a
> separate .dts patch (which I already have prepared) to use the new
> Meson8m2 compatible string in meson8m2.dtsi. Otherwise we will be
> changing behavior in patch #4, because meson8m2.dtsi currently inherits
> the Meson8 compatible string.
> The number of actual Meson8 users is very small (I only know one case),
> so keeping Meson8m2 working is more important to me (because I know
> several users with boards that have a Meson8m2 SoC).

Applied all, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
