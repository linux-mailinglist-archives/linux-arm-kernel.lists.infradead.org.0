Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAA4105A70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 20:37:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZeWnEkp9HRX6hdkj7+XXqS0DwEXiLfJnjbX9F2R7R8=; b=eFyv46NvlrKLh8
	nxlQfBSmTigeUZYhnGNMC6fPNaVAV3Iw53cVsD+FtVSa+OdABMQP8+CSAXu8FRkmEEeEcO8e/Ndv1
	CDi6PretpDvT+pB0kMvW5SDgnDqDLhsK6RK4zD2PdsiURv6XsSiqVhnnDS90psqLTrnV8ZS1OTeV/
	TkL9qDajdyhN3iO0MP+HW3EMD8KvYLaTCHHEwlhXUthjeMUp+tSps5wj1IKwizBThNcN4ayN/KBK1
	GUlaee0po2X7zZE7KCT+V1yHrmvNxq6b6ZUkUb56F+UclCBnMJD6J8b3+0UmxTvmohc3xlM2Yv+Rw
	0MyXzRbltWHE8r4C+04w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXsGh-0001YS-NF; Thu, 21 Nov 2019 19:37:31 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXsGU-0001XG-Pv; Thu, 21 Nov 2019 19:37:21 +0000
Received: by mail-oi1-x242.google.com with SMTP id e9so4287747oif.8;
 Thu, 21 Nov 2019 11:37:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qzwKa2zLIpMlDKu3Bp5xTkJZYB2ESwxtfDs5w5UuCFY=;
 b=iI8Elo/jZ8WYOqSvkTjrgV15kGRYIBLerzEtZUD42YZLEynkprwzj++GJKEZFAL7Qc
 dtXEBeHqDd5KPgAqJer+FyfpRrrrNgwmeTVY4mG3iFrE+AWuEb8et/8JwuaBcoyuEMk1
 /72DOvZoNmBTWa2xYf6rVH05JdXfj+CauFalky5oCwaayqdYbrO43q105SyqS0XJn1fe
 gf3cc4X9qekTMPlY5U+8TAUJBDewYmc//kqseAw05ZoQPXcwWWuTpOHNlgqDaYbH1JjO
 82t3EOom4/aqqBphcLpn2pqkRs4n7vYSUL7bckzhm9YPpaWHo5eyfp6GDGTgfsTTo4SU
 EZXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qzwKa2zLIpMlDKu3Bp5xTkJZYB2ESwxtfDs5w5UuCFY=;
 b=gidQ33d8qxIcTpReUFASTaOXqOT3dJNWu3hN6E5YV4YGmY6nc2/O3Vm21M9Xx7RlZB
 BW4ZbaC9kg80eUOoUrUglb5vCnfLaX9AHj1CvL6/hxcGwUVRfxvSDGmVbKU/ammPriPP
 ZudEBFp3idfcmtDtp/d/6XbLIuLgj32vk+fSTabGzrTtr8s7SGYUZoid8YfaBcPfdqoK
 zKjGIgbjskZvch58k+aLcl8ph/0UFX6rmHgZI01P3PcXTa+EZYZ413wqfwipVqdxkG8t
 +voVmnceDXWnEPq+1PA2Kw/gLNyg0roFDWeOiktVHKmwVEIugz/37i2QS2KjTgFnP2rV
 xYAg==
X-Gm-Message-State: APjAAAWdVZyt3jfp236nSHnQI560vpEAXMf1LzB57o2vQJfQhRBPBi0y
 LIacJc7qkfw4PIOQW10d/VBczmMX7QvID5b8YP0=
X-Google-Smtp-Source: APXvYqzXgwqaDQZUKygaOcWTNp0jm2ToJqajtKYV4YnKaQGWRhZqCLBQ4dy0JtuVjiCNBfPeJsLY7sIOQFZNuK38Fto=
X-Received: by 2002:aca:110f:: with SMTP id 15mr9323792oir.47.1574365037293;
 Thu, 21 Nov 2019 11:37:17 -0800 (PST)
MIME-Version: 1.0
References: <20191121183711.19785-1-khilman@kernel.org>
In-Reply-To: <20191121183711.19785-1-khilman@kernel.org>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 21 Nov 2019 20:37:06 +0100
Message-ID: <CAFBinCDYbHW-7XOo1O1M-ghNj-7R+A4j6Y1skenuz6-TG8e9wQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] arm64: dts: meson-sm1-sei610: gpio-keys: switch to
 IRQs
To: Kevin Hilman <khilman@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_113718_841719_9E021749 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?B?SsOpcsO0bWUgQnJ1bmV0?= <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 7:37 PM Kevin Hilman <khilman@kernel.org> wrote:
>
> From: Kevin Hilman <khilman@baylibre.com>
>
> Switch the GPIO buttons/switches to use interrupts instead of polling.
> While at it, add the mic mute switch and the power button.
>
> Signed-off-by: Kevin Hilman <khilman@baylibre.com>
(I don't have the schematics of the board so I have to assume that the
GPIOs are the right ones - based on that)
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
