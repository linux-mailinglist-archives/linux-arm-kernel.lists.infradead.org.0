Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CB37DEB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r54Gkrgqzvar3SUHuWbpD+8l0GTS6P5bdTM5ZuVVBdg=; b=FAMWvp1/3pM2dA
	1yKESpRZatHDxCpHuEfqpWdVHG0Cbc7xC88EgBlQHWsmIhim+iUsF/jDDSE+Huuckr47NexGHw3wU
	4ize44Ozvv3YijSCRbn373Wb3VSXwpXhGzwam0/f7GqieK80+4ghzznPsXc3PaLLZwkfAj7Y9S8X5
	iqbK0AGN02CX9JhuOWG5+H6POmBx4xZssS/rZPCaxdSy4e9r6S+w3DD+Y1HWUvgUgm+ddhxKLxG6/
	t6fPIAxpvdp9YdLSePX2qK1I//DRX4moB8xiJoRRw5S2b3duaVx+0TrXQpIvDSZWm3CCLsL3HYsbt
	tPNAZiA+ItcE70urCebQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htCva-0000TX-MY; Thu, 01 Aug 2019 15:23:38 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htCv4-0008PJ-RC; Thu, 01 Aug 2019 15:23:08 +0000
Received: by mail-io1-xd41.google.com with SMTP id k8so145240032iot.1;
 Thu, 01 Aug 2019 08:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xrfoslv7AaDIIfdPVT2VtUHeNymqmupFg0gKwWPnwYg=;
 b=k6ddA0kZy2PnnO+eInoSw6Q792k+VRdA46a43rlYFVfP2msLWDKEwr5eJKg9FRV9rM
 hjTjLdpJQKyHkrMCzmac9cBy81b35w/aN0F2aZfBRBbY9v9SGZeqyJ/ij4aQQOcic02u
 RO6js+4+EsBhIJszCHk3GtJ0ekpzGQnBNpEgKYY1yISXzTs/z1UPurfa+zut66oHN7/c
 FKLFZqIYrJsDBjknazc9Nq6WlJUnw72u9da5QCcMizNADQUey0xS7wQyuwKi0YjP92VU
 d5uMIF7l+5PoSBA6TrlneGdjDyN9b3i5GeYxCJUX/YEv6GG6kRBiJyRAqafK/53dnnGL
 SHtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xrfoslv7AaDIIfdPVT2VtUHeNymqmupFg0gKwWPnwYg=;
 b=cAAdZlKa+7dKrJy2N4ry2W0kVce0ZEX20OuYyuYRRPQHBdOOQTBMyObr8b9FzNnnnT
 wUGdsi+tWwJ7J0naIiKRBhLFS7+oHQStz1vxrFnip/m8l4i9Zc/uK/Ja5xwbxR9BCgrn
 pHV6DUtYgF/7mndVWdUbW388Z0INEDQVX8eoArfxoO/+4eaZij0f9SW4NiBrfCaVv5Fq
 jukRo14BzI8FB1ww85eTYaBi+qJrLdidW4VX3XW0cfobBBQgsGVOSHqEQg65JzmqJPLx
 B8rFAQqhoDQjVPGS/AS4n8TtiuSd/fV16emKpqD0Dq1JFdyvuVTIpgptseLxvnud3tZi
 Y3tg==
X-Gm-Message-State: APjAAAWlSr1mAzUbBrN92inEStsOaDjwcKysPiOEQ249+jc5ebPlowYO
 Ng+vltY6Xa8UUa1170SQqUzzuR7+oKaPGTsOjeW8nO92
X-Google-Smtp-Source: APXvYqzy49TSPdqiKtgVuS2Fu5PMDVjkUz2RTttBXfqC4h1kI4oDa3RJ/ySn8/GEHvAa/khCPciWjGYQYPJT/rmSXRY=
X-Received: by 2002:a5d:87da:: with SMTP id
 q26mr110715205ios.193.1564672985236; 
 Thu, 01 Aug 2019 08:23:05 -0700 (PDT)
MIME-Version: 1.0
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-2-git-send-email-Ashish.Kumar@nxp.com>
 <20190709200837.GA7806@bogus>
In-Reply-To: <20190709200837.GA7806@bogus>
From: Han Xu <xhnjupt@gmail.com>
Date: Thu, 1 Aug 2019 10:22:54 -0500
Message-ID: <CA+EcR23hhD2=abMtNGDoW1LtXSE4qfjTy1uzU7sgrbi7W=KSbw@mail.gmail.com>
Subject: Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
 compatibility string to bindings
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_082306_898370_068AC1C0 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (xhnjupt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, bbrezillon@kernel.org,
 Kuldeep Singh <kuldeep.singh@nxp.com>, Ashish Kumar <Ashish.Kumar@nxp.com>,
 broonie@kernel.org, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 3:09 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, 19 Jun 2019 16:41:53 +0530, Ashish Kumar wrote:
> > There are 2 version of QSPI-IP, according to which controller registers sets
> > can be big endian or little endian.There are some other minor changes like
> > RX fifo depth etc.
> >
> > The big endian version uses driver compatible "fsl,ls1021a-qspi" and
> > little endian version uses driver compatible "fsl,ls2080a-qspi"
> >
> > Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> > Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> > ---
> > v3:
> > Rebase to top
> > v2:
> > Convert to patch series and rebasing done on top of tree
> >
> >  Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
>
> Reviewed-by: Rob Herring <robh@kernel.org>

Acked-by: Han Xu <han.xu@nxp.com>

>
> ______________________________________________________
> Linux MTD discussion mailing list
> http://lists.infradead.org/mailman/listinfo/linux-mtd/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
