Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5597E1B3BA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 11:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TDvt/Jzcwl/+8ZaWnX6dk5RCbq6nO2WH6LZFecJpo3U=; b=HY7i7XzyhVIlsR
	96tKXfkdIEq5oS4hzifWTVv1kTNVq7mQGRez8ftXmCYDexLREooeUwsvw+W+9fsTOHj1iGT9cSiIg
	qCjWGIkGmYHmJojnKkR9h1YFlaM1qnaO8RyOdltRDIVlmdmEjipDI1APapFVNDY+YdrnkTaRGDUOL
	FsOnmTpeIunFHVQGjsr3qjywMwRjhyrGxZraqevLq2ndLLSpNtPmpuBzFrw66sOXt7Sw/ORC5ZolH
	269/9imNOIGUcfuw2dHaWk6BkFtUJiBgPe0GAupMCVv3TR+c/M/gbvEB6ReehJGftniVbMtlDLdlG
	elEWs++pZJa10ux7oYOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRBu7-0004X1-VE; Wed, 22 Apr 2020 09:42:51 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRBty-0004W8-9q
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 09:42:43 +0000
Received: from mail-qk1-f180.google.com ([209.85.222.180]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M1YpJ-1jUE2G2YEl-0032gj for <linux-arm-kernel@lists.infradead.org>; Wed,
 22 Apr 2020 11:42:39 +0200
Received: by mail-qk1-f180.google.com with SMTP id b62so1691336qkf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 02:42:39 -0700 (PDT)
X-Gm-Message-State: AGi0PuaRBMOJrWJsU2oJgUZ5ZRVfArcUMuAyBg1oHQSRohP/TkxCWWHz
 6+sbzBwANRG3xhF5UqU1cyLINndFECMhqjZKA6Q=
X-Google-Smtp-Source: APiQypI/ymCJliens2rTL4tEYpO0RaBvdBKJfx9PjnWISDf1IJDrLKMK8cr9T1HxGv56n49gXQdFjqLshcI2cTE/yOY=
X-Received: by 2002:a37:ba47:: with SMTP id k68mr25543488qkf.394.1587548558376; 
 Wed, 22 Apr 2020 02:42:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200331183844.30488-1-ulf.hansson@linaro.org>
 <20200331183844.30488-3-ulf.hansson@linaro.org>
In-Reply-To: <20200331183844.30488-3-ulf.hansson@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 22 Apr 2020 11:42:22 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2n7O0-jHLASdu9scgrG7iqETJV7Un843+fW3Yt4q=UhA@mail.gmail.com>
Message-ID: <CAK8P3a2n7O0-jHLASdu9scgrG7iqETJV7Un843+fW3Yt4q=UhA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] amba: Initialize dma_parms for amba devices
To: Ulf Hansson <ulf.hansson@linaro.org>
X-Provags-ID: V03:K1:L454SzBHpeiHPoEXcNarAI4LcN7STqK8Yfx4gEZbTHht4Ofg6Kk
 g1OZEjiA2SUJIKkhA6am5ZeFfeTDxiOHFBh1EuGPm1ZSnYZsaBPyetlsiszQoqvNiWb9Dho
 wUUAuR43PtQ1Mk20lXfPyPhlYex7cWDoGSbJG9m2SUsYxQCntOhWJpGd4BA1cURhjb6O8+/
 M1gbUrKGi4KlWlnWQWIVw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:omv6mWS6PBk=:+EArHQJGxUXbHjk55NveJa
 /xMvbpsPkI7D8Tx2s9m6oJPhv2uakAKJCqRZguhIA7QfKnoDHhX4swlbzx8V4A2u0buPG+5OJ
 xgvl9mlgmVyPOwYFSAhlDrh7rQwJ0s2C50T5xoUcK2W5kC/wknHe4NfbgVMFOFcs3ORRR7cZk
 eyXcXPr8bXfgeFAPE4EQ23vbqWu4++ihSQU/5Tzc+gcVbEhwvcRY7ilEwaF6C+pesWRyGYJXG
 c3jT1H2SitqKPW8Udu1SZfN+8geiO3TvZNzgeJKObIdDNtbFlxq1Y0Itffh1S+vZRd19tr+iK
 bi67s0SRoxMRHzsN/prcRMq1Tz3jSNGnEMT7cxTMLWsjaLZpTn7RAnWFRLN7UzRIb/gQ55Qjb
 rYq/X7pE/MsuxRGwRm7EB8z3qZI3Cvs9alnk+qp+HYcUmr/ll5Hh6ioeU08JTzuHA8PUaEhsn
 HtYVZNlHepx6iNHUmc1q9SGbWZLxPsYMX/5y4hR9i+gnVrs+J3tlb6O8STekOuyrPljWmlso9
 TeIHGGHCxGYBJkgK5mRPsSY6rz/B0Ewk+7Q0FdTKShnrh1Tl13IlxMWpIrzW42Yf9Oo6DPYIx
 1w8a5XgnybJ01m8BZQE22Uac5XdicYBIkgMx2N9WiQPFtPUti2ppQ/Q9qATjQnSF0FCO9EDYw
 Pe3CnN+gmiXdDg2AsDA/e+17NWPSdzMzLtmGEai1SOy4Rju8lG0N8i/NBA1j0vBGlSKlBv7P8
 h0AYOEDHa+oyMU4NfbJucUhKI6NPuXIPOeqvcYTAizs4tCH/lDr87jUDKJF+htLYtihPs5CGO
 Ht/WUc1THRd43SSAUwd0KSxDcgOmFHSyy683PNg8dJL7b2yiPw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_024242_626934_5BC0F0C9 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "Rafael J . Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Haibo Chen <haibo.chen@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, dmaengine@vger.kernel.org,
 "# 3.4.x" <stable@vger.kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 8:38 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> It's currently the amba driver's responsibility to initialize the pointer,
> dma_parms, for its corresponding struct device. The benefit with this
> approach allows us to avoid the initialization and to not waste memory for
> the struct device_dma_parameters, as this can be decided on a case by case
> basis.
>
> However, it has turned out that this approach is not very practical. Not
> only does it lead to open coding, but also to real errors. In principle
> callers of dma_set_max_seg_size() doesn't check the error code, but just
> assumes it succeeds.
>
> For these reasons, let's do the initialization from the common amba bus at
> the device registration point. This also follows the way the PCI devices
> are being managed, see pci_device_add().
>
> Suggested-by: Christoph Hellwig <hch@lst.de>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
