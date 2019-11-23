Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9522A107DF1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 10:40:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gr2GvlmpR7O2yR2Z2zWsk1KvM/7CpKIFJoiigCYIpDg=; b=PT5Wo7s/D8rhWm
	914LIl8VI0iFbybnRTLrOR/dGewGVzP4rZd4vzwV8pUKQsCPRMBaKciNgsKpK9GDN0MyQHHBay34v
	cdaCA6EvUwAjuJgqqP3yDVwcnZ3icLoZrUWwZWgdnuusf4DEZcKD3SMyQzeP4Ex1cuBKEKsoTdiPB
	hNLl2pb0oaDFQnNkUDUXl7nsuTxgm9rlq2gZIRWS7o/5+Eekb9JI3jUvMNU7zB5Pp8xCj3ugrdkmN
	4q4DjFwW1XcS/tQDNVczH0s2JXecsvW33hIHydIRdiBS6hYIqdKYmEvCrIdWFYT4qPfrLH08tVdDS
	0YD2pY768L9dW7EXmDUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYRu5-0006Ee-AE; Sat, 23 Nov 2019 09:40:33 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYRtx-0006Dl-Jy; Sat, 23 Nov 2019 09:40:26 +0000
Received: by mail-oi1-x241.google.com with SMTP id n14so8764172oie.13;
 Sat, 23 Nov 2019 01:40:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZFVPcc7HYr1DXGBw6B0Y4i+GsNOxok+nW/sn0ODa37c=;
 b=euWLHJsjDSHHUhkFQukkJpi2+WtZ1HbLt8BUlnTyoyjnbXvZphRUZ5t1XCw6ctv+A0
 3kZEr7epA1kbMe/eyMznLKzaL5PZf4vV+oenEeRhrZz+B/Jju7kFTImB4WMidU3SYgD9
 YiXBW5PGty7bH9evcidnP4y4UaLO7cTVUdHaYJ9MTsdLz+a+sLyTIVk0wYi+AwZJ3Hh5
 zBopbKC8G8wFzUBY3pvfkvn8rcm3U/AABEi5gkzb7FX4L3hO83HMwDsDR8/3XxrCSdn2
 kb0Qca99DNNeDl8qpcoy+kdLzXR9qv1REcKOsDFPpduKskFl/z+RaoXqorTpMZyNDkYQ
 h9Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZFVPcc7HYr1DXGBw6B0Y4i+GsNOxok+nW/sn0ODa37c=;
 b=o9qbrq36fTvksWj6Sr5wonrpJyVq6gyBvENylQq/syfn4gjXD/TVUNZhmJTYIhrmQN
 kQ9UyEhBGGWYBy7LqWJjeVFmfZJti9vB9sWmo2/QwbU0dnKNh1ue1bOnKyAlfTrcT/37
 U2shh9fuZgx7oDmNqFmIKuGkjLFM3wD1tuJHJ1ak9TojOyznxV9nJFHKV+NBWoJn+VZ0
 H7+Jhn6uDYRm/laNUj08U85ixUdmATF9ToD1UY6iiq6HRAnA5in5vBQiVFBFpmJdVvmG
 jPQcSt3R7zKztG9Cs1T/usr7Ni50WGUCPJxCuhvvsNALA8Bd7O5uQVRYXMozt26j8MmU
 30Gw==
X-Gm-Message-State: APjAAAUSTN6sD7Dpupk+ECAXIzZZxC0V28InKunL8Gx3MAvEjVp10MZf
 RU6p7oQV7aUTmtwuT+ig2eWuWxY8BOo39lN9+YQ=
X-Google-Smtp-Source: APXvYqxEobYWB+wm8NZyoL31WGqKZIHUtoRQmBKv8NBLUHjYyBjG9p7RelpPqsHHAe1j6jp5XCOopaMypuZDTUeKleI=
X-Received: by 2002:a54:4815:: with SMTP id j21mr15579811oij.15.1574502023475; 
 Sat, 23 Nov 2019 01:40:23 -0800 (PST)
MIME-Version: 1.0
References: <20191122225210.109172-1-colin.king@canonical.com>
In-Reply-To: <20191122225210.109172-1-colin.king@canonical.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 23 Nov 2019 10:40:12 +0100
Message-ID: <CAFBinCCd_jr7UDdQx15tnFnZwO1tCbJ+PnZtEn57LUDtiRV_eQ@mail.gmail.com>
Subject: Re: [PATCH] rtc: meson: remove redundant assignment to variable
 retries
To: Colin King <colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_014025_685181_C7CE4C69 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kevin Hilman <khilman@baylibre.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Colin,

On Fri, Nov 22, 2019 at 11:52 PM Colin King <colin.king@canonical.com> wrote:
>
> From: Colin Ian King <colin.king@canonical.com>
>
> The variable retries is being initialized with a value that is never
> read and it is being updated later with a new value in a for-loop.
> The initialization is redundant and can be removed.
>
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
thank you for addressing this!
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
