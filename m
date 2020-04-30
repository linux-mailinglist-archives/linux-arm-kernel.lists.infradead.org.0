Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7AA1C01E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYfH69KwludFr9LxqYR/AS9nbq5bJHl+n82kW9hIMZ4=; b=hjgJCVUhnzC3En
	Qm45/aRg3DZZ7WQn8TkUQ1u6RaI8KVCFRDc0zdguXHaDCimTjASVZ3O7kvqt+J6jd3NviiCPo4FD+
	3VecNdZOA4eIKCCGIcEetfTy6y7x/ycrlQohdZVhheYjgzcq+Xbg0+kpTMsIcRhx6//KzvmbEbCfY
	TUJD++kB5yQw3ggzDJhhXBB9VLFYQv+wRowuxXbGzAvAYPhMYQPt77bXDapDLmgXtpuBoJa9XMZEO
	pzHyqYA9Au6WDOvARtL5e11f3/texV5QOt25yFV71pqQGLCw7Ola/99XtvkFXUNmUufCRfOQ35mSV
	W9N5n6dGBHLcFWDjJWuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBqj-0001i5-Ev; Thu, 30 Apr 2020 16:15:45 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBqU-0001hG-8X
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:15:31 +0000
Received: by mail-pj1-x1042.google.com with SMTP id mq3so895407pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 09:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Ohe0w2oqgXjSgHTpxKWLVpHjCPyoN0t0/3ExT/Ew+K4=;
 b=VuaBogpL2YFhEFVc9AQbn0eky1wbDGzkUtCWbCmcnp0R1bB1IRDCslhlVdcg9YPnQu
 fu5ifDguLmSeDujMNFpVcFTqdgVr8VVnpMDF3wIsEFJHYiv6MbkXcq8R3EDVziIVV6iU
 /IsZY5yA23UwE0/SAKYNbhDSUD1sxu+OPr2qQiA6P0Eu+XW4w/EaSvMfhtuy05WdBXtA
 X5Uml1oXzvwEBxH98XSlYDf54/eaMANlNcciA3Q7Ku2NHkUVsHbOT6fb2SHLzsfF8dYn
 BrDNEMwHsV/XVTd18TsGUIN+i77tFkgb24YLd77edW7RD8V6ZepGBK6YXXfCQmOFVzI8
 QFFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ohe0w2oqgXjSgHTpxKWLVpHjCPyoN0t0/3ExT/Ew+K4=;
 b=sIgy6uXyQlfLrYurph6FLuuRHySwWVQvdwzBT26d6ekv30VI37cYYeehbQR16DtA+S
 PuzlOjj16+kr6kdEFgvAwYhcDcrimjHg/chrymzLsmRO6nvLjFtdr4W5p5VMvH92MrZs
 N8fK7fn4frVqrDEKj9UwGSxpP0toBBfCw4x0yF3zQWvXDu0dDYIrJ6sxPMjzdX7Qy8Da
 LkM4YruzIo4N5CHit5YShaooGhXPKw88nPN+GjgIHh/WuNoIIu1idv/HmN0GRZdLTI2v
 mbaqDipAI+VtzAavOdGlUom3poAIhtezwz8al6oe2D336C9PoxUbr7JNdCXWT9pM6ADD
 7FYA==
X-Gm-Message-State: AGi0PuZ3yflU8q5cYXUzkPTqNFHSoa42ybUpFyhL51tMzaBxqqJ336V7
 35Y+qtomBcCKJ+rFx3jc3QMErcYy
X-Google-Smtp-Source: APiQypIjLOWeSYVNJv746Q8IVmk/zvFvPh6VnpGR7Dk9xsPCjPPTMMIa+9W3XRJmNz7RPBm7/1O8gw==
X-Received: by 2002:a17:90a:c481:: with SMTP id j1mr3800867pjt.5.1588263329136; 
 Thu, 30 Apr 2020 09:15:29 -0700 (PDT)
Received: from syed ([106.210.97.7])
 by smtp.gmail.com with ESMTPSA id q19sm235805pfh.34.2020.04.30.09.15.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Apr 2020 09:15:28 -0700 (PDT)
Date: Thu, 30 Apr 2020 21:45:14 +0530
From: Syed Nayyar Waris <syednwaris@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v3 4/4] gpio: xilinx: Utilize for_each_set_clump macro
Message-ID: <20200430161514.GA7107@syed>
References: <cover.1588112714.git.syednwaris@gmail.com>
 <80745504d15c87aa1da0d4be3c16d1279f48615b.1588112716.git.syednwaris@gmail.com>
 <20200429102114.GF185537@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429102114.GF185537@smile.fi.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_091530_312281_8EEB0AD6 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [syednwaris[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org, vilhelm.gray@gmail.com, michal.simek@xilinx.com,
 bgolaszewski@baylibre.com, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 01:21:14PM +0300, Andy Shevchenko wrote:
> On Wed, Apr 29, 2020 at 04:39:47AM +0530, Syed Nayyar Waris wrote:
> > This patch reimplements the xgpio_set_multiple function in
> > drivers/gpio/gpio-xilinx.c to use the new for_each_set_clump macro.
> > Instead of looping for each bit in xgpio_set_multiple
> > function, now we can check each channel at a time and save cycles.
> 
> > +	const unsigned long state_size = BITS_PER_TYPE(*state);
> 
> This '*state' is unneeded complication, use BITS_PER_U32.
> 
> > +#define TOTAL_BITS BITS_PER_TYPE(chip->gpio_state)
> 
> This macro makes code uglier, besides the fact of absence of #undef.
> And also see above.

Thank you for your review comments. Just want to clarify, you want
 a new macro to be created - 'BITS_PER_U32' ?  
Also, don't you think that with BITS_PER_TYPE(), in case later the type
of 'state' changes, it will be reflected in this code without any code
change?

Let me know if I have misunderstood something.

> 
> > +	DECLARE_BITMAP(old, TOTAL_BITS);
> > +	DECLARE_BITMAP(new, TOTAL_BITS);
> > +	DECLARE_BITMAP(changed, TOTAL_BITS);
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
