Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BAAB5ECA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 10:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+brxITj+lJQMd0F9Yya2jtw9ppXk2JT6dnbwZDe32GY=; b=LA6Y606J3sN2xN
	YperIXSSZKf8UQAhkwQjIz1ZAFSk+E6NBGB3Lj7cNKTr4zTum3+NP0SCITJCpdgb9nA5hOVWsETs1
	s80R1GK0X4hF9sA5J1kNgI0Ai46/1jkxndZsotqaYqK+Dx/7rEq6Ny7je9B5OgwniBLMi5ZsXFbh9
	R7l23DbP5BeHyPnLk7zWSOlCLn26ugmlQN0NPxaGWLG9wNZDu1QVqNYBohUeC1QcOc3JFtphpBJZc
	m/GRfBLJY5Sao6MrBujfBeBNKtJNk9D9fo7dOQ4Y9C/4+2GEUncFiQSa8z+RpbELXNqPN2nXSqAJT
	coKgxGtW97YNlSJGkjAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAV48-00077J-2N; Wed, 18 Sep 2019 08:11:56 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAV3u-00076g-CD
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 08:11:44 +0000
Received: by mail-pf1-x443.google.com with SMTP id i1so3854767pfa.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 01:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1kt52piGCszTl70H4pa06OcEaxVvwVxHoVcQxPYlKbY=;
 b=anqx7V8EjerzzPAIp9aAxJkLeOTQxqJTZ0d9gLG2reGjLaMQvyQqygL0RPEj47FXMz
 fkv/QXlHtNt+9kjpapz35LOT7NvnIUVLADITnpUNJWyUDketSqpKPcbycqV6z6Bea01Z
 bmtuCa8BRhpP08Hp4ZWF+I0ARyrypcMTOVUAqlPjGOi+w3OjtmaWRl7umkE9DdGzkPVB
 feHR/vwRisEGMCfYlTBaBRKzk5esjs4wFGenxza2gvxs0Do6y9UtmSz6Z2mOvUiKu5ns
 rpUCp9P3uKIlESMBNG6cDeNTj3awCt8IfI/4XZ0lFzKZJPmMgP4R/0BJyKKvVNLryMH4
 qNwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1kt52piGCszTl70H4pa06OcEaxVvwVxHoVcQxPYlKbY=;
 b=R7CQT+WzuhFjblC0xQ3fBCrCG1aTwoNlIQeuEn+fcEPG5jmlXw8VQXdi+1VwxZGf5M
 X+V6F2KqO8X8vSeAqBruseZDPxi3X1oRkcpq0zQSQL0R7yxvNo1/W+qhQu8D+yir5jIn
 9oaJgDo3qKrIGt8nloK9RfPIsBAKjurjcM58sJPiG/BdTm5mdCQEs+AWohxr5X2+Vs3D
 qrUIj01PIWfwu9e9VzWsJ/Hy4KqimgJoynC3z2F5agT0FrWdN5k7rFMghBsiTSh43D9F
 ET2ztRpQJ6EhqIJ83WotK/W4U3XdwuVW2TOvmcj9xbz0WfGYz+o8Sgi4YCV+XX3ugFKW
 EVOw==
X-Gm-Message-State: APjAAAXC92JGd0LMr9pjZIl2YKyNSF3G5OzFcyyupWuEen0zd8hPcZtu
 OWEpOkqvPFR0ddQzDZbMy04=
X-Google-Smtp-Source: APXvYqz077aU1JxIhBBSwQ3uyYJbJ20ubV9x7Vo718eJX19q9Dq7iVLPEGgZnDCOEboiA3hV3ColHw==
X-Received: by 2002:a65:6104:: with SMTP id z4mr2725357pgu.27.1568794301026;
 Wed, 18 Sep 2019 01:11:41 -0700 (PDT)
Received: from icarus ([2001:268:c147:d9df:f819:e399:825f:f2dc])
 by smtp.gmail.com with ESMTPSA id b5sm4755506pgb.68.2019.09.18.01.11.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 01:11:40 -0700 (PDT)
Date: Wed, 18 Sep 2019 17:11:21 +0900
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: jic23@jic23.retrosnub.co.uk
Subject: Re: [PATCH v2 0/7] counter: Simplify
 count_read/count_write/signal_read
