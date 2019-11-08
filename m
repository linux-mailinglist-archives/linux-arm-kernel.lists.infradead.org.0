Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88358F5814
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 21:19:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VnrT6nldJA+Os5/b/CvskCXu1+y3tyrzcmN0AHcYesQ=; b=vB9R5Odre35046
	YzzNOyLP6PyHBKoFCet4uxOCgpleCaBKl+NdsltEVU2t+2F31PhCDgzowRqB49Zzalno8GuvPPlTg
	S8xKR9L3aRCqFnJDmtAV700VhLmQhmY56EnnOgAEPbFIqD+ohCJT868+FyaAeWK9AKribK7tImofv
	BcUMpODGgWyjvE36ieN6wxsv/xn9Vf2Fw0heV+rmM8fJ/l/LhmyhAXbJWgwqb9T+sN6BeQJ5xwwxS
	2zZGj/CiYq8pNFqs2eDKY1AXoNt0TeU7nSpVp81k86hls/BcwL9RZZVKNcKHe+2eSltwfbmrlNjhQ
	8m5LE8azpHJLQmCf2x8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTAir-0004nz-E4; Fri, 08 Nov 2019 20:19:09 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTAif-0004n3-GA
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 20:18:59 +0000
Received: by mail-il1-x143.google.com with SMTP id q15so1113333ils.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 12:18:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=Buzlffd6qPZ251pCZD0B39C9+fvZzH1TSbcG09q8kOM=;
 b=E2U5fy1GS15GNw8LWY0zWj+xg+cFRiv3arN9dfOCfPpp8SeACKDuwjQx35uGwKkxJq
 rYXGLQh5316oaljNVZYrfIPN67Mdle/ZpOdqFDyVUD+ZVJc09VstOgZ0qwN4LtUAmybG
 dCYvqagCutIWKJ3fFcbprCjA+Jcwex90SoMOHUCDpdeOBw8N/h8uusTl11YBUC0km6wY
 YPmwAcCukRny/ZJfFYsw0QoUlAPkaGNh4szDNH7WAau7Dx1Tdbsj+j6a/fCRR0b1v6+Q
 0Gdbkv2bDEa6YyDZ4mXsw/FpLCzcj8clZZNituJYCWxY0/GkLfk8eBoUFnrXckDQb4WN
 5F8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=Buzlffd6qPZ251pCZD0B39C9+fvZzH1TSbcG09q8kOM=;
 b=L91gdgPPYwnNwNGp+mpwlITinnI/k4FYpvRv/1yUDSG5UXUjrjD/cWNKrjLFS1i47/
 o3TLNW/KqUbnhuUa347DHXdcj5KupcuRwaBZj/MpHK3Ka35XlQyH4sixWZmnlxTje+gH
 fd09hvUteh7wTVuiamP07EWY2wJuJ8cavs7GDSaEOJI/XMApTAVm7K7ATzAkBo42j17A
 XRJJPJn3GCrb7JJqzUIAnpNkIcvB+4jsS4R3C0EEiiNwbeVBUvOxqf4VqF2XK/wFSRF2
 0P/dPBc4ePFp4O4CcSdR7UH8cIdj9n1ngPcpKjQkWSUy2FSYNCKzAKVpVFHziYsMcfA5
 +eFg==
X-Gm-Message-State: APjAAAV1HcqQvYqUvwYvit+vRF9EzUw+3cM30B9Ayey0dMgEAxtsNyrC
 9sVqNRHJLXRGXWTJjyl4mAn1RX6XYRDhMUjQram3h1oc
X-Google-Smtp-Source: APXvYqwl51D2sksVNbNWnw3MblkRidAPR3sW4psWmp9RV0h3tFjpgG3mZY7AvHGAjxlVmCjySEmRNAp3bsgKVmyRfSQ=
X-Received: by 2002:a92:297:: with SMTP id 145mr14835935ilc.85.1573244336215; 
 Fri, 08 Nov 2019 12:18:56 -0800 (PST)
MIME-Version: 1.0
References: <CAOesGMjVUCd9bN=pggS-ECjMR42b0SqXKewsp+NYFSVqRgSWrg@mail.gmail.com>
 <20191107211801.GA107543@google.com>
 <20191108110736.GA10708@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191108110736.GA10708@e121166-lin.cambridge.arm.com>
From: Bjorn Helgaas <bjorn.helgaas@gmail.com>
Date: Fri, 8 Nov 2019 14:18:45 -0600
Message-ID: <CABhMZUV=757JyGEuMQsfbrpiHUhn8uDgiKTRvxQNFAmxfmX0TQ@mail.gmail.com>
Subject: Re: linux-next: manual merge of the pci tree with the arm-soc tree
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_121857_536524_2238E81B 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bjorn.helgaas[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: bjorn@helgaas.com
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Xiaowei Bao <xiaowei.bao@nxp.com>,
 Arnd Bergmann <arnd@arndb.de>, Shawn Guo <shawnguo@kernel.org>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Olof Johansson <olof@lixom.net>,
 Fabio Estevam <festevam@gmail.com>, ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 5:07 AM Lorenzo Pieralisi
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
> Done. ...

Thanks, I updated my "next" branch to incorporate this.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
