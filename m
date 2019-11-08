Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7AEF5AE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 23:30:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBbpeLKfYdV/2sRKdCn3ZpUe5t4AqFXD+MC51riMjf4=; b=YCbkmg/GSu9Hp/
	ul+5+wKAb0/yTTILHypWaM5u2YCRwxz48GjZscykYdj56ORRZvAGwMr66kbVLPjCf6sNHHv/JlXKD
	nmmR48HaQq3EKBlmZh5ExPEe1Z4O0tf1xUcrR2FCYClbChDdzIBWKbTmLc1tRn/qs6TRCloGqX+KV
	TyNfMPEWfz99EizTaapJ6S+JXjK6Pki8rrTeYXcCicQZXYRdilN5C1gVs6guwgQ38bA2Bwq83KSGS
	2pnDVX8fJIadWbtzjMJ5M6qJfaW/3nJRKVFSrEsU7QEIsqli346HLvx33E2mdsQagaFRUYU3OumPj
	REsAl3ragoAc5ncx/qag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTClf-0002hz-4u; Fri, 08 Nov 2019 22:30:11 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTClK-0002gs-Qh
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 22:29:52 +0000
Received: by mail-io1-xd42.google.com with SMTP id g15so8045913iob.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 14:29:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tG3CMleYdOoOJlDJUqZcQjcg5RUyLpG6Jn1aCKR4UeI=;
 b=0QMe2DamNA24EOuI+UywMP9UlxhPIEd9A3ejSSwX5dRvxIuLh1eyekTxCIaEXQw45R
 54KJMXm13tA1bXnQ5gJkP3Bc2AXpK5GqrZmTonZGLH7QjaBf30/ySbas7znjaZC8cE1G
 dvINXztNO0uL0txG0mi6Bc5/ap9kcdnlTiqhlqswN/TjS2cBK4KeW5Nwx13lqVQuEvxX
 oGKBNxbZ5TalYTw1lCFi09i1ffQkcnGX5b5VkolnEU5VWoGxPkE3Trg9U5Fmdt/c9FIa
 zNy9okvAx34ttHfQFN4jU4TQ/XK6X0+WuB4rn384C8czKSZAdSDyG4KOBvp6caVBgMS9
 LBzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tG3CMleYdOoOJlDJUqZcQjcg5RUyLpG6Jn1aCKR4UeI=;
 b=RtlQDrFiCxTFx95GzB2cTY+vzSYUHeOITGc0M7F53O7JRoYpZTXVe+HygrrRvbxrXW
 sY6HoH7xLY1Ih7XJhT9JWgPxJm2dtOqquetuBiAQF+DxYXlmqYK2ZGaq6haBZ71VKxlG
 7LzD+sT3ppb6IWtdA24sAQ0J9OWsGcZSxMZAjcZxlBmKM3JeaE1GObR+3S0SENzk8qCG
 JsH6oM6JFP2ixtkkyfwIDvnlyXRiVjmT5KYG8bFm8fBabjj1Ea9s9Tz4J12asVKyFPk/
 dZ4xOuJaYSwP7eAlymHL7/IRP3GWrvPzCVaEnGNEnlqDYDEWKwH0ggBdtA3D6fZNFxuX
 73jg==
X-Gm-Message-State: APjAAAX7Fv6qefOOrqYx5nryVgnktH+XR2jlX47dZthJCg+gmRrFEqNQ
 mh+A9TgyXTbfUzTpHZS0JqZbhJmk4zNtca0ueNPvPQ==
X-Google-Smtp-Source: APXvYqxR2Iojnfzgt1D2EKNQghVo4JbH2TyZSSa7HkkqJ9Q6NanRF7wM7yANUTTIbJh1g1uWd98XskwAsn4twL28rCk=
X-Received: by 2002:a6b:6509:: with SMTP id z9mr12039319iob.123.1573252182905; 
 Fri, 08 Nov 2019 14:29:42 -0800 (PST)
MIME-Version: 1.0
References: <CAOesGMjVUCd9bN=pggS-ECjMR42b0SqXKewsp+NYFSVqRgSWrg@mail.gmail.com>
 <20191107211801.GA107543@google.com>
 <20191108110736.GA10708@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191108110736.GA10708@e121166-lin.cambridge.arm.com>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 8 Nov 2019 14:29:31 -0800
Message-ID: <CAOesGMhxs0A-YTXpS9Lqk_sn2=Q5jaCM2+mjEuvtwSX9Y49eMw@mail.gmail.com>
Subject: Re: linux-next: manual merge of the pci tree with the arm-soc tree
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_142950_866300_1DBE3306 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
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
 Bjorn Helgaas <helgaas@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 3:07 AM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Thu, Nov 07, 2019 at 03:18:01PM -0600, Bjorn Helgaas wrote:
> > On Thu, Nov 07, 2019 at 10:27:20AM -0800, Olof Johansson wrote:
> > > On Wed, Nov 6, 2019 at 2:46 PM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> > > >
> > > > Hi all,
> > > >
> > > > Today's linux-next merge of the pci tree got a conflict in:
> > > >
> > > >   arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > > >
> > > > between commit:
> > > >
> > > >   68e36a429ef5 ("arm64: dts: ls1028a: Move thermal-zone out of SoC")
> > > >
> > > > from the arm-soc tree and commit:
> > > >
> > > >   8d49ebe713ab ("arm64: dts: ls1028a: Add PCIe controller DT nodes")
> > >
> > > Bjorn, we ask that driver subsystem maintainers don't pick up DT
> > > changes since it causes conflicts like these.
> > >
> > > Is it easy for you to drop this patch, or are we stuck with it?
> > > Ideally it should never have been sent to you in the first place. :(
> >
> > Lorenzo, is it feasible for you to drop it from your pci/layerscape
> > branch and repush it?  If so, I can redo the merge into my "next"
> > branch.
>
> Done. Should we ignore all dts updates from now onwards ?

Thanks!

Indeed, dts updates should only go in through the platform maintainers
(i.e. through soc tree), unless there are strong reasons to bring them
in through driver trees.

If there's a need for a dt-include to be shared between driver and
dts, getting them on a stable branch that's merged through both trees
is usually the best way. Reach out when that happens and we can
coordinate.


Regards,

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
