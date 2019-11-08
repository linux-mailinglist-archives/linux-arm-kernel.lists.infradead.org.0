Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BFFF455F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 12:08:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ucnao1ve6eprGfpL2tqtG9/Le2Rns5QyGnM17eTZYxU=; b=YxqIUJSzMKpfMc
	vS5DwI/fQjMiHt70t8s4YuM+PWzYR4Ix4Ka7Ct429MRZ5gRsWGEfYZFZedIAAPLRDPYmounSg/ode
	5Em66ohxjcx7qkuZn2y7NidzR+Wy9MLHuebUIhJv1w/KHtykLvX0OGfRAB7MQ72z1lXfU1nquscPA
	AYHu+J1XBIYjfRvXumJesEe8i4yVlsZrgEIg3q59vWodYKomFzaSFf+/ECjmexzNSrsE/1j7tp3Lm
	KPao6JKjsMro/kOInaKclqqTM+BV+6IdqgjJ0+ND+mq+2IlYwS4+ZMFMWyoE0M2zXnVwd4/joJxzZ
	5VD5Q/MUTzpKfDX+i/kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT27c-0002Sp-B9; Fri, 08 Nov 2019 11:08:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT27T-0002Ry-GR
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 11:08:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B68BE31B;
 Fri,  8 Nov 2019 03:07:55 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 43C173F719;
 Fri,  8 Nov 2019 03:07:54 -0800 (PST)
Date: Fri, 8 Nov 2019 11:07:44 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: linux-next: manual merge of the pci tree with the arm-soc tree
Message-ID: <20191108110736.GA10708@e121166-lin.cambridge.arm.com>
References: <CAOesGMjVUCd9bN=pggS-ECjMR42b0SqXKewsp+NYFSVqRgSWrg@mail.gmail.com>
 <20191107211801.GA107543@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107211801.GA107543@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_030800_488696_F4B6ACF2 
X-CRM114-Status: GOOD (  14.03  )
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Xiaowei Bao <xiaowei.bao@nxp.com>,
 Arnd Bergmann <arnd@arndb.de>, Shawn Guo <shawnguo@kernel.org>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Olof Johansson <olof@lixom.net>, Fabio Estevam <festevam@gmail.com>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 03:18:01PM -0600, Bjorn Helgaas wrote:
> On Thu, Nov 07, 2019 at 10:27:20AM -0800, Olof Johansson wrote:
> > On Wed, Nov 6, 2019 at 2:46 PM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> > >
> > > Hi all,
> > >
> > > Today's linux-next merge of the pci tree got a conflict in:
> > >
> > >   arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > >
> > > between commit:
> > >
> > >   68e36a429ef5 ("arm64: dts: ls1028a: Move thermal-zone out of SoC")
> > >
> > > from the arm-soc tree and commit:
> > >
> > >   8d49ebe713ab ("arm64: dts: ls1028a: Add PCIe controller DT nodes")
> > 
> > Bjorn, we ask that driver subsystem maintainers don't pick up DT
> > changes since it causes conflicts like these.
> > 
> > Is it easy for you to drop this patch, or are we stuck with it?
> > Ideally it should never have been sent to you in the first place. :(
> 
> Lorenzo, is it feasible for you to drop it from your pci/layerscape
> branch and repush it?  If so, I can redo the merge into my "next"
> branch.

Done. Should we ignore all dts updates from now onwards ?

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
