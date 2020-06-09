Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 138EF1F3FFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 17:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/tVYzW8J/fh+F467hkzTulgkVQ2ElLDULeUTT5rj8q8=; b=djyumuaXOMrmKS
	MLOPjMRtUTJMfNA0EdRBYwckMU10QoI8zjTJSvNtgMG10SDvDtruczM85sJLZ8BcRW69QxUNx9f/C
	2YUsTkR+M/NQCf8zgjXP/mlO8LCb8kYG7scwjN8fHrv3J77sF5aCWBcKiUKehg380RX1QFyLJ2FJI
	8KfqOFrSLuBMYrmxw41V0/Hx6lRh6BGomjjGN84/iMPyxigLpg4SL/F9Gj0AqrRKUlr7E+cZsmYbb
	Ds5jIFqa3Ach/lttuN5fXAo20uPuuCoTbHM+Fo5XLRLoQp+rLGYOqO9bz4JiK6cGsBfMYdmjhuEdY
	GEtWQDlBpIrNkUgW8zdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jigeK-0006Vz-7p; Tue, 09 Jun 2020 15:58:52 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jigeA-0006VZ-C2
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 15:58:43 +0000
Received: by mail-il1-x144.google.com with SMTP id 18so20785269iln.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 08:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XTmR8DDTbpuRLrg4Dxe54sTFIEfxL4/fHVrG5Q0Qecc=;
 b=AB6ptOdnB5z9Lot4ciWyiYuE6HGmWmbIwdMI2v9p37RW9vIGnX/vnPMfTcceN8kysj
 UeJRlrLlFtiLLa7ZUCBXFTB2if6niO5aciWexn6lLt74ARj+tvU7J0a6CMOm0N9Old5M
 0nNC/R75byfQkSBdHR0mO6oZN/MWIenirMnIZZZhA0Ku37cS/9VNeowWKVBSEFX/O7L1
 rUIuP1MX3QyEoJOP33FebN6F3wNj4C1hyz+NirfswshNJwyJG8B2m/ifCXWECX8DJl/1
 HOPF2UlCgfmOR8x4cXZOO6fbDlugUqovL3TaiN7r6LMrsSBhN4WbBcqbXTE3gf6CvMbn
 /WHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XTmR8DDTbpuRLrg4Dxe54sTFIEfxL4/fHVrG5Q0Qecc=;
 b=Nktv0ZKAJMue57gsRjhlJiYuOm2lp29qI7RvhMUC8fJdjqFzu9YOC0Xcoc42WaeY3p
 EZd1W2Pzb6UZmZNQ+QrDZUolTT9xuZI2ETpuNWFsUdzXzY3Pm93KIYlQNHm0is93fI2+
 sAJdoU2cLFV0g0eE3UpSgI9yXxQlJYIRzJTBcd1zdUTOiwnU2vvNzYSkTrR7wLWp/m6D
 mJxaNn60fTia+V+ktFq3bFSwb0yQe6eRICb9BgK+JWjJSonduFd1w/1uOF4vju9mxR0x
 IjuB/0LAzgAJ9COkY0CDwqUvsQhjVpCrPJJHJeWCBHbZ4uv4uMA+al9+D6npl6+QWuIO
 cOUA==
X-Gm-Message-State: AOAM533ZY3JBBGgGklnDRM6T2CIw5zKBanETcy+7SKT9DTYH5LLEecNl
 FCmc62O38YUsqhjiYpkm0Z8qOWf9+NBpT20Srr8=
X-Google-Smtp-Source: ABdhPJxux6g3vaB/cZUTBdsI/fsNLkF6h3A6gvPaXzdAi095druL3kMv7nH5YKpHBp3ajTNuv4JMpDOTRu2EDD2z9o8=
X-Received: by 2002:a92:ad02:: with SMTP id w2mr18619302ilh.184.1591718321670; 
 Tue, 09 Jun 2020 08:58:41 -0700 (PDT)
MIME-Version: 1.0
References: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
In-Reply-To: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Tue, 9 Jun 2020 23:58:05 +0800
Message-ID: <CAL9mu0+hmyYGrTeHhvOhPHLm3nSWTt5waAr9e6Lzrdqxp5x5iQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] Use 'arm_nommu_dma_ops' to handle dma memroy if
 device offer consistent dma memory region
To: Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@st.com>, linux@armlinux.org.uk, 
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, 
 allison@lohutok.net, info@metux.net, tglx@linutronix.de, hch@lst.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_085842_452904_CB066A17 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph Hellwig,

This is the patchset. for your reference.

thanks,

On Mon, Jun 8, 2020 at 4:30 PM <dillon.minfei@gmail.com> wrote:
>
> From: dillon min <dillon.minfei@gmail.com>
>
> when do mmap on /dev/fb0, we will get -6 error on cortex-m3/m4 or armv7m
> platform without cache support, this is caused by following reason:
>
> on armv7m platform, if no cache support, we will use dma direct mapping,
> but, this is not support on !MMU hardware, just return '-ENXIO' error
>
> so, add use_reserved_mem() for these armv7m hardware but no-cache support.
> eg, stm32f429/stm32f469.
>
> verified on stm32f469-disco board, mmap frambuffer to userspace.
>
> dillon min (2):
>   ARM: dts: stm32: Setup 4M bytes reserved memory for mmap
>   arm-nommu: Add use_reserved_mem() to check if device support reserved
>     memory
>
>  arch/arm/boot/dts/stm32f469-disco.dts | 14 ++++++++++++++
>  arch/arm/mm/dma-mapping-nommu.c       | 28 +++++++++++++++++++++++++++-
>  2 files changed, 41 insertions(+), 1 deletion(-)
>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
