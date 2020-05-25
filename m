Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DE01E0D9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:46:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q68Y8MFLMz0ItoUfyeejA0rr+f18GpUGeon0sKwu3f8=; b=hDEkP+Z4oDVyWh
	3dCBQSpcWrtRjcJHL9x1oVMrXdaVuyeDS8M2/bfGbXdqCQoOet4ar1dM0KrMnRmSkZQiUwZEIS/tT
	4cYBe4ELe3zuRHnhugIsfNglR864MEAFOOzn17PultarllQcPQ2F2zeewx8MIBYko9G3akGzdEvZi
	Abp1LfdQGIsn3A8Rs8Yn49QB0WymwdjadiINzR8lQrduhtsDi/ePKlYNAu3KpiioeABD0/kQMW3Gc
	atmhj38AcZNTIuNAM3iifJUTAe4Aw8s6fxEmWP8lZkoXkbNMmLofcWEOmzyuPqT9xEoRjY4XsgPKi
	D36dln/vIHgLEIAAwIYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBZE-0005af-Mj; Mon, 25 May 2020 11:46:52 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBYy-0005WR-5r
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:46:37 +0000
Received: by mail-lj1-x243.google.com with SMTP id z18so20382157lji.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 04:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bWYfxIAWJy3heGwDbod2HfNErYY2yOdF0+bL0dgrzOk=;
 b=vQj9QTA/DYg7DsXQPvNV6nUI3a1yOwQ0VWk/U90mDlQ+3gSPHznwIlKZyHy5k+jTf5
 TmTOR4mRbWMy8bWaGbSjNkS4vLc5io5opo3fEHfWbxwNXLhasackcimYv1hG3hTuWztm
 aOhePHz6h4Pt1j6cIVD8yn7Kpd1IORvt05AFGF8MRJQBM0exJAOG8K/VmeH8OmefyeCd
 Llf3CtTVnB7HB15c88DYuKUBvV5Xi7IkN8BANcOBFrs3Ri9rQfE1X1neP1HvwWCc4cbf
 Wf09jsYaD55J1NkY54FHhGosQmbzGZ0rv2+u4sGszipJPKvqcrC/IoXwHicrKzN3xhjB
 v6gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bWYfxIAWJy3heGwDbod2HfNErYY2yOdF0+bL0dgrzOk=;
 b=rkVPSKFywakWtMW5QWbsD3kkiubAIVQIzYwoBs1Wt1SlQtzj00OOZCL6rEkPJ3f8kW
 4pXteempwMSuTd2FmnCLoUiYVyxS6YklDVKx0LdlZjBEgST73uTUR2QIXMPFjn2bR/0P
 m3pqJb9FOUcUcIrHfxIl1Toe3G1P8jPJYmyWS3ZEMUhKi5eG59aYF6zJ5UgA4FvJOyMz
 kyHvcyCpiOCxwOfpLHcgnXcfzXGLLCS8U5dftCaOPMBooVNpPX6cAmez/HWffDaMxvmZ
 SX0k7ZoYbMcw26+QEAwI1uV9823YDB0z2tw8INdn/lV+ZMCSGTMM35fd+3emDDF2WQL0
 z/sg==
X-Gm-Message-State: AOAM5307xrDIfU1svsUhbnobS1Kh/s12wPQ4wktGK23OuJj3Pn3IYSPv
 o6Zie885wmVqSS0QmTEQA7w5ntxX5Yu1sPqkpa8egedw5Nw=
X-Google-Smtp-Source: ABdhPJzXMklVyxm7HDHg3O3m/NvqorX6wkSQG4H/xaCPXxKdEbCUmEhq/fmnpSE8dPrcbHFjkt73KKvjjV+jtcSincc=
X-Received: by 2002:a2e:711c:: with SMTP id m28mr13382847ljc.104.1590407194394; 
 Mon, 25 May 2020 04:46:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200523170859.50003-1-sudeep.holla@arm.com>
 <20200523170859.50003-6-sudeep.holla@arm.com>
In-Reply-To: <20200523170859.50003-6-sudeep.holla@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 May 2020 13:46:23 +0200
Message-ID: <CACRpkdZLpq2Ph_jUyjKMTgeeCp61QmMMK64Rb0-05wOK5apK1Q@mail.gmail.com>
Subject: Re: [PATCH 5/8] soc: ux500: Switch to use DEVICE_ATTR_RO()
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_044636_233659_6400B73B 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
