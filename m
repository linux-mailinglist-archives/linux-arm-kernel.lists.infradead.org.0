Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A112810291B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 17:15:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7GsTyGsn6+J1DtIXcJRho8vYNEN23M1j9stXop04pTc=; b=tpvCxKEmbpQkQw
	CjQDqJCmYLw63MPX9q95gcMS2Y5fFKoXBYA0Xt4F5yBWOYAowLkrkLaKvOGddy9s2RhNv+D7FfQ+g
	qX4Sx4OE7JQJgMCsBCQ+0zyp9QBefSzHS1KdMqmphb82u2RdgfIgGl6wA8pzsvb2mwo5WEZLON7iy
	Y/DBgQwX3Yi8VRIh3kLcFaIDaKrA7a4qwNiopPQ/jZWbgxKjWGnMMq69NBMWiKk6oh5iwTQjK0GEx
	VJ7znRLhRTjzzLD4I8b7LL0xTi90nBd++JHCU9ZHVQZ2Y7NFBJk4WLE1/jUIcx/tW9CCLbGAPJrcY
	Nizjyc8USIgZMVqpQfGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX6AO-00020D-04; Tue, 19 Nov 2019 16:15:48 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX6AF-0001zf-7X
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 16:15:40 +0000
Received: by mail-io1-xd42.google.com with SMTP id j13so635607ioe.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 08:15:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2QzBsf1/Q8hKzbeSju/cjkym48KF1RXo6Ozgcc+ilbY=;
 b=B557JxbRmG6bGxoMH25hjkkFa/8uMFElraHUqwVWyBdVL88O6yOK24tlKofwQfELla
 kmgnZl6NqlnvT6F9knFUlLByW1Zg0wY/TW/qEZThA5fDnn23pf/AEWg1Jf/VK1UrnZ2U
 oPdawl1BJ8P9/x7dPwEqvvP/zs4Mh4g6P1ZwKfLK36mmAp/5JlJoZpR+zEKSNM7SgdGF
 Z4XqXq5jvbIdTomXYzj0YUVs4ONUOs97XMsDZpsbtnwj5Rntr0Q4oekV0hBAQRlnvZ+G
 etTsVpGZ/+y5WR9tDtcuJWDITRco+L9s1OAZeDEXCMKe/TOtqEdmS8L98pBTwJ2S0t9s
 XjmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2QzBsf1/Q8hKzbeSju/cjkym48KF1RXo6Ozgcc+ilbY=;
 b=hz59tLxxMKC+9RXHvismjmjoLZ4jB962tZQFhcHTGoyKtioXCfaAFXQw0HZVpbZN/P
 OsOU8DJOxHLa8fYeRd9Xlr6FVdcF7po/jPui0l+OCmSdPyn9hJjcGg3V6nDvcajiwd6I
 AUNpMVGbKLhZLCDAZGU4d2TE0jOELuSwsNhK7eprMLC9WfZ8zccZ6GgZhVV+FcC+FQOy
 FQPA+ER7BT6FW1znCwVt4AzFgqJGpsjaMcZN1Pu6oGerkUh3sR8XDBiW67OuVOdK+aJQ
 Y0pE+4qEG2Mu64B5jmAQFNATVYdwMxPheR8Pule3XYNMMRAb/BYdZbANd4ROxhoE57/k
 d0Cw==
X-Gm-Message-State: APjAAAVc2dWRhtLqzpFN4rHAuwqt3cb7s9gksZGCobmB21G/V6nor2DK
 mRcMwyko14TpauDEOyv6GvfBQNcR9uwfrPy7C7t2cw==
X-Google-Smtp-Source: APXvYqw503RqDWWROFTPpdWnnJSfJY3YAq7SFnY1QjLQaYOndzuBk+hWJoZO8CCxZ/+343iUr17+gMnAVu7eO4Quu/g=
X-Received: by 2002:a6b:2c95:: with SMTP id s143mr5938031ios.57.1574180138026; 
 Tue, 19 Nov 2019 08:15:38 -0800 (PST)
MIME-Version: 1.0
References: <20191118185207.30441-1-mathieu.poirier@linaro.org>
 <20191118185207.30441-2-mathieu.poirier@linaro.org>
 <20191119043044.GB1446085@kroah.com>
In-Reply-To: <20191119043044.GB1446085@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 19 Nov 2019 09:15:27 -0700
Message-ID: <CANLsYkwaYZbQPoqr1D2jB+OKirR-2F1m1cqdAcHHwqvu27HxQg@mail.gmail.com>
Subject: Re: [PATCH 1/2] coresight: funnel: Fix missing spin_lock_init()
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_081539_281039_68B62D67 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 18 Nov 2019 at 21:30, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Mon, Nov 18, 2019 at 11:52:06AM -0700, Mathieu Poirier wrote:
> > From: Wei Yongjun <weiyongjun1@huawei.com>
> >
> > The driver allocates the spinlock but not initialize it.
> > Use spin_lock_init() on it to initialize it correctly.
> >
> > This is detected by Coccinelle semantic patch.
> >
> > Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> > Tested-by: Yabin Cui <yabinc@google.com>
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >  drivers/hwtracing/coresight/coresight-funnel.c | 1 +
> >  1 file changed, 1 insertion(+)
>
> Is this, and the 2/2 patch here, needed for stable releases?

No as the code they fix is new to this cycle[1].

Thanks for being inquisitive,
Mathieu

[1]. https://lkml.org/lkml/2019/11/4/726

>
> thanks,
>
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
