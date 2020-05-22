Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E37831DF10A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 23:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1a3rKzfhCsVe6VYu3yAAOg8sR/HTK6nHyTxao1MRcjo=; b=g9mSF964J+k3gI
	TQX5KsC5r2ih0Qerd+UzK+d3x7Scxr7qlWskqTPc+WgwYmNfXggZLQB4qBj1KCamuqkc9EHCnR/7p
	QGBzSufYNA+IdGh4VSGEIHNthTLn1xawOUzQhrdZ7o0EVeFjAwIItXJujPV7HjvqpBXn5q64rzFUg
	TB6Z/m1EQMWGhsiK3A9va3fSYq735PLp7Eqg/MPPsTH5xYdxtt6IA/OaDk8Y25k2ZZimRh2jY98ku
	Mm3gQV1t9yy8lo118Kr3f2UZ8fx+o/bKXlQMm5WmIOLcocGDdYBb0YGTHSjX5QyALyGk9++aj2rTc
	wTmPlFbOJFqpdQMOA8jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcFAN-0005G4-H9; Fri, 22 May 2020 21:25:19 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcF9y-0005FV-SF
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 21:24:56 +0000
Received: from mail-qv1-f49.google.com ([209.85.219.49]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N4yyQ-1ivSEK2vbQ-010uXp for <linux-arm-kernel@lists.infradead.org>; Fri,
 22 May 2020 23:24:52 +0200
Received: by mail-qv1-f49.google.com with SMTP id l3so5409868qvo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 14:24:52 -0700 (PDT)
X-Gm-Message-State: AOAM531RpnnHJhtLdE3nzpFxi/sicYbY6pq2cQaTJfxqrdztjYqaaS7i
 WWS8aH7YWsY46AfcseEr79FaydU6bjKpY4/8Yyg=
X-Google-Smtp-Source: ABdhPJyAzA5FWT+7ggHkGIJVW5G625DLGMQ+xLbcYfsvKmg5QVb1RfOKC7fxaBxax93WGvQZ7iy0FhEnP6ORQ5y2MIM=
X-Received: by 2002:a05:6214:3f0:: with SMTP id
 cf16mr5926205qvb.4.1590182691491; 
 Fri, 22 May 2020 14:24:51 -0700 (PDT)
MIME-Version: 1.0
References: <5ec7b744.ZcxrA/L/3+XSTqYO%lkp@intel.com>
 <5c53e7b7-4caa-06b9-8a9f-b3a29f008bb7@gmail.com>
In-Reply-To: <5c53e7b7-4caa-06b9-8a9f-b3a29f008bb7@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 22 May 2020 23:24:35 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2kz3ej1Kko6uBd5BxYW2CqN+X3kUJ2nDydbUg8Aqfx1w@mail.gmail.com>
Message-ID: <CAK8P3a2kz3ej1Kko6uBd5BxYW2CqN+X3kUJ2nDydbUg8Aqfx1w@mail.gmail.com>
Subject: Re: [soc:mediatek/dt] BUILD REGRESSION
 189881af810d452b592ee958db43eb4c57df9803
To: Matthias Brugger <matthias.bgg@gmail.com>
X-Provags-ID: V03:K1:gd/pI96YzXeYDrQvOGj8YMl3wEfo5CFRQIRIyfcELWXrogQTQNN
 T1F9CMPamVx4nrPxBXg0laMJdyYPNJ0fd8B+f87p6aK/p2EaxMpE3EKJJgre3lPPYKDvVT3
 0jekA+DEw8UcYTkze5X8VhtJPwnCYOznjO9qz4KkG3ANr5sFlXc055rI0OzBdm6YV7Qd+Zm
 httMzfAZMRK32WoSrZz+g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:y70RMSeMf9M=:bgKMU+H/ooaxxAbjItNGjm
 Rga8QMHv2awzJ4ffR+GtLLHG1+OuVNpS5WCaaJHi0IwG9tg4NBET75U6TCSd7zc8FFBCxLO5R
 XJrZ3m+pq8xv7afIOczQor9cul63tOg/xPEXcMp1Pcm0SqW2vzTLZ4RCDlNnQQV/QVMYQyx5n
 vnyOzBNWIDCSOSeNFHKPjgXTxyUji+DMXByciF1ZNGMuE+hAZxBHGpGhqjYEmts0ZVwjQPMQv
 syijGXeRfhx5dw4crs49X7gAvYZAYeLoGBnoJNiQyakMBqFepEiEkdBMDW/MWysJijI04hokG
 pMZtQ4DE1UITK0FajxdO9n/AB0Syjt9DP4ex/rDD2vZBL2+1qG3dtmlxvv55Uv2agF6SjUxVg
 dHdUYBZejOrHz5hP7l3aoHIsNafYUJDbexzKC/CL2Y86wmBpcDQawzGR8dwdZZI3seGEMB/n/
 REULTavcZWmusm63FHjV27PP17gnbIFku5zSXjDdBa/j+5BYSRM4Ckmw4Y8RTjhU2kvbbiTLU
 mGkTg5uDiKTsHSOa3FA5o4AjhieyHLfF7hjAQJakUXQCgb+okJd0639AFzHt5Khom8wL30x1t
 TFuFpHSGfS2/Q7ghyekhHeq5I4TaJB8B0raafjM19hoLtZPn04d4m2NFS6j/coxfWu1ZOUYdD
 DL0sKxl54RThxP/qrJ4xak/whIjfZcqbCxFedcmYOJSLdTqSYqvgw1eaKlTV5WVdOBVFX56Ca
 ZKfCjWsT8KTme/73731Qvx2u8Lx6UXkdEVtiTuy8RcFtMQxYwyykvyCKus6tqGY61opSBNM6H
 4Lu+UVe8E3L2TT9e40DLpCkp1u2dktAYI5/rihtD2Txq2Lp3+M=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_142455_216368_A7B5E849 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.72.192.74 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: DTML <devicetree@vger.kernel.org>, arm-soc <arm@kernel.org>,
 kbuild test robot <lkp@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 10:54 PM Matthias Brugger
<matthias.bgg@gmail.com> wrote:
>
> Hi all,
> Hi Arnd and Olof,
>
> On 22/05/2020 13:28, kbuild test robot wrote:
> > tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git  mediatek/dt
> > branch HEAD: 189881af810d452b592ee958db43eb4c57df9803  arm: dts: mt2701: Add usb2 device nodes
> >
> > Error/Warning in current branch:
> >
> > ERROR: Input tree has errors, aborting (use -f to force output)
> >
> > Error/Warning ids grouped by kconfigs:
> >
> > recent_errors
> > `-- arm-randconfig-r035-20200520
> >     `-- ERROR:Input-tree-has-errors-aborting-(use-f-to-force-output)
>
> Can you please explain me how to reproduce this. I'm not able to deduce that
> form this email. I can then look into this and how to fix it. Although up to now
> I don't understand where the relation with my dts32 changes is.

I don't see it either here, adding the devicetree list, in case anyone has more
information.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
