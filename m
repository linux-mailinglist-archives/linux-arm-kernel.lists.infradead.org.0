Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0FB1AB412
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 01:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3sxoUG3LoH5C9YSSckAvg7bY+fzmKC55tqoG2+S8Z2w=; b=pEpM1dWu1V0Eb0
	Ag6upjN/makRJ2XKHUomJ6hvQVvBDKNcjHltJrNi/3oYEZvpgFFgn/rLJTVRPcfH8IQbZD34k0Zn1
	IdpR4zfwqmdWrKO54Rt35//L+1I3NwIoWWZWsT0ad77KtLj4OuhONrF/b1JTQOpQetMhgf4RJGrk2
	x1fOCkh26eyLUDmH/42UdCxPAK1NdN5KZJHlnvmcfRjYtBuhUJRMm/EJqiK3H1PFY4AmR6gXlmWop
	Y/mEG35dIt3O+/LxkwQZuiDP+TMt1xmSFP62waYXKNTFRjbpihuEDrxpqi+uDYHipxtjAI5kADAL8
	GxnPM/+j+091HOF7aR8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOrCm-0001GR-NU; Wed, 15 Apr 2020 23:12:28 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOrCe-0001Fq-Fe; Wed, 15 Apr 2020 23:12:22 +0000
Received: by mail-pj1-x1044.google.com with SMTP id q16so467234pje.1;
 Wed, 15 Apr 2020 16:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=F4xy1ePNo4/sZnGsQ3y2Wap+w9rXMc+z0VuLe1xlqjQ=;
 b=jbf+wIu44k/DfZ3pl3RN+n8kY8thZUYIw2Ipq5qKiQqOd/un49pRkXwqToVPR3gfGM
 5lzD4YNJtHJ0TGIWKmkezhGKrohuQUNdMiKAzjgH4WQ0s5uhMDPh+7VtzTnU6ZF7LMYL
 AArC6zrxH/IvRd+ZEHod9VC+ODN/CPXgaHPQj7INdhHFYuBjxAOOaGhNwOV7dUpyS2qz
 vvderTdPOUm401Bji072y+qFP0V/DdRRmegOHp2CObNYas3awA3FjgTC3n2QM+RjU7d1
 sW2K1ZtsER7ExRKQfhhSylNPe65vHzYtoQLWVx1cmcLnuRLqHO/Y05+1qQq5GFHPRxgI
 KZGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=F4xy1ePNo4/sZnGsQ3y2Wap+w9rXMc+z0VuLe1xlqjQ=;
 b=A+XpXVTgd39a0oKxerFoV1V8kRtqAAJz+g1sIR4hcw/coe7EUXI826UaK/CkBvMBpL
 briFysuNi+/MHC8tJtizxmmt6xj2L09LQf69DXLu0kOsgA8osrS8BmKaJwBEN46OrGPI
 IF5sVilxLK/0FCAqICfhgby8DEyLGUBi9CTFWfn2FJF0y+6WIzOuWgmnCssikZgl8pBu
 sRHJk1awEohXyiRIhTbM0Md6OaiqPN0wP63QYNTn18eUBMG4zIdcH37ehgKtTz0vLUE9
 aZ0KlfQ4i9wXWq/UEwFRaNrKYVUzsAx8/wNH3vNR2bh6hMpvgHXuYPgDRDmhzeA43RDD
 BMtA==
X-Gm-Message-State: AGi0PubH1bRlykCg2K35+2Jw7JaWA9rdaNP4yjEib8aQGIoDdc/xvX9L
 uWo+7vgKNBitN4E4NrDlvZg=
X-Google-Smtp-Source: APiQypIYdvm0Liaxe68090I5H87tFeGCrKfeq9nu/dduUJbnTStMnEQZdx4m1HvArqBCM2DSzI/AIA==
X-Received: by 2002:a17:902:7289:: with SMTP id
 d9mr6991775pll.49.1586992337834; 
 Wed, 15 Apr 2020 16:12:17 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id l71sm9190804pge.3.2020.04.15.16.12.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 Apr 2020 16:12:17 -0700 (PDT)
Date: Wed, 15 Apr 2020 16:12:15 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Julius Werner <jwerner@chromium.org>
Subject: Re: [PATCH v2 0/2] Add a watchdog driver that uses ARM Secure
 Monitor Calls.
Message-ID: <20200415231215.GA182398@roeck-us.net>
References: <20200403052900.258855-1-evanbenn@chromium.org>
 <CAKz_xw0gV+w_gMkLfB4qUBdULLfFoiv1TBWp9_PHy33wP_XWyA@mail.gmail.com>
 <890948ef-7276-fdae-d270-eb30eff3eab2@amlogic.com>
 <243e107c-35c1-2d14-5285-c9e13744963c@amlogic.com>
 <CAODwPW9RSB37+4EJ2QXAwz=ShFB23L1GKC2mLYE5L5JuQR2tPw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAODwPW9RSB37+4EJ2QXAwz=ShFB23L1GKC2mLYE5L5JuQR2tPw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_161220_546213_1B75DC32 
X-CRM114-Status: GOOD (  20.55  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Yonghui Yu <yonghui.yu@amlogic.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Will Deacon <will@kernel.org>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Rob Herring <robh@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Evan Benn <evanbenn@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 03:29:29PM -0700, Julius Werner wrote:
> > In addition, It looks more reasonable to use the "msec" as the unit of
> > timeout parameter for the ATF fw interface with SMCWD_SET_TIMEOUT:
> >
> > - The fw interface will compatible with the uboot generic watchdog
> > interface at [0], and there is no need to convert timeout from msec
> > to sec.
> 
> I think we're trying hard to keep this compatible to a Trusted
> Firmware counterpart that we have already shipped, so we would prefer
> to keep it at seconds if possible. That's what the Linux watchdog core
> uses as well after all, so it just seems natural. I don't really see
> how what U-Boot does would have anything to do with this.
> 
> > - Some vendor's watchdog may be not support the "wdt_trigger_reset"
> > reset operation, but they can use the method below to reset the system
> > by the watchdog right now.
> >
> > watchdog_set_time(1);  //1ms
> > watchdog_enable();
> 
> They can still do that but they should do that on the Trusted Firmware
> side. Emulating a missing reset functionality should be handled by the
> hardware abstraction layer (in this case Trusted Firmware), not at the
> Linux API level. So Linux would still send a PSCI_SYSTEM_RESET SMC,
> but then Trusted Firmware can choose to implement that by setting the
> watchdog to the smallest possible timeout (which it can because it's
> accessing it directly, not through this SMC interface) and letting it
> expire.

I agree. Using a watchdog to implement reset functionality is always a
means of last resort and should be avoided if possible.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
