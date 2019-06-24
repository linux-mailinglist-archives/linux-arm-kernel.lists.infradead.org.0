Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2A75062B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 11:52:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sVSkN03Ox2fm+KY1+CtnZAq6w1giT7JFeLesNV+F9SM=; b=Dd4oz6TsyDP1Qh
	LIjjIucJXHLDKhW+TUPzZILXodYfaEBcia4zPzXTmbnDuNcGjdAqkZG7fEUK5hOiEplBEhW3XTIh2
	T4zOGQip5Dd3wnt/DoPN+4Lx8yohNetvKp6VUKkMxrbEXqK1t9rGssgLidxIbGeyUQ0uYnU6oO8+z
	AG3MMuCATQa7S2MYUO+jnQcOllLmeaCeC1PnK/klN/zNMI8+5liPkSeGpClerq27Oduu8iYDffmDd
	4wAmxORgSswWrU1AvD0sGC+W1q+r6nwKzPojqjZy3KSSJvucJwko+pf/x0ISCIfm2eWvmsEcyV5DP
	EdggFiCaHdFF0n70Iq1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLeG-0003Mw-V6; Mon, 24 Jun 2019 09:52:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLdK-0002tZ-Rz
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:51:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F3562B;
 Mon, 24 Jun 2019 02:51:27 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B192C3F71E; Mon, 24 Jun 2019 02:51:25 -0700 (PDT)
Date: Mon, 24 Jun 2019 10:51:23 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH] arm64: defconfig: update and enable CONFIG_RANDOMIZE_BASE
Message-ID: <20190624095122.GA29120@arrakis.emea.arm.com>
References: <20190620003244.261595-1-ndesaulniers@google.com>
 <20190620074640.GA27228@brain-police>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620074640.GA27228@brain-police>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_025131_156274_519307F3 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Arnd Bergmann <arnd@arndb.de>, ard.biesheuvel@linaro.org,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, broonie@kernel.org,
 Jagan Teki <jagan@amarulasolutions.com>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 08:46:58AM +0100, Will Deacon wrote:
> On Wed, Jun 19, 2019 at 05:32:42PM -0700, Nick Desaulniers wrote:
> > Generated via:
> > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make defconfig
> > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make menuconfig
> > <enable CONFIG_RANDOMIZE_BASE aka KASLR>
> > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make savedefconfig
> > $ mv defconfig arch/arm64/configs/defconfig
[...]
> Irrespective of the above, I know Catalin was running into issues with his
> automated tests where the kernel would die silently during early boot with
> some seeds.  That's a bit rubbish if it's still the case -- Catalin?

I stopped seeing these failures about 1-2 months ago, not sure exactly
what changed. I'm ok to enable KASLR in defconfig.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
