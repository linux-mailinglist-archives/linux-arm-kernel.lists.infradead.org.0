Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FE917D383
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 11:59:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTCUfcSh+vUv5Hsc+uSKatscDsicBpvl0Eh9Deddkfw=; b=FWM1pVF4G9NdD7
	8KebVZ7ztkDr9dbpIYAvTUsEsvMjksEgTXxPMt6CFDn4vPtgHZg8jT3EmExt4KIH5sDBFmU8l1EsD
	2W4lDXVlz3zcd7XD55oHU8VV+iABQmJCL2fn5P2owu3qHJqpjcHqJWczXxHcVDVCC/IW0DbhN5kip
	Zn2oy/Gv96OII8a7aLor2G2SJ6OydxXsRPOfkEsWjUKCRgnTYJKkx5SBSaYK0LcIofyHfflIgF1e5
	Pwd6TyFhljtQKy2hjuS+o+gAgzwuB08CxUFvFN2Nj2J9uVi8vUsb9YLAyHRqRlPqy42371bzJvE8Z
	BIkmt+O5PnLhIDKBrj7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAteX-0003ES-F6; Sun, 08 Mar 2020 10:59:25 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAteN-0003DW-No
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 10:59:17 +0000
Received: from mail-qk1-f171.google.com ([209.85.222.171]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MplsZ-1jgy832d0n-00qD9p for <linux-arm-kernel@lists.infradead.org>; Sun,
 08 Mar 2020 11:59:10 +0100
Received: by mail-qk1-f171.google.com with SMTP id c145so829436qke.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Mar 2020 03:59:10 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2DM9lVx83dXpOXFNue05/IuMrkoX6Kdzeoc8S6tlaqi0igO9Gj
 9XyKqXfRa9SgdnMNOse9PwktevW92gDbKMVOJvE=
X-Google-Smtp-Source: ADFU+vtLZCrqsvoVRLgLjaKncW5qncKt1oeFxxk4ajRHsCJw8gSTZvblgXUZetJgeQGkfwQsqjkOMZPRrTin3JkbS24=
X-Received: by 2002:a37:b984:: with SMTP id j126mr10069404qkf.3.1583665149525; 
 Sun, 08 Mar 2020 03:59:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200211193101.GA178975@cmpxchg.org>
 <20200211154438.14ef129db412574c5576facf@linux-foundation.org>
 <CAHk-=wiGbz3oRvAVFtN-whW-d2F-STKsP1MZT4m_VeycAr1_VQ@mail.gmail.com>
 <20200211164701.4ac88d9222e23d1e8cc57c51@linux-foundation.org>
 <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
 <20200212085004.GL25745@shell.armlinux.org.uk>
 <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
 <671b05bc-7237-7422-3ece-f1a4a3652c92@oracle.com>
 <CAK8P3a13jGdjVW1TzvCKjRBg-Yscs_WB2K1kw9AzRfn3G9a=-Q@mail.gmail.com>
 <7c4c1459-60d5-24c8-6eb9-da299ead99ea@oracle.com>
 <20200306203439.peytghdqragjfhdx@kahuna>
In-Reply-To: <20200306203439.peytghdqragjfhdx@kahuna>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sun, 8 Mar 2020 11:58:52 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0Gyqu7kzO1JF=j9=jJ0T5ut=hbKepvke-2bppuPNKTuQ@mail.gmail.com>
Message-ID: <CAK8P3a0Gyqu7kzO1JF=j9=jJ0T5ut=hbKepvke-2bppuPNKTuQ@mail.gmail.com>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
To: Nishanth Menon <nm@ti.com>
X-Provags-ID: V03:K1:bRNJidUnrvGef/Tf/2qxHxjnrnbd0gH1j7L4oNUOAIzibakFgcE
 qqMOS2A9ojbjql+hYbI4nvu8amuq6m+/n5SDlOP2ijvuRR8TpMvtKE5qNwkT9K5tzNBbZJV
 ZC8s7xZG1zX4X3HglAIx0pcJpKXn26Ng9kHTmGgPJ4Cv9hFhcmggSOEo8rHPu76MIKSOE4U
 k/SZxiqrExgwJUubUDR6w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LFEwsW3HKb4=:Li44QPhHmpQbBiA73hdQdE
 qEIlM/N61qksQIdBl92fHoPNtMMCZCLunr6TadPAmJ3JQOUo8yOl3LdLKe6sbkIHE4GajGA2L
 gyAQqLRYpgbuckVbmogWcmQU41aUfDofZyefyJLbdzpXm+Hfg8r8tc5D82Q+Q0hAi/AFn8Z6+
 kjIDzBcKR7IcJfUcTgu1GM6M3UmmRAQWpzh8AQey1/jlwUnBTGgzKj2DQV3ITgFbaYsbNeHos
 iP0MrAzEQu4vqrcMWW51ONj79gHMUbS8a1EK4cXrrJel2oPG8gg8TJA6Kiahtvcgrtem3O1gk
 ca82+XS6favRgYA1dCeUcyFujwAkldFVjUbr35HzR+hGURFRNnLhPox7SfsfZm+teoDAkuPaa
 7lUfQEO4XBtYjRIOO/FywI/SjdHI9Sc0NIQTCkB9nypUJn1CGB+wUDBqhLZTnO1XoXaRRlZ1H
 6rtVBsncJWIcxySOlljUQG79FqR69NmQU4Ua9Q1kfZmEL7ciehA4HafyhJLd1TcTQCFq8s/vg
 pMkhGHVE+ka1K+RmXvUVqz5tkHYZvQg75HKCe20i0/a90B4+apcds1cvo2d2kggr66ZBqdOWT
 aQSBrx43y72q2gOOyl7DdGo0SPKhnGCg1DBoecOAGKdBLtFKNOXpbK9PE8uIItJfFa8BjwVjM
 fTk8kFGjV+oHypdblDv7w0FMxtBl+4T8Lw+agwvfvLdkKsEnY0D1aBoJg0vqfwnDg99k+IRU+
 VdW6iaPQ6EKoBttpsOk5bDARDY8Y6Xm1fy5W0G1aOKD5BVECPOdV7RBzd8QiJKlO6i6Z7bORG
 QOYo2AO1dl2kMrDuaw1dLHSlHe5F6eVzJynwKmQVt3qxO0Pxg4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_035916_069570_44F53495 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
Cc: Michal Hocko <mhocko@suse.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Rik van Riel <riel@surriel.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Roman Gushchin <guro@fb.com>, Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 Dave Chinner <david@fromorbit.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Linux-MM <linux-mm@kvack.org>,
 Yafang Shao <laoar.shao@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 6, 2020 at 9:36 PM Nishanth Menon <nm@ti.com> wrote:
> On 13:11-20200226, santosh.shilimkar@oracle.com wrote:

>
> ~few 1000s still relevant spread between 4G and 8G (confirmed that both
> are present, relevant and in use).
>
> I wish we could sunset, but unfortunately, I am told(and agree)
> that we should'nt just leave products (and these are long term
> products stuck in critical parts in our world) hanging in the air, and
> migrations to newer kernel do still take place periodically (the best
> I can talk in public forum at least).

