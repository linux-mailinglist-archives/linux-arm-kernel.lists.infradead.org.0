Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F191F5AE5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oKZa58FxE5BrKSeTGUuDIV1XeHxHy03xqM8Hnkkh6lc=; b=nK5mvpaTSqgXj/PBdI1+Vftcb1
	sbpY39awgFIvQ3JIgCIZ+zDXwHG5P8vqRHRFEoESFzdhn4PfAEXU8w7X++qnGdGhILlzFJRpMVg6g
	5OTJ9cZyjiCw4hwTQXpmVLA3VCXTwWSnx0BotBRSOdwqiW+qyHXT/TBm4Cm2KD5xtOFmfiwRtiPbi
	cPcbWt3Gb7UmLyuUBqQvJsTycC6dTtN51qdFtmeykFd4eGo1LCXQepPWf7saNBrMy90gH0R/mLx+H
	V8VskYXwCbi6mZQm1YXer0swJ1EM4RzDxtBzKs9e5xfxktIKkDpkbjRGrAc3oGGMOBKmXSdfGRvz1
	IfXsIkuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj50G-0007jZ-KC; Wed, 10 Jun 2020 17:59:08 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj509-0007ib-1x
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:59:02 +0000
Received: by mail-vk1-xa42.google.com with SMTP id n188so798394vkc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 10:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=qPDDsblskj7YQmgnouxNlkCLsEOLE3lWy+i5i5BsSyk=;
 b=Ed8Q/VdKzx70Hkg1B9bBSd28+aKmZRAjdKlNjSK91zvZF1DNrNUf8d9zKBjBQo8+KX
 TMbuKQtZ+8hS/oVcUn0gyANMUZSv/JLYNPUzvotSJUSZuH11hedRVl/ay8xYXySV2u+7
 LfihLzrAujQEp2jBfkXLX7uOwCd6pAm8NgE2JxyAfkvudZyT8Q4a+kA1f6g/KC/8hVmD
 OphOFAhRDfpleloVPlDxzMkTZixMzPD9YgNCLmq+Lbl4cSUqPXqpedqvGjvH3QwzBbw8
 Ut5k9R/7LO2YhfY3CBiXNN5ktF/nCqYHJ3vDX6DO4QuANJpx2gxqUfeyi81B431vrd5J
 OHEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=qPDDsblskj7YQmgnouxNlkCLsEOLE3lWy+i5i5BsSyk=;
 b=bg6bPTXjMDS8D0W8VRXQbc/P70XS9RLWLhc1srgcLl2zV/ZljRmWV6yO7OIPRfldNd
 0I2yjtU9N/k25XbG0rXPaLpZtG1/w2NA5BPjapQN5kLwDOf32javxY2hBi/iy0/dGipY
 8aprnzOHpigVICQr25YDiQx6NnF7SdrTt658ZrTJx79dv2B15ewDIXcWGVN879iMT5Q6
 tl58FoG3TumKraURReF02vc2AtXGu4zxPFCIhNODcTLAQpGB2l0lrnBMw3tZrLBD/vk2
 uVQip9WRrPPCQ1Ncs4nrkQlwLa7sSic3TS/zRx0aD9lsYvPz5ilBQ05NTBdIANP/zxQT
 abpg==
X-Gm-Message-State: AOAM53029jN5OVkXH2c60JE7Q+3vIek2AYQsgjh/z986TBW+AdF3wDzN
 YNrW8Yww2q8qYTLD4NHCbFIU2U49Wez5ynFoKTk=
X-Google-Smtp-Source: ABdhPJw9uDJgVd9SIg6w/P15cfth+r88JW04PZtQl+ymB+hw4QcQ5bSyBNW+x3Ocs/2YUYOxW0gDFgZPBv8Du1d8H8A=
X-Received: by 2002:a1f:18c7:: with SMTP id 190mr3423466vky.39.1591811938261; 
 Wed, 10 Jun 2020 10:58:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAOuPNLj4m_jvs90YpAq5r4gAP9o8Y1Uck3HN+MbsTPb3zP=4eA@mail.gmail.com>
In-Reply-To: <CAOuPNLj4m_jvs90YpAq5r4gAP9o8Y1Uck3HN+MbsTPb3zP=4eA@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Wed, 10 Jun 2020 23:28:47 +0530
Message-ID: <CAOuPNLhQFegohvCx3dD-CtDdYrTSfGrJ1M3ps_YLn4j29x5pFw@mail.gmail.com>
Subject: Re: Generic way for verifying GPIO wakeup capability
To: Kernelnewbies <kernelnewbies@kernelnewbies.org>, 
 open list <linux-kernel@vger.kernel.org>, linux-pm@vger.kernel.org, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-gpio@vger.kernel.org, 
 zonque@gmail.com, sergiosiena@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_105901_117674_B9EC11B8 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pintu.ping[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 9 Jun 2020 at 23:06, Pintu Agarwal <pintu.ping@gmail.com> wrote:
>
> Hi All,
>
> I am looking for ways to wakeup any devices (from sleep) using any
> arbitrary gpio wakeup method in a generic way (either from user space
> or kernel space) that should work on any kernel version (starting from
> 4.14 onwards).
>
> What are the options available right now ?
> I wanted to experiment with all of them and decide which is best for us.
>
> Is /sys/class/gpio/ method still valid with the latest kernel ?
> Or is there any other method to do it from user space ?
>
> One option I know is to use enable/disable_irq_wake() API from kernel
> driver suspend/resume path.
> Just like this:
> https://lwn.net/Articles/569027/
>
> But this requires an additional kernel driver and device-tree changes
> for each gpio wakeup, which the end-user needs to implement on their
> own.
>
> Is there any other existing generic mechanism?
>

https://embeddedbits.org/new-linux-kernel-gpio-user-space-interface/

Is it possible to achieve this using this new interface ?

And I think another option is to use gpio-keys defined in device-tree.
Will this method work for any wake-capable gpio ?
How to verify this for any arbitrary gpio ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
