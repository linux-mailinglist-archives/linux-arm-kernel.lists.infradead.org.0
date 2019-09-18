Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DED58B6720
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 17:32:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6EkCvHnJoe1ytsAqJVxMNXLXFAU/Mssx0+zCYxZfCQY=; b=BLSYkDN9+uEVM6
	uv6GQ8wH6kpW3Kvour4CZuKGJqZg/BpxqlyPNKgKJUZhxGmo3Qb4UzlbFegg9ZIvV/6Hw2EC2/86o
	6j94ffZKYIyRrjz+zorINA9YH9eQTNFS70kYikklBG0PdxNOUIvuw2mOm55ClysRyNvkB0jzSUDsp
	iGb7D9RnkLVe+bKWcLgB/zG4v/6PM2tv5KbsrHp9Hvznx6dfFY3ekaxgEHGGd5eKOlhMqWpiYoyml
	PtDXuevxpolAUv0YhZIuaP+otjGEIllJ0Fs5UfySlIDDY+CxvkkVqvTtj+tXmsbDLL3Xot8a6pRDZ
	BbG9/MKN3mC7XdqXktKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAbwM-0003uX-20; Wed, 18 Sep 2019 15:32:22 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAbwA-0003uC-2w
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 15:32:11 +0000
Received: by mail-io1-xd42.google.com with SMTP id k5so195720iol.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 08:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5hHyYF5L2cgk61bB7AKoE7ghGd7YLktDIb71RXFYwSY=;
 b=YGgeI6B01Qbog0Pa8A7w51DPvf6RmdRxnRonGsnP62fuwGd88IDN4UG+lpD6Ddc7xq
 M+ty3J2sAtJwaP6/ch1pJsoyndUWaw/Ub+pS5MixJO1WTrlL/g85/PgB0AqOHxZWJ5ku
 UB6/nJVXTJ4SNxqv1vkhVLB4nAr7no1B5Ux7DR973UTvJ6+Xm5eOQCi3hQryWMqWP4dL
 ggJZqKslPKINu2g/xR4e0Ot7fATqFIXXCz0oQO2mKQudImW1IKjISqfz99SjP9wc8r0j
 cy2m4J16+7lqIDur6yQhPftxjN8F7DpVh6DLNoGvCHae2IbITtYI5w12iOuM9KILqSX0
 yPsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5hHyYF5L2cgk61bB7AKoE7ghGd7YLktDIb71RXFYwSY=;
 b=fiX5THfu0RGnrdr6Iqopc0IGMKWfTDCBxVnhx+414UHlvuQprxJpc7I0skDyCT6OcK
 D3Mf5cJvusONw38cIFhz1DcUeCu+thrbKQI+po+KoajyzucYxfQf/tyG6zhkK5BlXY0f
 /cWOqFwz2eRQk3h8QkHfx7Eu22Gr9PwR1ptltP5N09XkzYT1RRIViFwZC5w4xP9jozSm
 MUBUrG4IopdlEvIdPuA6e1vpZsdOISU+yG/XzgpTxBX09YF3Bm9b1PXLb2p0P7eulhov
 AbIkkNIDWh+VZFeVdDFa5Folylytm6H6x6tolhpZEcMl/qWjVTrdunch12Kyp9wQ9nlP
 UBSg==
X-Gm-Message-State: APjAAAWxVATDvnIEW8GVHu6SAxHC1NzjlHiAE/yPXsdDLRqvR1ELIZhj
 BppYf72MEnod+clBejBU4bl3Z/wLaV/QuIWZvvA=
X-Google-Smtp-Source: APXvYqwk4f9W7fDif2wT0qTh3jeOw9SsTKj3pGjsr5Z9tYewP5UlYXoB5pDU86HPHtHxIvu0cXMLbgMMc0CrPu6wwAI=
X-Received: by 2002:a5e:c749:: with SMTP id g9mr5644589iop.7.1568820728787;
 Wed, 18 Sep 2019 08:32:08 -0700 (PDT)
