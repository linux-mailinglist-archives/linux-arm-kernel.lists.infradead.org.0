Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B61F57C6B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zaRWFlWSZhwuWJfBlVCMO4Su9qWpmWSArxwVvF0CFCI=; b=gNbLZUumI5KPvO
	CPfgoKwFO8zgkcZSLyI/Mwy0pNPGAp0iwUAIWbrkFGLEs7UR7LUOK+qhzl4UAesuhHmACjDBjwb6O
	vJ5PG4EcFS5lSMxSAd6M0ifkFYCWi0TigKrMjnjgvBE0XcQgks3ZJuNv4L3HMfizEz3hDuShp85Nn
	mXs1+nvxvfRxlyx2PZlMFi/MRTCOAOH0uFZPndXcHu0zs9+JRSuNMwDtGHdNSogDjFqzbweEVITyP
	r/cVce3MnuZd9EefoTFuQ0CpAQH3PuVi/qvUgmtE5Wf/8C5kLbnWM+T5nBBO6o9R60qOC/jM+sdCb
	3CHfNvYLuL2l6yp8bmAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOD9-0002uh-Ma; Thu, 27 Jun 2019 06:48:47 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8O-0006KM-HV
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:43:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kpqYC0bettaQFGE+cPMxYMow71Zk/Lt7y+RJt1aO3ZA=; b=vHq4W2Tk1InXIUkjwWq87mNA9
 ZDHaDAOIE8i364qfJ+NkS3Nx0k8c3RZONZZg0OFfTSoL4VHgoF2Ps2pbFkWsRjCMVrUq9q5u2JrrN
 WDK/X/F7coF9U0ySLZR9drPsE3csj5RGijl55LbcOmcPz2m5W50UTpm36Gygu1cm9hUMSSvYl87oH
 agzdsHgvtVgedds9NQjwuiJ9UcfFUWZM5T+3LAZYS/cyNcXPLrgqO7BdNIjLgt4UpeuvEH7gXNVV5
 aQGNsMVd3czhcTBJHKtyySmJcnlb7lah45ISYlByQFp87EEHDDwe8PwAkU2nCk226qmEfzTzIfvBO
 3hfi5avYA==;
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgKFU-0005vt-2k
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:34:56 +0000
Received: by mail-lf1-x142.google.com with SMTP id 136so453499lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kpqYC0bettaQFGE+cPMxYMow71Zk/Lt7y+RJt1aO3ZA=;
 b=CUYJXh+O76PMEBZGgXYE4jBtsdtMsFSEbZO0ZPyGHzyh2zdxZqtKDI8UekfWutOZ/E
 YOB+X7vQ4M6jz4r3vtoOXStSuKF65tzQF2Hy2iAis1o6RYF834KH8sRjmjRZMHCwO+62
 MO4t7AD0yZgX9E1DKMcyzPLyDEPCd2COfseoooOnSJqaFvkUw9X7M0S0KF5v1b58crp0
 FwPaHIAzP4nqMXq7qwBG6huU7gkp8E3fXfbotKN6d/a7vZrhC6xBO1zFP3Kc95nRNozg
 3dUxkOYgiDhv7NyUXyrj5a+3L0Vv1LSR+WiWc3I9rNhxc1Mp1+3c7vN7Xszo0uMwbfZ+
 hNTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kpqYC0bettaQFGE+cPMxYMow71Zk/Lt7y+RJt1aO3ZA=;
 b=A7Gv6XLBmF65ImHTWixY+4ufd7FBh4MYiXkpi3Mdx8jJwNxCWUQByhq+VE2UW3l0Bi
 l2En0cD2mgdXrhUKlBdcMIFS8iITPzYgDBYFW88WU1BKbbCCXg8XsnQnt8tB1vHGWKHP
 qHB3gxtZlU7UC5c9e7k+jYZ7QZfmIaMW8DP2R8BWnoStjKwlGu5k24y/1PM6fnazZeES
 eRJDIUO107uH7uEUm0tY8Df+c4ZWQ6mzE+4z2E3/bfH2a+ltWvDXBmVFddNbuCEh2P0n
 G0wHlvFeTUOrLOBdhha00tAXC8SGacVpm1CvdBEOzYSIWyfGu3Fu5YZWjef3o0DXupuQ
 8vpA==
