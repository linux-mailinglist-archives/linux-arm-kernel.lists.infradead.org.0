Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D731BE644
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 20:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r9imXPu7x6omZcsSALJOaPEXY7RW1O6lmfMv0dCB6Fo=; b=EP/1Xr9DQOP5Rh
	gA/uhaDhP4aw8NuavUPO8mQvmpLPGEHb/nvOzglr0IuV5sxxIeXEJd4dWqZyPMQdXa90bMw5s0+0o
	GCxUEfC4S2c/j6TPsCSC2dHCK9jWBLlHoiR9bECSURMU3tOXKS2nHF/ZcEu8PqkLLMksNwTd8W8rM
	6KtDEjdBVknvYJ4JteFrTmQU8tCzs15KQpReKFz8Lvbqn5zA9hfkYvhZo2YnUxqsKmiMhdC2icLKv
	RjjROVFT0Pu7u8YXQ6LdVUphP+u/CcJMwoMIEhjFjFbVdc6GXVmYB7mGgzIrEtcAX5R0Dk1ynMjeB
	LIclbyVdYu1WggEhAl3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTrUP-0003Df-Li; Wed, 29 Apr 2020 18:31:21 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTrUC-0003CJ-CA
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 18:31:09 +0000
Received: by mail-pl1-x644.google.com with SMTP id v2so1140570plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 11:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=jipXnRNqbc0qX0ErEpuBweBWta4tR4eWXcMPowlUvJI=;
 b=WSfQ0nd4b3fJoziq3+KweOHUjLhQmQJDFTtRJ3F3TCJ5y9wh3ntqTnP/l+TCl10jFa
 6MQMQGqyFi5Y6RdAvONkeZ4dQqCyjKfJBiGfRY7mcatRrjCTM6Bfja5s9SVRbvC0fcTD
 0bcoV3hJ8okScE9Yx5aD5tG4xJ78hjMb/MjjQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=jipXnRNqbc0qX0ErEpuBweBWta4tR4eWXcMPowlUvJI=;
 b=sL+P/cGz/69k49zFSutTqJ8zyBrxmuWpW0mohkfK4E752aICdMI4TTw0SX7Txxaqrk
 3CRzn24vx85Mk/9qUgyKjifQycOugMZkQtx8p/E1gWIDcpQ95ExjbjaNTZK4HGpyY11+
 8F+YD29m6GQmxes3wsQ2QOTfFQsI+aINoH9kBjp9sOYpdEpqyqiFNx9/4SN+EFyE/KuG
 vSt3tszcFBrHlsW53hbhbdllnHO5PNkiylmXu+1dPzJzRoEnne53cXpXn27fS+XkI7yZ
 Eldx6IWxKAZHMYZvb2XuGGV1K5vRozilOd6cvHudFRlaC4mB2/tFwtvz9heZLN3CfABU
 0A2w==
X-Gm-Message-State: AGi0PuYbu0XOeJimH9ULMglxmU51/vY8rQpL23So7MAvc6onw0yg5bzd
 gmqI3jogqd53j/VmA4fcvxqBwA==
X-Google-Smtp-Source: APiQypKkmjEMnyFbV00Cl9uoPBqpsYGURW9WxlfekvOSBT01al7FcGF5ckKPor7St1anhaVTeG3rnQ==
X-Received: by 2002:a17:90a:17ed:: with SMTP id
 q100mr4942776pja.80.1588185067361; 
 Wed, 29 Apr 2020 11:31:07 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id e11sm1602547pfl.85.2020.04.29.11.31.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 11:31:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200429180818.GA3062@xps15>
References: <20200428181010.170568-1-swboyd@chromium.org>
 <20200428181010.170568-2-swboyd@chromium.org> <20200429180818.GA3062@xps15>
Subject: Re: [PATCH v2 1/2] coresight: Include required headers in C files
From: Stephen Boyd <swboyd@chromium.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 29 Apr 2020 11:31:05 -0700
Message-ID: <158818506575.117437.11635372928426076937@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_113108_447653_A614AF20 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Douglas Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Mathieu Poirier (2020-04-29 11:08:18)
> Hi Stephen,
> 
> On Tue, Apr 28, 2020 at 11:10:09AM -0700, Stephen Boyd wrote:
> > diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > index aeea39cbd161..77e14e770806 100644
> > --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > @@ -4,7 +4,14 @@
> >   * Author: Mike Leach <mike.leach@linaro.org>
> >   */
> >  
> > +#include <linux/atomic.h>
> >  #include <linux/coresight.h>
> > +#include <linux/device.h>
> > +#include <linux/io.h>
> > +#include <linux/kernel.h>
> > +#include <linux/slab.h>
> > +#include <linux/spinlock.h>
> > +#include <linux/sysfs.h>
> 
> What is io.h and slab.h used for in coresight-cti-sysfs.c ?

io.h is for readl_relaxed() usage in this file. I added slab for the
devm_kcalloc() but it doesn't look necessary given that device.h is
where that is defined, not slab.h. Thanks for catching that!

> 
> >  
> >  #include "coresight-cti.h"
> >  
> > diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> > index 7fc1fc8d7738..be61c1705916 100644
> > --- a/drivers/hwtracing/coresight/coresight-cti.c
> > +++ b/drivers/hwtracing/coresight/coresight-cti.c
> > @@ -4,7 +4,20 @@
> >   * Author: Mike Leach <mike.leach@linaro.org>
> >   */
> >  
> > +#include <linux/amba/bus.h>
> > +#include <linux/atomic.h>
> > +#include <linux/bits.h>
> > +#include <linux/coresight.h>
> > +#include <linux/device.h>
> > +#include <linux/io.h>
> 
> Same comment as above.
> 
> No need to send another version if these are mistakes - just let me know and
> I'll do the adjustment.
> 

Same here, io.h is for the readl_relaxed() and writel_relaxed() calls.

So please remove slab.h from the two files (but not the other one) when
applying. Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
