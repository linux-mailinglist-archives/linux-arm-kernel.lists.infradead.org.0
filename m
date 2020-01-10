Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 842911371CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:52:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D9uykS/iBgg2MtpoFrVksn64HcYmYS8WC7SFrP9qD0w=; b=rWkwoL2PvDyMR4
	yqBEmO7MOEdgiPVOwiZbL8inGA9Rm1hHJDi8F3/T0pbLDP3JQWk2vh8GmRBddPpATJv+7q/EpIVuk
	WC2z+emRxciIWOXaXn6VgN5Dg1k8yGVjQ8aoFxzL4FMa/ip8vlFJs6FgNN/Lz9eML3pKOlOY4rFIH
	N47sIJr8lFrnlD3m1Vp8U+LvJATChxcZjjsjuNFRLFG2uYcaiBYd5uRAQwk66BTjCg2QFN5VdF85e
	PZMAZqWkJtSV9dU8f+QWBtRn1dzPdoV1UukfVItjQkUgt7xxSdbTXQs5TcGTr97NVaIY4ZSwbwP38
	hA6RJDrBx5fF302rfgAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwa6-0006ZR-H1; Fri, 10 Jan 2020 15:52:14 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwZy-0006Yj-Ay
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:52:08 +0000
Received: from zn.tnic (p200300EC2F0ACA0005C6612E529EFC59.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0a:ca00:5c6:612e:529e:fc59])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 54E781EC02C1;
 Fri, 10 Jan 2020 16:52:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1578671520;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=PG559ixUh7Dx/k476pfGogc1Fgz5iKSv3jts5x2RJcE=;
 b=Ma+x5ECbcd8uQhY7OlRNSrHvPFMNPluXa2lr+PMdOUNQd0XtvgG24DD0Bn42megLWZ2d2c
 KqhyncnHnzTU5kmIxXP7BIr54gmpABvKWNsV/r81n4nlTaMwiSzJWB9fmGX+pIjFlzVIBH
 D4YxpSccbuvyLndmoojSLj1ovwg8rYc=
Date: Fri, 10 Jan 2020 16:51:53 +0100
From: Borislav Petkov <bp@alien8.de>
To: Mark Brown <broonie@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v2 00/10] Impveovements for random.h/archrandom.h
Message-ID: <20200110155153.GG19453@zn.tnic>
References: <20200110145422.49141-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110145422.49141-1-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_075206_533345_3A14B8E1 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 herbert@gondor.apana.org.au, x86@kernel.org,
 Richard Henderson <richard.henderson@linaro.org>, linux-crypto@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 02:54:12PM +0000, Mark Brown wrote:
> This is a resend of a series from Richard Henderson last posted back in
> November:
> 
>    https://lore.kernel.org/linux-arm-kernel/20191106141308.30535-1-rth@twiddle.net/
> 
> Back then Borislav said they looked good and asked if he should take
> them through the tip tree but things seem to have got lost since then.

Or, alternatively, akpm could take them. In any case, if someone else
ends up doing that, for the x86 bits:

Reviewed-by: Borislav Petkov <bp@suse.de>

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
