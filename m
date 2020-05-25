Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F171E0D9A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERtTTBriS6BXbItgIL+sd9zjZjU10+jFw3EWNCSEn+k=; b=SfQtxiK3QEV9R/
	Ml5SvxL7lLYJeVMGqbPJFAQc9s4beqPDwFVa8tABx22G7z2gwhAEmo8XDhVQMaDQlpG0t+ujYXS1c
	zfvgICeCUAz/kYL56T1wKOf/sj1zI5cGnTw20vBbJUOJHR9oChtuClCY4URfLY8Rfb0B6TKR2g9gk
	UU3+b++aYfk4pbztpMkyvNPCu5EAHOrKdWAqGiiB1Rl4b0pECRyx0+DUMe/H47PLGZalg46oqQshO
	gT+DO540Ub7lEGy78Bt5V6od395YxIGGVHXF1fG60dsP8mL77IcUmBgxB87QBh4T8LUk6NJ7nXuQ+
	oVYzvNCzk27NEbpoLPtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBYy-0005Me-9F; Mon, 25 May 2020 11:46:36 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBYk-0005Lv-J1
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:46:23 +0000
Received: by mail-lf1-x141.google.com with SMTP id c12so10348745lfc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 04:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NtZVEMzdq38fu53lZDWzc8NBLCjAY5aGK/W4AvmImNs=;
 b=orLdfY6loriaooo8N1Yd30vlFmmNB9q1KKM1rXkgsRGO1UqAnvTG7ZoMvuV27N9pdi
 T46nTc25B2KLLpwLNcABtXNZapEwjmcZMgKULM/PduML1b00kHZXNEh8TcHbWfqB7HjY
 DjlB746elPEoLY59e78jxBTT/+oXS/EAZdfSrvsGttLFFYApLbPaDTk9o9mQmJ1UwUiN
 yKmSq9ANG0ujjnTwR5zTMDNY+R+4tAbv+GKl0q1omEGzjMt0vyTmLwrhIC+cljwrbi6C
 s2WzWYR43FRwDgGpO9PbwjRmLFAILwv+wo6iXjqNXTm71MT1+SSyBvbJpR2QjNoE2ngU
 IFyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NtZVEMzdq38fu53lZDWzc8NBLCjAY5aGK/W4AvmImNs=;
 b=GX9LhXVq2B4DOAI7P8ALBQk12gmJyO77tpETykatBBmNR2Z+FSyQ9O8Pz1V/DqMMH3
 m7GjyLrmms8V30tp69vP3aXxYjanVxPKArkKDWAnywJwOnRZe6AJMQvD/2Zi41SOiEWI
 NPvkrmh2/TAwOGs5MOBsNqM0LJ+RCyMe/eXpMZDd2hLbPhSCcm1Snl7HuxyKpwWkAcFr
 Qsv8NCzvHQnbck0XisPA1d2RBePajMScUjgDject6Z4KLJFFDNijMEvhLW32DgEpZ/RN
 edvevb2fbguM57QwXtftKAXGnma9OvkjNY7lMrx0n5/8Iz0g/2i0Q9pAEpFr+jDCD87r
 HKWw==
X-Gm-Message-State: AOAM5326ngizSzxWaNtfptlfkiLtNdi6zTPdi7skQ3lARsD5uVfDgr41
 gLnjgSveP5tveR07dg2kYkMDD9vAF4WEn4gG/HiiFQ==
X-Google-Smtp-Source: ABdhPJysZMoeNaQ3OPOlBMkS29naRx7Bh6IeU57eA0JtB9tQoxG0XrAfI4YgfVn1j2BeWhx+NdPq9Np3+N5wErMVRRk=
X-Received: by 2002:a19:c8cb:: with SMTP id y194mr14613330lff.89.1590407180569; 
 Mon, 25 May 2020 04:46:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200523170859.50003-1-sudeep.holla@arm.com>
 <20200523170859.50003-5-sudeep.holla@arm.com>
In-Reply-To: <20200523170859.50003-5-sudeep.holla@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 May 2020 13:46:09 +0200
Message-ID: <CACRpkdafY2JaCUfR5SGqSULLsMcnz5Xa+JdXAoVZ5wH=n9MtXw@mail.gmail.com>
Subject: Re: [PATCH 4/8] soc: integrator: Use custom soc attribute group
 instead of device_create_file
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_044622_628220_B072E172 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

> Commit c31e73121f4c ("base: soc: Handle custom soc information sysfs
> entries") introduced custom soc attribute group in soc_device_attribute
> structure but there are no users treewide. While trying to understand
> the motivation and tried to use it, it was found lot of existing custom
> attributes can moved to use it instead of device_create_file.
>
> Though most of these never remove/cleanup the custom attribute as they
> never call soc_device_unregister, using these custom attribute group
> eliminate the need for any cleanup as the driver infrastructure will
> take care of that.
>
> Let us remove device_create_file and start using the custom attribute
> group in soc_device_attribute.
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