X-Gm-Message-State: APjAAAUvrlH4Fs93TmsKUqwOBIQBWEUN2iqKIeCM2Dwn8WyZTa/6iuCa
 wfILZ0BVpxMLLuJGc7zyAzTWkA==
X-Google-Smtp-Source: APXvYqwVm7ApFldCcgUkF3KiAVNAlR3f2LErwu5ylCjWa4dtUcO2yDmcrQXQfnSFhvIyODaUbhq7dQ==
X-Received: by 2002:ac2:52b7:: with SMTP id r23mr662754lfm.120.1561602825764; 
 Wed, 26 Jun 2019 19:33:45 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id k12sm117397lfm.90.2019.06.26.19.33.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 19:33:43 -0700 (PDT)
Date: Wed, 26 Jun 2019 19:19:37 -0700
From: Olof Johansson <olof@lixom.net>
To: John Garry <john.garry@huawei.com>
Subject: Re: [GIT PULL] Hisilicon fixes for v5.2
Message-ID: <20190627021937.kk4lklv2uz3mogoq@localhost>
References: <b89ef8f0-d102-7f78-f373-cbcc7faddee3@hisilicon.com>
 <20190625112148.ckj7sgdgvyeel7vy@localhost>
 <CAOesGMj+aNkOT1YVHTSBLkOfEujk7uer3R1AmE-sa1TwCijbBg@mail.gmail.com>
 <7e215bd7-daab-b6cf-8d0f-9513bd7c4f6d@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e215bd7-daab-b6cf-8d0f-9513bd7c4f6d@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>, Arnd Bergmann <arnd@arndb.de>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 linux-pci@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linuxarm <linuxarm@huawei.com>, Wei Xu <xuwei5@hisilicon.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ARM-SoC Maintainers <arm@kernel.org>, huangdaode <huangdaode@hisilicon.com>,
 "xuwei \(O\)" <xuwei5@huawei.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 02:31:26PM +0100, John Garry wrote:
> On 25/06/2019 14:03, Olof Johansson wrote:
> > > > are available in the Git repository at:
> > > > > >
> > > > > >   git://github.com/hisilicon/linux-hisi.git tags/hisi-fixes-for-5.2
> > > > > >
> > > > > > for you to fetch changes up to 07c811af1c00d7b4212eac86900b023b6405a954:
> > > > > >
> > > > > >   lib: logic_pio: Enforce LOGIC_PIO_INDIRECT region ops are set at registration (2019-06-25 09:40:42 +0100)
> > > > > >
> > > > > > ----------------------------------------------------------------
> > > > > > Hisilicon fixes for v5.2-rc
> > > > > >
> > > > > > - fixed RCU usage in logical PIO
> > > > > > - Added a function to unregister a logical PIO range in logical PIO
> > > > > >   to support the fixes in the hisi-lpc driver
> > > > > > - fixed and optimized hisi-lpc driver to avoid potential use-after-free
> > > > > >   and driver unbind crash
> > > >
> > > > Merged to fixes, thanks.
> > 
> > This broke arm64 allmodconfig:
> > 
> >        arm64.allmodconfig:
> > drivers/bus/hisi_lpc.c:656:3: error: implicit declaration of function
> > 'hisi_lpc_acpi_remove'; did you mean 'hisi_lpc_acpi_probe'?
> > [-Werror=implicit-function-declaration]
> > 
> > 
> 
> Uhhh, that's my fault - I didn't provide a stub for !ACPI. Sorry. I'll send
> a fixed v3 series.

No worries, it happens -- but it's good if maintainers do at least a few test
builds before sending in pull requests so we don't catch all of it at our end.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
