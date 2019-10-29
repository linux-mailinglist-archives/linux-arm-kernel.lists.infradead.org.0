Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35009E912F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:02:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mS8uOjcg0LwvdauBPfbAaNOJOkByButctfVMMA3Y3Ds=; b=kjIcRvGH/uOTjp
	+haUMN3SEaBuWskGB38s59v8pn6FFF9b5ak5eFMNmtBnMWRWewNXKn/i12H0Frd8/6mHXnHBRX401
	/Nm1/oHRRGierPSuQt8ScXuVnGyihJhgok6yYKj3s4XstSaNyrjQZ9E/Jjm4VVTo3C9W7O4Nr5pqu
	f+COs/6aB413X4+zCTk3wyhEFYHfjFXzYh6vV3a9OZ7wCKD0CGXj5+JV4d2ekl0X7r3+Wl7dw5IUk
	EnbB108wFLK0bKeF/CpPKGy7ie2HGxg/4EvJCkkJboGHXFvkZ37U4Bfk1+NivPha+MQ+NWIASJNkj
	y1URqHtWRj4GahVHGPLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYdH-000101-1H; Tue, 29 Oct 2019 21:02:27 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYd7-0000zQ-Iy
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:02:18 +0000
Received: by mail-pf1-x442.google.com with SMTP id q26so6873797pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/xRrKgwXdsmpjinuBDfuaLVGRyFAxJUz5gD94L89fPI=;
 b=vNLtnlmdsA7PaAhCvchomclNhYC1/dWNQk40LZe45aHTxOTQ4KsQcnzQbCnVQ3ztXK
 HnFyQrXTk2ZJT3k/NIwPhd3BHe43Z6mufbfaxl4t2+14jRfgRK25QLo7npW1YtE5haEM
 eV3erMc6ny4p8uBuJL+400GBAVdGUWZx6j5AWCT+dc2J3lIH4BuQVGI57ABmsRpgNA/h
 hzjPCS+QcosGZGat8Sz7WkBE1puZfs7OEE+EiUy87klxkj26Y7YdSmisvE7mwLphyVjy
 QJhBG3KyfZs836A+VaUmmNgxHdNQACzT4kVI+OyghD40HkS19ecfgVra+pGfzv3zmKq2
 Qnrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/xRrKgwXdsmpjinuBDfuaLVGRyFAxJUz5gD94L89fPI=;
 b=R0ap0adtMuf7UBwLkZVtXlORa/fvv3X5pp+OVpzks37PivvXqBu2Ha6z3XBVm8LpEN
 mTjbv1wwBaddmJr7xs21BUtvR+S0/N3S46wcnCtGeGEmWb6gitmbvfRYDgDfR09h418O
 Wo/a+TumaxHpqtd1s/J2wCHt2qo2zUI0w6sReRt8HtGwzboe/V3GpW92HkEAcfJFcW8u
 elN+z38cjPdFX0C60rBMIwrC27LG2nOTDBTpgTw3GVeVQmrjYz2Laxi9JD3nYlc7ceqn
 5OQaKdzFjuNBy8J8Kpci8ODfkolK011Ov/l92hPfNIcOdnCrfuwuyhxGSsrD+UEA/XdF
 JDnQ==
X-Gm-Message-State: APjAAAXWeHMQ8JzTo8/F0nCgn+X8R7cY9MiCSfRd4nCniYSONdorV4UG
 QxkBn1q1PCZXsCCakW7ocaaCZZRSkxkNlUu0zRxDoQ==
X-Google-Smtp-Source: APXvYqx5ypoKVeh+p1v42clF+cG0vqBqmVXwUTA7EkbmfXj/0qUXK7K8JIXAaN7XkxUlda3YEu9lME5MWnRfhrnTLlo=
X-Received: by 2002:a6b:fb0c:: with SMTP id h12mr5986548iog.239.1572382934731; 
 Tue, 29 Oct 2019 14:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <1564980742-19124-1-git-send-email-hongxing.zhu@nxp.com>
 <1564980742-19124-5-git-send-email-hongxing.zhu@nxp.com>
 <CAEnQRZDk4TjU0nWgGXEV06ZygvSyuPHc61_uT7KRu0j2Aaxj7w@mail.gmail.com>
In-Reply-To: <CAEnQRZDk4TjU0nWgGXEV06ZygvSyuPHc61_uT7KRu0j2Aaxj7w@mail.gmail.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Tue, 29 Oct 2019 16:02:03 -0500
Message-ID: <CABb+yY1-PrmT_Qp6M1+WTnVAKizVqJLYJcip4KfqcAjcuN3GCg@mail.gmail.com>
Subject: Re: [RESEND PATCH v5 4/4] mailbox: imx: add support for imx v1 mu
To: Daniel Baluta <daniel.baluta@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_140217_650871_21114F03 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Richard Zhu <hongxing.zhu@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 4:07 AM Daniel Baluta <daniel.baluta@gmail.com> wrote:
>
> Since we got no answer from Jassi in 4 months I think it is safe
> to assume that we can get this through Shawn's tree.
>
Please don't top post.
This patchset doesn't lack my love. It contains support for a new
platform and was sent after last merge window. I send new
features/support only for next release. If you want some urgent
bugfixes picked , please send them separately.

Cheers!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
