Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C9AB65B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:20:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6aiChJBC4yqneqk3MvrguAHl4yvXA7UgPSPHOgn6zkM=; b=IsSxAx5nD51j08
	4pXtyv9U3FbbjRXau6k8I5M/NeTyrGZ4D3SpJXrnDEQ1z4cz50Un2qDnBjXjmZfk4tYVmO3RAS2EH
	Jw4ky3FLtcB6i79fc/401/CvOLuGeZMwNb11Wl8Nb++xR9e2RpHjiYUKhXmpQKl81f8YFn/hKbRjQ
	hSMonSQxDDUFMOD8Y7ztPIJ8z2wH+C4B9QQDxpNl8Lzc9im/T+/MDrahkeb/mFSZmxwoYn6U9U6pn
	u/h2H1Z0VOyoYEJp1RdtVXIEil8KUE7mfemoWIgdAMOXB4WhOhNPgmITxD6rKxXYavL+ySxR1lIZy
	SwPQDAuLAjKvFAuKUyTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAaoZ-0005kV-Hd; Wed, 18 Sep 2019 14:20:15 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAaoM-0005FJ-7W
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:20:03 +0000
Received: by mail-io1-xd42.google.com with SMTP id j4so16457364iog.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 07:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Xb5vsk4ByYCljpamUYnVxquRDCd6LrWhyHEatUcXjEM=;
 b=DRJPtt+UbulKRjdneJ2UT4q1JUjML/4NsZiGrCwo2c7Xb4USN12uvqFXWVERs96Cwq
 agE93np1t9X86TTE3G3P/eiIpuJ8OVpxc5wmz4GnMJZUDOw7ENNJN+h5WdSFNN3bkeV+
 labaSZQVeOaK7iryprDPXELi8wPSNN4h3+n4FES1yVE1urQHPYKpw2lXg8hKDj7p2xHf
 C4TrKYNi6OB2lZ2c6YOVlayMbxold6kTUOZXMwtOnmue3FRXI8uClbqExAb7bbLXJMH1
 1rnyrJKLJENJq2Q4WFOVRPKCLPB9Rfn7qBOm6wKwq8XLwCg9IQ6zTNykhqBKtzjWLAEd
 C2Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Xb5vsk4ByYCljpamUYnVxquRDCd6LrWhyHEatUcXjEM=;
 b=SvAB2wj1lV5I+kDGvPwPLrE0AxuPn+iBjBBwODPYDk8xWrf7HS8gt6PLNoWH/a/IXZ
 OmSQBu3fzmci3GNWAH5hxGnFII4J/Q/7IB7MXde9Fg/s9zOTNWY8UKS4nFdkrTw4oDv9
 H/Dd0x9HLGzseecKxkdPP8z7KG5kG4nK4PM0JpxK7EDuNIarvqSDrWahaVHG1uWIC0st
 T/4xunpkYuQGqMedlnoDYXkiT/+sqK+6d0aAsJ2HvktSV816rrOc4pr95gphv2pP6ZiQ
 j4BQqnw5VPcRyVL8b5/3yoDz1+z9h2uvR309cpQ4yal2Estwe8d9H8+ED5Ls6tq21+WE
 78dw==
X-Gm-Message-State: APjAAAVLjuTtAK3YC+NxcwmWzhdz77UP+O4uoExTMm2aNpgAe25yTItF
 FM4NqmIss8tJL/RUiyLJHnMB6Bt3gAamjhqyxCE=
X-Google-Smtp-Source: APXvYqzMQMLbBq8xhQ3ml0Zr84HLMY5zqvHRHb+h9kEWI3tjwCDwFV3H74tFrd3astszgsxxFHaTt7KjUdOULfAqCpk=
X-Received: by 2002:a6b:f319:: with SMTP id m25mr5043536ioh.33.1568816398022; 
 Wed, 18 Sep 2019 07:19:58 -0700 (PDT)
MIME-Version: 1.0
References: <1568626884-5189-1-git-send-email-peng.fan@nxp.com>
 <1568626884-5189-2-git-send-email-peng.fan@nxp.com>
 <20190917183115.3e40180f@donnerap.cambridge.arm.com>
 <CABb+yY2CP1i9fZMoPua=-mLCUpYrcO28xF5UXDeRD2XTYe7mEg@mail.gmail.com>
 <20190918104347.285bd7ad@donnerap.cambridge.arm.com>
In-Reply-To: <20190918104347.285bd7ad@donnerap.cambridge.arm.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 18 Sep 2019 09:19:46 -0500
Message-ID: <CABb+yY3drgYHk2_SZMgGhgSisB7wMVKFSx8VVabCcXkGByvgwg@mail.gmail.com>
Subject: Re: [PATCH V6 1/2] dt-bindings: mailbox: add binding doc for the ARM
 SMC/HVC mailbox
To: Andre Przywara <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_072002_293954_8255BD1F 
X-CRM114-Status: GOOD (  16.92  )
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

On Wed, Sep 18, 2019 at 4:44 AM Andre Przywara <andre.przywara@arm.com> wrote:

>
> > which needs 9 arguments to work. The fact that the fist argument is
> > always going to be same on a platform is just the way we use this
> > instruction.
> >
> > > We should be as strict as possible to avoid any security issues.
> > >
> > Any example of such a security issue?
>
> Someone finds a way to trick some mailbox client to send a crafted message to the mailbox.
>
What if someone finds a way to trick the block layer to erase 'sda' ?
 That is called "bug in the code".
It does happen in every subsystem but we don't stop implementing new
features .... we write flexible code and then fix any bug.


> Do you have any example of a use case where the mailbox client needs to provide the function ID?
>
FSL_SIP_SCMI_1/2 ?
But that is not the main point, which is to be consistent (not
ignoring first argument because someone may find a bug to exploit) and
flexible.


> > > The firmware certainly knows the function ID it implements. The firmware controls the DT. So it is straight-forward to put the ID into the DT. The firmware could even do this at boot time, dynamically, before passing on the DT to the non-secure world (bootloader or kernel).
> > >
> > > What would be the use case of this functionality?
> > >
> > At least for flexibility and consistency.
>
> I appreciate the flexibility idea, but when creating an interface, especially a generic one to any kind of firmware, you should be as strict as possible, to avoid clashes in the future.
>
I really don't see how there can be clashes with more complete and
flexible implementation.

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
