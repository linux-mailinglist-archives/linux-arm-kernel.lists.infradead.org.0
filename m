Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 988F2172BBC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 23:49:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvlUxCEwNN5nrtbowpJluEZGBDW3vBmW93GLKxrLbCk=; b=R1IBdWlYGR4qjY
	QvvoBuU4cbHkVtyy2ezM0i4pfrgMaT1BxxZCCSTZ9+kfoz3ySa3AeJVXAEFPOZhX0KTiLbJiAhIFC
	xhbiCt+LknHUgwvfGCLu53r1l1K3nnWvVAedynk9u4+/sShaxRCFXDYu08KPBSd1YibrsrICcl0qH
	ffyezF+LPxZOdeBgN/Wip6QppCkLo/vg8YVjqyIjPC5HUKCGNm8aITsfml23B3zJeNMgYFzKMPR5X
	94DAZAeTZ8wpqhLRWRw4ZQvmj7q12nccR/kFm6KIbW0jVxEinwk4F0guDW4d6CrRCe6rtOAyDXacb
	KXJ6l0zFRWhVbhe5bdiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Rxz-0001Jo-3f; Thu, 27 Feb 2020 22:49:15 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Rxs-0001JO-3k
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 22:49:09 +0000
Received: by mail-ot1-f67.google.com with SMTP id v19so809895ote.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 14:49:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qrt5LAslHCMpZZk+1bFnZB1hkmKt9afE9QUzznOIIn4=;
 b=bH5EpooSu2HkoRQgcn8bdp902E01bzDmVrM43bkOGBX/jeonrnOWrAoOk3Qt3qA1FC
 sMnRYEfdiWPmsyMJQskOJzmtUQ3ztt58CqHjsjjyYnSWSguQQEfXb2W26JpmoEzR+5hS
 b71LWMYLSTOrhLElHbVblNyIKMN3Tiw3ANJw105DL+qc83MN58nOBzo3O/fHFTyewoHN
 kQcJfC6y4xEq+SIzpcwtqYllNhmhrSTEKPAM0ubsxIEqMFXbgRRunFbkcHBn5ge2QYu4
 qyaWgF+4XN/LKFevErc1UFgJIHbVwvw75JMQuDU0MgnVN7V2gzxMOQh9MXl6vNZwhrFT
 fQZQ==
X-Gm-Message-State: APjAAAW1tEieCnaTg9PuJ20sKLIMTWxeFyZ7+W9Rtid6LLkYkLgzoQBa
 nBmM8dOK5JKadOm9y8SMDrpjntNs
X-Google-Smtp-Source: APXvYqxtwvE4XzNHTh0nTRT19JyytsVfMtMtRdgUrxos0/8yr/t+zJ0jRE1DqzAuUUblsBV2/saHFw==
X-Received: by 2002:a9d:51ca:: with SMTP id d10mr980263oth.76.1582843746054;
 Thu, 27 Feb 2020 14:49:06 -0800 (PST)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com.
 [209.85.210.52])
 by smtp.gmail.com with ESMTPSA id f142sm2464014oig.48.2020.02.27.14.49.05
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Feb 2020 14:49:05 -0800 (PST)
Received: by mail-ot1-f52.google.com with SMTP id 59so784993otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 14:49:05 -0800 (PST)
X-Received: by 2002:a05:6830:1184:: with SMTP id
 u4mr892613otq.221.1582843745073; 
 Thu, 27 Feb 2020 14:49:05 -0800 (PST)
MIME-Version: 1.0
References: <20200221174754.5295-1-michael@walle.cc>
 <20200221174754.5295-4-michael@walle.cc>
 <CAL_JsqL8QGKARtRAfjCMyk4Pp7EWhFMV8JQpveHoJ2OyH5kBPA@mail.gmail.com>
In-Reply-To: <CAL_JsqL8QGKARtRAfjCMyk4Pp7EWhFMV8JQpveHoJ2OyH5kBPA@mail.gmail.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Thu, 27 Feb 2020 16:48:54 -0600
X-Gmail-Original-Message-ID: <CADRPPNR1n1sviJnhq_zuUFJcMYqsVKy0O7NOF1pxF_4VH+dasg@mail.gmail.com>
Message-ID: <CADRPPNR1n1sviJnhq_zuUFJcMYqsVKy0O7NOF1pxF_4VH+dasg@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] tty: serial: fsl_lpuart: handle EPROBE_DEFER for
 DMA
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_144908_154251_59B58995 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pku.leo[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Vabhav Sharma <vabhav.sharma@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michael Walle <michael@walle.cc>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 4:35 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Fri, Feb 21, 2020 at 11:48 AM Michael Walle <michael@walle.cc> wrote:
> >
> > The DMA channel might not be available at the first probe time. This is
> > esp. the case if the DMA controller has an IOMMU mapping.
> >
> > Use the new dma_request_chan() API and handle EPROBE_DEFER errors. Also
> > reorder the code a bit, so that we don't prepare the whole UART just to
> > determine that the DMA channel is not ready yet and we have to undo all
> > the stuff. Try to map the DMA channels earlier.
>
> Changing this means you never probe successfully if you boot a kernel
> with the DMA driver disabled (or it's IOMMU disabled). Some other
> drivers request DMA in open() and can work either way.

We got this exact issue previously with another driver.  When the
required DMA driver is disabled, the DMA framework cannot figure out
this situation and keeps returning EPROBE_DEFER.  I'm wondering if we
should update the DMA framework to use your deferred probe timeout
mechanism.  Is it still only used for debug purpose?

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
