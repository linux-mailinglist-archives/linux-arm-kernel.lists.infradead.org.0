Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 180EC49BE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 10:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W1dPfDknPa+2qSyJ8Z5ON9HGEU35TQI9rkaas5oid+E=; b=oiuXXrZaxu1FKG
	m8HbtgvqxARBBdHEji0zAYhCRFbz1g6/oKPuSM9vHa4Sw6s5qI83l/+uKVT1vPjYCPCsAAPwNEh6r
	AYEfUYMl63zcqoOSSpFoOih/qVB1UlMs18/rMTFQSh1fxhP2/2O2ntMCwl0huEgmXu/YFxKAmvVrz
	HD3/f6UCmDAVw2xwd65/quoeCUXd3OeMysT3FhgXSvDSmLMDhKPZCpnYmmT4Em9toMcSTrw45uP+q
	jzPG7UmWFSr5DkX0duLgzceCG1UAVEr1xCb2F5qB6ZXEf/ptDkbJmblxbQXYzEEoeJQ7HFavkbI3b
	0s4qAFlQIYoAbD78Pn+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd9Kq-0006E9-5e; Tue, 18 Jun 2019 08:19:20 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd9Ke-0006Db-GP
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 08:19:09 +0000
Received: by mail-io1-xd44.google.com with SMTP id e5so27836317iok.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 01:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bbJ88kpjFXVKWwYCj82yiNOlHEi4JXwCEMowYlK5O/M=;
 b=tja67qp76JqUYmQn2zhRnJOaKYXuKQsyyVMYiFb9M43VXnDbMq+Xq8oqTDOFaZZAC3
 xSDX3kyzz6+WubF6bEqu1iC5IZFKrkWMCu3N+4zwsEjUl2LVI56haaA63wPR83y6MQMx
 AI+phBye8iBCkwhRwPRKoGr+cKG1fg+EsbeE2ifi0xKOvY2yh7wH7Ep1HwvmjajVS/fK
 eMROySbpVUfJLXr9g48QRMV2rcvLWLQeU6392jjXXK57W3vsCGONXYfFw8CPXHzsMw3z
 TBEqZfA2QeygNH31SHff/Ch8CIPnUuDLkWgwb5MhJEyGjbm5MLg0nu9Gf2Onn3IyZjRv
 r4wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bbJ88kpjFXVKWwYCj82yiNOlHEi4JXwCEMowYlK5O/M=;
 b=clbBfET3RJ2f56wGQ2MFVRZEENvzpSEVbgPbTtfJN5JaZRovyF8Anj3y5A5XxNZ1NP
 9H93T4aiTXPf8U5RQSWnZuLnJ7wlEn846CjCs6yFspCZRz/a9IrjuRfrR5mJVHOn5g7X
 pIE2U071UHuBy9X1hYKP9SKLV6pbrGDgfiF6fYe08Q3NU3kbqH6VGlwxHnuo4bRCmEOt
 fLszvzV2RQkbvaa2XRCBBKY6DeyIZP/89RMnNiOvb1ykatOV+IZOjkeAaViVVyVt8yml
 SC9lXh673h71E5axW05sVg9LSyalKbx9JAKpvmouXSiz8O6d3QaJLrl2yzvWRITsycTv
 6DZg==
X-Gm-Message-State: APjAAAU3GJtS/QdVJ0iElje7I2lQEoas0IrUegfw2rpQDa/l5Xk5jXwf
 m/23koeteWfDANNKuzUFhMFzi47UMDNAn72sTWfK6w==
X-Google-Smtp-Source: APXvYqxsPbbW5y8kEepKdfqUIclihH12B+STl2gzv9SVJf3sS+fVRr+iJkvNhzcpwnz+iz0C1+9dEVupsl8rORg2uoA=
X-Received: by 2002:a5d:915a:: with SMTP id y26mr2103948ioq.207.1560845947104; 
 Tue, 18 Jun 2019 01:19:07 -0700 (PDT)
MIME-Version: 1.0
References: <CACRpkdYTgA1i_uFC7NVYVmXf4WhoPHucC11-SrTRYFDUWLtXNw@mail.gmail.com>
 <20190617121124.hkzmwesac64utguo@localhost>
 <CACRpkdZeV72GdbsYmKBB16e_voYMFJfLkLpmGDjdt8ontxQfDA@mail.gmail.com>
In-Reply-To: <CACRpkdZeV72GdbsYmKBB16e_voYMFJfLkLpmGDjdt8ontxQfDA@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 18 Jun 2019 09:18:55 +0100
Message-ID: <CAOesGMiC7gGqYr617dv2Cq0gSyB6Fc-gLxjbWediEqbSJ=+u3A@mail.gmail.com>
Subject: Re: [GIT PULL] Delete the mach-netx machine
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_011908_598511_70F2FC76 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 9:35 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Mon, Jun 17, 2019 at 3:05 PM Olof Johansson <olof@lixom.net> wrote:
> > On Tue, May 28, 2019 at 01:21:20PM +0200, Linus Walleij wrote:
>
> > > for you to fetch changes up to ceb02dcf676f41d281af84c9d6000fe27651ebb0:
> > >
> > >   ARM: delete netx machine (2019-05-22 13:55:50 +0200)
> > >
> > > ----------------------------------------------------------------
> > > This deletes the NetX 100/500 machine support.
> >
> > Merged. You get a C- grade for your tag though -- I brought forward the patch
> > description into the merge commit too. :)
>
> Damned my kids get better grades than me this year :(
>
> They will be much better with this, once I get them to do
> kernel code.

Isn't it a universal truth that you want your next generation to do
better than you did? :-)


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
