Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A961BC6DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 19:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ruicn7/xKrB1HdjkeuMg1hnZx6sXbwy5lv1pDGm9D+M=; b=j41RhHC6UKecgw
	WSYzUOWL49834WIby0GVeMU5wVetFHPpU96lSHmxgw60wCoeGTHCg+PDl3j6Qnc5C0N5rdQspzX0s
	xrUWoNSCMPmf1JksMcwT5RLmE+2wPjtrd+YFEb/jlL/+mJD/ZyIcdEFhcEp7OZvIDb1M5Kz1xitzV
	tXyKoy+3DR3t/TJhtgViVR6mluMtOqSvRQzg+gp3mtH2xRYYO/Gr0Z2PpLup1DoshXC+d8/8EkUcc
	LVzNMmLv8RxnXW0wXbXYmZRic7OMzXme08/+I4OsnXy7+LBOcsTkespGsvSrj75Hm4SLyETC6Q/4b
	thXYxA8q0LFNKhu5ykqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTU7z-00054R-J5; Tue, 28 Apr 2020 17:34:39 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTU7p-00053g-R3
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 17:34:31 +0000
Received: by mail-pg1-x544.google.com with SMTP id n11so2584066pgl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 10:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=Hq1q1mnJoP2paSR/R7OXn312kKcNLyIMvnjuhvouCkM=;
 b=K58VDUtmyQvj/iLoc30RsS2j/WCyVrAefbG72Iee2W3GxQR2siQCLGI8R04W+JPLFc
 mSav2rT3PVIf+TS0ZpEw9brbMhhOhT0o85TN9wAg4lgEiWhzspHqqpE/5gESe58Fg9jY
 /t7kjQT+ZZPA2b50l7cRWc3vqr0WsEhQ+5RNE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=Hq1q1mnJoP2paSR/R7OXn312kKcNLyIMvnjuhvouCkM=;
 b=d8c54IOcb5VUD2NgpYZFvUlf1NW3RYwsjXtcRuZxX0iJOatsJChlX14B+9NZ78Wo1G
 ALTTP/ul7t8wKXCxckv5F0CjkufbXxl0O0qxg6EiQP9RwzlH1uMimlQlEkTt9fMF9Vst
 JbJx0fdQ9j+0zKqWjUbFzlYA3mnELqHzjsy0BJCtvBQlbkRJLoBpbmwPyacOuOZCZ/x4
 LQve8JI+INHY0V+khsI5ateiURtdojr+67w7MBJGW19UsCZoEd2eHTkgZSRD/9GMbsRF
 le02r9H3ReSY1AEngcHSi8b3Pb+Jw0boONPx5dmgnRBk81PgH/oMKgVKx+7QTbQ+V42l
 /BYg==
X-Gm-Message-State: AGi0PuZw9Sh1U46F9kXOd5wMwXG1pgBoi21riP5349dZh4ibclrBYy8Z
 B2lwcvRtThcIokt1T6FpBCEbGQ==
X-Google-Smtp-Source: APiQypIZMt6MMwYV4S1v9x7vgPnqCllbfzaTQXxPuXwyKkX4R4PMuOM9/eU0KS/F2uFJfSvhkzglTQ==
X-Received: by 2002:a62:17c3:: with SMTP id 186mr20673137pfx.159.1588095268756; 
 Tue, 28 Apr 2020 10:34:28 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id o1sm2619138pjs.39.2020.04.28.10.34.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 10:34:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200427163446.GB10601@xps15>
References: <20200426185805.14923-1-swboyd@chromium.org>
 <20200426185805.14923-2-swboyd@chromium.org> <20200427163446.GB10601@xps15>
Subject: Re: [PATCH 1/5] coresight: Include required headers in C files
From: Stephen Boyd <swboyd@chromium.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 28 Apr 2020 10:34:27 -0700
Message-ID: <158809526723.117437.7665630882841875855@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_103429_898133_CB28837A 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Douglas Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Mathieu Poirier (2020-04-27 09:34:46)
> On Sun, Apr 26, 2020 at 11:58:01AM -0700, Stephen Boyd wrote:
> > diff --git a/drivers/hwtracing/coresight/coresight-cti.h b/drivers/hwtracing/coresight/coresight-cti.h
> > index 004df3ab9dd0..d80123b905a8 100644
> > --- a/drivers/hwtracing/coresight/coresight-cti.h
> > +++ b/drivers/hwtracing/coresight/coresight-cti.h
> > @@ -7,8 +7,10 @@
> >  #ifndef _CORESIGHT_CORESIGHT_CTI_H
> >  #define _CORESIGHT_CORESIGHT_CTI_H
> >  
> > -#include <asm/local.h>
> > +#include <linux/list.h>
> >  #include <linux/spinlock.h>
> > +#include <linux/types.h>
> > +
> >  #include "coresight-priv.h"
> >  
> >  /*
> > @@ -52,6 +54,12 @@
> >   */
> >  #define CTIINOUTEN_MAX               32
> >  
> > +struct attribute;
> > +struct attribute_group;
> > +struct coresight_device;
> > +struct device;
> > +struct fwnode_handle;
> > +
> 
> I would prefer adding the headers rather than forward declarations, it scales
> better.
> 

Ok. I'm worried that including too many headers when they're not
necessary means it's easier to get into the problem that I'm trying to
solve here where kcalloc() isn't defined. Anyway, I'll update the
patch and resend!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
