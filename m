Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C6C18988C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 10:53:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hR902rwZyje7nNPynRyNlNr6eOx4AZmtVxU/LfxkFMc=; b=OKyjp2pvDZjexN
	+bU0EmNhesSfzwJvZTzVNc9I1xzzvsZnFhlEdGucMM5vEuJihEwdyu6yXz3ggYD3VJzg/d3zLdNG+
	7fnkGv5bxzFVpDTEBp+9ZIuwbbyE/HRp70qvln0xflhHGzoMhtCcjds57bfDzLtrr59SbTWuF7zgg
	Pe1951Wj0e4TbofArE9ylrzgh1ZpeIKMy3RY2YNOwoN88PdLUt9iZ5w0HGjpB2bSyK4grxwTxgiRy
	XrmolrSYRBoCz1GMir9GNC+mHIYjaWMTMkxScwTp1jdVs6quvSk9t192uozEkBHOEwBcrTxNnqCKu
	THDkSP9SuE7kGMJJ8Svw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEVNj-000562-5k; Wed, 18 Mar 2020 09:52:59 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEVNZ-00054r-RE
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 09:52:51 +0000
Received: from mail-qk1-f181.google.com ([209.85.222.181]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MZCrZ-1ijLR82azh-00V7gl for <linux-arm-kernel@lists.infradead.org>; Wed,
 18 Mar 2020 10:52:47 +0100
Received: by mail-qk1-f181.google.com with SMTP id u25so37647808qkk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 02:52:47 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0jOqxwRdyEVidt+V8R2mMCQ2ufLlvPukVbIktCYBZMn21vLRCR
 VJHPFRggfWgU3C7cU+PypLCOIbO8BRzz9sIq1VY=
X-Google-Smtp-Source: ADFU+vvPPpkP18ZKfrFNh8gvaXPMHk4SKQCYU0CemL9wvz6IRWOfSh9+2To1NcmRy07HyNQyHflromqOgChlyMVwpd0=
X-Received: by 2002:a37:6285:: with SMTP id w127mr3096860qkb.138.1584525166497; 
 Wed, 18 Mar 2020 02:52:46 -0700 (PDT)
MIME-Version: 1.0
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-6-git-send-email-mikelley@microsoft.com>
 <CAK8P3a2yve3R1w5igBYMy3HSFJ8Xt4BHhXQcaTAkNCdZXZ1v-w@mail.gmail.com>
 <MW2PR2101MB1052B9C24DAB19FBBD818347D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
In-Reply-To: <MW2PR2101MB1052B9C24DAB19FBBD818347D7F70@MW2PR2101MB1052.namprd21.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 18 Mar 2020 10:52:30 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1zm2UH-S6eN4qMO_o1M8b0ieMq+2tQGVKmtC-UKeZUTQ@mail.gmail.com>
Message-ID: <CAK8P3a1zm2UH-S6eN4qMO_o1M8b0ieMq+2tQGVKmtC-UKeZUTQ@mail.gmail.com>
Subject: Re: [PATCH v6 05/10] arm64: hyperv: Add interrupt handlers for VMbus
 and stimer
To: Michael Kelley <mikelley@microsoft.com>
X-Provags-ID: V03:K1:9RpKNzt96w/0eGnOab4KgkjHGTli6FgrHkbic3O263Hu90eYYqz
 9TQ2uHaFGZZIwRfeFLwBeuYDpZNg3J3hTDsjlzRjaFWpY7pyBHlt/a6EGQMhHGGTwmEFZfU
 vG0O93o21NUZE2iYZJXaUujXUlzFN9pWWlRtqI3/j3uzf2dZCvQXfAqJlG2dbwTGxd/Jb35
 t45sSwFx3swZ202ZC7mKA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VyUq+whkJxY=:gEbnDeNn3Hg+FN7oLcO8zt
 7Q/PxMMZ4Vk4w/P/LSlWjf3lqMo7aCR6AIrT6RNhSuHl4pEo1+F/z5m4w9Pl1TH/eO4tYMFiv
 mjXotOlmuk97lke22ozGbW+jd1fZ2e9e86syWETy4h/tOnINLtsEAoxfurc08yJn6v4Mnc3st
 WNyFZ58ztd6fajeYtBO9fFMs1lFC2tCGF+gUGgdjxNkiI/la8pFYVKXNVF01STQJaMxFcIZxX
 xIXshmizqgPRkCbA9qMgsLoT69n2PzG83kjUDrn4FiOUp/PXQn6uGHBI44TiCGlRFhxmXXpMY
 FhOv0htZPeQXhtaabWHFOMs7KchhEwj2bxXiMGxyxlbXh3SmKARbQkTSMe9mMMvpUSVpCchFn
 BQsnH/yLY/JxyKpMVv24D5I4nWjkUSv7AguD6WmH9PCqpq35aIBkiCZOGr244YyQ8xW2VWhCQ
 CHlenZjoB2gTrMPLTsvrdxKY9mSkZ0uKMc66m8IwVfrtjd+9nxJuZDwuNYxfQZTCHWSapvQYL
 MKNlL9QNG1L/cNwQ2E/wBWlsMdE5NahZLkxhCVLJeMOltg2YSVQaCojO5z9jZJKirBlFBlEsk
 paHJnN+EZAa7LS0iNpG9Z/BQe/VQVB2LRlv72qw14wQAVtDvD7b+5A9udz64PWJiRlOLToj9x
 6Jv8K2XmeWGXzGdOWNn4G8Hh23nPl49rw7tJOvCg41d3GJmNIiDYC8bhwoMkW4kEs78qkWGsi
 IutT6/bsI2XVGJG0ltx2RBZY3z4a8YfDCVc1sK2L2NP3CGktLn5IfE0GidOKXwbL5FyJf+8eh
 VU+rbU5eHUrukmPYYALdsvrqeXJJqOTOGashMbHZLyFhcTLqZU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_025250_178581_57DEE1C0 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 linux-efi <linux-efi@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 gregkh <gregkh@linuxfoundation.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Jason Wang <jasowang@redhat.com>, Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, Marc Zyngier <maz@kernel.org>,
 Andy Whitcroft <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 KY Srinivasan <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 1:16 AM Michael Kelley <mikelley@microsoft.com> wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> > On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> wrote:
> > >
> > > Add ARM64-specific code to set up and handle the interrupts
> > > generated by Hyper-V for VMbus messages and for stimer expiration.
> > >
> > > This code is architecture dependent and is mostly driven by
> > > architecture independent code in the VMbus driver and the
> > > Hyper-V timer clocksource driver.
> > >
> > > This code is built only when CONFIG_HYPERV is enabled.
> > >
> > > Signed-off-by: Michael Kelley <mikelley@microsoft.com>
> >
> > This looks like it should be a nested irqchip driver instead, so your
> > device drivers can use the normal request_irq() functions etc.
> >
> > Is anything preventing you from doing that? If so, please describe
> > that in the changelog and in a comment in the driver.
> >
>
> As mentioned in my reply on Patch 1, Hyper-V offers a limited synthetic
> interrupt controller managed by Linux code that's been around the last
> 10 years on the x86 side.   For reasons that pre-date me, it was not written
> as an irqchip driver.

I think the reason is just that 10 years ago, we did not have the concept
of irqchips as device drivers.

> Modulo the small routines you see in this patch, the code is architecture
> independent, and it seems we ought to keep the high degree of commonality.
> Re-architecting the arch independent code to model as an irqchip driver seems
> to carry some risk to the x86 side that has a lot of real-world usage today, but
> I'll take a look and see what the risks look like and if it adds any clarity.

How many drivers link against the custom interface? If it's less than 10,
making it a real driver is probably not too hard to do.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
