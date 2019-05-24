Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B94829F63
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 21:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hcP8aRbcAu+5Ayfr7sH8PLLIhh6w4kFbYYh/KNC4XM=; b=iTir+NiIMIYECv
	QTimkhkQ3sZu7i/O1OsT/x+jonLsFwnF6gIqN9jh7Xo5m5il2TNKrIWrOtF8vFcgD5OsYLr7ZTerx
	3/34QHb1wxh9HJG2TKzYaFnWZkX+o1CnDEGewcL5uaIV5AZdBQ2dVDi3usFr/j/Gg2VH5xoHI38rS
	Sy5QP0ynn4+32LFNeGqBYvEyGuYEtxoNVuAFIN3/llf4efZyGuNe9Und6tHKiJ9gMu5bcJ1aHTvgf
	CrSxs2D90iwFoPsfG1IkjXm0cnVy1sfhSUko2HXZjrdMXYSJl4bASo6fN0DQxf1EKOQHI1fKL9BDA
	ck1uo64izs+0JS0H3PEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUGFh-0003Sh-Li; Fri, 24 May 2019 19:53:17 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUGFZ-0003RQ-G8; Fri, 24 May 2019 19:53:10 +0000
Received: by mail-oi1-x242.google.com with SMTP id y10so7900857oia.8;
 Fri, 24 May 2019 12:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/KUgll3hSEj/FU/ezNNzycl4J+PKbwr5l6FIma0m5Sk=;
 b=EPJpKkUkNZi0HQkddOgj0vcBeOyYhQyV2IWdV8FvZv/s5rSSbzfQectenhyOnmrAku
 aFgH24HdcfZnEJnXLoxqxbVDLIUtW7cNpqpwB9dXhhNX52eXylf1KC//2Zj8k5P3G8Ne
 1R0QUwMuSLKCSmH8v07lXlQ9j/bPUJA6kDVIp5rvMRoZDVJRGIN8wmM/j0YTcdWdtp9l
 FY91Y1A43POToBpe2cV+Ypwu4WMSbYsH2vPEfSxMGdrYc9oCxqzZycJnZGfCBU1gI0fq
 KU8no2evP/2L48FC2NVKqx8YpbRsnneHZXwKJZ9kCnk3yX6O4jw6HZmsEC/jIT2WZkya
 OuYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/KUgll3hSEj/FU/ezNNzycl4J+PKbwr5l6FIma0m5Sk=;
 b=dgqKrF+3jcFLUoRnT9pJ2KWadQnN1iDxdl1DlVTHHKVHUKW6c6WonDzUJuj8RxdxxB
 gjPSt1gLMCbI5+OLwsIWR5QTzQR+gHsXAHO8G6HAuqaD7j6ySHzWisgE+PPoLG4TRIPe
 odulwKVzduz8Kncfwp+YhlZAzwfGQ3EVPCh6FGClSFCSWUA70XHX+cU1F/mhk2IB8iJ4
 CGpWP83z1QQHF7gvduI1DJLkd4TBB77hC7PK6eVBiaZMK/x6YJF3fP5KmZXGCiYEJ7kI
 5XRUChEGaziG2o8bgU07daxfNUv1KaUEz/0Uvbq5ZifT//x4f2OXg3Mbp6zYEmppMK//
 5yww==
X-Gm-Message-State: APjAAAX7VFYcVih7JYsYvwaYpVH0wyNpMcQXh2joSo/USyojBwYPZjxQ
 vWGA8GTXxgVzGBKJ7KKLY7w335qb429vdF50qwI=
X-Google-Smtp-Source: APXvYqw9p122eNIr2+xbjUdUHyP6yQjFHu1ATd8aLdpOKuGyZ6p25J+SPof/YcZhERZnyWKHwjzNawD0xZ3t6obdee8=
X-Received: by 2002:aca:ab04:: with SMTP id u4mr830724oie.15.1558727588184;
 Fri, 24 May 2019 12:53:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190524181936.29470-1-martin.blumenstingl@googlemail.com>
 <7hblzr1vxm.fsf@baylibre.com>
In-Reply-To: <7hblzr1vxm.fsf@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 24 May 2019 21:52:57 +0200
Message-ID: <CAFBinCAueC3EKQXg-o5ennbPmfQC17+z8YKQ3TXwvxq1m9HtNw@mail.gmail.com>
Subject: Re: [PATCH 0/1] ARM: meson8b-mxq: better support for the TRONFY MXQ
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_125309_562409_992BB11A 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, hexdump0815@googlemail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 9:42 PM Kevin Hilman <khilman@baylibre.com> wrote:
>
> Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:
>
> > A while ago a user asked on #linux-amlogic about the state of the
> > TRONFY MXQ in mainline. I did some research (mainly downloading an
> > Android firmware image for that device and looking at the .dtb) and
> > updated the mainline .dts accordingly.
> >
> > I kept this patch in my tree but didn't hear back from anyone with one
> > of these boards (who could actually test my patch). That was until
> > today where I got the following message on IRC:
> >   any plans to submit your latest own version of the meson8b mxq dtb
> >   to mainline? it works really well for me and the one in mainline is
> >   too simple to be usedful ...
>
> Any chance of getting a Tested-by: from that IRC user on the patch?
I CC'ed hexdump0815 so I'm hoping that he can send a Tested-by (he
left IRC before I could reply to him)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
