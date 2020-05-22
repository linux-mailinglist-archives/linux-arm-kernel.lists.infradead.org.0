Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E88A1DDD50
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 04:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWAFwAGAYWLYwTrWMeEiRSv6316W2THKbCheAPU36HM=; b=hhcyaQ6wTM+ois
	3Mlu2dwbmfmKbgQQqKAE06X9MN4jaLYJfoYoh6vlA1wB9fleKOsIxvCwgQJkLI9DFkcpIJYcowNbA
	GB/kQ87FXrUiudUXi/ox4bQKLrjy6YiB5i94Yyf76Nnrx9nH62tbw523yAkIv7qOVvE5K3+j3/ULb
	f/F6g1nshJZ/O1mq4FfXpREBmdDcYQ2RRUla1j8ZR0nZjrU8XKxu6c0hf9aOPeLO18viypZbkPC7+
	Fjt5qwxa/+5uOGAcSfl5IBwJxR/LGgnlNmMT757SqWkBmZgesHvV9rKa5UqdETyzpVBG8slEgWT4Y
	IMlkHet9PA6dUrUxk5+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbxfM-00087E-HW; Fri, 22 May 2020 02:44:08 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbxfF-00086Q-FU
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 02:44:02 +0000
Received: by mail-pg1-x534.google.com with SMTP id f4so4282090pgi.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 19:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NLMjPfS36jX1w/bfQjO4CZ00HD5Yi7JigwgnXIcv9TQ=;
 b=lp0TV2FdDaBgQCsPVUpKqSbC+imlC3qsgzwew9/JQWQ0IuhRBFZeWUGl/4us9uoMTz
 Av3t6ZqD39T4WSecpOVRnu8UgfOGW6Qby39rMwGaaeW7IhZuG1Bsv1D3IIZT0xPTj1QZ
 O/G06NHU+BbLSHF2eJvzWN94E546WNpkPiJqMZt71MwTZXvsffbnJ37M5Kc6Uxa/5GkN
 3NZapyj0dQNqZYrJNygDH2zTRS+O5vG6iaEmj/2HHROav2m+su7wgmTvLQfzwq5K89UV
 d2IKg/J0F5G51gm8xBy7ukwTRtOEE2y/Q8YXuub5piNqPzfe4RjAeeYTfJwvQ09crmK/
 nCBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NLMjPfS36jX1w/bfQjO4CZ00HD5Yi7JigwgnXIcv9TQ=;
 b=W1sSukmOG3ha60UnBALXrenu8iqiYErmCfBXQTzsyviEE5tJxwEenK6w9hV7Y5OeaI
 tERDgsbJbg8G/AkOsGo8EgzSnTRWcP4nhwP4EUA8VWo1D/qRzyzSH7e9mEyaWfj7FXH5
 m8/VzvGTblBwmK+BWq290qqpbVkzptJ8wAOj+8y6MTe2Urwp4YmuerZ8N537yd9MzlNM
 6TY8pGQsBuRV4z/bLCmp+gIR0MB54f1g+rgAJBL+v3UDFU0FMhll6x8SWCqxKnBzDON3
 r3R+vyuUVgwGrXyTA4Qf5d7xutHUTCWo85jj1DRP472T6wNtSitIKlV5PeXELbOh/w/Y
 jQiA==
X-Gm-Message-State: AOAM531+fTB9m/VwQ7MyyEHhXnqYxVbG8dgiceT03UtoCdcbyvaqg5Gt
 oHuziFXdPO6sEuQjLCCV5ps=
X-Google-Smtp-Source: ABdhPJzN5ybPR754B14wvvAL6e3rKRrPq/SESZro2M7KTwbGd34oDGlkuhPzTnGdtfB8TolqbsSs4w==
X-Received: by 2002:a62:1a0d:: with SMTP id a13mr1694875pfa.229.1590115439931; 
 Thu, 21 May 2020 19:43:59 -0700 (PDT)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id k4sm4947231pgg.88.2020.05.21.19.43.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 19:43:59 -0700 (PDT)
Date: Thu, 21 May 2020 19:43:57 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Yangbo Lu <yangbo.lu@nxp.com>
Subject: Re: [v3] ARM: dts: ls1021a: output PPS signal on FIPER2
Message-ID: <20200522024357.GB29497@localhost>
References: <20200522013052.2838-1-yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522013052.2838-1-yangbo.lu@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_194401_534084_D5B9FBCD 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:534 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richardcochran[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 09:30:52AM +0800, Yangbo Lu wrote:
> The timer fixed interval period pulse generator register
> is used to generate periodic pulses. The down count
> register loads the value programmed in the fixed period
> interval (FIPER). At every tick of the timer accumulator
> overflow, the counter decrements by the value of
> TMR_CTRL[TCLK_PERIOD]. It generates a pulse when the down
> counter value reaches zero. It reloads the down counter
> in the cycle following a pulse.
> 
> To use the TMR_FIPER register to generate desired periodic
> pulses. The value should programmed is,
> desired_period - tclk_period
> 
> Current tmr-fiper2 value is to generate 100us periodic pulses.
> (But the value should have been 99995, not 99990. The tclk_period is 5.)
> This patch is to generate 1 second periodic pulses with value
> 999999995 programmed which is more desired by user.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>

Acked-by: Richard Cochran <richardcochran@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
