Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F051D10DDDC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 15:09:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lThe1f2NaQfiJsAZ4GW7g9QFkJ/AflPq8/w/tTDs1Dw=; b=IgtLWHmqaEtWWz
	z1e1Gs9wzpSgO6onC4HKqmjg5Y7SXgi0VFV+GE3d+0fn+Xn93USbFSgDBpi/MNmdPIrB1PCO/ehk7
	t20G4y0IbwgOeMmicfbWvSJg8/TcsmkpKNLlNCmerW1CpOtyVfEmURT8bfbd10k893YwzzdQ0hXBG
	UvOsFr664gDCNfCf0MMw8Jg3N51Q1F6kDpXJUeLRCsT6h/jU4kVQwHIloUeolit7QDRbVRiNQXU+5
	evObGXi+B/ZHRjgD2qAJ9CaWgmAUu4ORvyjLVMjhkOqYLfVeMjpCb3VuKq00azn+As/VcQ4Snq9Zb
	uRr1GLb69S2u4EzED/GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib3RU-0000OQ-Qb; Sat, 30 Nov 2019 14:09:48 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib3RK-0000O1-Sj
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 14:09:40 +0000
Received: by mail-pj1-x1042.google.com with SMTP id o11so59931pjp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 Nov 2019 06:09:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FKtvrB0Mt1dPDCU0lQQZ0+l4lFfg4eSb8vzPxs0x5Z8=;
 b=NMkJgp7dKL3T2uJcSbqnKzitPUjziDIfJ3LtXAhLmdnMzmv40dWWMkIqR1yKeiK+sI
 wCpyM5e8aHnsEfAZblNQgMSBbCbB8v2WFqNdByM6hZ3+z1o87nyVUenCwdt74D4+ulIO
 hAkbVXihxpLwP842/1Leq7lDEJr1QpvEeTE30S/uHthFsrG1XRv9Hx9was377htC/oBL
 g2K7hL6jrlQnP32lkWxK4Z54hEcMCXTbNwYEhUaTTfnUNX7qoivwHzVexEkbfpDXHZoK
 dmFi1XUaUbRfELLhcxQKs3S8F/R0o7A5bm8aDCkpbf5pVHtNV5B/JPdlS6CxxUiSIk5a
 uVaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FKtvrB0Mt1dPDCU0lQQZ0+l4lFfg4eSb8vzPxs0x5Z8=;
 b=MqYaKajgpNp2CAxFVWoShHeLroSO/y9IRHj7HvufnZTnyMPbU6Qn5czkosdhRmXqyE
 QUfYT8EEjjEjoZuXX6LTbcFKH0GU8s70BJsF5j0BPQbUfsbZ2+vmj/U1cJjuujK1YQMw
 HoTQn2zX6jbf1aWb4iAUFrQY2/KmLQwadyKsh/la7BovXANXcPzu/mmKjSQqWrw+0cTU
 rpkEsSvcpMe1iAi24vWDmgk37Hl09ViZYDeLol7uhiZrzWtPzcJWCdBV23XOWXwLehto
 tLKo5lRuQOA7aPrrqgwapjPxK1HBxrzS8jz1n8d335/o1/EKoHp46yob5aoEGvqriOrq
 obhg==
X-Gm-Message-State: APjAAAUxdptaolCXp1lvOmYdIRUWwRUoXdGMmrD2JQXQqmPmvX0BDyXf
 EOFwD4iZZTV5vWOTSJ5ZN6Br
X-Google-Smtp-Source: APXvYqzDwytiCfrEZJAt8NDxceGrzYgYfocCmVVy6k9xea1LbWHW7Mwlsg5/EklXVb4xjzRje9x+UQ==
X-Received: by 2002:a17:90a:c697:: with SMTP id
 n23mr434520pjt.37.1575122976893; 
 Sat, 30 Nov 2019 06:09:36 -0800 (PST)
Received: from Mani-XPS-13-9360 ([2409:4072:980:53e7:19a8:fb8d:d702:6994])
 by smtp.gmail.com with ESMTPSA id p16sm28346128pgm.8.2019.11.30.06.09.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 30 Nov 2019 06:09:36 -0800 (PST)
Date: Sat, 30 Nov 2019 19:39:29 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 3/5] media: i2c: imx290: Add RAW12 mode support
Message-ID: <20191130140929.GA23629@Mani-XPS-13-9360>
References: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
 <20191129190541.30315-4-manivannan.sadhasivam@linaro.org>
 <CAOMZO5Btkd0NLM5RBFZHD5dryE7mR5JZRLC2X__pQNmjHGCywA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5Btkd0NLM5RBFZHD5dryE7mR5JZRLC2X__pQNmjHGCywA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_060938_956017_FC29B93F 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, c.barrett@framos.com,
 linux-kernel <linux-kernel@vger.kernel.org>, a.brela@framos.com,
 Peter Griffin <peter.griffin@linaro.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

On Fri, Nov 29, 2019 at 04:49:25PM -0300, Fabio Estevam wrote:
> Hi Manivannan,
> 
> On Fri, Nov 29, 2019 at 4:07 PM Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org> wrote:
>                }
> > +
> > +               imx290->bpp = 10;
> > +
> > +               break;
> > +       case MEDIA_BUS_FMT_SRGGB12_1X12:
> > +               ret = imx290_set_register_array(imx290, imx290_12bit_settings,
> > +                                               ARRAY_SIZE(
> > +                                                       imx290_12bit_settings));
> 
> Could you please write the ARRAY_SIZE and its parameter in the same line?
> 
> It would improve readability.
> 

I don't favor this change but Sakari did this to supress the checkpatch
warning while applying my initial patch, so now I did this here itself
to maintain the uniformity.

Thanks,
Mani

> Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