MIME-Version: 1.0
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
 <1568626884-5189-2-git-send-email-peng.fan@nxp.com>
 <20190917183115.3e40180f@donnerap.cambridge.arm.com>
 <CABb+yY2CP1i9fZMoPua=-mLCUpYrcO28xF5UXDeRD2XTYe7mEg@mail.gmail.com>
 <20190918104347.285bd7ad@donnerap.cambridge.arm.com>
 <CABb+yY3drgYHk2_SZMgGhgSisB7wMVKFSx8VVabCcXkGByvgwg@mail.gmail.com>
 <20190918154654.6fb7e7f5@donnerap.cambridge.arm.com>
In-Reply-To: <20190918154654.6fb7e7f5@donnerap.cambridge.arm.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 18 Sep 2019 10:31:57 -0500
Message-ID: <CABb+yY3gJpK5ghS1u-e=f-msO+=oVvX=zDNj3Jg2i0-uJHrLiA@mail.gmail.com>
Subject: Re: [PATCH V6 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_083210_131495_65FD7249 
X-CRM114-Status: GOOD (  23.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jassisinghbrar[at]gmail.com)
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 9:46 AM Andre Przywara <andre.przywara@arm.com> wrote:
>
> On Wed, 18 Sep 2019 09:19:46 -0500
> Jassi Brar <jassisinghbrar@gmail.com> wrote:
>
> Hi,
>
> > On Wed, Sep 18, 2019 at 4:44 AM Andre Przywara <andre.przywara@arm.com> wrote:
> >
> > >
> > > > which needs 9 arguments to work. The fact that the fist argument is
> > > > always going to be same on a platform is just the way we use this
> > > > instruction.
> > > >
> > > > > We should be as strict as possible to avoid any security issues.
> > > > >
> > > > Any example of such a security issue?
> > >
> > > Someone finds a way to trick some mailbox client to send a crafted message to the mailbox.
> > >
> > What if someone finds a way to trick the block layer to erase 'sda' ?
>
> Yes, the Linux block driver control the whole block device, it can do whatever it wants.
>
Sorry, it doesn't make any sense.

> >  That is called "bug in the code".
> > It does happen in every subsystem but we don't stop implementing new
> > features .... we write flexible code and then fix any bug.
> >
> >
> > > Do you have any example of a use case where the mailbox client needs to provide the function ID?
> > >
> > FSL_SIP_SCMI_1/2 ?
>
> Huh? Where does the SCPI or SCMI driver provide this? Those clients don't even provide any arguments. Adding some would defeat the whole point of having this mailbox in the first place, which was to provide a drop-in replacement for a hardware mailbox device used on other platforms.
>
SCPI/SCMI implementation is broken. I did NAK it.
With the 'smc' mailbox you may get away without have to program the
channel before transmit, but not every controller is natively so.

> > But that is not the main point, which is to be consistent (not
> > ignoring first argument because someone may find a bug to exploit) and
> > flexible.
>
> Please read the SMCCC[1]: The first argument is in r1/w1/x1. r0/w0 is the function ID, and this is a specific value (fixed by the firmware implementation, see Peng's ATF patch) and not up to be guessed by a client.
>
The first argument of smc call is the function-id
  arm_smccc_hvc(function_id, arg0, arg1, arg2, arg3, arg4, arg5, 0, &res);


>
> That's why I think the function ID (which is part of the SMCCC protocol, not of the mailbox service!) should just be set in the controller DT node and nowhere else.
>
Actually that is the very reason func-id should be a client thing and
passed via client's DT node :)
It is general understanding that protocol specific bits should not be
a part of controller driver, but the client(protocol) driver.

Page-7 Function-ID specifies :-
1) The service to be invoked.
2) The function to be invoked.
3) The calling convention (32-bit or 64-bit) that is in use.
4) The call type (fast or yielding) that is in use.

Even if we turn blind to 2,3 & 4, but (1) shouts like a runtime property.

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