Message-ID: <20190918081121.GA7262@icarus>
References: <cover.1568792697.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1568792697.git.vilhelm.gray@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_011142_559308_A0D90362 
X-CRM114-Status: GOOD (  23.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
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
Cc: alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 patrick.havelange@essensium.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 04:52:41PM +0900, William Breathitt Gray wrote:
> Changes in v2:
>  - Update the rest of the drivers under drivers/counter

Jonathan,

The TI eQEP driver also needs a patch for these changes if this patchset
is merged.

How would you like to handle the merge? We have an full cycle until the
5.5 merge window, so I can keep this patchset in my personal repository,
adding in the ChromeOS EC driver and Intel QEP driver when they are
ready, then send you a git pull request during the 5.5 merge window. Or
we can keep going as usual and merge this into your IIO repository, then
handle the TI eQEP driver when the time comes to merge.

William Breathitt Gray

> The changes in this patchset will not affect the userspace interface.
> Rather, these changes are intended to simplify the kernelspace Counter
> callbacks for counter device driver authors.
> 
> The following main changes are proposed:
> 
> * Retire the opaque counter_count_read_value/counter_count_write_value
>   structures and simply represent count data as an unsigned integer.
> 
> * Retire the opaque counter_signal_read_value structure and represent
>   Signal data as a counter_signal_value enum.
> 
> These changes should reduce some complexity and code in the use and
> implementation of the count_read, count_write, and signal_read
> callbacks.
> 
> The opaque structures for Count data and Signal data were introduced
> originally in anticipation of supporting various representations of
> counter data (e.g. arbitrary-precision tallies, floating-point spherical
> coordinate positions, etc). However, with the counter device drivers
> that have appeared, it's become apparent that utilizing opaque
> structures in kernelspace is not the best approach to take.
> 
> I believe it is best to let userspace applications decide how to
> interpret the count data they receive. There are a couple of reasons why
> it would be good to do so:
> 
> * Users use their devices in unexpected ways.
> 
>   For example, a quadrature encoder counter device is typically used to
>   keep track of the position of a motor, but a user could set the device
>   in a pulse-direction mode and instead use it to count sporadic rising
>   edges from an arbitrary signal line unrelated to positioning. Users
>   should have the freedom to decide what their data represents.
> 
> * Most counter devices represent data as unsigned integers anyway.
> 
>   For example, whether the device is a tally counter or position
>   counter, the count data is represented to the user as an unsigned
>   integer value. So specifying that one device is representing tallies
>   while the other specifies positions does not provide much utility from
>   an interface perspective.
> 
> For these reasons, the count_read and count_write callbacks have been
> redefined to pass count data directly as unsigned long instead of passed
> via opaque structures:
> 
>         count_read(struct counter_device *counter,
>                    struct counter_count *count, unsigned long *val);
>         count_write(struct counter_device *counter,
>                     struct counter_count *count, unsigned long val);
> 
> Similarly, the signal_read is redefined to pass Signal data directly as
> a counter_signal_value enum instead of via an opaque structure:
> 
>         signal_read(struct counter_device *counter,
>                     struct counter_signal *signal,
>                     enum counter_signal_value *val);
> 
> The counter_signal_value enum is simply the counter_signal_level enum
> redefined to remove the references to the Signal data "level" data type.
> 
> William Breathitt Gray (7):
>   counter: Simplify the count_read and count_write callbacks
>   counter: Simplify the signal_read callback
>   docs: driver-api: generic-counter: Update Count and Signal data types
>   counter: 104-quad-8: Update count_read/count_write/signal_read
>     callbacks
>   counter: ftm-quaddec: Update count_read and count_write callbacks
>   counter: stm32-lptimer-cnt: Update count_read callback
>   counter: stm32-timer-cnt: Update count_read and count_write callbacks
> 
>  Documentation/driver-api/generic-counter.rst |  22 ++--
>  drivers/counter/104-quad-8.c                 |  33 ++----
>  drivers/counter/counter.c                    | 101 +++----------------
>  drivers/counter/ftm-quaddec.c                |  14 +--
>  drivers/counter/stm32-lptimer-cnt.c          |   5 +-
>  drivers/counter/stm32-timer-cnt.c            |  17 +---
>  include/linux/counter.h                      |  74 ++------------
>  7 files changed, 53 insertions(+), 213 deletions(-)
> 
> -- 
> 2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
