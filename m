Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4E4179E88
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 05:08:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvIg7g9Lea8OpKycml+ZpfcfRNhq9tBBOBhga4QUE2g=; b=tcHhUOxPjzGI8i
	oGkLQfTD1HSHbj2DTQe+J/mIZAZCEuifyieErcDvbhai5TvbJk3WPIBAAiBbmfZsAsNpfUMAN+AmK
	Ox7aWmoZyriTz4ik/NeBaN/2trzbm3SRsCJlBzbB7Bo7vDHe3tfy0RbppEy7921JqDXNZryaCMu/k
	omWlBVtRixy3nMbIYfAZbt6j/nZSd+q/fPXQrBZv8KNyYv9lrCyLoK393Oy4tde+1ayx3DHcOmewn
	TJX6gHJOH1RRxfRw9y2KxQFtuPUimIbXqSb8rjZxtrbGjgDNSo5+L2WXfG/5Kw2Bxi/JVuCtTBkDb
	a2iiOYCaOgAUgBOvRnWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9hns-00031H-Ee; Thu, 05 Mar 2020 04:08:08 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9hni-0002zY-0I
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 04:08:00 +0000
Received: by mail-io1-xd44.google.com with SMTP id z190so4984746iof.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 20:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sv3uK9xf9C73dIUI1DIkkaJoGRZu2pQVCfWVV2VChWM=;
 b=kNehVANOiC52TvRUHxr1c+SmzU4+JpRUKLnGjZb+owOiqvsB0jHvTv7UUiKP/0cU2O
 9KifuJ+OCTkwtSK1bhGAOr5+O6pzbu7hKlGZUXqRc69oox5bxLw8ctBVVBJyFHdHn6/0
 VDs2GNnTv20EXmUSvzYlk2RVQEvNnupggtKdWvg7EzbiRd7Q3+nfENYp5+yERMxGQb2f
 osKIW7KDLRnk8Ipn0RH2pvfI4YKQn1+f9wc3C3Yv5b0ysJtoyESylO2WPV0kix64fA6z
 Xi1V22tPhf+o8Zi785JUP9/VQgsN7vwpEQAb6sCpG4cZKI+Z+NRrA66z9ZQIz1ZDffO1
 bz0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sv3uK9xf9C73dIUI1DIkkaJoGRZu2pQVCfWVV2VChWM=;
 b=HCfDldG/qfYIm9XuaYotnTsK28bmaY8yZ77sQt7/63PWf/R21+hBeeDInKwMa58rsl
 beCrlSeJzEu4flZd74x+3JD2HM7s+sjgQziaGRPACvV6oNFvukZia6lTsp3LKk9HGZdC
 sadGcT5oA/gIw0zXyxDjLLXjBErPdHwd+pFk8IInDfP+Sxuh2JX8AyLvl3igFceI097+
 WjmTe7GaslhjcOg4f1Gl7r5cM6oVkhwZDOv245C+KgbEeXewo8np9zx0o7orLHZ8T27E
 c/zesPKMtcJS3FdgYXuy4pXQn01MYRXTCuf4rSp7JSERtxGYp11N54YQju/uPW5e64C5
 1kbg==
X-Gm-Message-State: ANhLgQ39Te5Lg2i3jckIg3IWAYmjMKidIGoKoiOYu5Y6R6Fxmadha9CU
 +HXr9RKogG24NpqgVoeS+UgQ+OHvZqTFd5/qZTk=
X-Google-Smtp-Source: ADFU+vt9uyjUN8gULjKOUZ6/cN1Ak/LMeyNVMhB2uDZnismRKn3B5kcB03r0UUywSPFnatF2WBQR/Orn5EI8Ifyg1zY=
X-Received: by 2002:a6b:b309:: with SMTP id c9mr5008105iof.6.1583381277010;
 Wed, 04 Mar 2020 20:07:57 -0800 (PST)
MIME-Version: 1.0
References: <20200301212019.2248-1-linux.amoon@gmail.com>
 <20200301212019.2248-2-linux.amoon@gmail.com>
 <20200303094619.GA20181@pi3>
In-Reply-To: <20200303094619.GA20181@pi3>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 5 Mar 2020 09:37:45 +0530
Message-ID: <CANAwSgRxyYsDBX2Cx4w8-U_yEv2KqrzzgTc5oTfwjCFGDgttfw@mail.gmail.com>
Subject: Re: [PATCHv2 1/3] devicetree: bindings: exynos: Add new compatible
 for Exynos5420 dwc3 clocks support
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_200758_066664_E4D956A1 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 devicetree <devicetree@vger.kernel.org>, linux-samsung-soc@vger.kernel.org,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On Tue, 3 Mar 2020 at 15:16, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Sun, Mar 01, 2020 at 09:20:16PM +0000, Anand Moon wrote:
> > This patch adds the new compatible string for Exynos5422 DWC3
> > to support enable/disable of core and suspend clk by DWC3 driver.
> > Also updated the clock names for compatible samsung,exynos5420-dwusb3.
>
> Some time ago I mentioned this... so once more:
> Do not use "This patch adds" but simple "Add".
> https://elixir.bootlin.com/linux/latest/source/Documentation/process/submitting-patches.rst#L151
>

Ok I will keep this in my mind next time I update my patchs.

> Best regards,
> Krzysztof
>

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
