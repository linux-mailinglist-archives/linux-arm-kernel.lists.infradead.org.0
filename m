Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABE857CC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 09:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rWG6bSjZ6SysQlgfpu3o4209PCsOdukJajktTYKQ7Ng=; b=RDyVnHlr0XEWPx
	N7bDZ6dO18uR1lffuvwKsT4b64R7TWnut2G27Wv1n7GgnfJj5ZiYJAu3T+s/ImTkvtPjSj954DEAa
	4fk7hHDjDojGJaZ1KqxtniJX03jIZmiMOefTYF6F1pE5q0BCCnsgUV86mOgK6kVJ/FfcslEv0KJc1
	g/sYUxU+Wez+zR41bXd/ekX9Q7KGJnHTc8nopmU11ZBNkVXyPbLpUucGR/ogDS9FI3fPPW/IM2EwX
	x5q4xzhxp6E1JahqlfdLCq7evWieU/d9LoUDhJ9k0odnqc0TxBu0FKZrHINaFNsiOO5ttEAoq8L3x
	Xgq41YZ/K6jaUmyCmCoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOUc-0008KQ-DS; Thu, 27 Jun 2019 07:06:50 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgOU9-0008IU-JT; Thu, 27 Jun 2019 07:06:27 +0000
Received: by mail-io1-xd42.google.com with SMTP id h6so2502556ioh.3;
 Thu, 27 Jun 2019 00:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LRr+uF1QUQRJ7/F9/T5M30/xxy4B4+/9v+X/o1cToug=;
 b=RfOIL0lOlaZDUF7NWRsawph/bbFNFqJ+tXE5LxfXJCn8qiRwkS4Ecggkv/T5AZItm/
 pc1Xiz9po2siM475iIteHwCSDSkDuj0Y9wEv/H/qJ7vEl2plSf/1kyJPftnmBDUEDibH
 4eeQzoIFss3yffIwTdSl2EP3GBVEMOdM8C/YdtRxi51oa+iWXzsuCfggtOdUn1dyH+ZT
 EjqBuc5p+fNOMxKmrLknPGQZVyEbp4NQUSyJGtGj7JF7OtutTtQttCTK6btdLEg1Djd3
 JyET+4QtL0nZBUIPWQjRJ8wJmrVbHhMJaQ1OogMrVwW8UbOPTHXQz9hmRm2ZzP0f4b6S
 0kUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LRr+uF1QUQRJ7/F9/T5M30/xxy4B4+/9v+X/o1cToug=;
 b=B6Z9NLKqYXeHxzO1thi4NqD0Rb46Ho7RAYpZm3kww3+eyLV/0ZKK+/Pb5fv3ldQfe0
 vMwxEQK6yzmA0jIpgcM8RyW3OlqgVfV6t3biKSuWEHZe2GB/aHvotJ9yCuRO5FKu2nce
 94p1Ofr9o3Tr0DGjbhqZX1klAtOc+Lz1IOYCEWY5grFo7KadG4iQ4PCIJTGD1Qpxel0x
 5KWBtfwOyGS4Y/kVzgfAZvyOSGMr+IR3Q+C9IDKP5UiyfkEhV38NztpL9dZEfpA6Nfhw
 5I3BeKSxnEI6HiMCbj8BqxfbFsZl6GXpTooR/4iIBsntIfzFcQMyufEBjzq5WaawwwB6
 L3UA==
X-Gm-Message-State: APjAAAWtDdejym+LNxRBJrkB532Oo6SqO9vH1fBPYUHeG8pb3qry9+nn
 B41AShjsWF8f3ib9+9pgtHa7QRyB793k3e5pU1s=
X-Google-Smtp-Source: APXvYqzU4jVA9BLDxzgmTgjUZqDqrJZqJr+0QgODw/agJoAacTv8dQXvqOSFDC5M6zdEAP1pGvH+vzh2jDBhiwJ2bC8=
X-Received: by 2002:a02:c7c7:: with SMTP id s7mr2803109jao.37.1561619180028;
 Thu, 27 Jun 2019 00:06:20 -0700 (PDT)
MIME-Version: 1.0
References: <1561414395-12518-1-git-send-email-wahrenst@gmx.net>
 <20190625075558.GY28859@kadam> <27ed9c22-1d36-7c3e-a81b-5fa1e8245d1e@gmx.net>
 <CAAoAYcNhwoCwRrac7ek+5XfjqJyBUj1jHefidSoLmj_XG7jPHw@mail.gmail.com>
In-Reply-To: <CAAoAYcNhwoCwRrac7ek+5XfjqJyBUj1jHefidSoLmj_XG7jPHw@mail.gmail.com>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Thu, 27 Jun 2019 08:06:08 +0100
Message-ID: <CALeDE9Pz9m3C5sUUOjgbgzH+cxhSByxj1ebHzoUjDVw6gW07zw@mail.gmail.com>
Subject: Re: [PATCH] staging: bcm2835-camera: Restore return behavior of
 ctrl_set_bitrate()
To: Dave Stevenson <dave.stevenson@raspberrypi.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_000621_638739_05C77627 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pbrobinson[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>   Dave
>
> PS Is linux-rpi-kernel actually behaving for other people? I didn't
> see this patch when it was submitted, and it isn't showing in the list
> archive either.

No, but it never really has for me, it's always been weird in what it
allows through by default and the admin has to approve a lot of things
so sometimes you'll get 100s of mails at once when who ever the admin
is catches up.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
