Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 087D71B5FBD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mecTfJ2HzD0nZkAC9Q9H7axjMFKcSoslqCoT+pU8Ohs=; b=pdZhixvF7Wqjih
	TAqur/5n4p+3H9yHXbyAgVl0eZbINJaennVwO1Vjk5SYmSe0+/3HoAU+Jenz9rKEhekcTRKROHLC0
	GPtMIFZnMv8SrhgTz+GrS3MRYnzDI1tGiuxdBz+4g5kyIbhqthUO+bA103VuiAJircCFHmm8iHfEx
	gefGesiEBcUT5R9TtuM16P9hUYgdF3PM42E5r566CdpMc6rZkoinWfxgmOxVAa+c3v0N4DYy/dPdK
	8dLQO4y36xEwK8heHz1VoMIdaRgtiobFxIZNN7hRWks+mFYAahZ7Ttmz1nnPeU5N6hhApRyPDyTfH
	7Tk745yYp4A6TvWWVXqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRe0i-0000G9-Cp; Thu, 23 Apr 2020 15:43:32 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdy6-0006ZA-RL
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:40:52 +0000
Received: by mail-ot1-x344.google.com with SMTP id m18so6767998otq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Apr 2020 08:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pYyZV5fyQyjw5aBuBS1sD0mcl2qgfWXPG0Wc9Zdztic=;
 b=nr5tvwb8HLgylJuKAPL9YfWzjN+ZbFsL4TeJ+sW/3jSFw2XtDzAPXCZi1txrdkLIfQ
 DdbPmt0tIkNqXoVspZ08C/55WJH0zJIDp0zdOlndaLh2Y1Mzw9SVEDgzj3sWp8nFvXGM
 bBqX3ibp+rfJjCW9q3T4J6b8WxppJBAIEXcs9N7arMX/x1cUlJxFdWDaAPwEF0MmhIq2
 P6KcTMaqgzecZxKCMaOnWRV0Ym+5TlyhgrVXyT2PEzS2G7loNMzIXHqiAzkBVokZXqRH
 2FAotMgYCEWLrVez50Tmz+zvKUYUgBuncn7yOye+ox5rgEMTdunkFyqG35u/Ch+TDKMg
 NasQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pYyZV5fyQyjw5aBuBS1sD0mcl2qgfWXPG0Wc9Zdztic=;
 b=YpVd50sKiTyXEwIAMqk5zpx7TR8YEbyok0NhryY0GckszrN+NvMWC5ZONqtAeNmeRz
 KSv6V0ame5n4foIG+lMkHlKSZOeZXI7kez+Btq3dRu3CZXpXz3M7DiFIhCUCVZDxyYFz
 WObklOx99rz3x0BVXhjWs/1idaR5o/TJDrF6BLUicXkuBzXUAnjDA0BUcuKR4NQIpj8/
 zz4mtQRZUxNsrNi0UNqw7202kD5TN+SqOmI7UtqBvU6yqCAecmaQeNc9ueinMM5hQHEA
 bhRdGDEzypkDynXcNoRW7V8kUdNeuxL2TXDGPNOVIa1SLKHpYfBWCctQ3ZivuQdBsFit
 5eWg==
X-Gm-Message-State: AGi0PuaXjZn8pyksS46BhL2zEKtPsmDtju/T6x2hm9koYc2/cmh5YH4J
 5OBnv3c0ddQYPGhmBbKeIsrZS+bvGCCFJDbw9G7y5Q==
X-Google-Smtp-Source: APiQypKYREzZcjlpIMYCZFPaJok4zaErYRJJImFtb9Z6QJ50Myop6ID22b4ZkzqUHQGQ2WMmU3XTvfPlZcJ2ito6zow=
X-Received: by 2002:a54:4e84:: with SMTP id c4mr2729966oiy.142.1587656449817; 
 Thu, 23 Apr 2020 08:40:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ+vNU0x+Dd67thRXABKG1AmJW6Babs_XE2hG01yuV3L9meuWA@mail.gmail.com>
 <20200423113317.GD4963@gaia>
In-Reply-To: <20200423113317.GD4963@gaia>
From: Tim Harvey <tharvey@gateworks.com>
Date: Thu, 23 Apr 2020 08:40:37 -0700
Message-ID: <CAJ+vNU2gU+9f5c7SQv04QmVkRDcYbjB-1qmhhpu9w5FheTFZFg@mail.gmail.com>
Subject: Re: IMX8MM kernel panic on 5.5+ due to patch series 'Raspberry Pi 4
 DMA addressing support'
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_084050_928709_790B1208 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
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
Cc: Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 4:33 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Wed, Apr 22, 2020 at 10:44:33AM -0700, Tim Harvey wrote:
> > I'm seeing a kernel panic on an IMX8MM board using defconfig starting
> > with the patch series 'Raspberry Pi 4 DMA addressing support':
> >
> > 734f924 mm: refresh ZONE_DMA and ZONE_DMA32 comments in 'enum zone_type'
> > 1a8e1ce arm64: use both ZONE_DMA and ZONE_DMA32
> > a573cdd arm64: rename variables used to calculate ZONE_DMA32's size
> > ae970dc arm64: mm: use arm64_dma_phys_limit instead of calling
> > max_zone_dma_phys()
> >
> > Strangely I don't see this panic on an ARM64 OcteonTX CPU (thunderx)
> > with defconfig so perhaps this has to do with some dt thing?
> >
> > I find that a573cdd ("arm64: rename variables used to calculate
> > ZONE_DMA32's size") breaks building arm64 defconfig due to renaming of
> > arm64_dma_phys_limit to arm64_dma32_phys_limit but
> > arm64_dma_phys_limit still used in includ/asm/processor.h
> >
> > The following patch resolves this build error and panic:
>
> So it means that commit 1a8e1ce causes the break for you. I haven't seen
> this problem on any other platform yet. A wrong DT could as well cause
> problems as this commit would change where some memory allocations come
> from.
>
> Can you run the kernel with memtest=1, just in case the DT is wrongly
> pointing to some non-RAM areas.
>

Catalin,

Oh gosh... I had my mem size wrongly doubled and that was the cause of
the issue!

Thanks for the tip and sorry for the noise!

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
