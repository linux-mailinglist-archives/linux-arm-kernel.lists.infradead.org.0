Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E1185327
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 20:45:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EslWcHo9AztG3XyiVsQCWfg5y9ymA/B2/AwanXAeB+U=; b=KqG6XLCPUHUtQt
	suQqfZ0IhXrUklrZHyvVXVv5MPEp0t3etV48AtY+97dvO4wGCe9LxpdHN7lZcYV7daHC0tB/BlnOj
	vv5NR3XFNOwEC7DIsG2TP8MuFZxp0RR+BRGm0ggaCl4so68pmrhLYtSLAUKvY8AKrIYhhz2eNORgr
	BWPaZpBxCJ0AFtL5zB82HTZOay8lf7NdiUM0sVSb4R1C/FDJo20FbolwawYmg9jp3/1xjgbL4bO6p
	Am4jAml8kqYtppCyXh8hrvXeo8IzrbEMJjD0cU4R1jdz1WO46o+bSH+Ga9x0XGjWlYb2MrClToHt7
	Fco2h/eayBqVNOQOOiKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvQwV-0000YT-5V; Wed, 07 Aug 2019 18:45:47 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvQw7-0000XY-1F
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 18:45:24 +0000
Received: by mail-qt1-x844.google.com with SMTP id n11so89395383qtl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 11:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3FBU1u876RL78FpNPM+fEUZZ2hjnifBWtf0De88VGZE=;
 b=MZtM6ZBGFwE33KRflR0oa3CBb23tUJNibReW2z8hV+PFQvDLcROCi2gyRBPe9ee6oq
 pZn6TbSj3r0ODQteFDkF1CSI4mKykNPbAiajIshMY8VzAliNvgcPXBUUGCREQt6+8Z1V
 uoq1tMl4l0ZO9Kp2qY9IGoOwb+odrfNXSq6RIRLRaR+Rg1xVi42LEnwRIXgobluBY2Yl
 qiqvH8jUFJ6YLAtQc4zO3xuLwE0Qe/iGGtjDSRfnAaXDmDRDsf69FDSYnm7CaH8JdJOZ
 HtIY+f05nKmGpuO8XMPOf0z13FI4w4jOLVqdzAzcRSRKvZyv4TNu/S1mM4sV1EBmg3u2
 tB/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=3FBU1u876RL78FpNPM+fEUZZ2hjnifBWtf0De88VGZE=;
 b=gQkgde1RCzr/3vbjqtBOyr40rckfpPmpos1BhpGQkIRUAsqrkaU89vJbiVJiiYZqvN
 Ww0+kxmy4Zz53rTjllilGI/Rqw77wJh+wEXowBgMybyq35dQl5Ow8pcaJHa9aZ61O1vQ
 AZ0wfo9wWHijp7kZxMPkdmYA7y0T42u8S/Dim/UcQcH7fBlwuWKly2c4LDCgN8Y1IgsV
 AOonWs7fDZxraIRfvGz5e+FebkNxsDXIlwny6kYJFQVYADPbjitU8rzsZhFHQsZMUb3I
 v7xHVbA/MnX6mWDZ4V22P3KOxdeU9/aR1KNN3tBTMaIiYCgz8/RHZaaBLzHD62eKYf6g
 0zAw==
X-Gm-Message-State: APjAAAXRNYOkJ2iW5nmjHDg82yaElR3a5FtfQBWZW9/IA+FoESVzQLUl
 L94LDabYDHCmmebqSsTKy9E=
X-Google-Smtp-Source: APXvYqwWf1dv6Cff16aig8tua7PcpEKLMe7WcVox4dHzStZsHVQ+QYcKczlV2ADG8SaLlMn6NYeznw==
X-Received: by 2002:a0c:8705:: with SMTP id 5mr9434765qvh.32.1565203520357;
 Wed, 07 Aug 2019 11:45:20 -0700 (PDT)
Received: from localhost ([2620:10d:c091:500::6ac7])
 by smtp.gmail.com with ESMTPSA id d123sm41665368qkb.94.2019.08.07.11.45.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 11:45:19 -0700 (PDT)
Date: Wed, 7 Aug 2019 11:45:18 -0700
From: Tejun Heo <tj@kernel.org>
To: Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] kernfs: fix memleak in kernel_ops_readdir()
Message-ID: <20190807184518.GP136335@devbig004.ftw2.facebook.com>
References: <20190805173404.GF136335@devbig004.ftw2.facebook.com>
 <20190807132928.GD5443@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807132928.GD5443@atomide.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_114523_080686_59828AC6 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (htejun[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrea Arcangeli <aarcange@redhat.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Wed, Aug 07, 2019 at 06:29:28AM -0700, Tony Lindgren wrote:
> Hi,
> 
> * Tejun Heo <tj@kernel.org> [691231 23:00]:
> > From: Andrea Arcangeli <aarcange@redhat.com>
> > 
> > If getdents64 is killed or hits on segfault, it'll leave cgroups
> > directories in sysfs pinned leaking memory because the kernfs node
> > won't be freed on rmdir and the parent neither.
> 
> Somehow this causes a regression in Linux next for me where I'm seeing
> lots of sysfs entries now missing under /sys/bus/platform/devices.
> 
> For example, I now only see one .serial entry show up in sysfs.
> Things work again if I revert commit cc798c83898e ("kernfs: fix memleak
> inkernel_ops_readdir()"). Any ideas why that would be?
> 
> Below is a diff -u of ls /sys/bus/platform/devices for reference
> showing the missing entries with cc798c83898e.

Ugh, you're right.  It can get double-put cuz ctx->pos is put by
release too.  Greg, sorry about the noise but can you please revert
the patch?  I'll look into why this looked like memory leak from
slabinfo side.

Thanks.

-- 
tejun

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
