Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF421A778B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 11:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hI8tQ8pE1IXcfoZUx2AOd/MJmj8obBMXpMXGsaZm0Nk=; b=IImS1vp3zr74YK
	WFnvN5dGcokyDk1yPM8Nvw+Lfe4+r4TK6hnDc0DtuSq0Vx2T/TxhqTrsAWGck9kz/BqzeDw3IDjyn
	LnNqlfcQyKzaLrpORQSX82Jjzo48rKh0rehzegdOFvtxpKIYEncVr2hfRXPY+1ecpxxXXghTbzYt8
	1m8+2e4kvgTNxDpD4H8c7TI6Sv9Lei3w19066AQtYQjfZspHSfrib+UB+jQXd2fnVXv4Fg/S6VuN5
	geCOltKTiGyhX7249rRFqCtwUDMez52BX6XnQJJue5Xd3faxKCZFAJu//UrtrfZXAG8+DsAB1/1ma
	Qe/DOoLKrVn31jwBxz0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOI6d-0005kF-7D; Tue, 14 Apr 2020 09:43:47 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOI6R-0005iX-Vx
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 09:43:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1586857412;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=wffEAJzLw5r0Krn8zuK2Pz6LtbsEFk3IEtvF5z6tdE0=;
 b=r/Mzd4hxctk6zqp33mleHaa1BqDezZrqx+h5kmPIUFYAx5mQL6+6I9qqFWIzYTLhQM
 SeL11lgZWzNUSFvPuYc0L+zgbrnU3sjoVGwXHmhxKNSO6aUyKqxECfvzqUgEblQUyeSe
 nZETK7kFNx1hEQQqnqY9TM/1It+50wCMQ9v8l5fUzV3/AYb5waFPPot6wRVRmiGlLTKP
 L1I+z6MRp3pRVsUdEvdV1sQaXuOpDIA/jcv1u5mYXAX97rn28SLbDr4ND5flQufvQLLP
 +5HO/WOkAHH3tw9vgSPzkDNUirMgISM2ghAsOIkeSMEFbaKo5Gf4EZ+57pTryCSIpJPu
 giUg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u26zEodhPgRDZ8j7Ic/CaIo="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 46.2.1 DYNA|AUTH)
 with ESMTPSA id u043b8w3E9hNd2c
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Tue, 14 Apr 2020 11:43:23 +0200 (CEST)
Date: Tue, 14 Apr 2020 11:43:17 +0200
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 2/2] ARM: defconfig: u8500: Enable CONFIG_GP2AP002
Message-ID: <20200414094317.GA5896@gerhold.net>
References: <20200405173252.67614-1-stephan@gerhold.net>
 <20200405173252.67614-2-stephan@gerhold.net>
 <CACRpkdYW930B-riUi5OnmsDCJD_piJ+321rgB40bq93ndzSp5A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdYW930B-riUi5OnmsDCJD_piJ+321rgB40bq93ndzSp5A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_024336_627495_B43BB6DD 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5301:0:0:11 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 11:08:38AM +0200, Linus Walleij wrote:
> On Sun, Apr 5, 2020 at 7:34 PM Stephan Gerhold <stephan@gerhold.net> wrote:
> 
> > sharp,gp2ap002s00f is used as a proximity sensor in
> > samsung-golden and samsung-skomer.
> >
> > Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> 
> Ooops I saw now that I already had this in my "Skomer and misc"
> enablement patch. (rebasing my trees today).
> 
> I can put this in front of that patch and take it out of mine if you
> prefer stepwise enablement.
> 

Do you mean the "ARM: defconfig: u8500: Enable new drivers for ux500"
patch? It doesn't matter which commit/patch adds it, as long as it ends
up in the u8500_defconfig :)

Thanks,
Stephan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
