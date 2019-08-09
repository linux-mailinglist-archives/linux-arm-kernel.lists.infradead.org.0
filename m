Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD20E8823D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 20:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8K3APjFcOD5QZNBWDIZpWpSIvPTMj8L42WLLm1079U=; b=Pn4WMGPB7KLxG6
	2ZE0a6pQfU2rQDPaNatZtu/tRHnSyYTyzBc/BnPMHCXR1XZijlNZns8tV/RD8Fe5eHyAjWCN4ka4b
	2pEC2MkULg03dkgL76cphfQESBTva0WSO3hZ/JUjJCmwDFmoRb/ygBIK82HfBWzDwhs8Lymm1tWkE
	Hd2EuuHE5ZwYkK0+HGdI994+7Y0WBkRCRfkc+sHtcmV56cB2VsA1hsTM1XxmUBpVTOsTZkFsGfqdZ
	BZrRpJBktXa5wuatvKSt91NBmEPMJSv2lj1j3gh1VopnOqJXYp9uAq71LMsVLCV9ujMUQQVSQWTuI
	P1Z04kJQuYdBKe/LqSXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw9VW-00043j-9E; Fri, 09 Aug 2019 18:20:54 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw9VO-000430-7i
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 18:20:47 +0000
Received: by mail-qt1-f194.google.com with SMTP id j15so3114899qtl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 11:20:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wLXt1wKoYGElfNIOoe/f7Yp/KfXnxPXx1/N7nq8c3go=;
 b=ZhTcv/gAqyXDI1QjP71MDUrZI/p8gaMzlnuLK1qHFaQCbiDaqeykWy9zgX5ebxh1om
 upHTnKt92j3RhS7HZV8xzLesHPmzrw95PjWYYjJ9kZ5HmE9BAllLmWb2tI4+4FDx7Rix
 3WVJtvBc88KMMSyi2xeF5gm6sbEfFyaitxB9bIgmENWeBfjuz7RiJQgQQ4JGB+M4p3ql
 8VcwKmXP7itTXa9aQ9PNFGVXR+3zBWc5QXtojPO/czCPOjLMYD3sUMjcHkdwd8bM2IfF
 QbufqabNGPit+RMi0qODUeEmCqEX9eFeYWqSm/EQr+RYBMsCqSmaZP4OvGcYCJ97Nh6S
 bOBw==
X-Gm-Message-State: APjAAAWYpxhX0gvu3eDE4DT5z7HQ0N9sUxnbxvIxYD+P8pZYion5qYjm
 yJpGbre5qnzmkCHVLD5+Cd0ksazNth0D5g9EUYY=
X-Google-Smtp-Source: APXvYqxKLDXX87FcpQL2TgyMJLEjcIeNCrqNlbfTX64dCbqulfBr4FXPj0VAQFHyeFp8gszFBs/o1nNq1ZSEbmesRLw=
X-Received: by 2002:a0c:dd86:: with SMTP id v6mr19475380qvk.176.1565374842194; 
 Fri, 09 Aug 2019 11:20:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190809144043.476786-1-arnd@arndb.de>
 <20190809144043.476786-10-arnd@arndb.de>
 <dc0de0cd9a1e24477b20d563199e800b98d933f6.camel@perches.com>
In-Reply-To: <dc0de0cd9a1e24477b20d563199e800b98d933f6.camel@perches.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 9 Aug 2019 20:20:26 +0200
Message-ID: <CAK8P3a2_B+gxqPUtCbfn9oR39DWGH2xQ-z3rCEh36f7jbaS+hA@mail.gmail.com>
Subject: Re: [PATCH v2 09/13] net: lpc-enet: fix printk format strings
To: Joe Perches <joe@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_112046_281122_DA8AFB86 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: kbuild test robot <lkp@intel.com>, Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vladimir Zapolskiy <vz@mleia.com>, soc@kernel.org,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 9, 2019 at 6:30 PM Joe Perches <joe@perches.com> wrote:
> > @@ -1333,13 +1333,14 @@ static int lpc_eth_drv_probe(struct platform_device *pdev)
> >       pldat->dma_buff_base_p = dma_handle;
> >
> >       netdev_dbg(ndev, "IO address space     :%pR\n", res);
> > -     netdev_dbg(ndev, "IO address size      :%d\n", resource_size(res));
> > +     netdev_dbg(ndev, "IO address size      :%zd\n",
> > +                     (size_t)resource_size(res));
>
> Ideally all these would use %zu not %zd

Ok, changed now.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
