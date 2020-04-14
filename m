Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB701A7B78
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=onuA0R1F+yt7QftlCbrCxdeV142RAwegiB7Lr9RFgIU=; b=p29hB6mP32I0TH
	gpK0zD5B3RjlqG/rJVkckm6jKcmrK1UyIhum5x0xApRcH4nDyubOYw9i0z+eHuswzNNsEsG6eiGDa
	KbYO0LSGiRJ2YdRR9gsPiDu22zC+kQ/U0zIu6q7cAEnn6ta5pfA/lNTnf/ID0BrTQELi/zh+VLaxI
	L4BwlpsDeBt3gO9WFMzIW+kNO/Dv13xKSks7zURhY3fcHsk1/s5E0omQpFiiMhsOlvfeFu2cr67Kx
	91XWGDxoIZxRdbtMjglHE3QM6A9ay79a46EanUaAyfvTNIzzzJrFX8AiiwB1dhRm8M5LiZGcWcCiL
	rN3QvEMOOhGkos3O7Hww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOL70-0001NC-C5; Tue, 14 Apr 2020 12:56:22 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOL6s-0001MQ-QP
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:56:16 +0000
Received: by mail-io1-xd41.google.com with SMTP id y17so13029752iow.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 05:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=WmKnt9IWUrzAuhEohqCY3TXSHVnyDH4OyXTe3heTqDQ=;
 b=mSlj5I5N6ehhOd94m6K9l1JhjiTvdUCgjA7WjJfcJHE8YlAUmzc0FPOmItSKX2m1gb
 FLnSo/GNMLUDo7doo4d2F+5/Zn1CuXZhjMgsbpQ/32D4/UvxLqkvjbGP/UnBs9Sh12Kr
 /GLmWHevddC7louBWX5YhQvkcZ155MJhzFgMGQqrpKKWmjx3Dv5VjIyf9gL3kt/aQGe+
 lf4yKLJME32xvAevGeqlq0WRTUZga0GcIhDOQfxEOT6jV+xnyBXI3cGgDDLtDrHxXILz
 rNh9UUlnzcDb4ftAD3Ky3WAwnFs8xy50o3hP1o9ued+NuZ/wTnCkcr1SCeJ6Nv0igfbK
 RESA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=WmKnt9IWUrzAuhEohqCY3TXSHVnyDH4OyXTe3heTqDQ=;
 b=e8N68rcFiXq4yQrGQk1Dbcg41A4Dvzub7mQPY4HN38/jadxWO+8LPzFBTvDzWbDpXF
 aq6Z9H+8nzmOM8jgtlmv5rBZVaf0ruAHRGxlCinAfmh0d2AvvuwlzTU+8dzhxv2szYVL
 IILf7Cn/Q3sgwfG+WJh1bydw3sObEAW0HqZ1ZTOn2CVrXy5N7W79W04IXK+olv+wNI6v
 mmjVL+zbvK51BQH6VisYDq367rEDWZ0CU5/F+lQlsan1H4i+1isot2WfJE3lNGK9RyGB
 u0rQXLOd7/Pljg3GkfMuojrWYXelGZzKbF+f4bjOEJWRUPxzLsrGBJbrxq8Ypo0oKc69
 N/Lw==
X-Gm-Message-State: AGi0PuZ0Et1niwY1WgCPQ1qEYot607oXfkbkOLdJ3C1QSec0dBdLon9b
 1oZcWl5aXHKGfOWf3IHQvoi+CH9YpgISUX/NPV4=
X-Google-Smtp-Source: APiQypKGlOMc8nc6ZarSdgZtGNhQGKIDIWmWoaCNosUsKajgvTEytxLCZeLng0K4JWPPCQR353dMJhuQX+uVzEsakG0=
X-Received: by 2002:a02:8785:: with SMTP id t5mr19987768jai.15.1586868972607; 
 Tue, 14 Apr 2020 05:56:12 -0700 (PDT)
MIME-Version: 1.0
References: <202004140212.PdfY02eO%lkp@intel.com>
 <CABhMZUUEFK_b=3qx7O+puzfh6ioZbTcQHWCq9P=J-FV+d_r05w@mail.gmail.com>
 <b5da1119-bad3-9840-15f6-867a5d890b06@intel.com>
In-Reply-To: <b5da1119-bad3-9840-15f6-867a5d890b06@intel.com>
From: Bjorn Helgaas <bjorn.helgaas@gmail.com>
Date: Tue, 14 Apr 2020 07:56:01 -0500
Message-ID: <CABhMZUU-m9EGea3XbDDGgfnThxQ54iKj01WPDqciffNQRFVARw@mail.gmail.com>
Subject: Re: [xlnx:master 9789/9999] drivers/usb/dwc3/core.h:1462: multiple
 definition of `dwc3_simple_wakeup_capable';
 drivers/usb/dwc3/core.o:drivers/usb/dwc3/core.h:1462:
 first defined here
To: Rong Chen <rong.a.chen@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_055614_853467_0F24AB1B 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.helgaas[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: bjorn@helgaas.com
Cc: Michal Simek <monstr@monstr.eu>, kbuild-all@lists.01.org,
 kbuild test robot <lkp@intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bjorn@helgaas.com>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 7:36 PM Rong Chen <rong.a.chen@intel.com> wrote:
> On 4/14/20 3:44 AM, Bjorn Helgaas wrote:
> > On Mon, Apr 13, 2020 at 1:42 PM kbuild test robot <lkp@intel.com> wrote:
> >> tree:   https://github.com/Xilinx/linux-xlnx master
> >> head:   81566a0b82c7995ca879463e66573c76ba774ea2
> >> commit: 16e9a62655524541cb2f2c59fd5f1f167fbf73dc [9789/9999] asm-generic: Make msi.h a mandatory include/asm header
> > Why do I care about this?  I have no idea what the linux-xlnx tree
> > mentioned above is.  The 16e9a6265552 commit doesn't exist in
> > linux-xlnx or in Linus' tree.
> >
>
> Hi Bjorn,
>
> Do you mean the above tree ("https://github.com/Xilinx/linux-xlnx") is
> not the official tree,
> Could you possibly tell us the official site?

I don't know anything about Xilinx trees, so I don't know whether that
tree is official or not.  My only point was that I couldn't find the
16e9a6265552 commit.

But apparently I just don't know how to navigate github, because
16e9a6265552 *does* exist in that tree; it's at
https://github.com/Xilinx/linux-xlnx/commit/16e9a62655524541cb2f2c59fd5f1f167fbf73dc

It corresponds to upstream commit a1b39bae16a6 ("asm-generic: Make
msi.h a mandatory include/asm header") from Michal.

So I assume Michal will take care of this.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
