Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A26FADCE7D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1gXqa4FJyOdyPzEuanMiPIwuHX8cwyuQ2gCsKwTq/kw=; b=c8ICisynh0PrwT
	V2vUZb3lCIwuTG4IPuSNH6ki2RUh7fMlD9p/hlu4Ip27J0+fMp4Oo94LhgGHRLbKJPfJQvYOjDkAL
	RTw4YjNGETE/FutDllyfSd8z0/4NwzHlTq9PvXnMaXXTNoDkTeWJ6GM4JfSe20wRaB1heMVeg+oND
	b24XkIZBdwvrwRkTzo1/y4BJIhPfWGnYhPZXykba0kf/vf702QSqz2D1iiYwTcQkVv/lZA7F6DajU
	zdDM/eyFnYZSIBrvmzv+69uxBuyjetJUOG03kfLbF7PkODA8x7qz0dNQsspqjWIzhUkJxHw3xFISp
	9KkjxaMDS8NokEJ0IPQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLXCS-0005ML-9e; Fri, 18 Oct 2019 18:42:08 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLXCI-0005La-Kv
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:41:59 +0000
Received: by mail-il1-x141.google.com with SMTP id a5so6431002ilh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 11:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tJXKGhc1AW/l0WKj0IcIOpG/c9m//aZTCOArzVW/AZw=;
 b=s/JGYncSzqI2bGxfMPGTrEU6YMN+uue1Pn3GVsKkV6CewWE7VwswNVssbghypg2B5r
 O4iy4KgD9IPaIpFP1Uuji4WcIqDJT35onsmfK/8ZfnRxgjJsluFIvQAdyj05RUO4yYWn
 H7HjIFAhkdyk24buc2FvoJdcOydo3D7fY/UyXBLwK5FpIvTu7RbaQzEn9jIHuObUYlp2
 oK487cyGVr2lFBqaJ2ttjFXOGKB7R4lDPOvMCsTCGzqExsRoh+Oo5Uh+Qmlt68zO8QeV
 YbgbC6FAgo6rUOqcP+bIWbmOMvA5jnoaldwbwttz2cDmoOkgNNZ/3xmBk/6q7AYUJ5uy
 PLNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tJXKGhc1AW/l0WKj0IcIOpG/c9m//aZTCOArzVW/AZw=;
 b=qgz6wJAJFfez7SrQR9qhDuqSFm/SUwJl/X/aHibh6Goff8yGCFAqxuS6eySzrRcqNz
 0CES7jrPdE9lJMasAos6C8l9d5JIMFuaUhJ9KSxOvxvL9Th8gGY1Y/EO5v06e9G9xJ/Q
 ruy3bXAwbgjodv08OpcXrqjKzahqNxzwGFNC8oDlJQhTt05qvC6ucs+QWDXUwTgq8ThH
 laWDzCmkaiFH7zadfw7YW6M4b5ock6KHNAyE/l1G1OMmP4nSHgUOplOzOGhd0y9kZcMk
 Wt/3qHMSlsP87Qgt1iTCaFg66wPiadwGWxflSdVFTMPYrNow0PjDwFoEPtEAGnMVedVQ
 KyxA==
X-Gm-Message-State: APjAAAXB3usiBeiDr3vj7VyjuyoIQjS19PBjujmO8qlV3voifHeIoctw
 BOTIbyMVI65B5T2axWVYbP6tE1qLPs2iMmXsDjlM8e0i
X-Google-Smtp-Source: APXvYqzVGnrRdxkCssJMUgVLUGTgfJ2Oe03f70oC9SJo+hLMFSxkpBPACOQ7WecE05oJWVeLVBFKMSyBLSuR6dgWN3A=
X-Received: by 2002:a92:b682:: with SMTP id m2mr11544098ill.64.1571424117434; 
 Fri, 18 Oct 2019 11:41:57 -0700 (PDT)
MIME-Version: 1.0
References: <20191015141945.16067-1-ben.dooks@codethink.co.uk>
In-Reply-To: <20191015141945.16067-1-ben.dooks@codethink.co.uk>
From: Sylvain Lemieux <slemieux.tyco@gmail.com>
Date: Fri, 18 Oct 2019 14:41:46 -0400
Message-ID: <CA+rxa6q3M_o9E95-W5DrtNkzhuuVRBjS74U_TQKLCOde+nG0vw@mail.gmail.com>
Subject: Re: [PATCH] usb: ohci-nxp: fix use of integer as pointer
To: Ben Dooks <ben.dooks@codethink.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_114158_687737_E263B7DA 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slemieux.tyco[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
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
Cc: linux-kernel@lists.codethink.co.uk,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 USB list <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vladimir Zapolskiy <vz@mleia.com>, Alan Stern <stern@rowland.harvard.edu>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 10:19 AM Ben Dooks <ben.dooks@codethink.co.uk> wrote:
>
> The hcd pointer in ohci_hcd_nxp_probe() is
> being initialised with a 0, so fix to NULL to
> avoid the following sparse warning:
>
> drivers/usb/host/ohci-nxp.c:153:31: warning: Using plain integer as NULL pointer
>
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> ---
[...]

> --- a/drivers/usb/host/ohci-nxp.c
> +++ b/drivers/usb/host/ohci-nxp.c
> @@ -150,7 +150,7 @@ static void ohci_nxp_stop_hc(void)
>
>  static int ohci_hcd_nxp_probe(struct platform_device *pdev)
>  {
> -       struct usb_hcd *hcd = 0;
> +       struct usb_hcd *hcd = NULL;
>         const struct hc_driver *driver = &ohci_nxp_hc_driver;
>         struct resource *res;
>         int ret = 0, irq;
> --
> 2.23.0
>
Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
