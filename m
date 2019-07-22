Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DBE6FE8D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 13:12:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eE7If//lcU74DU/8nP8GwFkPZi6AaRXrnm1P6rzpyiM=; b=SUo5HCRuCe6QIx
	K+pMelUgaTlKRY+5TJVHydCcU38Ea9axRouoKuX9CdbErBNn3upUwna9s+TlaCUwC68Z3Lbfl4bOU
	cAZkj7vler0ONaj7QZJ90DXooNWunrcACzgAJyB9yP06/zRlxgc/iWWMymUQ1BzLHDlPuJVHJ3EMB
	z72rRqx13F3MUJ6n6iPHY1iOcqi5PzqZz06vG1f87YBX4xHAPjiwcVg2i+/c7HfpkWNJFnVjHv6As
	/ZqCMaXsfXOCGs5WDDPYbp4I6denrxa7GxRR14HZjeR/XBEJ7HyrXvmxoHxmivIZ4UZhvmG6aAiXz
	D2M/0kl9RLqOvN8THo6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpWEo-0003hZ-Qy; Mon, 22 Jul 2019 11:12:14 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpWEe-0003gr-Gy
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 11:12:06 +0000
Received: by mail-wm1-x341.google.com with SMTP id v15so34752548wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 04:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bofh-nu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ugRN07ELNBGju0FZXfeTINwMh3Eu6S1IN6qjdKCIFBE=;
 b=gFpS54Ax3j5KsNqU6isZdGlE+UrqmTn1H7kDrcDfPtz5MDBUHiilO+ZhfhdUYaCeeU
 rnEF6ZKsuR9+Iv9LsEGoAaEVzSJuQ9SY3MRzFskJQjMVNJtpIQo5TVJC2A470Fnv5WKA
 Kkwh4Qvq5M8KWeAHKby9Ab4DdLCxK9kvQlmG+LVcXjze03oJ9l16KEKk7AfepwwSlUmB
 4PCxmpKH72WnymNl5ig50UJfK/N7j5HIxINywTZieue+9SYmx5xcD735gsjHwAFt1cX0
 5yC2/bv/9IG7OT2uIPZuVOkzW+kwc0AoBZclZ7h01TmKpUOxv2kH86Bx5WGN7FOca3nn
 oKVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ugRN07ELNBGju0FZXfeTINwMh3Eu6S1IN6qjdKCIFBE=;
 b=LMwAt/ws4xDz/3NGfunFoe3r8BlMi1kB/Bdh/hAMd/BC6rL8cENnEP71/C9Ao/0a0l
 zEqXeYetpOH42bodTav/98NdO5ASNM6uTM57ziKjoG1109QGTvJCeCkYLD1nB1gtiFVh
 chwn91r95dz0MEiOf8wSzDknmw1pdOs6YGZSiw55RpH5K2wIdGqecxSh6fuGmphNWRSx
 waddwQe+pMHYGXUoEmTaPfmp+9xN3jb7AHx8oyfYrtaVqbPObes/i4nAS0mlhheQb7jJ
 L5CA3Tf4MT44msQUiUHe3IM00mtNOkRkkXU1pzUE5ZhtsxWlFyVSr7o8Omk6BNU2BgDJ
 WqfQ==
X-Gm-Message-State: APjAAAXlfq8y2DTXcN6J+ijcoLK17htr9VXjzkKhA9wghghFZzi1in+N
 6kBPojdNMraxFN9TU7szZRCvP3aQLdmHHEAQANE=
X-Google-Smtp-Source: APXvYqyMOVi1QeBfQY7y3XFV+dCnJfmPmLUDhkHjFCy6dBRz6GZNepCI13S7cLN1oIlGT7gkQSUn4ppFimfg0qTYAS4=
X-Received: by 2002:a05:600c:24a:: with SMTP id
 10mr64703351wmj.7.1563793921410; 
 Mon, 22 Jul 2019 04:12:01 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <29dcc161-f7c8-026e-c3cc-5adb04df128c@nvidia.com>
 <BN8PR12MB32661E919A8DEBC7095BAA12D3C80@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20190722101830.GA24948@apalos>
In-Reply-To: <20190722101830.GA24948@apalos>
From: Lars Persson <lists@bofh.nu>
Date: Mon, 22 Jul 2019 13:11:50 +0200
Message-ID: <CADnJP=thexf2sWcVVOLWw14rpteEj0RrfDdY8ER90MpbNN4-oA@mail.gmail.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_041204_591306_339058FE 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "David S . Miller" <davem@davemloft.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jon Hunter <jonathanh@nvidia.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 12:18 PM Ilias Apalodimas
<ilias.apalodimas@linaro.org> wrote:
>
> On Thu, Jul 18, 2019 at 07:48:04AM +0000, Jose Abreu wrote:
> > From: Jon Hunter <jonathanh@nvidia.com>
> > Date: Jul/17/2019, 19:58:53 (UTC+00:00)
> >
> > > Let me know if you have any thoughts.
> >
> > Can you try attached patch ?
> >
>
> The log says  someone calls panic() right?
> Can we trye and figure were that happens during the stmmac init phase?
>

The reason for the panic is hidden in this one line of the kernel logs:
Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b

The init process is killed by SIGSEGV (signal 11 = 0xb).

I would suggest you look for data corruption bugs in the RX path. If
the code is fetched from the NFS mount then a corrupt RX buffer can
trigger a crash in userspace.

/Lars

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
