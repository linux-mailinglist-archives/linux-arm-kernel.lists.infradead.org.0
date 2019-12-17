Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B61122594
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 08:38:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZrNiaw9EJ43rz9aX1far7XznNyeVLJtOy5Vh6UrKOY=; b=Rn7WEAqsnT4g3p
	FlVnYRYLAriWCTzBxrKig+Ov+r+G07GIiEc8gYnMMKKkXLcRnnmaa66Ex48ArgJYwfArCi9T+oSp4
	kjy8BUl/eCALpgebGsYjCWx8LiK2bABF1MmMXktYMLuQQPtCjWX4ZJ0e6RcKmvEn1o3FBDgskVsr+
	4LAGpts+TJoBOXT3d4ra+/V6n0mbF+7jLxzfzR/O380cWCR0fq9vTh1FL8knfyzTVnzP9/5kMzziV
	v4BLg69NS+x21pSVICrnqNV/W7JafGv4f2I1lB/h2VzXAox8CI/19MjZQDrM2FnbyB0nW/X0BmocA
	B2LagQ3QOddmTZI9meAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7RK-00016M-TL; Tue, 17 Dec 2019 07:38:42 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7Qu-0000ok-M8
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 07:38:18 +0000
Received: by mail-ed1-x541.google.com with SMTP id j17so7268422edp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 23:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d5BILoFUsnbiutXxGw+euX6HPcc4knB0s3mzmzgspIQ=;
 b=DPVXiP44RHUxPz6UpgYpgrjn4KrtKhiCHTf/nZGx2sFYkO259sGVlmqCf6Mui/+jyO
 YWtOqIZz6VCZIzY0ModJSyDI5Ren+h9Eq410paCuCPeu7YHdSWl7fA9KE8WbKqiYi/6W
 62zTYwMZtdA+PqqUyJj6VacEyRng+oEhy4fwqOayHDQTwey9OkMS6rs5BoF2hjHVKeT+
 j+1BxKI/MIQ0DcR8cBUZb1iicii9ih9e75hcgVm+JjzNsraKDxoHvFF5LI63dsn8E41+
 Gi8PBtOtnpLAhs3CibZgCAZ+6Vz0PINUQzOe9KcgFnpHNWvKhqLI1+slgjRWovJ5lWNz
 YJ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d5BILoFUsnbiutXxGw+euX6HPcc4knB0s3mzmzgspIQ=;
 b=f4C8U2meDdm8gP7gmjtpcuN571ORA9JBsNBD5zQvPmtPtG48K+679AJBiUOy5BZLqu
 FA92MLncEzVfWnHOFjctoc8GLiRyT3hZ1sEzeTCQEhh2CM8aYfvAqY49MAkD8xP5Nza4
 8VtKkoXPbMO/ydLZ0JEogRjB3SJOmu+Ul8KupfZlP77ZggQyL9xLAFSqD/Ny00H6pmme
 rVdKoGyYFowFSTVISh476CpuwPJCBxAnEmfksFOaO8UYZ5p80iFg4H1rDOxURyTQHtNv
 Bi1nAWA53H60s8SL7XFIgId8bCH0tz6xtGH3EvYd3Q0CUavU60PqxBKqLJGYQjujpAG8
 Rw5A==
X-Gm-Message-State: APjAAAX2G5oKRRssaUJfAZHsIlrf3Uhubw2gBAXwJurRpI1Z+GOjpdNi
 BLFJJuLvFeZCrSLE8shvth4NOd61JFcyShMCPTM=
X-Google-Smtp-Source: APXvYqxLk43zsNTsrG+AGqbSyEN7hKQZqm8+SK5q0E0gGcZX+NTD5DXzQ8TW2SnvqlnZK+esF+aTGu9evYdhcljPW6I=
X-Received: by 2002:a17:906:bcd5:: with SMTP id
 lw21mr3507555ejb.144.1576568295199; 
 Mon, 16 Dec 2019 23:38:15 -0800 (PST)
