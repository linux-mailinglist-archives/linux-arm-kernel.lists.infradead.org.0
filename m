Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A0D1D5F6F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 09:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LNBJsHQsOi/kRVwLvu7zdluatQh616sVf1ZnNp7/ws=; b=ufJ0prsa8ndLW/
	roWnsiFKcpDuEwtkIWFMPxEtqUvnPbfkM1WkeGWMqwS/HVNAxdqE5HCXAqs7rfhjpR8YoBhrB4Nqy
	22BiqqqvEg26PAjeZQCuegGDZ0IQuxID4ddnfJ6lAnmq8TVYsB/+gyV0NkYlM+xVVrrvFoKZaVfV1
	FDU7s5ngKCJTTff/DbBtnUWbxSMFIQdNjG37x6LmygQ4Z6a7wPTzRcAKb2Ce778UWHlH9liejNDMj
	nq9fqLtauPEfA4nMpfP1N/l8w1HPLfE9RX6cuEtVK9nfGnC+c2EzEmOkYD9Ui8WybmVsOry398iUR
	+bYWTPX0YeNVXidqt9zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZrMx-0008LK-Ew; Sat, 16 May 2020 07:36:27 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZrMr-0008Km-7S
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 07:36:22 +0000
Received: from mail-qk1-f175.google.com ([209.85.222.175]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MNccf-1jk5gr3G4x-00P8EB for <linux-arm-kernel@lists.infradead.org>; Sat,
 16 May 2020 09:36:14 +0200
Received: by mail-qk1-f175.google.com with SMTP id r187so2178062qkf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 May 2020 00:36:14 -0700 (PDT)
X-Gm-Message-State: AOAM531FE7fnXVaxblAAchyZPJqUvM2jwBXg8w4JR5amqk0QdZv2eUQx
 454Xug6TeOpEIrcNGmlFsZrL9Wdz3V+aEK/qEFs=
X-Google-Smtp-Source: ABdhPJyMrjMOuEc9sNvAXnl1ziOiZoU4A71ucLrpRtJfpiM8Jgu2Ps5nTqWutNIrq0xkjgxG54pyT9byzsyIwkSCUJE=
X-Received: by 2002:a37:c96:: with SMTP id 144mr7046057qkm.138.1589614573331; 
 Sat, 16 May 2020 00:36:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200504091018.GA24897@afzalpc>
 <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
 <20200511142113.GA31707@afzalpc>
 <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
 <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
 <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514133545.GA5020@afzalpc>
 <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
 <20200516060624.GA6371@afzalpc>
In-Reply-To: <20200516060624.GA6371@afzalpc>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 16 May 2020 09:35:57 +0200
X-Gmail-Original-Message-ID: <CAK8P3a01FYoWY9sZKU1q=UQ3ut4srwXXUeGRzW6APi+GpoKo1w@mail.gmail.com>
Message-ID: <CAK8P3a01FYoWY9sZKU1q=UQ3ut4srwXXUeGRzW6APi+GpoKo1w@mail.gmail.com>
Subject: Re: ARM: static kernel in vmalloc space
To: afzal mohammed <afzal.mohd.ma@gmail.com>
X-Provags-ID: V03:K1:q4PncB572VUMuS/m4oWP/QI5r6AgbrNiwcMO+FVQuSB6holm9fx
 FL2aJWW9Cdy7qhJdEYby8L99NZZCYWOVxZ4OrjliKqPjz83vrE1qyzezJCnsbiIzgSsynf0
 bu/SG3fyflxPDxM39bw0XmEn0PszLk0svyI80Loxzi2SXX1juMgPUDbpl6T4N8YokxG18oI
 a94dEexC17ytPQTFsDOKA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WXyY2scpQno=:8P2TRlgLrdOmR0XOByWkuT
 LOdBhzWUvJZ+RUG7JOCHQJE4ViChTqmGdcazeuUpryiz/hByCYu2eT2/Sr+tKoJNloyX6+zs3
 gozOcQx53KIlxDjypceoSLMROBmYV9d65QB5inU+eTqggzE/pW7vtT56QRw/JEBZX7+TMkZpN
 pYxDcUqIsKCqKiHS8zkCbqg0TTgNNM18YewI7Zr7bUcPB9IYVG0kxV/yNY7YASwON+DNZePn8
 SMzzJJBQXCTTZv1cm+7WHKqlyqVMKueoM/eTYiauDbCHwr/EYAuVFzDSqjixwZ7yIzk+Xph4f
 KZzmpHP/6/7MMKFI6IKJfmtpS7C3SffMxcK/Iw6eajubfkfAM6UoWp3uD9HyJtq64t7stQKhY
 fpl8RzIi9QrkjZMTejOTwEVM82G9gSkcNNDzf9RFVkJdAcTtn3o1jFAAnspccEFl57zLAHhtd
 G6IzRi8xYvEvGZXjRXsKBJB2P63HXfKwVUhrZhxrTi19A2vqizG2v8gO7DoT5gADGOjC7kGMU
 DX5UkepMh2BezWKHc5VDqBID17VRZjOvJpPhSB61Fu9mXkbL4oWDw4K9y9twQEeYbK5Gc6fnw
 OxUdRF8wWkAfjMXHxmm8QWWeCOfnbkT4nbc+6SWn49RruUeZhE/mghwzFFLnfiifi88NFWg7g
 Y8uQTVX/aITRM28wJzr1DvPT3i5vZbOEaKSOwDGXaucEFzD/XLrlWYiaz8mojj3w/P/i75ta/
 MCoUJGz9v/lPu98HBGDMCf/Zv+hl0RbnMKv0I/h2OcK2CkNiXLy7rI8rVg3f0WwD6r4RyQavh
 axEkFJLoPSRQ0h04slASWMsdHSPNAVKTTrQKHMTVdH2FSTYWpc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_003621_560422_24B071BB 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 16, 2020 at 8:06 AM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
>
> On Thu, May 14, 2020 at 05:32:41PM +0200, Arnd Bergmann wrote:
>
> > Typical distros currently offer two kernels, with and without LPAE,
> > and they probably don't want to add a third one for LPAE with
> > either highmem or vmsplit-4g-4g. Having extra user address
> > space and more lowmem is both going to help users that
> > still have 8GB configurations.
>
> Okay, so the conclusion i take is,
>
> 1. VMSPLIT 4G/4G have to live alongside highmem
> 2. For user space copy, do pinning followed by kmap

Right, though kmap_atomic() should be sufficient here
because it is always a short-lived mapping.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
