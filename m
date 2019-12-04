Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1768F1124FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 09:30:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeLKUNfjlEw1plpIYOVkEXcFP8yAxQHItXbjQjMI+9U=; b=ffIf4rGBaKLssz
	iQk+crYX4YGa9oaBbTEK/xBT5kYPUxW8uWv5/58Z0WpCPcL3LT9HWKO02bPp8Ay8XmImZ3K/UIaxf
	l5O+XueaBPoOGIZzl4b7O0eJoizSiTqJMJPkbwMarq78nKFalDZLl6bfaDQm7it8wz/DshCRx+b90
	93709nAeUt1omiodf7eg22OW/WMn80/pDLvhGBR1eSvsPEcCOvA5LYmXR/ufcRo9T1B6NOR/nwM9R
	tAGts7IZbX4aJ9OcdZVKpIOPLYjzNe3qzVom219ZkaGABfV83FotYvMvlhzvRozXXljjapRo0Me+N
	MMBUWDbFRnt5lhzZkT3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQ35-0008P0-7t; Wed, 04 Dec 2019 08:30:15 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQ2t-0007pM-1i
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 08:30:04 +0000
Received: by mail-pf1-x443.google.com with SMTP id h14so3255806pfe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 00:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=26Svodx2iKimpEDX28qyUXASc5gWZTuY5LBcruAtYsQ=;
 b=KKZ+O0qQLp376LkvoLp+WaBAY1gCrMaSJqGMWi4S6126B1TeH6x48Xb8ngBRJIQc4F
 3QAbr2qXsqfgY6bBbrmVpx7DJZh3AcAVN/OhQxB1W9OpHyvXnlWafkDYFUJUuaxE3lvU
 cCh1rAALzHNb1CE+yvUyA6ql7xgTnsB+XrmeqJYTLh20JxMAm75L8JIRGzvgUrbCsv4e
 B+eaNcCE0NqBZmMcBWbN5onY15Vdj7MydB5ggqh2P+2Y0fQ5o710inQhwTl9o9xz/8ih
 tsaHh/wyC4jr98DqSeZCNAG4QxH/ZlWbuwQ3Nsp25rlkIpeZteEX1q1eLvBFWoliSr0W
 BSfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=26Svodx2iKimpEDX28qyUXASc5gWZTuY5LBcruAtYsQ=;
 b=R7IAQPwS9ZHHoqoJecSz4qfLafFLZif1KFnnfAAoWGhjL9XXPFToVNgIFjVyFEmm0N
 Ti3j8k75Cx1tpLd9Vuea9/DFA/YxCuqgoNmUT21l/0UVQgD3rZu9IK27IEUEWgbDsjOG
 nw1jPexz4yir5npE898Nv0aZfYGhNicIZsYQTM3iVNC/emjdaHruP3L+Etx4NRJO4DZy
 YTUC7hMxDNdTOYbhoyK0koQgdhshIL+3yTclPRcoK4JyTp+JKfrlzR0/36k8/6kqFoCm
 8e/fljQCmmmxYqF10wVbNTPV8otRPwGucJVCYjiR1I81cVEyL4HFDTH5rbs8khv+9Wn7
 5Odg==
X-Gm-Message-State: APjAAAWQOWWBb9K34a7OvU5O3Itl/qEJhw8gmky+mWuUbX6CV0+juNq9
 mBxARxbR8XFzk35SC9NWIEgplAdhqHYW5xW+VUE=
X-Google-Smtp-Source: APXvYqzjAZ0vAhPhJSIR2kF3EuRKWdrEJY88vgQI+LDDt1kDWp6YChc0yxSHIbzB8zqEI/D6eXIErZ/TdjfYIfEZpgM=
X-Received: by 2002:a62:1a09:: with SMTP id a9mr2343166pfa.64.1575448202017;
 Wed, 04 Dec 2019 00:30:02 -0800 (PST)
MIME-Version: 1.0
References: <1575349026-8743-1-git-send-email-srinath.mannam@broadcom.com>
 <1575349026-8743-3-git-send-email-srinath.mannam@broadcom.com>
 <20191203155514.GE18399@e119886-lin.cambridge.arm.com>
 <CAHp75Vf7d=Gw24MTq2q3BKspkLEDDM24GVK4Zh_4zfZEzVuZjw@mail.gmail.com>
 <40fffa66-4b06-a851-84c2-4de36d5c6777@broadcom.com>
In-Reply-To: <40fffa66-4b06-a851-84c2-4de36d5c6777@broadcom.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 4 Dec 2019 10:29:51 +0200
Message-ID: <CAHp75VfyKAg4OhzUa4swGXOGTvJ5fVO8mhGSG=5HAUP__M-URQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] PCI: iproc: Add INTx support with better modeling
To: Ray Jui <ray.jui@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_003003_136323_B4824197 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Ray Jui <rjui@broadcom.com>, linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 12:09 AM Ray Jui <ray.jui@broadcom.com> wrote:
> On 12/3/19 11:27 AM, Andy Shevchenko wrote:
> > On Tue, Dec 3, 2019 at 5:55 PM Andrew Murray <andrew.murray@arm.com> wrote:
> >> On Tue, Dec 03, 2019 at 10:27:02AM +0530, Srinath Mannam wrote:
> >
> >>> +     /* go through INTx A, B, C, D until all interrupts are handled */
> >>> +     do {
> >>> +             status = iproc_pcie_read_reg(pcie, IPROC_PCIE_INTX_CSR);
> >>
> >> By performing this read once and outside of the do/while loop you may improve
> >> performance. I wonder how probable it is to get another INTx whilst handling
> >> one?
> >
> > May I ask how it can be improved?
> > One read will be needed any way, and so does this code.
> >
>
> I guess the current code will cause the IPROC_PCIE_INTX_CSR register to
> be read TWICE, if it's ever set to start with.
>
> But then if we do it outside of the while loop, if we ever receive an
> interrupt while servicing one, the interrupt will still need to be
> serviced, and in this case, it will cause additional context switch
> overhead by going out and back in the interrupt context.
>
> My take is that it's probably more ideal to leave this portion of code
> as it is.

Can't we simple drop a do-while completely and leave only
for_each_set_bit() loop?

>
> >>> +             for_each_set_bit(bit, &status, PCI_NUM_INTX) {
> >>> +                     virq = irq_find_mapping(pcie->irq_domain, bit);
> >>> +                     if (virq)
> >>> +                             generic_handle_irq(virq);
> >>> +                     else
> >>> +                             dev_err(dev, "unexpected INTx%u\n", bit);
> >>> +             }
> >>> +     } while ((status & SYS_RC_INTX_MASK) != 0);
> >



-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
