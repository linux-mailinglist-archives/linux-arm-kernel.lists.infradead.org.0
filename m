Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6A4194365
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 16:41:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTtu6SZs/HdeU259M8jturzF3SoNLA/nv5pRrGCshcU=; b=jRPFWIp/gBeCdJ
	cOv0ZE7SAllHswzbJZIukwydzesmJFRsTrow4AQkiaGRXEnm26gzRIrZRAAO15NNwn4sjs0TohveK
	sg2fbByVq29ar0JgRSgHNeQkUzNWGrls4XWKA9rfPc2s18QJYXD6RPLuhkZyTCIeCqbN5/3Pu6U8o
	DRDrWPlp4NH7OHq0ZjCXZ49TmKZog/uhuwFEEoG09uz3GdSCMSMUMyb+P80oAJ8m4icD8J1bO5DKP
	4YMZ9OSh2YB0IGqI9NZGW5bPFvDtIJyuxxlNV9Kdirf8rZC4yqj+ljkxYMHE2JAU/+RwnxQmJoVmP
	QnGcBjo4k/CT7vTi8kqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHUci-0003yk-I1; Thu, 26 Mar 2020 15:40:48 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHUcX-0003yO-OX
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 15:40:39 +0000
Received: by mail-ed1-x541.google.com with SMTP id i7so2389346edq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 08:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2VQc7P8VY+5XsYW/q9fSaKw3tAVjuhPWecyw2BKtLuE=;
 b=J3jrCa0tFr4pwLXuXWbuCGiOBBZpWlVmlwn1FsYpqmHmJE3e83vXUWsqu4NQ4nX0MT
 t2NPbVEay6HMFtgrvQXYGz5cgSR+ZS6BfeiJA8mQO1TMiCrfU8rFfwq03L5XeH8a8a/V
 Xzc4GCiOCh7S6cmmyTQ97kHpFqVlo5FgHwHn4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2VQc7P8VY+5XsYW/q9fSaKw3tAVjuhPWecyw2BKtLuE=;
 b=iXCbcQC38tfXVp/8LLJMghNSzYmbsoaGu5+Wu0OLzxka9qglg8SjvOCUSfo/1X4/wV
 l9g74j4u6FaIbCPVT690EWOTSqyf2GtqCfthz282DwX4wMK1QZamuDjGmZDWxPSnMPpg
 vmpqVLkUYbmuNHr790ewNdvKekeBeT86MuRCX7oNADNgX6JpE8+QV1K8A4Bq3fRiicmW
 y8hGMx8MwFLz7QxBB3nYU7Faukz0o5XPfzyi3dihO1PUuAOWn8CCsjppH3bqPDP0B5vb
 2sUGFv5NlODgteKye299ysEBHNRE/od6AllCnDo+XVKE7zdTJvTEze6k2gUiMQPk0QzJ
 qHPg==
X-Gm-Message-State: ANhLgQ12JHXdA4YXI4Ut76/eFuUkcvqT+jeQ+gDiNZZsQWEFRmd2xvMC
 +zQu4F5Efx+8xjgbtz3jFvrl9pgMDC1c0r2DKN0lPw==
X-Google-Smtp-Source: ADFU+vsJp1fQnpYw9Capue287rBN86xbyCVnw5heNA1CFBWynQnZYV9F3U+M+h6o+gbtj6xxJpvFgkswkFldUAadwGo=
X-Received: by 2002:a17:906:d18e:: with SMTP id
 c14mr8569496ejz.120.1585237235110; 
 Thu, 26 Mar 2020 08:40:35 -0700 (PDT)
MIME-Version: 1.0
References: <1585206447-1363-3-git-send-email-srinath.mannam@broadcom.com>
 <20200326153318.GA11697@google.com>
In-Reply-To: <20200326153318.GA11697@google.com>
From: Roman Bacik <roman.bacik@broadcom.com>
Date: Thu, 26 Mar 2020 08:38:30 -0700
Message-ID: <CAGQAs7xFY2Xp5fWBMFtzLDpP4zMFUNsddYXQk7QC0OS3oozXtw@mail.gmail.com>
Subject: Re: [PATCH 2/3] PCI: iproc: fix invalidating PAXB address mapping
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_084037_811927_0EC9D76F 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Srinath Mannam <srinath.mannam@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-pci@vger.kernel.org,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 8:33 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Thu, Mar 26, 2020 at 12:37:26PM +0530, Srinath Mannam wrote:
> > From: Roman Bacik <roman.bacik@broadcom.com>
> >
> > Second stage bootloader prior to Linux boot may use all inbound windows
> > including IARR1/IMAP1. We need to ensure all previous configuration of
> > inbound windows are invalidated during the initialization stage of the
> > Linux iProc PCIe driver. Add fix to invalidate IARR1/IMAP1 because it was
> > missed in previous patch.
> >
> > Fixes: 9415743e4c8a ("PCI: iproc: Invalidate PAXB address mapping")
> > Signed-off-by: Roman Bacik <roman.bacik@broadcom.com>
> > ---
> >  drivers/pci/controller/pcie-iproc.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> > index 6972ca4..e7f0d58 100644
> > --- a/drivers/pci/controller/pcie-iproc.c
> > +++ b/drivers/pci/controller/pcie-iproc.c
> > @@ -351,6 +351,8 @@ static const u16 iproc_pcie_reg_paxb_v2[IPROC_PCIE_MAX_NUM_REG] = {
> >       [IPROC_PCIE_OMAP3]              = 0xdf8,
> >       [IPROC_PCIE_IARR0]              = 0xd00,
> >       [IPROC_PCIE_IMAP0]              = 0xc00,
> > +     [IPROC_PCIE_IARR1]              = 0xd08,
> > +     [IPROC_PCIE_IMAP1]              = 0xd70,
>
> And paxb_v2_ib_map[] has a comment saying "IARR1/IMAP1 (currently
> unused)".  Is that comment now wrong?
>

The comment is still correct, IARR1/IMAP1 is unused in Linux. But it
may need to be invalidated in case it was modified by bootloaders.

> >       [IPROC_PCIE_IARR2]              = 0xd10,
> >       [IPROC_PCIE_IMAP2]              = 0xcc0,
> >       [IPROC_PCIE_IARR3]              = 0xe00,
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
