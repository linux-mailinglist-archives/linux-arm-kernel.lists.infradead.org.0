Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1C413A82C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 12:18:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HbEBD0ZzZkDmcEPzfkQ+HfEe3P0VogC79fTiJPgTl4=; b=XCAbQr6pSIDuRR
	/4/S6SWSVI1Hbxz6p5DTmKBUfLd8iQhOe6lPAEBNBuY9/xYloXyIiAQs1jjO46BhU/IOXNAAB8ENZ
	dzEpHXpQypCpuxDeGUVffZVCae86Il0DW/kvI1JlNYwlIVI+trY9YByAtYu1wQEEjOCV5vlF60nEK
	IQCKdO7PBm7hNThJH9fSlw+ZUPfYuTxGsjuRgN9Dy7VeF5d4qewqdqCv7He+EfTlu5k0o0+En2frh
	JAqYzvdIcvLFYSnsDiOX3RdLJgN9NPcu/4+LVIFwkv+I9ahgkETzomYufC3byKDKBo1/ZNLVAZCx1
	FHM9mbGbP6BxLkdOQG8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irKD0-0003Rn-5K; Tue, 14 Jan 2020 11:18:06 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irKCi-0003Qc-4j
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 11:17:52 +0000
Received: from mail-qv1-f41.google.com ([209.85.219.41]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MTR6K-1jETET3X48-00TjFj for <linux-arm-kernel@lists.infradead.org>; Tue,
 14 Jan 2020 12:17:46 +0100
Received: by mail-qv1-f41.google.com with SMTP id l14so5445644qvu.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 03:17:45 -0800 (PST)
X-Gm-Message-State: APjAAAUB+qiuSX8oCrIug1V1U/3p9MUgX+GTfHH4qL85S5g9X+dyKNIO
 55nlUMwWaoT6GeTKROP1mIgLp2ZewujLubRhXLw=
X-Google-Smtp-Source: APXvYqxewBOBWhfpEFWxrE82cB8j/GRSkMj0uZDNDoV/o4MauOIMLjl2H1Czfs8TY0PBzifQFmfdxNh+O2jjxtNVCWw=
X-Received: by 2002:a0c:ead1:: with SMTP id y17mr15513188qvp.210.1579000664506; 
 Tue, 14 Jan 2020 03:17:44 -0800 (PST)
MIME-Version: 1.0
References: <3f5567ec928e20963d729350e6d674c4acb0c7a0.1578648530.git.viresh.kumar@linaro.org>
 <CAK8P3a1MLyP4ooyEDiBF1fE0BJGocgDmO1f5Qrvn_W5eqahz8g@mail.gmail.com>
 <20200113064156.lt3xxpzygattz3he@vireshk-i7>
 <CAK8P3a2u6s4MAM_9bOqSt5NwVc4XrXs9W36tp-7rWWTXx0+pRg@mail.gmail.com>
 <20200114092615.nvj6mkwkplub5ul7@vireshk-i7>
 <CAK8P3a0jXyJArzQFd+u68iRvXNnXb_oHbWF9-abvvFuqhpi-NA@mail.gmail.com>
 <20200114111110.jhkj2y47ncp5233r@vireshk-i7>
In-Reply-To: <20200114111110.jhkj2y47ncp5233r@vireshk-i7>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 14 Jan 2020 12:17:28 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1cByQrhKV=8gRASNy74p8=WKfi1ZU13S2OpFQRjohUsg@mail.gmail.com>
Message-ID: <CAK8P3a1cByQrhKV=8gRASNy74p8=WKfi1ZU13S2OpFQRjohUsg@mail.gmail.com>
Subject: Re: [PATCH V2] firmware: arm_scmi: Make scmi core independent of
 transport type
To: Viresh Kumar <viresh.kumar@linaro.org>
X-Provags-ID: V03:K1:sGPPjKVUEoKInYb3sLq1wox3BeliHZcHCRLJSGZOPQGtg97HNSi
 RI8LE9vhqj0ecGy4NukyYYo4xBH9MB96YnE7u74PRSp8dCqeKpnfsaNch9aFu7HhVYpNcsg
 WgF1sx+PZT4tGnBL4FcwNprwx8csiQPZxCP6Vc6GPkvSdq5f2jyM87Jl4oH+aBJIMHG5ASS
 5m3J0fYHaLNVa5qU0A+BQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VgolXyF4GV8=:X+/ny8AMfN8i8ByreVLwCT
 o4TA0Oscdz0ZB8VTLhiioYYkQQDZKaADkSnD7YyP2TDvAsUg3rgYkHRnfQ1d+vvx/foH9NdQN
 9c4w9wlDx1jwyyEvMrXYz77OwleogljYKfmpETYx96zHpyTYxthD17aKUMuwMuhDcTR3xD813
 kK7HSpQNie1iE5fv+C9QRrNiYv8013fvJ6JWg1lje2aFxvtAxVLdmrtVIg+MFERrSwSG5+Hcf
 Grt1movKnoQFUNORaRgdWMF+Bdi8Bu4KAPNcOYvgsfXVraddeb1p7rnR1x4LLgGMHuNOOWtY+
 zNX83RM0500WF2D56s+oGPZBmMZJ62kzgM3PBkDLiau9FBTs/zyNOAHc7zPgHjSRwn9VMd4Lj
 +lVOEDMEfBJ6+Y2xjOwXQhKLXnR91Rn/V2SYbIFfSZFX+E043buA8jR7qVYGDSYQmTaAPQdrz
 9o1nHl3zX0BTxkpRHcWIo6F5r8jHsyi8EminekYgxwpFP3tjbXWo6TLPuTHS1oXWhXOipobGR
 4ay/rryi/H8il+csA45P28+q2da7mGS3D0ydGvxz0z9ZMhYKb4OgSe0mIvq4VH5hv4CFdfZ/3
 YYxPqyu+9X5+Qw+ubE0og3D8UW7phvm8a+XD0O0ooEfx/HnI5IQd1+xjOo8tdF+LVwVkUR3yN
 O9Ec7Ii8p86be8lqW0axnbIWxT/c9cbm2IpEcQ8SFS6najWF4CYHIwydFujhFjifI8UKp9YIC
 ekUriJwyfM7oaBqu/+4EqMEj8MMqwald41KHHLq0N3PZ5Fp+Fp/lWWDdqw7ZOlnYIRWtlowuj
 XxDqyGrDV7rLqopJdwxKUAW+KZPB+z1zNgnZjXeMRViGSbim2g4HLug9A+q5qkVIbOva/8ibB
 /RRNLkObxK97x5wQKLFQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_031748_472358_1C8EECA2 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: peng.fan@nxp.com, Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 cristian.marussi@arm.com, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 12:11 PM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> On 14-01-20, 10:56, Arnd Bergmann wrote:
> > My point was that you cannot mix __iomem accesses with pointer
> > accesses. As I understood it, the current version uses a pointer to a
>
> The current version is stupid as I misunderstood the whole __iomem
> thing and just dropped it :)
>
> > hardware mailbox with structured data, so you have to use ioremap()
> > to get a token you can pass into ioread(), but (some of) the new
> > transport types would just be backed by regular RAM, on which this
> > is not a well-defined operation and you have to use memremap()
> > and memcpy() instead.
>
> Okay, I think I understand that a bit now. So here are the things
> which I may need to do now:
>
> - Maybe move payload to struct scmi_mailbox structure, as that is the
>   transport dependent structure..
>
> - Do ioremap, etc in mailbox.c only instead of driver.c
>
> - Provide more ops in struct scmi_transport_ops to provide read/write
>   helpers to the payload and implement the ones based on
>   ioread/iowrite in mailbox.c ..
>
> Am I thinking in the right direction now ?

That sounds about right. What I'm still not sure about is whether the
current kernel code is actually correct and should use iomeap()
in the first place. Can you confirm that all current hardware
implementations actually use MMIO type registers here rather than
just rely on a buffer in RAM?

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
