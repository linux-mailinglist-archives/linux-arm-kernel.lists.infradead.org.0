Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BCD1D9C30
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:15:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bfpDoCJHwUDj4MbR7yo9WtjWZ10MXSkx12Q7bSSGuE=; b=cbzT/viwQQdOYK
	n+N4QekSRrrLkn1SMds2YOzYCe4JOHCAM9JuZkjLnbCO8RQiOi70Q8+4DyFZw8NK/batMV3909wA4
	PJWdfV4f+pOXLgJa0tH95CkOQgaMxbT9otqL2jH10hRA6kSGpXwqXtxeILcO7L8nMx3WZLHpl1vTw
	MAjRSfVlbClBVzK9ssyCagjyJ8bOyGv6B7xzmPASruFmEtnuKv2+gESDlO0+9EuWv4nS3SOgS8JkW
	GsyJDDivxGbAtewt5OiOXM1KueU/QtqmBE4lXSwJETvaW7hSzd7DyBvLoMCBNxqe3SjHwj9t72ObY
	cqiV4A34Q6d3GdAkhZPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4u5-00025q-T9; Tue, 19 May 2020 16:15:41 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4tw-00025G-FF
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:15:33 +0000
Received: by mail-pf1-x42e.google.com with SMTP id 23so120080pfy.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 09:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Hvr2/K8gWqBh8R/l0JrAmc3l/vZ6HgtWTHhoO7XIDLg=;
 b=vYvAiEdYO0DXJSl3eMGZf+lQoP28oOiX+vCDDWryJo3aV/D67gDyMiqImLIQqFJPCh
 UvOcgnV7koTOXQpKnXCCWWDAwoOwlE/BIrdA/bSNab0CsTLB7W+/Uek3pv6vykaYJHNu
 HeZf4I7b7ENv8E3BhrCtlQN8NjSFh7EzGh6n+DQBxnG6Z3KOcQJLjjLAMlxlbVpe62VY
 zAt57OWaEBLlHO72descIXNcvDogRGnBrAvf5Na0SLJM3dh+lRa7lZXHKJQz1PD3GWXv
 ZkKpMJpidq+Gcm+snBzrOBaBb3CctjpJUK4tdgtX2pu4ftJXMo4Eb87D7rlIiTiUVWus
 bUHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Hvr2/K8gWqBh8R/l0JrAmc3l/vZ6HgtWTHhoO7XIDLg=;
 b=fTA3OXh6der168qkw1T9mBvEYh8fCluFxuiVvSpgslXArcz9QRFbuL5BMN8L4WsZqH
 V8rQlJiwRWGTPBHuOLZM/CCSiLkkHCIOL2QhKJ/fl6WzNEgtG+S3orhjwhOYEUufrLfu
 i/XNHHPYY865YhJAPtSO8B5I9fEPasu8wPLUXn3snwkj3DLe8Q2+im9K0mBHH4NLtr+x
 p402+4fRzLvImxyFnrXeX6WAnEYAdCS8zSCMsxvXbu9K9B9CZWxWAMi8Tbysv9ZuptAp
 3TTBT9r3dPdgD13kl774C/udfVmZC6Ilk1SMKFIfgDvF+6AMfSA7HNTrfuWPjqAUtmYU
 1u8A==
X-Gm-Message-State: AOAM5315LXxDEcCG5Sz+/5MsPN0HV0fMqfjl1P07DYqLJo+XlymHszl+
 1DSxs0YV+aJPYbYS1b7F+OxoI0DbaDY=
X-Google-Smtp-Source: ABdhPJxvLMJwbM+HG0S5DEW2GToWlki9xUflUjYKgwzVoerSGp44Q1vngjsrkswv7pIUUH9AUDxROQ==
X-Received: by 2002:a63:a84d:: with SMTP id i13mr19563951pgp.342.1589904931206; 
 Tue, 19 May 2020 09:15:31 -0700 (PDT)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id s2sm66867pjs.9.2020.05.19.09.15.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 09:15:30 -0700 (PDT)
Date: Tue, 19 May 2020 09:15:28 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Yangbo Lu <yangbo.lu@nxp.com>
Subject: Re: [v2] ARM: dts: ls1021a: output PPS signal on FIPER2
Message-ID: <20200519161528.GD2865@localhost>
References: <20200519025307.628-1-yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519025307.628-1-yangbo.lu@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_091532_512916_9D0DCE6A 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richardcochran[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.1 DKIMWL_BL              DKIMwl.org - Blacklisted sender
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

On Tue, May 19, 2020 at 10:53:07AM +0800, Yangbo Lu wrote:
> The timer fixed interval period pulse generator register
> is used to generate periodic pulses. The down count
> register loads the value programmed in the fixed period
> interval (FIPER). At every tick of the timer accumulator
> overflow, the counter decrements by the value of
> TMR_CTRL[TCLK_PERIOD]. It generates a pulse when the down
> counter value reaches zero. It reloads the down counter
> in the cycle following a pulse. To use the TMR_FIPER
> register to generate a 1 PPS event, the value
> (10^9 nanoseconds) - TCLK_PERIOD should be programmed.
> It should be 999999995 since TCLK_PERIOD is 5.
> 
> This patch is to output PPS signal on FIPER2 which is more
> desired by user.

I think it wouldn't hurt to spell out the effect of this change:
Before, the period of FIPER2 was 100 microseconds.
Now, the period of FIPER2 is one second.

Thanks,
Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
