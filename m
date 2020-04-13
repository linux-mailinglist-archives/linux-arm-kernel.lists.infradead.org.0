Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 638451A64E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 12:01:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpWXHEIbMaje758tJob9ikXD/JyaQVLlew8NCOk1bNU=; b=i8Be5g1pfkU2ih
	joDLu0I2OUdovHj6SukmsAbLydJoJOny5DufUeGVFheXG1txKg6wsl1pp7u20r7k7DHPxNeJP6K3x
	dCH4Mo40uqkKQyox4PRfuLKvSLKUKeYZzX4dZalR4jkBBBTHFtjLBDTHaL98wkMOlPxPixczmJm2i
	WX0ayshodzofSbQiXsFq+gLMUZ40DMeKRsArx+AQ0YTuQub0HWWWEbqcOAB5CU8k+fk+IGEiyHb+r
	wcA8VL/r/8TRWOSCrCbP6dle/7UPYH7duZE21ayM7jGnk6nMf2foslGbcgm6xoUzvG9RnkX0vhlwe
	Qy5kWFbl0T/9vQ6avIIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNvuQ-00030d-Vd; Mon, 13 Apr 2020 10:01:43 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNvtZ-0002UO-ST
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 10:00:53 +0000
Received: by mail-il1-x142.google.com with SMTP id i2so7152681ils.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 03:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5Fh+7I1nkl6E4OzdC/8Kb7+iYk/dpPtFFiLYTuSRlqc=;
 b=MQYKaPXnXdR08uDLBNJFXCoLmScqfdF0zA5PJ9vcgwyZlaMidV2d5DvAgSLiECYamH
 nqkzukGFfZb6nwSiKPltyngON8ChcHHxbDj1Xmc7z7ds2wQZmpjZaP300cu3Nt+NpLdo
 8vNcURIBBdgW7+9gSpidTL1u5rGK/6vKS3PWj0yay+qJBt56MKoKhCWIOIUBleY1uBrP
 WnIR/CHcM5Y4IJjWKhspbmT5FCj4eTwPYff8t9WecyA9q2i+sN+sniv1iu/Yyy0bYVGn
 8T9AVS8OMSB3TLs6HTREIICo6XQf9AcB88xOE4sD6Oki4vx42Cov8M/Jr0W69DOJtscE
 0rXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5Fh+7I1nkl6E4OzdC/8Kb7+iYk/dpPtFFiLYTuSRlqc=;
 b=Lkqu3pGTm2DDuHRevjCTIOROp/tGiGmKrf/SbFeZ956gA780vkrKilSzW54+zpsUlt
 icMY9zAJBfwDMqclt3OrUgbxFep0Lb+BNNxtboLjGGI/n5/R6Q9s6UYaayRsI3xZi7H6
 rKirETMOkNKH/lQMFORe4zAnWGPUveYBYosnmFJKGM4b6wtK1s5QXAc8cb1jHlUfuZVW
 lW6qdj9MAbJyDUcxmRYkAtzyjOHe/CtnUM8UwO1TKSQZ+elS/dHb1Sqwm3o9KW+5pCgo
 jVzbTr411o1rBq25NYiztJCbHusYeewA5LLeKhXixoK0trG3tR0Oz3RqvICntRK8t5W5
 b9TA==
X-Gm-Message-State: AGi0PuYu7+Z90uPKCq0qRKK2mB7HJ39qB5rPVuH0sLJ0ZHJkBgW8Unh2
 IMwLctxqKsHeZXPrA8GyDMFpEsHkE52SuM+hsF4=
X-Google-Smtp-Source: APiQypIA0oldmzxseP+rUre/aNgrThAcSTbX3lATEBnJG6MdpbCZKGbma9DopJXmarexktqodGEFAslUUE+SAesQ2MI=
X-Received: by 2002:a92:a312:: with SMTP id a18mr16124853ili.249.1586772048130; 
 Mon, 13 Apr 2020 03:00:48 -0700 (PDT)
MIME-Version: 1.0
References: <1586413563-29125-1-git-send-email-raviteja.narayanam@xilinx.com>
In-Reply-To: <1586413563-29125-1-git-send-email-raviteja.narayanam@xilinx.com>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Mon, 13 Apr 2020 15:30:36 +0530
Message-ID: <CAKfKVtFHhz-wD-2fiJVRMXxupe=YRZQ4SV-VU+u=Yxe3gfmvrg@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] serial: uartps: Add tx_empty checks
To: Raviteja Narayanam <raviteja.narayanam@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_030049_995479_825A926F 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shubhrajyoti.datta[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, git@xilinx.com,
 linux-serial@vger.kernel.org, jslaby@suse.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Raviteja,
thanks for the patch.

On Thu, Apr 9, 2020 at 11:59 AM Raviteja Narayanam
<raviteja.narayanam@xilinx.com> wrote:
>
> This patch series does the following:
> Use cdns_uart_tx_empty function in the driver.
> Wait for empty.
>
> v2:
> Modified the wait in console setup and used cdns_uart_tx_empty function
> in console_write as suggested by Maarten.
>
Reviewed-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

> Raviteja Narayanam (2):
>   serial: uartps: Wait for tx_empty in console setup
>   serial: uartps: Use cdns_uart_tx_empty in console_write
>
>  drivers/tty/serial/xilinx_uartps.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