Thank you for the clear answer!

I agree we should certainly not break any such use cases, and for the
8GB case there is not really a good replacement (using zram/zswap
instead of highmem could work for some new workloads, but would be a
rather risky change for an upgrade on already deployed systems).

I hope it's ok to ask the same question every few years until you are
reasonably sure that the users are ready to stop upgrading kernels
beyond the following LTS kernel version. We can also do the same
thing for the other 32-bit platforms that exceed the maximum amount
of lowmem, and document which ones are known.

In the meantime, it would seem useful to increase the amount of
lowmem that can be used by default, using a combination of some
of the changes mentioned earlier

- add a VMSPLIT_2G_OPT config option for non-LPAE ARM kernels
  to handle the common i.MX6 case with 2GB of RAM without highmem

- make VMSPLIT_2G_OPT (without LPAE) or VMSPLIT_2G (with
  LPAE) the default in most ARM defconfig files as well as distros,
  and disable highmem where possible, to see what breaks.

- extend zswap to use all the available high memory for swap space
  when highmem is disabled.

- revisit CONFIG_VMSPLIT_4G_4G for arm32 (and maybe mips32)
  to see if it can be done, and what the overhead is. This is probably
  more work than the others combined, but also the most promising
  as it allows the most user address space and physical ram to be used.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
