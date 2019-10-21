Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7FADE46A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 08:19:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQqYs4CxQCshkcq6pzxKOrWym6GqkHbQOqRH2DcK+kk=; b=oIuvdMQng+Op9l
	hPe1TIHeYqBv3Bxk+iZ/pkpjWktfYFloeyGyQd+lY0afZ/qOlGlPXRfoSgj0i2XeSVtoSdwzfBNUT
	+xRe17Y/DAA+I2NYvrRPkM11Qy6ALxL+ezsBrXzExHfkTiaRV6RQCBnOEgNawlB1CaRlnt1L3WeyN
	37IDKkku4q2OsFshOX7YrqVflOHX+b0mjVELu/vy0I2Smm+9YRTDPzukJlsIlMaEL4h2sA6+jw+uq
	cVc4EAyAQiX/RshoFATMPWPKqD5J6ANG6eslwMvrkslrX41Rhx56gFKum9cTLWv0efbu2ufABfifz
	cS+k40RDAG0bkrcmwpSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMR2g-0001G5-CB; Mon, 21 Oct 2019 06:19:46 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMR2U-0001Ev-F7
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 06:19:36 +0000
Received: by mail-pf1-x441.google.com with SMTP id q10so7757328pfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 23:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=npNayPk5J2u1XBbRL1kMyLo7Xv1HpI8J+9mr55B2g9k=;
 b=QDvYpVhOa9llomgrWhkQTV7AvVq+a5nmiWzxknp7M34fEjVS0v79bpDXYYSHLu1xsh
 3r2LrOxWZCd+j+SAZnX3yRG89haB45hBUtUWfOXkCUWRQjipPwvece8OYwGhB5XPEMcD
 c23ua7i3PrboPvRFsD5ptap2coA5uv0FIuyTXAuCEXxI5d4XDx9p57AaYol3GG+DWot8
 rOcaEGRFXQi6qMDjK8Ia0W2wdzqRJnHDWluTgedOmC4Cg7Ox1ipLSdIXb1pVuHVDr6DC
 5EU+++ld2CJkiSlsN66IxR3O3iwDLczgHbsaQSPQ7rnFNDV0pmIVa35r8FugJDDtWKTi
 9Bhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=npNayPk5J2u1XBbRL1kMyLo7Xv1HpI8J+9mr55B2g9k=;
 b=UvzqtFBmmAwMaOEfY7huU5c0pH7483whcxJ43yBBhakfIqaNk0lo3S3XXjo5v8bRsh
 al8V4ChGLCIAwERWXD3oJUZyzSAYPNO3hn7JyYD26xYhLXH/O7klTJaePFaHloWS77nY
 Yw0OgXVsefYdw+d2TxB7ROMYPZzfKPoTs8G0bVXhiMEKwJDpre+Lgm8psze664QqltqK
 xR6t5ibbVZ7HOQWqSXv/Ctt+fa1tcauar7jWzfZm5Ub1HEWscxFKiDrjrSD9s5MLxwDS
 ttdUIdC2WCEmkSzYqoR68ulfm77Sdqg7fmGyNqnYf/0peT07xkOrG9ZNAkYGqwRb3wk0
 OObg==
X-Gm-Message-State: APjAAAVxZcoEd9TQapuDesE5kp78t+0mK/GCx12Iwlm5ICW2YRIkvloP
 qKXAFS6jFjmTaLfRLzKjdnhQ
X-Google-Smtp-Source: APXvYqwa4lMT7wTGnd2y2szR63pKR1Kh4XWszfDbs08XxK1GjzoN2xaHY4ePYHjDl7fkNdK2QUchbw==
X-Received: by 2002:a62:5c07:: with SMTP id q7mr20788083pfb.159.1571638773575; 
 Sun, 20 Oct 2019 23:19:33 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:700f:8db6:2442:890f:ac37:8127])
 by smtp.gmail.com with ESMTPSA id x65sm14911120pgb.75.2019.10.20.23.19.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 20 Oct 2019 23:19:32 -0700 (PDT)
Date: Mon, 21 Oct 2019 11:49:26 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 3/4] gpio: Add RDA Micro GPIO controller support
Message-ID: <20191021061926.GB12001@Mani-XPS-13-9360>
References: <20191015173026.9962-1-manivannan.sadhasivam@linaro.org>
 <20191015173026.9962-4-manivannan.sadhasivam@linaro.org>
 <CACRpkdZRY138RAf8N2xGam89r66ik2vW44OZx0bDcCt4P2GBLA@mail.gmail.com>
 <20191019160513.GA17631@Mani-XPS-13-9360>
 <CACRpkdbgFGciZMBF-_h5Wi47Hmco7tA9Pr7XegM8SpWxhqLT1A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdbgFGciZMBF-_h5Wi47Hmco7tA9Pr7XegM8SpWxhqLT1A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_231934_509380_F364381F 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-unisoc@lists.infradead.org, Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

On Mon, Oct 21, 2019 at 02:57:31AM +0200, Linus Walleij wrote:
> On Sat, Oct 19, 2019 at 6:05 PM Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org> wrote:
> > On Wed, Oct 16, 2019 at 02:41:32PM +0200, Linus Walleij wrote:
> 
> > > select GPIO_GENERIC
> >
> > hmm.. I don't think this driver can use it. Please see the justification
> > below.
> (...)
> > As you can see in this driver, there are 2 separate registers needs to be
> > read in order to get the value. RDA_GPIO_VAL needs to be read when the pin
> > is in input state and RDA_GPIO_SET needs to be read when the pin is in output
> > state.
> >
> > The MMIO driver relies on a single `dat` register to read the GPIO state and
> > this won't fit for this driver and hence my justification for not using it.
> 
> Use RDA_GPIO_VAL for dat, then set BGPIOF_READ_OUTPUT_REG_SET
> and the mmio core will do what you want I think? That's what the flag is
> for IIUC.
> 

Ah, this should work. Sorry for missing this earlier.

> Maybe we should document it better :/
> 

That's how everything is in kernel for me... If you don't look closer, you'll
not get it.

Thanks,
Mani

> Yours,
> Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
