Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E78D26675
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 17:01:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yn8Ol0Hx5ImWtEIB9g077DwW9cJvb+ewdxbfzdGdgCE=; b=kElezfIgv27ksl
	Bnj+4uYseMqIFjUDraKwM+FcCFUZ0mf7dI4zkE0hoo9vyBfwyEp4PFs41fS/zVixAACCJLJVhpbGz
	EBbm6MvdgKVUtQZ3eUqLN01myowJ4UksWMSJMoE42ok7UY1HIbDfS4ZlSBJFbUbdi7hYRQbp7PeqH
	ROanQgjhqezVzXQWk33B7bVNYgC5hmJ23UuWzakqQ/8TgPUoyAJtsnWzpr2+4YGOn2bO2TC9OxK3i
	Ozg2CIrAaSm1xikHdjz+4QA80UH8l5aJ1oFSFged0vbvEHgXyM3WYCChq4tDvbNfDimSAOyY55vyx
	mFSQSPweFawR5U1TIRMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTSk6-0002gD-9q; Wed, 22 May 2019 15:01:22 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTSjk-0002eX-UC
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 15:01:02 +0000
Received: by mail-it1-x143.google.com with SMTP id i63so3544975ita.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 08:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aIzrHS5nLBf6pyiovGTr1aWzg7NgzfwfpU/6nbGyolg=;
 b=BD7xcKs/duZRRzHLDo7wNqdwMY5oXP4NZBypwS3LAI+SZ5LXCAKS+P8gltfDeN2Qrz
 b4aAFqqRLy8Fx6zEai6NLkMqEbHB6GZwyk/B78K1P90RWGGGEdSAf8AwfOWAmqD2GUG2
 NVzhGGXUk8xIoP4ns9cfeY5FYVPGpisQDXX6yD9Ot+rJ98osYrBokKhdIRUIoo5v7/H7
 o3reQpJtdq9u47s5xyOEiY0DYIyeMtZ27dajDF1bRZEWM0HnU+wmhjr3XTIQngUAasHz
 9lrOLvNjoopihTQJW2j3MRX2LqH1C1gz/MqRJH8SwC37noIL5bqhqK2+VcQG3KWnmsm2
 RklA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aIzrHS5nLBf6pyiovGTr1aWzg7NgzfwfpU/6nbGyolg=;
 b=j7vT1C6ZeFTjSTxXc1QhBxJ8ZCz4S7sCjVKh4KuRceN0uWenjRRehskxzOfO+eMz10
 c7X39kgMnVqeeRjCU0dRyj2ox/L8Qoc7CNJSsvZDUAkoR3tCIkScAeHn1rtZ2BP/Py0M
 h+ulbZQgPpbda94ehOzA5l9gV40a5Wx/BJ1RKY6tadjlbGjOPIq6bCR4Ye/zRoeU0SGk
 xxdU85LG7V9CYg+3QSexC2h/+1eSegA5+R6gqxvEcKn0cJVxGdFAFukxBh38fYOZPLMG
 NLnOEngqwnMPhpluN5LHKsy/mw6udd16HTln6KS4nnAXLCPY/t2Po3erCYWAbuv/Q5yl
 /vKg==
X-Gm-Message-State: APjAAAXzpPHTo56jX46IorRrgYB1aIIeguQO8xyNXA6q93AKslVR4xUq
 VBhqvcfxbuJMRddZCX2285ElNwda3DtRqfIKaHQ=
X-Google-Smtp-Source: APXvYqx4KcQotZMs/inGYcNvV6GW292VABI1Mzl46kBHGTl2TiKpifmJH/NUoivR+MQ5OQKRcC5GMJ9EwzfY5wRbIl0=
X-Received: by 2002:a24:91d2:: with SMTP id i201mr9261893ite.88.1558537259711; 
 Wed, 22 May 2019 08:00:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190409120908.12079-1-alexandre.belloni@bootlin.com>
 <efaaff85-ac39-f0e2-e042-7d6fd0c59054@zaltys.org>
In-Reply-To: <efaaff85-ac39-f0e2-e042-7d6fd0c59054@zaltys.org>
From: Sylvain Lemieux <slemieux.tyco@gmail.com>
Date: Wed, 22 May 2019 11:00:48 -0400
Message-ID: <CA+rxa6qJDEvg6wCuaLo4yhqa6uZ45rKXcbGwE_XnWkjy2j9YAA@mail.gmail.com>
Subject: Re: [PATCH 0/5] usb: gadget: udc: lpc32xx: add stotg04 phy support
To: James Grant <jamesg@zaltys.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_080100_996651_96BC5D27 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slemieux.tyco[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Felipe Balbi <balbi@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

You can add my "Acked-by" on the 5 patches.
Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>

On Mon, May 13, 2019 at 7:32 AM James Grant <jamesg@zaltys.org> wrote:
>
> Tested with a board containing LPC3250 SOC and STOTG04 PHY by using
> serial gadget.
>
> Needed patch "[PATCH] usb: gadget: udc: lpc32xx: allocate descriptor
> with GFP_ATOMIC" also.
>
> Tested-by: James Grant <jamesg@zaltys.org>
>
> Regards,
> James Grant.
>
> On 09/04/2019 14:09, Alexandre Belloni Wrote:
> > Hi,
> >
> > This series starts to clean up the lpc32xx udc driver and also repairs
> > interrupt handling so hotplugging actually works. The design I tested
> > that on uses an stotg04 instead of the usual isp1301 so support for that
> > is also added.
> >
> > A bit more work is needed to get the RNDIS gadget driver to work.
> >
> > Alexandre Belloni (5):
> >    usb: gadget: udc: lpc32xx: simplify probe
> >    usb: gadget: udc: lpc32xx: simplify vbus handling
> >    usb: gadget: udc: lpc32xx: properly setup phy interrupts
> >    usb: gadget: udc: lpc32xx: add support for stotg04 phy
> >    usb: gadget: udc: lpc32xx: rework interrupt handling
> >
> >   drivers/usb/gadget/udc/lpc32xx_udc.c | 167 +++++++++++----------------
> >   1 file changed, 66 insertions(+), 101 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
