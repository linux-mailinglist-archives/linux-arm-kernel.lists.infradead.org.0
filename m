Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F250518B054
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 10:34:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76KUUBTnN6lVNGyPe1cRHNpGGchyWAjIgI2rnUH8TKw=; b=l3CMrEmwc6mRxA
	azvDEF4zcWmI/PafDMzYYUf2yNwWlOfQwJvW70gDKFm7PEx0sQuVSERRcDDhympVPx17sqkrvksUS
	CLj5CA2WG2Vr4ndphCBpkLPb/ULQGHnGy6RH2D69+/fI+OTMhsPbUFt07aCtWeH6fTWNgGhg2FFGl
	1TjQI9nGCdll+VyRR421/RZWahbL+f63/XzSwIImME0uA0ssHkle2nc8HItoMbwcwuU0nda2QvG5a
	e9y64deD3JbU5TlM18aH2INiq+9PVA320vdJ6KACV6ggybNsh0ML5DsLpm2U8qsJf0qj6KFr1+UkP
	JSkfxaMWhrOYLkZJvqzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jErZO-00010C-Tq; Thu, 19 Mar 2020 09:34:30 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jErZH-0000zo-BY
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 09:34:24 +0000
Received: by mail-io1-xd43.google.com with SMTP id d15so1542538iog.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 02:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Gb+Hu2SOIKPJY/Vz+mWJKDkNWjSOJ21b6a2hQTXeX2U=;
 b=EaJZZHLrTg/Xg3DwuzO7ZLHnasImMWqUZq3XtfjrU3ib70FBurSvoS5tAJAXyEcX3/
 Uh+pqkrprKanbFhZdaaxOyL5M9ZcmZHqrFbhMcqIn9NWIjg6V75iPoOyi74NQtTfOJ6I
 2K1C13+/rOJwAXNQmC4d+im4a20hsmPXVkCxWNqPwXfpO0J/x/CybMyV+l2CHxJmKzJQ
 k6M1usphT+WsQ7y/RdlsU8qmIqEVEcTdKPjTUWfW80A/FAZ8fKrvN/T1rHDur/JUJhP4
 h89pRIRO8RpaWN219GZVWLibot6NGYhU5uHL8aZb0oESqkhKriFJbEXBMoUQ5oQ7iel7
 cfyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gb+Hu2SOIKPJY/Vz+mWJKDkNWjSOJ21b6a2hQTXeX2U=;
 b=ApZyGSF5VGDmV965odDVbt3zsQs3Vm1Kr84fMT/hj73JjU+kPJeAa8sUwR7oGxgywr
 xcao7LCmyxdr0yJwUfK1IThxXnWWqI7njnwI7S+v7iUYUzlaFHOARQZ8Bv0V1IxFTHW2
 A1HMtlml0Ykh7Q4Mkzv3Weq6I50S5Ml+drJZsoIgK6Vn7VxnxngP7xROc9AKeI7ApamQ
 xD9gCGvr72Mj2PlcnmgsaWsJNpcoLyxizuQtCzIvAWJ5nKdV6JuGCNQVay2lXkkiOF6h
 j7TDOGAGgPQmLJrbJ3DfyZNymSVIn83CacdFUqjp+LFFlC+VxqZ9bP3uxYG2uBj/QvAe
 gxuQ==
X-Gm-Message-State: ANhLgQ2aL7QeTbfKmBldHjbz3EqL9XcSDwDO2enpyDnlurx8xXMXG1pM
 +E/5bb5GSF9VEfszeN5CuuHXWqRIsw6G3MO9W+w=
X-Google-Smtp-Source: ADFU+vuUhvJVGEX39D3Xa4poIqSlRZgGmB32RkqmU0CatDgcyck7d8NsDNza563r8HZODFJPVO6z7T8q+elO36/D4io=
X-Received: by 2002:a05:6602:2098:: with SMTP id
 a24mr1820383ioa.101.1584610462152; 
 Thu, 19 Mar 2020 02:34:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200218135627.24739-1-ext-jaakko.laine@vaisala.com>
 <CAKfKVtFf+VpinkOGsBFZ2-_PKvx-C1L7G7_uhY2RCvV5dy6L_w@mail.gmail.com>
 <AM0PR06MB5185E501349E06428093B62FD4F70@AM0PR06MB5185.eurprd06.prod.outlook.com>
In-Reply-To: <AM0PR06MB5185E501349E06428093B62FD4F70@AM0PR06MB5185.eurprd06.prod.outlook.com>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Thu, 19 Mar 2020 15:04:09 +0530
Message-ID: <CAKfKVtGSq5rJ0EvZgyg1Rw3=d5Q4ReJUYM7hTSTPP4sXaJyJTw@mail.gmail.com>
Subject: Re: [PATCH] i2c: xiic: Support disabling multi-master in DT
To: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_023423_393620_58052D84 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shubhrajyoti.datta[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jakko,

On Wed, Mar 18, 2020 at 10:19 PM Laine Jaakko EXT
<ext-jaakko.laine@vaisala.com> wrote:
>
> Hello,
>
> >> @@ -521,19 +523,26 @@ static int xiic_bus_busy(struct xiic_i2c *i2c)
> >>  static int xiic_busy(struct xiic_i2c *i2c)
> >>  {
> >>         int tries = 3;
> >> -       int err;
> >> +       int err = 0;
> >>
> >>         if (i2c->tx_msg)
> >>                 return -EBUSY;
> >>
> >> -       /* for instance if previous transfer was terminated due to TX error
> >> -        * it might be that the bus is on it's way to become available
> >> -        * give it at most 3 ms to wake
> >> +       /* In single master mode bus can only be busy, when in use by this
> >> +        * driver. If the register indicates bus being busy for some reason we
> >> +        * should ignore it, since bus will never be released and i2c will be
> >> +        * stuck forever.
> >>          */
> >
> >the other thing i was thinking how will multithreading .
> >Should we have a lock here.
> >
> >> -       err = xiic_bus_busy(i2c);
> >> -       while (err && tries--) {
> >> -               msleep(1);
> >> +       if (i2c->multimaster) {
> >> +               /* for instance if previous transfer was terminated due to TX
> >> +                * error it might be that the bus is on it's way to become
> >> +                * available give it at most 3 ms to wake
> >> +                */
> >>                 err = xiic_bus_busy(i2c);
> >> +               while (err && tries--) {
> >> +                       msleep(1);
> >> +                       err = xiic_bus_busy(i2c);
> >> +               }
> >>         }
> >>
> >>         return err;
>
> Which resource specifically are you worried about needing locking here?
>
Earlier multiple threads on the same processor will wait for bus busy.

Now my concern was

thread1 -> makes a transaction

thread2  -> this will not wait for bus busy and access.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
