Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC6313A9A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 16:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AemfGq1PScV7BCl6OBG7/StaVp/vo/oO8RS6+6bMMsY=; b=iJQk7kOmLSprr+
	+tQn3M+BQXRetZt9bZDadkUZFGtoOqiKP4+rm4gwuBf5gPey1YQ6lz1Dnn6I/8+7dDQh3k4495jy6
	04Z/Xl8Nz+nbq2yemPWQjSu4jvK/8GRJHFOVn+tZDYwqApmab/CJaCF17ZzimbHjShjf3NqfyU4/5
	leRKL3idYjMCjb433wC+kRK2ryv4qqw10q+qF3+BMBODqjwzyKrf7r0TEnC0m/C0txZt7uhmdXMJC
	X/UnW31RszVkmuc+g+ihp2eFkz5MZ7hUzRhVegpMKJ1TNclsBPc6xSS1rcXGv2WqSmsCCRtmKD9+m
	3MvUwufIHLJhF5nbvZ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMvlF-0000Gk-1U; Sat, 04 May 2019 14:35:33 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMvl8-0000Fv-K5
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 14:35:27 +0000
Received: by mail-qt1-f193.google.com with SMTP id c35so10041443qtk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 May 2019 07:35:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tQgaLnyd1PzWRuAcPpOm2m6B4C3dJFTkE6v5h3uPP4o=;
 b=CEzJnNVT0QqHzm+15JT3pRgWuM9ibnSurGS3u7MevI1wXoszHKig2u0heQt8ZWBvZF
 E33wTKKfeFdOD/qRAaYA/WmwbRlqGj1Ga/IQ7GFaApHtncye+bRyvSvv8xlGAcReSenF
 FgSqxv7XBSULqmqJzu1dyHJEBrvWut68tpg/mjGRTwPN7Vp5OeZbwvQOp5pUFVIkooJQ
 NsxEH8Gf5OHsEuBuI0vr40AgxcnyPoD2vp0bS7CdiHo7mwKOKwV3Wm1jc9wGrY/8wIEt
 M7eiVu91RkwBMdkGQOH36wYiwVuLqjKnGikL+6URLw+HW16/oBdFCxYJnp68AI6t27a0
 efiA==
X-Gm-Message-State: APjAAAX7q6iHGnEHdNYA/FuqSbNDILtuH8URfLTJ2qBUV2KBjE5q++ev
 VWz7qpKqErES4Lmz+ZrCiBl4Q6W0vTMo1fEQJ78=
X-Google-Smtp-Source: APXvYqxvPIZmsXc7/1Lsx8u1uNwbWRJxYtcxgpxdevIAEaVf/6zZoMUz0DyMRRuNK8rGfyNiuEKbyfamxoIOG5ECJA4=
X-Received: by 2002:ac8:29cf:: with SMTP id 15mr13552977qtt.319.1556980520015; 
 Sat, 04 May 2019 07:35:20 -0700 (PDT)
MIME-Version: 1.0
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-5-git-send-email-dragan.cvetic@xilinx.com>
 <20190502172345.GC1874@kroah.com>
In-Reply-To: <20190502172345.GC1874@kroah.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 4 May 2019 10:35:02 -0400
Message-ID: <CAK8P3a2EKXrg4amHDi5zVvOQ8AM+u6EAhBc=T8Hk_tU20xSV4w@mail.gmail.com>
Subject: Re: [PATCH V3 04/12] misc: xilinx_sdfec: Add open, close and ioctl
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_073526_660343_A2B83B18 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Derek Kiernan <derek.kiernan@xilinx.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 1:23 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sat, Apr 27, 2019 at 11:04:58PM +0100, Dragan Cvetic wrote:
> > Add char device interface per DT node present and support
> > file operations:
> > - open(),
> > - close(),
> > - unlocked_ioctl(),
> > - compat_ioctl().
>
> Why do you need compat_ioctl() at all?  Any "new" driver should never
> need it.  Just create your structures properly.

The function he added was the version that is needed when the structures
are compatible. I submitted a series to add a generic 'compat_ptr_ioctl'
implementation that would save a few lines here doing the same thing,
but it's not merged yet.

Generally speaking, every driver that has a .ioctl() function should also
have a .compat_ioctl(), and ideally it should be exactly this trivial
version.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
