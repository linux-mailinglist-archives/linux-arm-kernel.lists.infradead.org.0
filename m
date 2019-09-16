Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0528B3BFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 15:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IsmN/QpA2nchAdQmPhcx2x6o9zl1zZXM3OxTiujUgZw=; b=O5rF+snUjbw0E5
	Gul9cAIsirCJ3hO5DTU4KlKzDE7Yls+lhfbIWchAtNl5/kYH0jACWrfVaOdHefU4gbUq80GsZOiMa
	eL3wt+tWVlhPBVnrVvbUxnvP6Qtu92b1p4ScBeOnjg237wXd/p1C/mPZcs/3/ueRLuD7XXGtXJe7m
	RUWBz3KkGXO14cswVLXwkdNOVN4k0lbR7a8LXo5UmgOgKQNs4ISW356weg1N9ekgT5bjmk4Ti7E4n
	umMySug2b10fR9fnhK8cFjYonYjXc3GbH88ubiJVylvhdv3vaoiXUp1zc7XPpk2R9exqOXcixTWPk
	o5h8Ol+YN4kWTcRZeehg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9rXH-0007GB-GC; Mon, 16 Sep 2019 13:59:24 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9rWt-0007FF-0M
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 13:59:00 +0000
Received: by mail-ua1-x943.google.com with SMTP id f25so11331314uap.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 06:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xZkupYvtBSCgKvrJHoyKINcu7Om+TqesekV8j3GB0l8=;
 b=abcnjjRp0vfqDss/cKOd135SiL2FsmKpPoVJY3cDGezMtJYB2RDqqK33YBjLeoK15k
 52xq3IKCxncEyF6pFqAjp9j/Uu3gZAaeah9VUzvW5kPRoeqX+XTEL8QZvZOnIseZ/Ngw
 qHCCcVfOKj83hZTbK6Ix/I6MS+PujIU+ATucD0mmoPkRWHs0KDbh395ALd+txHZbtBaT
 gjL3gO/fj5TCK9YoySfJa3EHtyhoXpKOMydiT9aAWJ2THFtA0IgR3HXJOCkuNWOkz+Hx
 CNzThJ/K0TJgQr9EJGz8xViE7j03o65dPMFUY+u/iztYZ3kZKAJIt/pbpm1NtyWQUnhg
 M8JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xZkupYvtBSCgKvrJHoyKINcu7Om+TqesekV8j3GB0l8=;
 b=G8FQgCth8YrbkflNVapwcvgS9rn540nWM14nZLLwqHX+dkRuyJ7uyRTkjFu1dXmxSF
 AzooQoDnnlXTJMO37J4mzybfgEoiHuUBt0GAb25uwQHQEoyM++EAwcOmn7t+hc2cx6gF
 0EsFzotpsVIS5brHB+FKIBWw8ba1GPemeVsVbqhjrqXMTqMeNpKjomnyMj90cQFxvhWj
 cOIu45YzMaY3bJ3EJwg/BpwiOVYH1pVrozPvVufSti75KK8zvC2XBjqy3NsJyHYvIrKr
 x7vov/aLOySgxpQbnjkmT35h5K1rOgYLG6vBRQ4tf59spwJKz0JhzN4EKW7YKdBG5Zm6
 oFkg==
X-Gm-Message-State: APjAAAUNNPjmAssE1n74pWFogcBviRrpiGWTT2h4N2ChvkRp0c5A5mU9
 tG8K53CXL6wOfoP74AfQSEdj3MzFx98WNZbgj/Y=
X-Google-Smtp-Source: APXvYqxCMEZl6OxrxpHpVk54lt6TihIEe1Fcqyo/s0j004PQA6BisRf6ikHlA0omRb/c6VbpoOQnGbGIAwgH8aLaW4Q=
X-Received: by 2002:a9f:3110:: with SMTP id m16mr26100819uab.10.1568642336893; 
 Mon, 16 Sep 2019 06:58:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190911144943.21554-1-philipp.puschmann@emlix.com>
 <CAOMZO5BKiZGF=iR071DaWLp-_7wTVJKLbOn3ihwPeVVSNF6nCg@mail.gmail.com>
 <2613a28d-d363-ee4e-679a-e7442e6fde48@emlix.com>
In-Reply-To: <2613a28d-d363-ee4e-679a-e7442e6fde48@emlix.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 16 Sep 2019 11:00:47 -0300
Message-ID: <CAOMZO5BftiJcpefSaM0-DAdhOqrKfv4k5n=y1RhbTpZ=HZDtOQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] Fix UART DMA freezes for iMX6
To: Philipp Puschmann <philipp.puschmann@emlix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_065859_050662_90C0D721 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Fugang Duan <fugang.duan@nxp.com>, linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Vinod <vkoul@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Jiri Slaby <jslaby@suse.com>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Robin Gong <yibin.gong@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philipp,

On Mon, Sep 16, 2019 at 10:55 AM Philipp Puschmann
<philipp.puschmann@emlix.com> wrote:

> Thanks for the hints. I will apply them if the contentual feedback is positive.
>
> p.s. Did you forget to add Andy? I don't see a Andy in the to- and cc-list.

Andy's e-mail is fugang.duan@nxp.com, which I added on Cc.

I think your patches look good and are in good shape to be resubmitted.

Thanks for fixing these hard to debug issues!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
