Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DF9A7DDE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 10:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wl16/23+8apRAV4jMj3x4MEtqxh2G1UXMfNpwCsQzUQ=; b=qbnFr3Mn8I9okS
	hXUr8lJAxg8Z4To3Tqeyn9QnOqsjbudu1olbo93njO68EcsNusC+rfDPxtjxRu4hwN5QxCn9m77+m
	oqkd2uM0LnL0P2rp6WzQEv7IDx1MDJhleWGoyHzD3e6iiUWq6c8C5IpgMQDLvPJ2WQoe/3zvcfFrn
	2lEPUHz20XNSHiD4Y0WvvoD4teVMrdTPNKBepJIYRqtsnrMszG7sAdHOgzrG3dUmE+aaM4BAwbzuq
	0YmtOmvcCYTEoHukUP7GRKj8B1k7W44Jw1b8bm6iA9NCvHLa26ynDcR2+eJlGF29bbOcCSNLBxvHD
	Bi+cSPqZ2jGdFRf34h6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5QgU-0005Qm-Kx; Wed, 04 Sep 2019 08:30:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5QgH-0005QM-RZ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 08:30:23 +0000
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D12D23400
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  4 Sep 2019 08:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567585819;
 bh=Lh97Er4RFNHYTmr99oTQMZS7Qa/TTRWTwINXViZQoVE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Ba00XhkjsAfVIFqoUw4XDCrYjwdpq1xq93rciWJbfgzXbOezj9GZzvj6t7NWUdrUn
 9PuREUSozNg5D0nS8Ce6qA6TFK1zkdHaVa/Et5BwOcZgT4+X/MMgeJpUYC2dnuuTSF
 N+zR27Xtauu4APld4gioTaKLDj7RwaV4DxfJXhmw=
Received: by mail-lf1-f52.google.com with SMTP id t8so2714816lfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 01:30:19 -0700 (PDT)
X-Gm-Message-State: APjAAAV/vEA2Vv61y9cZKFGeog5iz5nnKX/45ao/qVfGtM9aQPvLayi6
 AAeA2XYLJU3ZJyVceHMH7JSgxLkCnnoE6vVHvOA=
X-Google-Smtp-Source: APXvYqyIxWtp5ANugFBOnOwndmgq6u8lUVFdexZfuwV5PqkiNbruroxMaNtADWXFCwo+8p0GtjHdHb09f2ZRaXGy7K8=
X-Received: by 2002:a05:6512:499:: with SMTP id
 v25mr19209706lfq.30.1567585817665; 
 Wed, 04 Sep 2019 01:30:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190816163042.6604-1-krzk@kernel.org>
 <20190816163042.6604-3-krzk@kernel.org>
 <CAJKOXPfdvzvomUfmxhGf0qjEQH3K8TADCneo9SM6m50k4b=Gyw@mail.gmail.com>
 <CAK8P3a0sa8WgcNnL8jusYKFr22FqGnut4kRKM-1QcB8G+ygnMg@mail.gmail.com>
In-Reply-To: <CAK8P3a0sa8WgcNnL8jusYKFr22FqGnut4kRKM-1QcB8G+ygnMg@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 4 Sep 2019 10:30:06 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfoxVriL0GzZLp0wtYkCQC8Dn-0XXb678wXh4ePRy0dpA@mail.gmail.com>
Message-ID: <CAJKOXPfoxVriL0GzZLp0wtYkCQC8Dn-0XXb678wXh4ePRy0dpA@mail.gmail.com>
Subject: Re: [GIT PULL 2/3] ARM: samsung: mach for v5.4
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_013021_917938_C440D3C2 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 3 Sep 2019 at 19:32, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Wed, Aug 21, 2019 at 9:52 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > On Fri, 16 Aug 2019 at 18:30, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> > > ----------------------------------------------------------------
> > > Linus Walleij (1):
> > >       ARM: samsung: Include GPIO driver header
> > >
> > > Pankaj Dubey (1):
> > >       ARM: exynos: Enable exynos-chipid driver
> >
> > This last patch should be dropped so I will rework the pull request
> > and send later v2. Please ignore it for now.
>
> I don't see the v2 yet. Are you still planning to send it?

Yes, I have two more patches so I plan incremental pull today or tomorrow.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