MIME-Version: 1.0
References: <20170916030252.10680-1-amworsley@gmail.com>
 <20171005120125.nnhomwg2e2twbaqm@ninjato>
 <CA+Y=x3=Ab-tZt-32Ve1qTB=REuQAZnGbX72ZeNpyX3EX7cR0pg@mail.gmail.com>
 <20171013184646.cy5gmpwrxbacje3m@ninjato>
 <CAFcVECJTUu7Kwd-2hx=4=iGwKFnpTAebR3ffjJHQLHKDZ3T4aw@mail.gmail.com>
 <CA+Y=x3nnQ0hQkBaGQ4+MDZsVgpdFCYqaMae9UrJ2vOOuAD9FdQ@mail.gmail.com>
 <CAFcVECK85xW_8oxVQGsHBGyZ4_5bcghpbonqDH-8tLp+Mwq=xQ@mail.gmail.com>
 <CA+Y=x3kpy0LE-mqjKWS8QWy7qzS2pNdDMHpDqZXRGvdt-UbYcA@mail.gmail.com>
 <CAFcVECLWwo+OxSGAGYJfMSesjNT51X+Cwk+E_-RQk7gsEXy2YQ@mail.gmail.com>
 <20171207104915.fdqkj35ga2yxeg3n@ninjato>
 <CAFcVECKVR5fmVipB1cN97COecULcHtJFrediTsriSuwrm_A_Nw@mail.gmail.com>
 <CA+Y=x3nZsfJ+hE5YjvYLM0tdaRX9hX1G6crAjOmmnks-9Rekqg@mail.gmail.com>
 <CA+Y=x3=NXpwmqk9RR4oZVkndo=kFwG5T39ktHAhFb=Q9m61Mjg@mail.gmail.com>
In-Reply-To: <CA+Y=x3=NXpwmqk9RR4oZVkndo=kFwG5T39ktHAhFb=Q9m61Mjg@mail.gmail.com>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Tue, 17 Dec 2019 13:08:03 +0530
Message-ID: <CAKfKVtHG3eArV9Fd1a1UqqbP4e1Tz_ZeBrJJKfwMoP=c2PNqfA@mail.gmail.com>
Subject: Re: [PATCH] Fix Bug for cadence i2c interrupt overrunning buffer
To: Andrew Worsley <amworsley@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_233816_750902_5F2B12DD 
X-CRM114-Status: GOOD (  24.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shubhrajyoti.datta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Wolfram Sang <wsa@the-dreams.de>, Michal Simek <michal.simek@xilinx.com>,
 Harini Katakam <harinikatakamlinux@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Soren Brinkmann <soren.brinkmann@xilinx.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,
Apologies for the late reply.

On Thu, Jan 18, 2018 at 7:53 AM Andrew Worsley <amworsley@gmail.com> wrote:
>
> On 8 December 2017 at 09:15, Andrew Worsley <amworsley@gmail.com> wrote:
> > Thanks. I regularly see the warning my patch prints out  on boot up as then
> > there is a big pull of random data from the TPM.
>
>    Just an update on this bug - I did a i2c capture with pulseview on
> a boot that included this issue.
>
> > On 8 Dec 2017 12:30 am, "Harini Katakam" <harinikatakamlinux@gmail.com>
> > wrote:
> >>
> >> Hi Wolfram and Andrew,
> >>
> >> On Thu, Dec 7, 2017 at 4:19 PM, Wolfram Sang <wsa@the-dreams.de> wrote:
> >> >
> >> >> > I attach a patch of the changes to the i2c driver showing my debug in
> >> >> > this driver.
> >> >> > As I said I am happy to send more verbose bug output - I have about
> >> >> > 36
> >> >> > odd runs with 9 occurences of the bug.
> >> >> > Once it happen twice in the one run
> >> >> >
> >> >> > I include the crashing line from the runs where the bug occured (I
> >> >> > added more diagnostics as the runs progressed):
> >> >>
> >> >> I'll check with out HW team as well and check your flow to
> >> >> see if we can reproduce it; will also check if the existing errata
> >> >> has larger scope.
> >> >> I'll let you know if we require further assistance with debug
> >> >> next week.
> >> >
> >> > Any news here?
> >>
> >> Sorry for the delay.
> >> I've checked the known errata and confirmed that it wont
> >> affect this use case. And we haven't been able to hit this
> >> issue on our HW (with eeprom slave devices).
> >> I will add my colleague looking into this further to debug.
> >>
> >> Regards,
> >> Harini
>
> I suspect a well behaved i2c slave may never show the issue. But the
> i2c cadence doesn't handle bad slaves safely
> so I suggest that length check is needed to avoid buffer kernel
> crashes due to mis-behaving i2c hardware.
>
> I got a board that this issue was *very* bad to the point that the
> TPM_RANDOM requests repeatedly returned the same data and so were
> failing the sanity tests. So I captured the i2c transactions using
> pulseview and very bad behaviour from the TPM. The problem disappears
> at 100KHz and very reliably occurs at 400k on this individual board so
> I believe this TPM is failing to keep up with the i2c clock and
> screwying everything up.
>
> What I am concerned about is that the i2c-cadence driver is almost
> always carrying on and returning data with out errors.
>
I agree we should attempt to fix this could  you resend the patch
removing the debug.

thanks and Regards,
Shubhrajyoti

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
