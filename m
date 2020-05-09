Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABBA1CC3BA
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 20:47:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0sm3l3Kyg2IKDj7Ql40zaVSCDPCg7x6WMTzwK9ScBc=; b=DpAGzdcsb/R6bk
	KZalKhvgMgHdi9C9h+cALruaFPLo4ZZQ6cKbgo4Nka6gVCLjmrQ3QHoeYMCANeJ6hPBDbudXXfPUu
	B3LouayTCPUQKixSRKSFhPaSm788PkcE2XLLlek5ZkH+ZM+caeLDkRIwCGRzeKZvOopfh2YbYHK9x
	zNqFH2CJPVV2WYrr3kfWxd26o0f64LuISBt78yYQbN7dUgYDN4pmP7KFf6dO8nthnl4EIqYfpjYFR
	QxIgV+6oDE2+VpMX649HWTTahLZ0AG84r6HLlxI2NFZDGLaRWT+WSJBoOdJKFYIru4bolee1tjmpl
	LdAHWqrjEAocFnRJsCZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXUVO-0002Yq-QR; Sat, 09 May 2020 18:47:22 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXUVF-0002XY-VQ; Sat, 09 May 2020 18:47:15 +0000
Received: by mail-lf1-x142.google.com with SMTP id 8so1355234lfp.4;
 Sat, 09 May 2020 11:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=r2VqzdQ3t3l9GLlfIblPu8fIc2SHZonPe2y2Y9yrzwA=;
 b=GNin6+nWM1QP0m2z2hzY8zsRxqDBXtplG9wjFmOI1ojkUNRLK/92I4+Q7OAX+WzfxJ
 jeP6kJWDxAzjEZPTJifP7QYUSRiOgFJ0ke4eAeXHoWxJc0jOMZjK1g5wF0zWOpZxTuhv
 sv0T/R7VPmB2U+RjECSIWuLjjX+Gx2KuWI36/teOaZZHLHYxC3t51ccoY/x9Hv9XdvK6
 jV09Kal555yn4AtGCKL0piKHqimwgL45NBm2bp5fgO9slMCOhh0JzQ+CHBC4lhDoLPvp
 i4ihRv9OUGLBDyKhHPev4lxHDLhsTsxQ34cMV7CmmZYgwfYd/TG5gdUR7BY59qve9I0v
 uyew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=r2VqzdQ3t3l9GLlfIblPu8fIc2SHZonPe2y2Y9yrzwA=;
 b=oJZAhstu10b+WOi4W9xPLp2M9aw1GJEnD7CBPjJYg+V/6VHCUVYFRjh5Cni1fGwYm/
 lGLGxmFFBqvS5wUOJ4wsutK4aN56+z7lNy5ljQDcSZT5ok8CKz8yQt/8hMlWcsTjGWu2
 52VmaDT4FLoD8DgXC5RKZYjmX9qEFLHJ9VAxITPUGwYWjCUBW1W28J/49I+yy6YG6lHd
 3n1gOtKJnpazyT4Cnyjcb5Sx6Bw6pabqw3Riz65TcRV1+obaQs6dwwP/UyFHjScevL09
 npHpIgtkOhVhp0YzTESsfjwIG1xkoZNcqiG/Lg0ZqKdvLssHRaWjSi54Dcuwmg7yOdWz
 U/Jg==
X-Gm-Message-State: AOAM533wZu3sjlcI12DAnmKR+3S/rndg5iKIwlI4TdpaNjTIwiZ2zxfx
 86q8PjOuXHYX96OkGlO5im8SBnqMDor8SIjd1ro=
X-Google-Smtp-Source: ABdhPJy9gyB1ktrqC1Zd3HyibZp0l6obehCp4vpCDO0qkgRUMj3Vjub/ykfUERbE41LdjhQm/0RhnA0bO0Yeti7gp9Q=
X-Received: by 2002:ac2:4945:: with SMTP id o5mr5705467lfi.21.1589050031766;
 Sat, 09 May 2020 11:47:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200509130714.10586-1-john.oldman@polehill.co.uk>
 <20200509171131.GA2495033@kroah.com>
In-Reply-To: <20200509171131.GA2495033@kroah.com>
From: John Oldman <john.oldman60@gmail.com>
Date: Sat, 9 May 2020 19:47:00 +0100
Message-ID: <CAMJX__Skgr+1ZO5JxwnwRt6A1C5rBc50cUDSN+6BM4pmYGPY4w@mail.gmail.com>
Subject: Re: [PATCH] staging: vc04_services: interface: vchiq_arm:
 vchiq_connected.c: Block comments should align the * on each line
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_114714_034835_D8C9C614 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [john.oldman60[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [john.oldman60[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: john.oldman@polehill.co.uk
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 John Oldman <john.oldman@polehill.co.uk>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 nsaenzjulienne@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg

Yea, thanks for the feedback.

Will fix and resend...

John


On Sat, 9 May 2020 at 18:11, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sat, May 09, 2020 at 02:07:14PM +0100, John Oldman wrote:
> > Coding style issue
>
> Your subject line needs to be much shorter, don't you think?
>
> Please fix up and resend.
>
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
