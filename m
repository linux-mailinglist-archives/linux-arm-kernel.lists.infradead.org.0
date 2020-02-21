Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54745167EED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 14:45:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0QYpvn3X7IM/MQRleY8XzwQWHoEGhTGz9M9vCOLn1c=; b=UDcIYv5APRuaud
	aqFe23jmocz4Dy2tbO7khbK3MRE0m27PDOR5LKbp1A2Blixc+1AKA6zhggaIXqM2KT0+UvxrFmfrf
	LF+uR/mlBw8lqeauh6JRuBWdwg0ERZFWMIK/aVbQ9mEijcOBbGQWF9Xw53OgQvnpJ7NNYAyLfDLNA
	/CVFXMTaCrVZtb8s+tnbN3xmgKnZA8L6mg4wo9PFKl56UHzuXe7YfKGw89JuQ0GXLhlN/XzWvn12n
	Y7UMAK/cLb7dVqtV2cColLUGYg9P4vJV2ClMyQBuDOQoOsjMa0rfsE3Sgl4np6r5DyEvl7MZEbxOF
	2EubkuwYlCINOyXI2Knw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j58cO-0007WP-QK; Fri, 21 Feb 2020 13:45:24 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j58cG-0007W5-B1
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 13:45:17 +0000
Received: by mail-lf1-x141.google.com with SMTP id f24so1535651lfh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 05:45:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hndYq/hvuTQ2lgb+uDJJiLZLvwvgOhX4+x+wDseLksM=;
 b=D6m5Gx7huhhh7gdrPjKZZTKodPH+VJBd7jLXv4HQu/pErnlqMfDSIeF+/Fk9ho8Xi6
 SDtlO70M+qTWb26Zg9yOElNX3DNkm9LOKpwL0Z55aq4wKWR9W9+nTTVQaRecUvfhoviz
 sbC6aEIkyg2dn4VyOEH0N6Q9LZ86xAFpLQeT8CBKtMg3gaJ+P+X9DVwTAK5GXipVDZHp
 XS0l90I6ZHZZCYafFBiJ/XuwaSlrwsHRA8tTQ+tzApIbRHimQdkd1BQpqEj9c5Q5L3Qk
 ujZ3ZW+23ztbeDUWoeGMPmIb9DY3xy27O+oGZnb9dAMSh9muZh1kMSqaJQ75GVtEYRYM
 24sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hndYq/hvuTQ2lgb+uDJJiLZLvwvgOhX4+x+wDseLksM=;
 b=IgwdWdDnZ3YIRlmDUr0nDEUL3Uy35IHbRjfQcqBKRzKdoLIOMmd1qJ2XB6ZlhZ8bCT
 vRNdyB5tFLtrGZPqjy6Na1RslCCnbUXdMdzZayCIlJyIr3Rk53XI/vu/WyYOqiXICVjh
 b/iVGhGihPjgzqTC4iOiTGXm5+Qh0EdUefpHA4bhynESAcWDNug2ZNKeAmCOU+JQB88t
 VGsI/enr3BT2+mxhLub0S7VO0YJhlONh//k+exWKLHKXqjsM8WFiZ7/nr8FMdWhGYOoa
 /UJrF9OhesODId6lgXI+bpU6vn56RcfOmDfSYRqJD8TeTt28Hnc5Eu+YMwLZo74n1pIT
 Hy8w==
X-Gm-Message-State: APjAAAXq2e1tg04gFEDyypdzBxsH6YwYsCbe2heLEiyFBv9CRFYItGQU
 15df2hKcT572JksSZ3JtKSJNeDAn9CSI9YkehjiawQ==
X-Google-Smtp-Source: APXvYqxoapboUoEkJoxhUkJEVbZMdob4xVZCqQ+cCbE7awK32LSRAnI4GtKJTVv6OiaV3ZNjbPljMj3NANKLQQjyDLA=
X-Received: by 2002:a19:ed0b:: with SMTP id y11mr799008lfy.77.1582292713960;
 Fri, 21 Feb 2020 05:45:13 -0800 (PST)
MIME-Version: 1.0
References: <1581942793-19468-1-git-send-email-srinivas.neeli@xilinx.com>
In-Reply-To: <1581942793-19468-1-git-send-email-srinivas.neeli@xilinx.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 21 Feb 2020 14:45:03 +0100
Message-ID: <CACRpkdbL4rSDfbzJSF67o93WEPaDB6th2MtaQQG=JQ6r_3DxFA@mail.gmail.com>
Subject: Re: [PATCH V3 0/7] gpio: zynq: Update on gpio-zynq driver
To: Srinivas Neeli <srinivas.neeli@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_054516_383626_CD77AF4F 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, git@xilinx.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 1:33 PM Srinivas Neeli
<srinivas.neeli@xilinx.com> wrote:

> This patch series does the following:
> -protect direction in/out with a spinlock
> -Add binding for Versal gpio
> -Add binding for pmc gpio node
> -Add Versal support
> -Disable the irq if it is not a wakeup source
> -Add pmc gpio support
> -Remove error prints in EPROBE_DEFER
>
> ---
> Changes in V2:
> - In previous series [PATCH 1/8] already applied on "linux-next".
> - Fixed checkpatch warning for spinlock description.
> - Added description for Versal PS_GPIO and PMC_GPIO.
> Changes in V3:
> - Updated commit description for PATCH 4 and 6.

I agree with Bartosz, this looks really good.

If you fix the remaining commit messages and post a v4
we can apply this series.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
