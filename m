Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE94714E3EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 21:26:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7Zcbow2Ut0Wmaku3NHDEwoweyNfxrGHF2r8twfswFM=; b=Bcr0KeRXJrdeg4
	SGjJIg3shIcx6a8mWxl/EjOherP3xcHuhZeDsyhXQylenKN1wRtMA5j4J0wvD4YrFBhW4FO/JeMKd
	TpvNyj7qQxccoT/OduEwRdcw+hHP3/K6cBUIkUMOwLNytyJ0vdtgssoWkrBvZ2DP2EC1kxrxgSPPE
	pkI8DpaPxj2099ihJ10JRhYeFYMqhthGyk4fvpstwNEgpkaJ7SS0F/x5NXlX/4FEq/M/On2K086px
	uX4D10Q/NPvPCfmyBwXVE3prYXDsAkSLAkRXCMLM992tqZJyXPHo2sKZ6BNuSnOEEzIz2CsgGVViI
	qLF7sIcLGIielXx5pM9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixGOL-0003Jo-4G; Thu, 30 Jan 2020 20:26:21 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixGOD-0003JH-5Z
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 20:26:14 +0000
Received: by mail-il1-x142.google.com with SMTP id l4so4246947ilj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 12:26:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mMmbTPRv5n9fcnTR4JD/Hiobk7HR6X/mODzSmDElFRk=;
 b=UJG07q0ZvllEgVwuAoevdh4W2PsMLK8OB4w5jNu08HE+oqaV0dPCzf6G0s28627iHX
 MAeM0+1hO7Q2rcZRlzA757D7sD7JXrirx/PgZPiMwHhbj9oInkKx0RKNdrD7wlxxP3HN
 8H8GRgU6guwk3DDN9gxR7XFi8L9Fu+IuylCY9CCcIViFiuQnch7A4mOtzRzlLvDD64xC
 5EM4anhFUfbutFIJc+/Kq+JL6zrAp6xok25sEwrImK0K1jVsjqykH1fnKHssrE6VaZ74
 ujMrhqsKK0AHG3KYqLz2HkDkWvBm5V4I3H+jqJzqGlGiLwL5z60horRKkm5RSuYM1SLV
 IzzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mMmbTPRv5n9fcnTR4JD/Hiobk7HR6X/mODzSmDElFRk=;
 b=muUcV4xBE7CNzswGuAhkAAowvt0QHzMbF56VIEwOORFWwegnAR67WlxW+9r067As2f
 eSwB9MioVd5Y3fUESX+GcqaaE6Jp0PYy/L9LUW/pJ7B6UZnfbrc2p1mZEVH9GgbOq36l
 aNY/ecV5Jav2NlS7A88A2J1cqftFtYIH6DkrACZC4PvBnnjKA+cykoGVGza+Rmsf1Fbc
 dxeDKwfo93l2mpA5TsPdkd5RV3TeaLPFs/LoM3jsSnqmTlsYpGPhVT9P98zMLuxmhwge
 M8bvaEGAN3Wy7BadN9uGqrDAEeNxOWp2ALkO7TPytB5T0AAvxHEbwIVe3GiT2yxRzIb0
 WnlA==
X-Gm-Message-State: APjAAAU55r4W9PCEW85IAdRghV/p68mmRCgQ4WGaw5DaXF3NrWt8y6xP
 KxYS8nOr13fHkfeM7KIjBfCBa6UPFYEU8Rv+c5LuJA==
X-Google-Smtp-Source: APXvYqyLkAz/Xj41rF8RDGjF+NXQgzOwtixw6VtvNiEJGbHaCdRsXwh3NpcbcJY/YLZlte51umpHDg/clYxyTtxmrpU=
X-Received: by 2002:a92:3a8d:: with SMTP id i13mr6549486ilf.112.1580415971935; 
 Thu, 30 Jan 2020 12:26:11 -0800 (PST)
MIME-Version: 1.0
References: <20200129223609.9327-1-rjones@gateworks.com>
 <20200130091055.159d63ed@cakuba>
In-Reply-To: <20200130091055.159d63ed@cakuba>
From: Bobby Jones <rjones@gateworks.com>
Date: Thu, 30 Jan 2020 12:26:01 -0800
Message-ID: <CALAE=UBu=9ieHytFqD7PPMSr3hv+aCC7naLN5Bh6pB4ODEDCsw@mail.gmail.com>
Subject: Re: [PATCH net] net: thunderx: workaround BGX TX Underflow issue
To: Jakub Kicinski <kuba@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_122613_272276_8EF32F2E 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: netdev@vger.kernel.org, Tim Harvey <tharvey@gateworks.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>, Sunil Goutham <sgoutham@marvell.com>,
 David Miller <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 30, 2020 at 9:10 AM Jakub Kicinski <kuba@kernel.org> wrote:
>
> On Wed, 29 Jan 2020 14:36:09 -0800, Robert Jones wrote:
> > From: Tim Harvey <tharvey@gateworks.com>
> >
> > While it is not yet understood why a TX underflow can easily occur
> > for SGMII interfaces resulting in a TX wedge. It has been found that
> > disabling/re-enabling the LMAC resolves the issue.
> >
> > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> > Reviewed-by: Robert Jones <rjones@gateworks.com>
>
> Sunil or Robert (i.e. one of the maintainers) will have to review this
> patch (as indicated by Dave by marking it with "Needs Review / ACK" in
> patchwork).
>
> At a quick look there are some things which jump out at me:
>
> > +static int bgx_register_intr(struct pci_dev *pdev)
> > +{
> > +     struct bgx *bgx = pci_get_drvdata(pdev);
> > +     struct device *dev = &pdev->dev;
> > +     int num_vec, ret;
> > +
> > +     /* Enable MSI-X */
> > +     num_vec = pci_msix_vec_count(pdev);
> > +     ret = pci_alloc_irq_vectors(pdev, num_vec, num_vec, PCI_IRQ_MSIX);
> > +     if (ret < 0) {
> > +             dev_err(dev, "Req for #%d msix vectors failed\n", num_vec);
> > +             return 1;
>
> Please propagate real error codes, or make this function void as the
> caller never actually checks the return value.
>
> > +     }
> > +     sprintf(bgx->irq_name, "BGX%d", bgx->bgx_id);
> > +     ret = request_irq(pci_irq_vector(pdev, GMPX_GMI_TX_INT),
>
> There is a alloc_irq and request_irq call added in this patch but there
> is never any freeing. Are you sure this is fine? Devices can be
> reprobed (unbound and bound to drivers via sysfs).

I agree there needs to be accompanying free calls. I'm referencing
drivers/net/ethernet/cavium/thunder/nic_main.c and see instances of
both pci_free_irq_vectors() and free_irq(). My initial thought was
that I should use pci_free_irq_vectors() in the error check
conditional of the above request irq and also in the bgx_remove()
function. Would that be appropriate in this case?

I'd also plan on using a conditional like this for the free calls:

if (bgx->irq_name)
    pci_free_irq_vectors(pdev);

I'm new to kernel development so suggestions are welcome.

>
> > +             bgx_intr_handler, 0, bgx->irq_name, bgx);
>
> Please align the continuation line with the opening bracket (checkpatch
> --strict should help catch this).
>
> > +     if (ret)
> > +             return 1;
> > +
> > +     return 0;
> > +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
