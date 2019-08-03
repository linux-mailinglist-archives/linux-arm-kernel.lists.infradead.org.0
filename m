Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1419F80496
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 08:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7uHr1iivJYTK6Y8gH48l89tMJHXBUMk+iM7zdD05n4=; b=agSESJFfSrwfiJ
	q79EWKMWSftuO0BcyLPaZGU+4FALGRHewN0V8OUFyZa7RispmtLy1vT1GRk97P9m4iSk1pn5oBTAp
	xTFdFIwCw6rd7j4hyMYNp98fyINQrXBK7jfjKLrFasbr0yAKoLJZzox1Eav2dyKIIKHoOK59/mEn9
	z324hw+VoBQdeY9tqzOeDfb6i9nyLP3LqOn7j9LUcvDrKR9z3V37rUvx4s/crCpUs0+utaSfyAvWc
	37xzIMGUViVdEGf9cu9YekIg92JdqMZvtFm99iqKiMTLy0YZC8uOqE5C48F+sFUEmfhuHafAMcayh
	yeZqToG/bzl0CwO1FXrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htnAl-0003Xh-Ge; Sat, 03 Aug 2019 06:05:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htnAa-0003WE-51
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 06:05:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id v15so69909708wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 23:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rNjsuP0ZjDp9jnRQNucz2c5yrrLQk2HCJuqAw6zZVeM=;
 b=LVh4eCRnc+8XPVEiLWCyMApcVszjz2OaYV8RYm0L7XWc3HjY9IwIwOyJEVNiDLIVtM
 MIl9CYrEs3SxyB3KwyjiPhYG2BfGpQKw4BvOODGx2egaLIAawt8MKY/WKTtyo2m0M7U0
 iq3aFs8wi/HbWP6rfo4Vqsq2V+y4bGiW++1SbHvXLb0P/7GAQoMCMIVjXMOi0c6HZKR0
 TdVGbN1fu6rDGl7J3REDkP5glgHsQIg2J/5Q2EMGeZKu/TPKOn5kT1dhZdv/Y/Z2mzgn
 gv1jhd504dTix0h/CwyzkgZmmoKebRS1vMJfNUv3rfkYs44Yry2s3o4KT9jU96OBdLIv
 PDaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rNjsuP0ZjDp9jnRQNucz2c5yrrLQk2HCJuqAw6zZVeM=;
 b=djyEzOoBDE/mEMlBAGecfuRupaN+wnXaBnH+dsBFc4vx6gcMl3nswyVSvuTIzFlRya
 hIqr2uiTxQD8RgiTPw3FdJFw+p08Ny3WhM5g0UiyArS0UxSri1rPY+RU69oEMScJS3pD
 7Q35dsPdHFXEgxEcra2fPXGyqOBwH8H3tnK6WTM0XNFBN3QtcQilbOIUjJ4blEwvv/r/
 UUTY/c3Tsr2ZKfmTwuOtnVQT0kfoh3s6f2YB80G0xH84D6sjMIGmTaSbJCVrA1YX3u+m
 lQ401aMmOx6WDKPR3exw/DebQwubcaK/A5Ox9grl6bBU671zSFM9A3GpBH9OU8q9blgq
 BwIg==
X-Gm-Message-State: APjAAAXFZ70bELHi3D/BQn/1PzHn4rSTDHiwIwu2s/LKfNRKblxHjaAH
 DBqsdXBWXRve6Sus1JCyTV4=
X-Google-Smtp-Source: APXvYqz36zGRvW+EA5Q16NvmRTURlwWo6t5ErfVh/qGFKq4wC1cYjfYdUWL01hQeI+UTjypAPLkC/A==
X-Received: by 2002:a1c:d10c:: with SMTP id i12mr7689994wmg.152.1564812330438; 
 Fri, 02 Aug 2019 23:05:30 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id r123sm73514728wme.7.2019.08.02.23.05.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 23:05:29 -0700 (PDT)
Date: Fri, 2 Aug 2019 23:05:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH] net: mdio-octeon: Fix build error and Kconfig warning
Message-ID: <20190803060528.GA89737@archlinux-threadripper>
References: <20190731.094150.851749535529247096.davem@davemloft.net>
 <20190731185023.20954-1-natechancellor@gmail.com>
 <20190802.181132.1425585873361511856.davem@davemloft.net>
 <20190803013031.GA76252@archlinux-threadripper>
 <20190803013952.GF5597@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803013952.GF5597@bombadil.infradead.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_230532_199119_7D49679F 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 lkp@intel.com, kernel-build-reports@lists.linaro.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org, broonie@kernel.org,
 linux-next@vger.kernel.org, netdev@vger.kernel.org,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 06:39:52PM -0700, Matthew Wilcox wrote:
> On Fri, Aug 02, 2019 at 06:30:31PM -0700, Nathan Chancellor wrote:
> > On Fri, Aug 02, 2019 at 06:11:32PM -0700, David Miller wrote:
> > > The proper way to fix this is to include either
> > > 
> > > 	linux/io-64-nonatomic-hi-lo.h
> > > 
> > > or
> > > 
> > > 	linux/io-64-nonatomic-lo-hi.h
> > > 
> > > whichever is appropriate.
> > 
> > Hmmmm, is that not what I did?
> > 
> > Although I did not know about io-64-nonatomic-hi-lo.h. What is the
> > difference and which one is needed here?
> 
> Whether you write the high or low 32 bits first.  For this, it doesn't
> matter, since the compiled driver will never be run on real hardware.

That's what I figured. I have only seen lo-hi used personally, which is
what I went with here. Thanks for the confirmation!

> 
> > There is apparently another failure when OF_MDIO is not set, I guess I
> > can try to look into that as well and respin into a series if
> > necessary.
> 
> Thanks for taking care of that!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
