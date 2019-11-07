Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DCBF3A4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 22:18:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=X6ZaxpXzNzTDzGYJ+P0vBJP8RfCtxeQfahmmVAjdyj4=; b=AZtaImNVxbyCLm
	nFJeVQccUfVrEWotbIlJcKk2D2aqhd6jfrGO6pT5Vmll8KZsH7IuObNXovZW/wj6OLJYIQ0ybg0Nk
	NAPYRo8GESlZGVH6pouyUEeXX7Ry2UpcWR4w2lmJe4857eAT4wTq7g4njFzWiqGlUWt4dQoBsEPUw
	8GPGouFTnxJR/tz3KDD+DavaArRWdi4F7nGu97aLhn6R6zyN7BbszvEWa9COIGM1yrrhfFiTDDxQD
	5+9iiIPLmcp6zrXv+2boADI+OkVoXHw0GZ0RFgwldz7A+yvAvyCNGGMzV8Vbw5Z3FPgZWd4mGb6iH
	2a38zjDdN61io0OOEFSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSpAU-0005AC-DF; Thu, 07 Nov 2019 21:18:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSpAN-000598-QD
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 21:18:09 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AA5DC2077C;
 Thu,  7 Nov 2019 21:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573161486;
 bh=+J4FAIKTXaaTMUjiB9JwExcwXekKFRbj/8/L2DEZGfA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=gDEqAWSa5ZZIbcdBqNLxXP5Bq9FiF+tJfk5J7VKwv0fHvTOnAkwdeMMxvwyMmrE1u
 M1soAbjwF54DNbKn+WpoBNaHdPDxHjCz7Zfmdng1PWtQW/HA03X/dNziBxwPOkPXG+
 jxicxYHMDkodzwlwUgPlwUTwRQhvsAdsHL37JoII=
Date: Thu, 7 Nov 2019 15:18:01 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Olof Johansson <olof@lixom.net>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: linux-next: manual merge of the pci tree with the arm-soc tree
Message-ID: <20191107211801.GA107543@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOesGMjVUCd9bN=pggS-ECjMR42b0SqXKewsp+NYFSVqRgSWrg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_131807_870065_B0D1BD54 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FAKE_REPLY_C           No description available.
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Xiaowei Bao <xiaowei.bao@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 10:27:20AM -0800, Olof Johansson wrote:
> On Wed, Nov 6, 2019 at 2:46 PM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> >
> > Hi all,
> >
> > Today's linux-next merge of the pci tree got a conflict in:
> >
> >   arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> >
> > between commit:
> >
> >   68e36a429ef5 ("arm64: dts: ls1028a: Move thermal-zone out of SoC")
> >
> > from the arm-soc tree and commit:
> >
> >   8d49ebe713ab ("arm64: dts: ls1028a: Add PCIe controller DT nodes")
> 
> Bjorn, we ask that driver subsystem maintainers don't pick up DT
> changes since it causes conflicts like these.
> 
> Is it easy for you to drop this patch, or are we stuck with it?
> Ideally it should never have been sent to you in the first place. :(

Lorenzo, is it feasible for you to drop it from your pci/layerscape
branch and repush it?  If so, I can redo the merge into my "next"
branch.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
