Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D4E1E0D93
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q68Y8MFLMz0ItoUfyeejA0rr+f18GpUGeon0sKwu3f8=; b=FWvs8tRjJH2Ov+
	UOvTdaKTEr2J2JKRUFkqZvOcZIj78ZdNKKHfYoCTCx/2ROkrYRaUaPcG+x4tpHURzsQ17g+AF1g7K
	QvkjkLuO0hdqH4vTcvFVUaHZkSIne+ln3lcE4YyCTfw4WxyuKw7AJ6p+PJZ1969FhHoCClaksHihk
	2da6riYqyaokVmoJAVhAPLsJ2iULfTK30VP+rk5cdb6o4i6BA/ixGSZV1D+F44sl2k2N0sKRProW2
	2dmVi+6D3oOiRvY7DWGjapbMo4iy/OdZvt5qC3HEuAxs7eSuuvEzACFaUEcPD5HdbZoLj+2Bd4MJ9
	J6fTLGNaTqsbJOyjrAEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBXm-0004IB-63; Mon, 25 May 2020 11:45:22 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBXZ-0003Cp-Ec
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:45:10 +0000
Received: by mail-lf1-x142.google.com with SMTP id 82so10374623lfh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 04:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bWYfxIAWJy3heGwDbod2HfNErYY2yOdF0+bL0dgrzOk=;
 b=cGvQN129jZ03uNW9j+qvcX5jWlaAZ8AAzHOCfHxJTwvDjBuCB1OKZ8aidES7+y1FR7
 gaRIB5wbOwxz0WcvkiNdMvNcp4RWIfM8L6nuFRsN8GM5hgK5GNj0bZeiopR+21N8XIp7
 iXYdae1wOjFJXBmrSu6MYQh4vx5kseSvORdwT62G2VH838nh3AxAuraffLkLl2nBdE9E
 wgfWBIm8zPbKBIWEk8sJfhlg5wTSsHHuZ6PbEPdG5tKEj4HV+wWHCwerT3L4I33gbmUm
 qBXO9Uv40r4m8Mg1l1d7deYJMVg6yi4y/znpWijaCP7BvzsyLn9nwknen5BaSGd8sVg3
 MkkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bWYfxIAWJy3heGwDbod2HfNErYY2yOdF0+bL0dgrzOk=;
 b=AkrsftezFbkTzEE/4/ZRAOTQfh5SkGwM0ZgQfILw5uUPRECCHgtgV/oFymE/FLEK9q
 lfAd9FRvX1HwFfMLa98WEzoYAaa09xLXWdWH2tdkKivoXQLVfxwGyDR3rk0/QY0wH50k
 S4iWO1Hxq1xJcbZAqluYSim4GDqovN0toJveD0ksbEyqIADuH7oyEjqRtYqfbIbSnDUs
 qfk10wu9yG8LEsZ+9R49poPs5Kn4jx5d838s9UOxg8oJ6sulcDv7lAfArAQJYsaucsZt
 HFbfsSivpyIkSNr8GRhH40KsFYVrVXXXQZozTHHN3oM1Td7/YYK7WENJSEFSFzBg9i49
 ej9w==
X-Gm-Message-State: AOAM530CzlPuoVIZpR6QFItIHlcUo5lbxM6SaeO1idC8255cYfvxMU5w
 bNZbHcAoiDrtRz7MyegHVxwcUlCfDdMoR3huh0RgOQ==
X-Google-Smtp-Source: ABdhPJzusZSjGYrEnidjjwfBSedPoPmO8dGLBM9cFYuYbatE3hBg4B6svhZ1k3sgXNKUJ+IluzbUuOsq5IvXBPu1/V0=
X-Received: by 2002:ac2:5a07:: with SMTP id q7mr14346771lfn.77.1590407107211; 
 Mon, 25 May 2020 04:45:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200523170859.50003-1-sudeep.holla@arm.com>
 <20200523170859.50003-2-sudeep.holla@arm.com>
In-Reply-To: <20200523170859.50003-2-sudeep.holla@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 May 2020 13:44:56 +0200
Message-ID: <CACRpkdb251_0RoALAV+TFXcXPMZojKuJkZWm-67=Y7fNEB+=HA@mail.gmail.com>
Subject: Re: [PATCH 1/8] soc: realview: Switch to use DEVICE_ATTR_RO()
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_044509_506980_48CAF8DC 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 23, 2020 at 7:09 PM Sudeep Holla <sudeep.holla@arm.com> wrote:

> Move device attributes to DEVICE_ATTR_RO() as that would make things
> a lot more "obvious" what is happening over the existing __ATTR usage.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
