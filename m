Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA9A1C4610
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 20:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRWEueFaQkFX7PfJS4BOCHj3LqnieoSFYyky2M+PXsE=; b=WVfu7j0RVeFzuD
	0pUt/eRPyZnrBJAM4+rKB9N6aWB/UgdLwQ3NC3ciDII4wyBMKNBd3/DBlV1BsuoAiW4uTbJHSJbwZ
	DMPNtKDlNpf9241IhRHzkAGcgEJhUQif9riUgnBdgSFtTXMJ91fGwaDcAb6lvJ6fjd2kVat+p5AYU
	FGNIwjqObS5wsDBcdDhOLIOGBjVoLD1Bpx+y0fnS88esPzRUgHjvY0+tx3esGslJTpz0zvXfP15so
	QwFUK7mfCICk4ARuuWM8RfKS2lKq7F1l7DqQMLIOXTQdwXhZwkTEXtbm5TevbNcyTqBGvH2C7/+Bn
	hLE7VB/CTlIxGa9KeuMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVfyD-0006P1-C7; Mon, 04 May 2020 18:37:37 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVfy6-0006NM-7H
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 18:37:31 +0000
Received: from zn.tnic (p200300EC2F08AF0065FB624DCF4BA4D3.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f08:af00:65fb:624d:cf4b:a4d3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id EC3E21EC02CA;
 Mon,  4 May 2020 20:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1588617440;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=YuW8tb+waz9pfSvMfWhFe9y4ge3JyCySIqtRfEA1Ev8=;
 b=Loxg7qHfyNd5NlctbHdWyRlUKhl4uMV33Gqbnl6jLD+pV37pY/Z3s97vOjSG0DrJZcSrWC
 NZZZdI5FefhNTVMEdziALRtWLraKpwHiXKxQSxNrujV9olY0U5AxQM58uFSr0koaRfmiyx
 xXfDo1hym6MHekNpykIm/9pXyWJlkps=
Date: Mon, 4 May 2020 20:37:16 +0200
From: Borislav Petkov <bp@alien8.de>
To: "Shenhar, Talel" <talel@amazon.com>
Subject: Re: [PATCH v6 2/2] EDAC: al-mc-edac: Introduce Amazon's Annapurna
 Labs Memory Controller EDAC
Message-ID: <20200504183716.GJ15046@zn.tnic>
References: <20200224134132.23924-1-talel@amazon.com>
 <20200224134132.23924-3-talel@amazon.com>
 <20200428113950.GB11272@zn.tnic>
 <46ccdb47-f28d-63f7-e759-1ba34e98add8@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <46ccdb47-f28d-63f7-e759-1ba34e98add8@amazon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_113730_423684_FB7A7B85 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, benh@kernel.crashing.org,
 hhhawa@amazon.com, gregkh@linuxfoundation.org, eitan@amazon.com,
 jonnyc@amazon.com, hanochu@amazon.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, james.morse@arm.com, dwmw@amazon.co.uk,
 catalin.marinas@arm.com, ronenk@amazon.com, mchehab@kernel.org,
 will@kernel.org, davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 01:16:10PM +0300, Shenhar, Talel wrote:
> > > +     mci = edac_mc_alloc(0, ARRAY_SIZE(layers), layers,
> > > +                         sizeof(struct al_mc_edac));
> > You can let that line stick out.
> 
> I rather avoid having this as a checkpatch warnning... (automation and
> stuff...)

checkpatch.pl - while useful - should not be taken to the letter and
human brain should be applied to sanity check it what it warns about.

> This line break does seems to my eye as too hard to read.
> 
> Let me know if you feel strongly about it.

I'm just sayin' - in the end of the day you'll be staring at that code -
not me - so whatever *you* prefer. :-)

Just don't follow tools blindly.

> > > +     if (al_mc->irq_ue <= 0 || al_mc->irq_ce <= 0)
> > Shouldn't this be && here?
> > 
> > I mean, you want to poll when neither of the IRQs can be found. But then
> > if you find one of them and not the other, what do you do? Poll and
> > interrupt? Is that case even possible?
> 
> Correct.
> 
> In case dt defined interrupt line only for one type and not for the other,
> than the interrupt mode shall be used for one of them while polling mode for
> the other.

That warrants a comment above it.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
