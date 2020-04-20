Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFA71B0FC2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCrz7G/7X5r6cgxYS/XigfYTt8sfUgtNF0JDu7IxnYg=; b=qYim+SEFRvydqw
	CvmGZPS0cQTxEoZa7XcliDkyW5vwQdnrIWHfW6aVP4mnanEWJudNEqj/anFV/ZPip4u1l1ryR0DD3
	PsR9odfQxJ07EXZHSdsu40u4/d7whHCa6CAzAFEWgaqXJ7aBOXaveQ36IhZ+gZ6GbxPpJ4y286zrx
	mDxj2CdxORLI2lbOzw9ZcyfTCIodNHa+Xft9Iy2NSRNP13kHooekj8jrItCI1MweTBFSf91lNQDAW
	mjaF5YU3sSIrTDS4TwG1U+Xf9XB6AeAAsevdRC9W/9VnLC9mpnWnvfpjOI+xPLU2p/Ace21RvlSix
	Ep+PKRD7siU0H9ZFnJBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYBD-0003fV-8g; Mon, 20 Apr 2020 15:17:51 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYB4-0003ds-ID
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:17:44 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M91Tq-1jLa5s1itS-0066Jz for <linux-arm-kernel@lists.infradead.org>; Mon,
 20 Apr 2020 17:17:38 +0200
Received: by mail-qt1-f171.google.com with SMTP id n20so2488189qtp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 08:17:38 -0700 (PDT)
X-Gm-Message-State: AGi0Pub9RG2fRfwxxRohhtgFjlru1syrZNBVZnwh4c2ZyWwiHpT6gwWg
 534ERMH18A2S44LFJAckZdSf8AW1P9RQAIwr+uQ=
X-Google-Smtp-Source: APiQypIZpcbpVguGnPVp2wcc994cFV0BoBRFUnMkzk8Awyyhz/lIgecL9i9/JcHFcxSM2GnbEmja+3MHVnQ4/GLwybU=
X-Received: by 2002:ac8:2bce:: with SMTP id n14mr5661013qtn.18.1587395857124; 
 Mon, 20 Apr 2020 08:17:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-2-robh@kernel.org>
In-Reply-To: <20200419170810.5738-2-robh@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 20 Apr 2020 17:17:20 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2bjyBDHnOVv2NwFA_wZvtH6O8R9godAg8zE3HpFe75ww@mail.gmail.com>
Message-ID: <CAK8P3a2bjyBDHnOVv2NwFA_wZvtH6O8R9godAg8zE3HpFe75ww@mail.gmail.com>
Subject: Re: [PATCH 01/17] ARM: vexpress: Move vexpress_flags_set() into arch
 code
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:zU8+kqWxtVz2TPZd0tuC+a4nVkdm9GHJnDysf9bM22gvtcXWPk9
 eDRg5kO5KYfZFafY/dklublXnrHcGiz7IAmTH+GuJTmJWKrwvNFz7NSKIzVX2lNOsVr1dmZ
 LY91umxRo6pThSRzTIkLWp8M5HxO7ZcjuKGogmSPZm+SHIVoj6aANmRmJ0ZbmEc6vvLc3vN
 eclOE1JQ1XVRD8I7+J3bg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:K/HUIwnrMB8=:wdKOGtxnv3GK8/5Pd/uops
 id7Nnt0hl2ewBYPSXkte2xlLwakMgdGfh1q9pl3cDRmvnV+E60hyXRvS1PlSyCOMGhGUS44mp
 Zug5lay0LKw41Nu0UOSu+PmZC4KlTokgNQ9TnMJMatY71ChwLg5YviieiUpVwiDzQAUlx4bes
 zd8Hb1MXeiSRaSzjUum8xxMKtO3Qn3lyscIXaMMtIDGPJrIbrsVcZczDqgcUnwOZb8oObn9F0
 a8n8DA0NRI6iJ6fsyevr+LotnJvWRdHjLeBg+/ukd8AZiatbtrNvHOpFrG1i4rN3CG5g8Mex2
 oiHUY4AuP2PDrONaGsitG7s9Py/xj6vd3BmS45TQTV5mDN+qRVZ3d8uJT0OEcXYuhVgAMCfo1
 aHpO1LhlgBPpNJ2NWdHpHAyEaqBoYSiVTEzoe/I4T6hr5+mGEbfjlC6VuGuF8FJ8TmmtztOPU
 00S4t3c+1lxUMzKShHSNRvZDZoVyX9TPWj9FOGAOrwFoxi7Pr5ePr/oICJpm4ZLSiBqIT4WXy
 7HvyKRBF4m3Qj818si/2S13qkwS702kEZeIkbywsbQ+jK/0lQxdVVZd5SjXrBV6g7GQXRy2Pl
 9NypoMmuZhO1cT5n21XkLcjNyH8qQXBKQA4w8pVKZajl9dzxvnhbdv6zh2eDQVwiDO+L9zPNE
 Jgv1UhgygCrKunJSFfxefmPJkOrkiLhuZJ4MWPUuTtjNlPwt1Np6+rOgvPlY26zlQHlo8JLR5
 2Cv8Kxc8z9d5uL5BAS8H3mKjlVOTiax+UP+jdgaB3batzGZBrZZ/YWoa31g4na+ki5hZ5jU3M
 SXln4GhDFn2zxieZ7v0aLVwxqKj87KuJEsAfozeOfTliFpQ+gs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_081742_890659_E64BC151 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will@kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:
>
> vexpress_flags_set() is only used by the platform SMP related code and
> has nothing to do with the vexpress-sysreg MFD driver other than both
> access the same h/w block. It's also only needed for 32-bit systems and
> must be built-in for them. Let's move vexpress_flags_set() closer to
> where it is being used. This will allow for vexpress-sysreg to be built
> as a module.
>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
