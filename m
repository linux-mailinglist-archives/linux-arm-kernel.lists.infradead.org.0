Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51658135ACF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4fcyKJSigom/CY77Ljqd3j+un1AJdCxpJuDurbJY2EM=; b=GvRv/c0bUgilqR
	/gC0tCBb68RoGu9V2Q+LQTsOMK3MtBycfw6td/HV/qVwBmFsNXktWZsgh5QZCEEZDGHEED+HQUt3v
	li+vGygfsDdN1ulTh3q3cu4hDf8GAuurgpDbx+5HtqZqXPRGAcWXGv7Mq08jTTM/OxQ+oj0w6UyQl
	C81AKHno3Xt0n/63QqdYYZ6S2tgPuVKYe8Yn2iE0lyOBKjPhsEHrEW01rVnY1wujGhg7VKJjJ5In2
	pjTzvqL0sxboEHgm+xlQYkWR6KNZWewbgqSt2Z9ok0rtnSEW0kHMAcmVnzkLVAGpVmEuIcbxYyZzq
	jt7ls/MgY7KOlj1tX2UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYMm-0001Ye-78; Thu, 09 Jan 2020 14:00:52 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYMd-0001Xn-65
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:00:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id d16so7461791wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 06:00:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b8xbfR1e+uIythd38166wCVY5KnjUVf+wZJ6jFWaQhg=;
 b=wQpb3FJkQMvVRdPTLz/ZEeOxsu9Om4MJxR1KRtPYR5JbY+7EuRwAbGeEmQe7twR+fg
 7z5ww8hk7wZpIF52etX2RsjS0jhKsWl5LI+eq9DMciZX0adY4/KfVzkwlsy4veLC9zWH
 1SZwYGAdfy5uLmSn5+uCPz35k9qJcHwtxtTEedlQTUDC2qZx/aquR+9ndc1kmBJfeg1z
 oRLeLE0PvIP82BDJ4f6twG7ILqFJkO9Ze0GkXrVj9x7C998Nce4kZvk8rZBnq9g89Mut
 2IrC6AbyAUuL8Flh2irof4z2acmkGF4Kl0GEE/1Jri6DfibaUPz/pmcUXMYx/PR/BU/m
 XTYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b8xbfR1e+uIythd38166wCVY5KnjUVf+wZJ6jFWaQhg=;
 b=SUkhwBtPXEgldSd+uP40yYz85SiN7BKEOU9eL0hYx4yNXR5zORnp568lZgIdLKoRs8
 8++AHsYmgu4kvYKfwh3yupv87gcnmfGM2USnzfeGQbvfaqMX80IHzfpWwvkwE9q6weYn
 HXKmN2N9izbjcPKm5z/hyZk6giyQeHLgU6q/hRs4pkKZTTKc6zOAkwzXAYaSnPJJ+UwT
 Xam1mhtAiHBwtb3FnkVpFFnWRBMOVx4W/aROmY+SsZEfev8yvBQ+Zeb8zj4uzN1vDTkh
 wavPLUp7ROq7qV0TRCyrw2ATOQR5GdDBNBGBa/Zmt1khXGiK5N1e97nVbCdRY/cukEnh
 6FKQ==
X-Gm-Message-State: APjAAAX9hyJ9QX76XT7ZJGup0BQchnQXyjHfjXAYIrRsa1SLQwRJhBm7
 0IoGC6vO1LqAF9DVUin0GKN/283FgToPJxmjAjiqOw==
X-Google-Smtp-Source: APXvYqxWquiIBHbuG6bV1XMbdGm6bS/RcE2rvYNATF5+D9Tep5mXvc7r+Liq4irXwUqNWK0IilpoNfAGru9LuFbNsFQ=
X-Received: by 2002:adf:cf0a:: with SMTP id o10mr10711881wrj.325.1578578441234; 
 Thu, 09 Jan 2020 06:00:41 -0800 (PST)
MIME-Version: 1.0
References: <20191224044146.232713-1-saravanak@google.com>
 <201912252258.5LQtnCYg%lkp@intel.com>
 <CAGETcx90nkOQXgKWtTSg7SRZCTmH9RQijYsZLP6CWpHCmW1Mxw@mail.gmail.com>
In-Reply-To: <CAGETcx90nkOQXgKWtTSg7SRZCTmH9RQijYsZLP6CWpHCmW1Mxw@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 9 Jan 2020 15:00:30 +0100
Message-ID: <CAKv+Gu_3CGrWwMeP5tWYusD8p99r54KFsK4SvWn3zU=Q8X9jcQ@mail.gmail.com>
Subject: Re: [PATCH v2] efi: arm: defer probe of PCIe backed efifb on DT
 systems
To: Saravana Kannan <saravanak@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_060043_232956_0250AEC2 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Android Kernel Team <kernel-team@android.com>, kbuild-all@lists.01.org,
 kbuild test robot <lkp@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 9 Jan 2020 at 03:23, Saravana Kannan <saravanak@google.com> wrote:
>
> On Wed, Dec 25, 2019 at 6:46 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > Hi Saravana,
> >
> > I love your patch! Yet something to improve:
> >
> > [auto build test ERROR on efi/next]
> > [cannot apply to rockchip/for-next keystone/next arm64/for-next/core arm-soc/for-next shawnguo/for-next clk/clk-next arm/for-next linux-rpi/for-rpi-next at91/at91-next v5.5-rc3 next-20191220]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/Saravana-Kannan/efi-arm-defer-probe-of-PCIe-backed-efifb-on-DT-systems/20191225-182253
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git next
> > config: arm64-alldefconfig (attached as .config)
> > compiler: aarch64-linux-gcc (GCC) 7.5.0
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         GCC_VERSION=7.5.0 make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    drivers/firmware/efi/arm-init.o: In function `efifb_add_links':
> > >> arm-init.c:(.text+0x64): undefined reference to `of_pci_range_parser_init'
> >    arm-init.c:(.text+0x64): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `of_pci_range_parser_init'
> > >> arm-init.c:(.text+0x78): undefined reference to `of_pci_range_parser_one'
> >    arm-init.c:(.text+0x78): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `of_pci_range_parser_one'
>
> Ard,
>
> Not sure what's going on here. of_pci_range_parser_init() and
> of_pci_range_parser_one() has a stub if CONFIG_OF_ADDRESS isn't
> defined. So not sure why the bot is reporting "undefined symbol".
> Thoughts?
>

You'll need a #ifdef CONFIG_PCI somewhere, I guess.

> Also, thoughts on my patch?
>

Looks ok to me, but I haven't had a chance to test it yet.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
