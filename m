Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030ED120E69
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 16:53:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LB3U6+f7+waFV+ZRsivrb8tQoB4Fxz4lSioggfgH5jU=; b=g5sIeRZ6wHByGw
	wh9nu6iP9w6rKcDrn0tyFS05BGA1dOJo5qHJQdJ2BAVJLqv4q1WGyhWcdP0ZYLc2kQ0moOMq/Wx+0
	PjzNiD7bEgVrc9askPbB0yDvyET1PqdFZKaYqj2xIhj0vPF15CIW4F9wbmJY+41YNO6+4BBZl/6Qw
	On7UwInNVM6n4N+pHqbP5zNZd5CbWMlO7kpc33JFaj7qrS0cFQ1sT5EFC+C0/4VfRLn7QRscUa9lC
	0ZvOnFZMLHMe1XMGtoRj7mqgumXj8e/3SqEDZvoA6pn4ud1Ku2gc/6JNyMqSp+wVLcIzCqHgtdJRO
	buy8FHPIHr7mZX9K3dnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igsft-0003g9-9q; Mon, 16 Dec 2019 15:52:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igsfi-0003bz-F3
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 15:52:37 +0000
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
 [209.85.219.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91059207FF
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 15:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576511553;
 bh=eaQ3x3sQJkJ+Ir/RJSw4LQ05zXXPEkT+Q2g7IkDI1xk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=lgRlANm6ITls3sYB0vkQAD5vJ57JdMCMEmQ/XRM0hA1divZOs2sBzjxEwuea7F3a7
 ZAVlVG4YApTTQ/jZ68HF7/swo8gY4cFHYBLoYfyuvleEGHa3MTCyE1ipkW679xQY1G
 eFE5gJNMOLFuUWQsTsLrlxPgMeabqRVppPGDh7KU=
Received: by mail-qv1-f54.google.com with SMTP id t6so2475120qvs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 07:52:33 -0800 (PST)
X-Gm-Message-State: APjAAAUgeFQanO0mKKIwG+0kht/bWgDhtI0REyD1dBLs+F1PYSEyyISM
 8/b1kI3L+3CpPudatuTrQcLU0CHkcBiA4+GStA==
X-Google-Smtp-Source: APXvYqwVJYkAlWIdZU2TFQfbL6hRU5QxGwsrdp61SPZ/B7ThiZyfT8pRxhhI4yQUPA1YvRv8RCRQMv+9we0zkJBDmxg=
X-Received: by 2002:ad4:450a:: with SMTP id k10mr25719233qvu.136.1576511552698; 
 Mon, 16 Dec 2019 07:52:32 -0800 (PST)
MIME-Version: 1.0
References: <20191202233127.31160-1-ray.jui@broadcom.com>
 <20191202233127.31160-2-ray.jui@broadcom.com>
 <62254bbb-168e-c0ad-a72d-bd659a2c23fa@gmail.com>
 <0f0e965b-2e57-8b6b-0c72-1a1008497793@broadcom.com>
 <20191213235013.GA9997@bogus> <a5af90d0-eebf-3bf8-46d8-75160a1fc7de@gmail.com>
In-Reply-To: <a5af90d0-eebf-3bf8-46d8-75160a1fc7de@gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 16 Dec 2019 09:52:21 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKXdo+wouHZV9VFQojtQNK3NOLmj3NtnTmVo2fX541GPA@mail.gmail.com>
Message-ID: <CAL_JsqKXdo+wouHZV9VFQojtQNK3NOLmj3NtnTmVo2fX541GPA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: soc: Add binding doc for iProc IDM device
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_075234_519909_F0465CD1 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ray Jui <ray.jui@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 6:00 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
>
>
> On 12/13/2019 3:50 PM, Rob Herring wrote:
> > On Fri, Dec 06, 2019 at 05:09:34PM -0800, Ray Jui wrote:
> >>
> >>
> >> On 12/5/19 4:09 PM, Florian Fainelli wrote:
> >>> On 12/2/19 3:31 PM, Ray Jui wrote:
> >>>> Add binding document for iProc based IDM devices.
> >>>>
> >>>> Signed-off-by: Ray Jui <ray.jui@broadcom.com>
> >>>
> >>> Looks good to me, it's 2019, nearly 2020, maybe make this a YAML
> >>> compatible binding since it is a new one?
> >>>
> >>
> >> Sorry I am not aware of this YAML requirement until now.
> >>
> >> Is this a new requirement that new DT binding document should be made with
> >> YAML format?
> >
> > The format has been in place in the kernel for a year now and we've
> > moved slowly towards it being required. If you're paying that little
> > attention to upstream, then yes it's definitely required so someone else
> > doesn't get stuck converting your binding later.
> >
> > BTW, I think all but RPi chips still need their SoC/board bindings
> > converted. One of the few not yet converted...
>
> Is there something more to do than what Stefan did here:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ab06837dd269b600396b298e9f4678d02b11b71d

No, that's it.

> we could convert other Broadcom SoCs, and there, just found another
> weekend project!
> --
> Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
