Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F14146F4F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 11:35:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dy/eGN11bEywVC5ZdvVxC/GmqwD6/3XzV3fX6nVGhz4=; b=XjMcxeBu1O8gg2
	h73eApxrbDRmeWRanzUGpzJXouPojD1oW/IYUngrRIJwcgnZpeMV9T+rIKefD9et9kqIT8jQ6O3JS
	QJne+KCxTZUDHBRkzbS/ShYUwe7bcX4rBP7ZY05u2baHj9gpn9iQOWAsN9nPNl9pS7ZzPJktN/iBJ
	oekN9zGnk7jvsw8qwVxkSP3pVFDKmlcHf5vwV6QiGs6l6f0M3t6e10WrapWVFhC82t1LwAAPswCFd
	rLbrLb6N94/vq52zwxPCY1ErOon3iLOj+Kim6uLbbSQ7lCZMhiBz78OzE+ifLg+Ik+wm0o5YTdv9X
	tT9RJbFyLdX/95b0FOyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc55P-00076O-HN; Sat, 15 Jun 2019 09:34:59 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc557-000760-Fg
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 09:34:42 +0000
Received: by mail-lj1-x244.google.com with SMTP id v18so4750647ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 02:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S+e3ae3nDo211Phfm6lcT95OA7IYBp3eNuvxr46hQI8=;
 b=zsVylsI+bnY06zotdYazoqPbnqUS2bZqtx0d0MuPW/bi3FvKVPndysWw/GmsA8nyHT
 8OH/NT4ce1fzy5TYJlw+GTkMjV7R1XaROP5ucrGnnw9G+yWfWFxFlIgWx3OVZ0x1I5tl
 QnwB4lxeWcknPXNyNPm3rS4cHa7P5WmM815esIo4rsIvSI7OdC5YxnnU8It9uAtMks6l
 K850SbpvjROUXWEPw6SiH2O9omsXoqefhAPei/vVTEUCASiIZYeatcjTMajo59ZtyfWb
 DWVcboaNAnc11jo7aidKR2y3twNjWkTIb2gO4WO2e7TpPWH+XJkry/tpYuGouE7lLcyR
 0c+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S+e3ae3nDo211Phfm6lcT95OA7IYBp3eNuvxr46hQI8=;
 b=kGPyiQCaixrgT3eftBJW6WZUSh18l3hap2edbRKys4TDueVEpj01jyZnhSG74NLlqq
 8UQOcsdkVgi43+D8d/mGATwoO3K5eMaaj4t6UowbKfFGueX/iJk+0FFtdk6Yh0EMJ4XS
 81PkaZ1Sbg0Mym9DCGkPNaz6ec62Viarnn+MtF1q1dE+kQ8JNd2M8CunaYYRHLT6METr
 /UdQG9T+PYnWP46Sto3omMBf8x6Rg8QZhjGROSTLhUfFAT/P6h4FAl4uzI1rtw9qkExb
 tBGQZbtC2vIaKcpHaPusZxcVJfuEE7ujE70J5Wr+J+5vzUTwvjLFUAVmmrCKOIltQGuD
 /PKg==
X-Gm-Message-State: APjAAAUG1fv3yDUgn6ROtSqJxsZBhxRS5sI0i62WsRcq31Frr3f6X+t3
 7z6gV7wP/bBXxp84M6dQI012r4D/pzkPBnJFajuEgw==
X-Google-Smtp-Source: APXvYqwLTbopvLRNBKb2DO7gOLSSgRDu4W/A9L+CndsAaEJ7YfZQiyyOgo75eSM8f89ms/J7M3hBuD/kna+45G311Jo=
X-Received: by 2002:a2e:a0cf:: with SMTP id f15mr23119868ljm.180.1560591279344; 
 Sat, 15 Jun 2019 02:34:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190612193115.6751-1-martin.blumenstingl@googlemail.com>
 <20190612193115.6751-2-martin.blumenstingl@googlemail.com>
 <CACRpkdajXRXRFz=XpbEzwUb-crhBxNQ4f-m9rfdY6+HcG0+_gA@mail.gmail.com>
 <CAFBinCAimhth8fDcBZ3vNdy_9dGmHZVAAK0=TUczWWC4Dsa-pA@mail.gmail.com>
In-Reply-To: <CAFBinCAimhth8fDcBZ3vNdy_9dGmHZVAAK0=TUczWWC4Dsa-pA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 15 Jun 2019 11:34:25 +0200
Message-ID: <CACRpkdbQ5VivFJhL4keOgmUe7BzhVU2v2R0Lso8rQx5s3tHY8w@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/1] net: stmmac: use GPIO descriptors in
 stmmac_mdio_reset
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_023441_527175_565541D0 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Jose Abreu <joabreu@synopsys.com>, Giuseppe CAVALLARO <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 15, 2019 at 11:11 AM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:

> I think I finally understand why you want to switch everything over to
> GPIO descriptors

A bit after-the-fact reasoning, but after I was made aware of an interesting
lecture by John Ousterhout I feel the best description of the descriptor
refactoring is the idea to make the GPIO API narrow and deep, make
it simple for consumers (hence <linux/gpio/consumer.h>) and handle
as much special cases (polarity inversion, open drain...) as possible
behind the scenes.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
