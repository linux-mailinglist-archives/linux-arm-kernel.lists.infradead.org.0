Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF4E193D9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 12:08:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jnlc7P8WwqkVU8aipsSFF39VxHj7WZi/WmRe8O88I2Y=; b=POzvth7gPLMRB9
	F0ev4u8xxd3FbMf7TUjuRhH/r46tLVcxQqcThVLw6paqoccllrvJqIBxNkrxmmBZIMiE+7MtWEZz3
	nNgX/cNCXxJZ4GWFJwhQ08vu2fNK2t+bSK6HkoUubawK8bX8Rv756mYxPoExezhVt/oS0sDBqB73w
	Hurgfly/yGZP5fED9tIQ71MBkX2vyybv4zrzz2V+gEd7eGBLR65MgAox/i4pg3cbrD6oqgD9A4Pul
	4VmJOL7R3d8olMW9WVs8oQcd703dpT+9ns57Tw29FUdP8sCcvlOJeHKxwWCcYDqQdUhQmdRWno03y
	eDp5+jn/k7wb2XjbcOSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHQMY-0008OL-HB; Thu, 26 Mar 2020 11:07:50 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQML-0008LP-73
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 11:07:38 +0000
Received: from mail-qk1-f170.google.com ([209.85.222.170]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MtObA-1jWC1R2Zx8-00unJ0 for <linux-arm-kernel@lists.infradead.org>; Thu,
 26 Mar 2020 12:07:35 +0100
Received: by mail-qk1-f170.google.com with SMTP id c145so5828492qke.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 04:07:35 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3oV9T8rlcsAbLkxIbALFP5ACIQgMAx81bzviVWSEPrAngI3Vov
 678OWT5z9uUzs4iA9AGFLTwFEUwv4hl9+Dp4wTI=
X-Google-Smtp-Source: ADFU+vtGA4H8mWbkDm6gpTVbfvnOBJmqFtB227gJd/fzaEEWWXK9KVIZa3FUqSbrkQ+QzfbwJV3lxH63RATvQa45OLc=
X-Received: by 2002:a37:6285:: with SMTP id w127mr7344230qkb.138.1585220854524; 
 Thu, 26 Mar 2020 04:07:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200325113407.26996-1-ulf.hansson@linaro.org>
 <20200325113407.26996-3-ulf.hansson@linaro.org>
In-Reply-To: <20200325113407.26996-3-ulf.hansson@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 26 Mar 2020 12:07:18 +0100
X-Gmail-Original-Message-ID: <CAK8P3a39JrMrYrNeLCr-R6y-ivkVqRkxey_Z7R4N3++MA_qqCg@mail.gmail.com>
Message-ID: <CAK8P3a39JrMrYrNeLCr-R6y-ivkVqRkxey_Z7R4N3++MA_qqCg@mail.gmail.com>
Subject: Re: [PATCH 2/2] amba: Initialize dma_parms for amba devices
To: Ulf Hansson <ulf.hansson@linaro.org>
X-Provags-ID: V03:K1:3As796uVVUSDxkya8TObuLlGbL966eRwV4nBGiMx7YLhBSchnuH
 Ss8N0m4eVz2X8UsQfiCI1GAGJMCbtIoHTbh0hRj6u1zsmopfPHMvi4j8sBWWNIvF4smmbFj
 GH2zngTAKBAnSWYCnjE2p6msfkI7gHqaYYJ76v/J5i714VVPaB267GVUcwAExln1/Letbdi
 f8+cNEMXRfoUDZShzAspQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mS+9Zq3yqi8=:N0EKVU522W0fbTyzwsXf+H
 AQHMnD2PeFwKdRnvy3c86WBCn5mU4bJ1nZgYdi50OtQrTUMmTOZkgZgr0B1whJETZgp7yPm9K
 qCq8lXj50595KADTMO9bXcVZOgB/y3esMPDUVLvOqD6H7mwzsFvniY+5F0BoYpo9PQCvkFz3M
 yJnVaWmLLuOhunzl129Gw32mGnLrQUOzUlWZrL3qfh1iUOroAjjyPAyYEky1wDyBncDyf7jm5
 qwdjp57QCTlqGlacfmvKBqgQ/cvdfA+giCmilKcSuqXJe2mrbsFJ/FYmMtrDbhxf6pvleiT6H
 lOpATWmv0RuGsDLogBu+NsAhgk/vrMdMx5y2qh0aW5/As4k/s6B4t7sbP0lxk6Ix7FUpf62z2
 ZFI29jlS+OM/8dglr5EuQ33QR/uwDgdzNG2D3RT2Nip8EGMpjocdjpg3CopX7HuHqbG5wBNQw
 n/1s6qlJzLJz2fo6ObMuKrYcALP1pova6EM6KpA7CJJJWLoNaIsjR1IdNzMbI/2+4yH5iiF9M
 LV0jI0AjIwNWhjqgSYTpqVQsML0u684TgLObbnP25zFStv0+r3hbfzOOQvKo4fO9FRF/cAHzQ
 s1aPmOtOHNW8UNwCk6ksY58dZPeB94FvMWRBsmiB4zmBpuq4CszU7OkkysaD62/BovUWXBVvl
 Mc5XhIaN7gQURXysxLiKtmI8r8ARzdQRVm4kwa9FxD2JUm9BCLn8HuVZNGQOZkgnulESnxFrF
 r3ruFoUN6s57TFz64PK2MS0MhG/UQFo6J9eSevj/jjEPZ40TB6oRakwLhqw5JN2KwEfWzEedO
 M4rxmzM25wfo4TvWi96xs2ZINtdYnRYD/1lO9HP2bl4d2AN2P4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_040737_545566_E8F71D1C 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
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
 "# 3.4.x" <stable@vger.kernel.org>, Christoph Hellwig <hch@lst.de>,
 Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 12:34 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
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

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
