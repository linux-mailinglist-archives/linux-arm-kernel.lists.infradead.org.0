Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC835E0738
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 17:23:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j4V8DSB6KMlXLVxoqp7l5ALhJXVLvNRUf816dgYFOUo=; b=KbAqB4yyEILXuB
	2aRGaPWMByMxwQEgeaqBg0aMNQoCo/XLdOGpXp5TvbXeXCSqiipQ5N78bE70BGtUUEyDU7QgXVDaj
	7J2Bq8zA4YYi+Q8xotiJS9J2C5xdpw0dI1y2BsO2ba+1zYGv1Qa7nTW4picBiHydJYJyY/CPHL9zR
	jP4anCRECb9G9GUpMU8csW3C8tDVFyxtUaxHdZAsWd3N40qVx8PxNXmHVJSzos8S2o6RA2pDNhw64
	eR7cmzg/Ex9DUM3W2hPIq5jTU4IspWNwz109rAbiGKzXm3mf//W/Y8uoS7x04BARMNTDdXCBO9UZa
	zysO6YYBpAgOwCmboV6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMw0E-0002G9-1z; Tue, 22 Oct 2019 15:23:18 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMw04-0002F2-JB
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 15:23:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id DED1250B7A;
 Tue, 22 Oct 2019 17:23:01 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 0d8b85enxeVZ; Tue, 22 Oct 2019 17:22:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id AE3B050B7D;
 Tue, 22 Oct 2019 17:22:55 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id AlFqPbyEK5tV; Tue, 22 Oct 2019 17:22:54 +0200 (CEST)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 5388C50B7A;
 Tue, 22 Oct 2019 17:22:54 +0200 (CEST)
Message-ID: <668e779f727739665f98ce33d07cc54d37cb2770.camel@v3.sk>
Subject: Re: [GIT PULL] soc/arm/dt: Marvell MMP Device Tree changes for v5.5
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Date: Tue, 22 Oct 2019 17:22:52 +0200
In-Reply-To: <20191021222720.e7gqwyma6zjforiq@localhost>
References: <d4897c4a92319527c46147244282803cd9f5a1ff.camel@v3.sk>
 <20191021222720.e7gqwyma6zjforiq@localhost>
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_082308_941450_57294F57 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-10-21 at 15:27 -0700, Olof Johansson wrote:
> On Thu, Oct 17, 2019 at 04:35:38PM +0200, Lubomir Rintel wrote:
> > Hi,
> > 
> > Please pull the Device Tree changes for the MMP SoC.
> > 
> > The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> > 
> >   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp.git tags/mmp-dt-for-v5.5
> > 
> > for you to fetch changes up to 5c272bee843e12e4a3a2cc38881fdf31874806e0:
> > 
> >   ARM: dts: mmp3: Add MMP3 SoC dts file (2019-10-17 16:18:28 +0200)
> > 
> > This supersedes the "[GIT PULL] ARM: soc: Marvell MMP changes for v5.5" pull
> > request.
> > 
> > Thanks,
> > Lubo
> > 
> > ----------------------------------------------------------------
> > ARM: Marvell MMP Device Tree patches for v5.5
> > 
> > This tag includes binding documentation for various hardware found on Marvell
> > MMP3 SoC along a DTS file for said hardware.
> > 
> > ----------------------------------------------------------------
> > Lubomir Rintel (6):
> >       dt-bindings: arm: cpu: Add Marvell MMP3 SMP enable method
> >       dt-bindings: arm: Convert Marvell MMP board/soc bindings to json-schema
> >       dt-bindings: arm: mrvl: Document MMP3 compatible string
> >       dt-bindings: mrvl,intc: Add a MMP3 interrupt controller
> >       dt-bindings: phy-mmp3-usb: Add bindings
> >       ARM: dts: mmp3: Add MMP3 SoC dts file
> > 
> >  Documentation/devicetree/bindings/arm/cpus.yaml    |   1 +
> >  .../devicetree/bindings/arm/mrvl/mrvl.txt          |  14 -
> >  .../devicetree/bindings/arm/mrvl/mrvl.yaml         |  35 ++
> >  .../bindings/interrupt-controller/mrvl,intc.txt    |  14 +-
> >  .../devicetree/bindings/phy/phy-mmp3-usb.txt       |  13 +
> >  arch/arm/boot/dts/mmp3.dtsi                        | 527 +++++++++++++++++++++
> 
> Hi,
> 
> I only see a dtsi here. Do you have an early/partial dts for an actual piece of
> hardware that also can go in, so we get build coverage of the dtsi, etc?
> 
> Merging this as-is, but please follow up with one if you can -- even if it's
> not complete yet.

I'll send out one. It is indeed not complete, but it boots.

I'm not sure about what name to use for the machine and the compatible
string and therefore I'm thankful for suggestions. checkpatch.pl is
currently unhappy about the compatible string, that can be fixed once
we're sure compatible string is correct.

Thank you for the pulls and the build fix.

> -Olof

Thank
Lubo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
