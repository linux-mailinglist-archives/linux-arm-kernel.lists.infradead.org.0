Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB35F7512E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=axv5yHVO4LaxkH72ni4sRtFJWQrAT1GaNDzkWGezOSg=; b=GcvlCuH9XSFD73
	/u94Z1ilb8nBvk4l+YBcH/arEvDaDBWDObaGBV/b7Uok1Rd3z3GeHpw32BTmKpmr6PuAegDSEXZZ7
	/dcGosfmUMoOXHI5frxaqOvffrhs5fl6gF8o26WJJ5uTC1YC78dbcuuXHb9G4UZRVFDdxwCVZ567n
	n5wV+4r8ufXNAKuw5wzCcvHM2LnPovnN2H2b0QCdhHYnjCjAnCJQYAj5jTFoi+1p1PzVZTMGt4bST
	9h2S7PubVGfOLWQ6w6/sTE6mElLK4XNMNXg6j+8HXCAXMn+uV0NmN8SCPHOUvq84tXCbJcxl/uGIv
	Z1j2u4uuAg0ej0rGjMOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqelc-0006zw-5h; Thu, 25 Jul 2019 14:30:48 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqelH-0006zG-DR
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:30:28 +0000
Received: by mail-oi1-x242.google.com with SMTP id e189so37694828oib.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 07:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pHJuI0wfvLr45CJw/k6BParVKLuhWxWvzs6WoKiu60g=;
 b=NKteIHvNZvctxJ61hGchvTbcOO2iicgFxCeETIGC78Gt9DZ4G+UeyNfAmQjFvlaTtc
 ClUT0btd2oT9sGhYe6mql72tZYnzXwOcOzO0d8X7nf+c1aTE3/expGEGovRbPVfCFEDd
 DBBOYo/WpMnrov5HRjPXZN7DwHQuGlg6MCaA51vbG0vGFBSj9FXbMnLXLIQ/txUgrKle
 UUNkgKuUQDEqB9jiQNLnCz9XR3JLjPhGGeBHEYhBszrmSbzV3fpQmkoh2Lb+f5CLw8Z/
 56zvYIXUf5X6YofoUl2sQkyrkeZhJFtMUgLgrKyvh/hnQBzMxg8iWqCzoBYfVY8toY5R
 8ySg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pHJuI0wfvLr45CJw/k6BParVKLuhWxWvzs6WoKiu60g=;
 b=ctqgXph65cnFc7KMkQnhDPe9tcpMf5nQ2otpYJpoJCKQyEioHcIWSfUirVWShj77H4
 5VFwEoXkXtARXb0O3UGoo4lVaoFAkPG/iRcUv7i9npmdHac6DvRDTOhbH5y0Anf3pjgm
 Aq6L31pXFhE2VVzwObn8+PaRit8nk8KZw7NJMLVcqjsbHbZiQ6UZSSWM1VMpNxPmY3MO
 RsxOfQcHW4vuQBue7dJZ1ZFdUc7GGNbdwblvfkw14mbcrQNWhIlwAJrR5qwjMEfxlG+O
 HgLtn9GhfUvtRFj+14vq2blGkxYgt+mTRtHzwNtmPLw51WUFg8X94zeXuMDg9XwjGE2c
 9RmA==
X-Gm-Message-State: APjAAAWocmpnhGPkK1fMVORGqmsiweODE8yw3q3QbRUrwVbSKpVQuULO
 isUd+lzuStoR9LHbqGDTSpm4tI+0xSfrcnvGjsk=
X-Google-Smtp-Source: APXvYqwX23r4z7p2EwocpDavX+sBENQpUDF1tiS32O0SWRa7BbF96aycupZRCgHisT2KjQOuzYQoCmQ+TX2ScLUPPjc=
X-Received: by 2002:aca:bb08:: with SMTP id l8mr7381468oif.92.1564065026058;
 Thu, 25 Jul 2019 07:30:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190712204316.16783-1-TheSven73@gmail.com>
In-Reply-To: <20190712204316.16783-1-TheSven73@gmail.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Thu, 25 Jul 2019 10:30:14 -0400
Message-ID: <CAGngYiVb_-A4Au749GD6SKi=UqKKBm4yxim8YOCbgVjfz7xtvg@mail.gmail.com>
Subject: Re: [PATCH 1/2] bus: imx-weim: optionally enable burst clock mode
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_073027_505461_80ACF6EC 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (thesven73[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thesven73[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 4:43 PM Sven Van Asbroeck <thesven73@gmail.com> wrote:
>
> To enable burst clock mode, add the fsl,burst-clk-enable
> property to the weim bus's devicetree node.
>

Any feedback on this patch, positive or negative?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
