Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 118ED2909B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 07:54:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m73yWE+UMbtUZyJ1F6vvhGlzBPydvd4hTyYnZ5QnPhM=; b=IJ6Q0CeFbB/nBz
	UmChGp5FQHyDkLfQuvpPRldzmpSEpTbP6ME929wHijTJx+KfSbCMKuk5unnyBFDeAplI/2TH9egJL
	GHTX7cM7JS1KRI+ftAvLKQN7STr51GcGFybJHk8Q5b/6dwU6bXC3M2cGmHG37+tT9lcHxxp0x2lfA
	U2vXLouM31TXTs3QjBE6ck8Hns1pX9/8y+NR77kwDUdAxv0OI3neLXvOhcTgAC64JhyAvVokEWdbA
	lMPtLEVa5Vi1c60w0x9cU2kIr1fE0qadsJLwU3eF5FurPARdTnZH0u4OmTO+967y8azoOWB4FMHUo
	soOmNXKBAjvSU9gk4Aiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU39w-0005jG-CS; Fri, 24 May 2019 05:54:28 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU39o-0005iP-LZ; Fri, 24 May 2019 05:54:21 +0000
Received: by mail-oi1-x244.google.com with SMTP id 203so6154746oid.13;
 Thu, 23 May 2019 22:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7Ebgv3UeXA0WytHreGCVh/7DQkPpVomBIGZeLwu/7es=;
 b=WzxkgAyRBYozpQ9xwmo4jx8O4OFRtPU6J0nptXrnuf+XflBtgcZgTRHwcpnbhEmVAv
 usBq5i6iGIoTGhH3T4ughQUWoLxun4lJZmnw1D8s4AkM/5A9zCYhUuMJBwBaLG+74xd9
 cAJfKD65CbgSvqMGfCS9b1xHDIkd6gZI3ar5Z0XvUqUhAaBYVGsX6H7b5uccDJt4eySU
 MYSo6jGHbKD9L9dnKS05g0Qm1ycdhH2tguBQh9rWV2gyIdEYwANqfWndBfUxBDYMSXb/
 AzwcI7cP0mhIZnAUnajbr1n0shjsHYdDtiW7moPVVpFA5DhZpV4qTI20AA2LFMx70I7h
 zf0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7Ebgv3UeXA0WytHreGCVh/7DQkPpVomBIGZeLwu/7es=;
 b=K5BjsbGTpmnkW6l+qBi391Kty4QpPnecjBAn+ejGNE1R9fqixjt7jEp3omOcncimo/
 awFPeDwlWLLQlFH5yb/uiZDMqGLHx/IS30IfCtMS23sjd5Cul60nOF26xIc9XF1fJHZe
 rucUNL+ulSaO6Zd0wyEcYMTZZh97c2jR8C9sI602w91IQIQkabrKFFh7aWSzV24mDxGq
 iNfV/Inem0wyc0t3ZDbyRA/U933GvtNl9i1uuQdhiW9OZdb+BL4N2ujIj0bAAY0ryNyy
 nzB161t3L2mKZH2tsj+1gkVd7vbKbrVOjg9pPqvfSQ3v0bxvlyKuUe2+fUVesP0AjhLL
 EFeA==
X-Gm-Message-State: APjAAAWJgwyPO6g2Fa4IkP2vawOPkkKJ2QrnMojOxFEXEDHnGRcrDzDv
 3POKmTOXnbSyas/GheaTCumNA02YHAlp1Iv9zck=
X-Google-Smtp-Source: APXvYqxMC+I6BinOmBqmotSjJts4Ix18CeAG/RSOJyQ2f/Fct4fsBMOH+wWVl8C6cc2AOAkKi/k7adx3Cjy6I0Xu97w=
X-Received: by 2002:aca:3c85:: with SMTP id j127mr5285364oia.29.1558677259014; 
 Thu, 23 May 2019 22:54:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190523183510.GA12942@hari-Inspiron-1545>
In-Reply-To: <20190523183510.GA12942@hari-Inspiron-1545>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 24 May 2019 07:54:08 +0200
Message-ID: <CAMhs-H9222OXrqWh4W-D7pFV6FXbhLVVGXz-29gO-Qo0eQaTvQ@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-pci: pci-mt7621: Remove unneeded variable
 err
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_225420_700479_A976B5E1 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergio.paracuellos[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, reg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Mamta Shukla <mamtashukla555@gmail.com>, NeilBrown <neil@brown.name>,
 Peter Vernia <peter.vernia@gmail.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hariprasad,


On Thu, May 23, 2019 at 8:35 PM Hariprasad Kelam
<hariprasad.kelam@gmail.com> wrote:
>
> devm_request_pci_bus_resources function will return -EBUSY/-ENOMEM
> in fail case and returns 0 on success.
>
> So no need to store return value in err variable.
>
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/mt7621-pci/pci-mt7621.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
>
> diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
> index 03d919a..bc2a3d1 100644
> --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> @@ -596,17 +596,12 @@ static int mt7621_pcie_request_resources(struct mt7621_pcie *pcie,
>                                          struct list_head *res)
>  {
>         struct device *dev = pcie->dev;
> -       int err;
>
>         pci_add_resource_offset(res, &pcie->io, pcie->offset.io);
>         pci_add_resource_offset(res, &pcie->mem, pcie->offset.mem);
>         pci_add_resource(res, &pcie->busn);
>
> -       err = devm_request_pci_bus_resources(dev, res);
> -       if (err < 0)
> -               return err;
> -
> -       return 0;
> +       return devm_request_pci_bus_resources(dev, res);
>  }
>

In the patch title, the "mt7621-pci" is repeated twice. With that changed:

Reviewed-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

>  static int mt7621_pcie_register_host(struct pci_host_bridge *host,
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
