Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D87A7181B41
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 15:32:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LdtsBGDoJdn6dj4paPAgFfs/SztVBCmMx/IqdwPhDUs=; b=hnHA1myFUr2/M0
	ohIw8AjMnuDA0cAxOeYuQ75KxkvWk3FyqUA3qms7Cv5RTTgRMsDAIYXnPAAgCSRJtk+DTTjy5Enk1
	rSOUaPFZxOrN4TVzqK/e6/U8oXSxc1x9oEIEJmgqEhHIliKyT8ioEEExzMf2I6ZsKrUKOf7e6QUcD
	6M4SQ9yF+k+c1dGXEaUyFwkgP9ZkWr0gMWgWpEAC7echVPk6bn/CV5sDLmGq8cA8af5Iy/MzHiYJm
	MpGu5dUomz0jxi4CqdkcQLyt+NfIyEFZnDblR+bZJY6FLMNxLrXov5Q2pgt+EvPFNC8bmxg4vKpLs
	iCxyevU+abeHspt/BFvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC2Op-0007ec-H4; Wed, 11 Mar 2020 14:31:55 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2Og-0007dx-6S
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 14:31:47 +0000
Received: from mail-qv1-f53.google.com ([209.85.219.53]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MLAZe-1iuux51ppa-00IFVr for <linux-arm-kernel@lists.infradead.org>; Wed,
 11 Mar 2020 15:31:41 +0100
Received: by mail-qv1-f53.google.com with SMTP id du17so936633qvb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 07:31:41 -0700 (PDT)
X-Gm-Message-State: ANhLgQ35gttT1LzfkYGJXHF9gLdbDUHIU1ccmvZCWlh78jbTEfl1TtWw
 YIzgkWWwMNnIdk+wZlVdUB8WkRv17Wyc45+MHxw=
X-Google-Smtp-Source: ADFU+vs7vsHRRk5DF+sIH0AM5qI2NZuKa/my/Rqt4Fil9rQRSzu8NXrbadx7Co2qeP3BJvqRxzROzp3/R4yRw9+b1xg=
X-Received: by 2002:ad4:52eb:: with SMTP id p11mr2880124qvu.211.1583937100255; 
 Wed, 11 Mar 2020 07:31:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200311112120.30890-1-zhang.lyra@gmail.com>
In-Reply-To: <20200311112120.30890-1-zhang.lyra@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 11 Mar 2020 15:31:24 +0100
X-Gmail-Original-Message-ID: <CAK8P3a12iN4HzN3HsRSBJPLpwJzdVwhrK7Mje0V6eW3Lvd77iw@mail.gmail.com>
Message-ID: <CAK8P3a12iN4HzN3HsRSBJPLpwJzdVwhrK7Mje0V6eW3Lvd77iw@mail.gmail.com>
Subject: Re: [RESEND PATCH] arm64: dts: specify console via command line
To: Chunyan Zhang <zhang.lyra@gmail.com>
X-Provags-ID: V03:K1:+Dz7NY5sydY2G/O3gzVwVoD8OQkGdfjysTz0b88lu/hjla3SGpq
 i0gzqmjuuVNDbQR2y/zQkbiWoAgvxmZRwnPcNN0tdyNCIQz6Ione352tzHeAF8wHLfc1EJK
 FzIhdl5HMTVRZPnJRR50UWa57H/M9TQRsqgggFqMhAfKBUnfyvVACac5FIY/UtGF91ZZVb3
 LAbXSZPNtj0BVTswlbDIA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vdu8ITmBXiw=:duJM/fT8KYoQahXy7kz6+W
 NgsiuDjBHEBYXuVM8Y7/R8ACJn0eEBdFNbcYBus+GA75UOoIEwSFAD5f5qSrANmX8RxrtCYp5
 mR/0ePYiye4ZT3OdBlzMQzi05KWa+AiwH0x66n7VUrJY4+w1JpnqNWG/hj/gSSkVwy5k76TqO
 VqQvZ/RemGCmsAcFyIIeYhcOIcyZ8PXCRXWevhXYF91wcGblY9sZBaNJfyVSzOdXqN+ocV4Vb
 QlF833lWC/PUxZprimwy7y4lYUWk77POVdNZorNqp7mQYE86wmBmExMtylr25ggprteguHocP
 lvUilFm1cPeQyWQHErqAp2NBnZAnaLdv7aJpj4v9PTJSBpdwns59W0lnl4bcNqUrWmUKSl800
 kQ17vqSvZbxiQ7AkYQesQF59+uPw+O1ziPG12BsPsbbgPtyu8/kbvwNMxjW2o3hpL+ruN2Yhq
 fjxx4vbBQ7ilCEvLK8O2+Aedd5gEbfxRaT/gyLA1bOIJ1yNhqMxxxqZx/G5uOlq8sfvtZYMl4
 rZnKrV/LA+sHf8XSS0S75GQu6+OPcBMti49fIMCO1KgjVYf0gGtfJG/ix3qEiLfoVZv7775WI
 nqsc7QWHDROFEy1n82ceVonpUYWnutwDzmYh9VrQ79WUxxdBLrmM+Z7XceHW+yA9rnmqnhk0d
 uzwBnzjk3UOLNROpVdSGJmAdloHbmdifRPC380LKOgw+eOqzSoI1NFXXVak1pd5kQFoPHB2R4
 aTTPODwyMfSFolanau9jXv1bHF3XJBcWhePzqRdGHLFILMtqG25xE5ezy5u+zYROIlu6UPerj
 yswBEE+nLFiOaVhQZLCbUK4yVy1hk8BoEjAH19cTLjPCRrGUAE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_073146_523149_793795BE 
X-CRM114-Status: GOOD (  12.08  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chunyan Zhang <chunyan.zhang@unisoc.com>, SoC Team <soc@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Baolin Wang <baolin.wang7@gmail.com>,
 Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 12:21 PM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
>

> diff --git a/arch/arm64/boot/dts/sprd/sp9863a-1h10.dts b/arch/arm64/boot/dts/sprd/sp9863a-1h10.dts
> index 2047f7a74265..510f65f4d8b8 100644
> --- a/arch/arm64/boot/dts/sprd/sp9863a-1h10.dts
> +++ b/arch/arm64/boot/dts/sprd/sp9863a-1h10.dts
> @@ -28,7 +28,7 @@
>
>         chosen {
>                 stdout-path = "serial1:115200n8";
> -               bootargs = "earlycon";
> +               bootargs = "earlycon console=ttyS1";
>         };
>  };

Hi Chunyan,

I would expect that you need to either specify the stdout-path, or the console=
kernel parameter, but not both.

If earlycon was used, shouldn't the driver know which port is the console?

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
