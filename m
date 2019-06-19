Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8E34BA47
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:41:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zckhtMtBal64tnfpGfDqza+BYOslsjv6JFLZd/hSEsU=; b=sT9Y6zXQeYR6zW
	LzXMg1hEjMjZs1FiI0T0JigASSkDL2IfnHNARbkfYnI3Fc+R+i8kXicZDADYe7fIOAi0HOP+QpiLk
	Ew8S4XdGUgNz5BjSU8oq/3aYtJTmaS3K7h0/IVBIN8ACQiSs0e8PEJFJP0+kqtAxd38JWwSZIQNKV
	sbjY83rKMzxKMSZwZmkjqbs01KlKLg0fTLfcNl9WXIGA5+F033ZCeHn7WJmFP7GjyNRxXUveUZJTm
	5Zuz36ATGtmL73aAnhpS32LWvxs2Chv+chPXs2kubcoo30TM4coENzOhDpaVbny0lLAwFGQUgtfhX
	90nge9PspD400Ee8HPkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdaqV-0002U4-3p; Wed, 19 Jun 2019 13:41:51 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdao1-0007cD-0N
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:39:18 +0000
Received: by mail-lj1-x243.google.com with SMTP id k18so3267782ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 06:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2t3Yal+vwyuoBFiQTTodm3C95Pfj2mqPo4RiVmx+7jg=;
 b=nBMIHu+tJ2tVHdaevmd+TYbKCkTM0NzjTg8l+gMZbGSRw4N3p4uJBiSugoQLfSd78/
 49rsMxRSSxmiZuprrOA8SH/7MA3ObMyEfIgGDPOnUP/0DW/2aefDXU75iI56N7EgNGpi
 jT4+aa/xogPDHL/+RlIkvCi0bFxuoxODuBCMot2u3kTZDx8PwAYEuj157lW2111UoYh5
 vne9Aoc4uRSNchLEBHEVJdS4bbd9iaq18pQJrwBlXypdMeVzePCIu5cYvEl4zuQXkaob
 M56BO1AncRk2p+aJ8n1ZJKY4P6eTV5+qcQ+P9E896hh4HxNhmEJ+ieMt9CvpVCSzjoFe
 7hvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2t3Yal+vwyuoBFiQTTodm3C95Pfj2mqPo4RiVmx+7jg=;
 b=pDqd8AzJGcqqI3mTCiUnxv9ziA8EnSaQWfIHA2IZQAHdtvjrzmRIVGCmB0WLQuuPOa
 gfaAx5DXm3KwmrErWr/zXiO+4dZzWBgmyDNTK/V8kl0DwcGuwX3VkrR0PcBSCz99rhFo
 UNtpXuyFErCP9Ed2PVfEwy33l2GpvOtxqS5Il87jvqe5NVJSu/Rkwr3SyyElph6UzUYr
 DqPT5uzNX20XZ2Nisd6e3+BsMYFVjkZfpNdxsG0SgAKWo2zInDzUnZhu81EbirkTpiDi
 p/EnkT56KUl8mN3k5uCtkQZEPxgjmW0M3i/5UW1bb439Ba1PoDUHOkUwWhucQRdMILbp
 V2oQ==
X-Gm-Message-State: APjAAAWdLPx1+1JPMvJf8h/MGWb+EI5Hwg4m/rsUlyOJVVOildsZEVj+
 lFl9Dq1BuYio5plelUw41w8Tkp+uv3Bmxw==
X-Google-Smtp-Source: APXvYqzRFp6YQNz/neGsZpbMwPaEEKZ8nB8asUsHtMaPb3sHnLFbq0jGzPfqJJl0hzB/qI+gCrQjBg==
X-Received: by 2002:a2e:85d7:: with SMTP id h23mr2370461ljj.53.1560951555576; 
 Wed, 19 Jun 2019 06:39:15 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id m17sm3098220lji.16.2019.06.19.06.39.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 06:39:14 -0700 (PDT)
Date: Wed, 19 Jun 2019 06:26:22 -0700
From: Olof Johansson <olof@lixom.net>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [GIT PULL 4/4] ti-sysc dts changes for v5.3
Message-ID: <20190619132622.njnberfpeerqinpr@localhost>
References: <pull-1560399818-512977@atomide.com>
 <pull-1560399818-512977@atomide.com-4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pull-1560399818-512977@atomide.com-4>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_063917_172003_24D3AAED 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: linux-omap@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 12:10:53AM -0700, Tony Lindgren wrote:
> From: "Tony Lindgren" <tony@atomide.com>
> 
> The following changes since commit b6a53c4c872ab6870eb455d10a6f7ff0d99b1b1f:
> 
>   bus: ti-sysc: Detect uarts also on omap34xx (2019-05-28 05:19:17 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.3/ti-sysc-dt-signed
> 
> for you to fetch changes up to 22a7fc15cf1e742884fdc11a236fcd755225b4f0:
> 
>   ARM: dts: Drop legacy custom hwmods property for omap4 mmc (2019-05-28 05:19:17 -0700)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
