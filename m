Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA8AE1D69
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:55:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JALT+i4en2kv/Gch75Zcw5nU1yt1UUMZ/b/E4dlzsxw=; b=GINS57kdjZW3SQ
	J/2V4smIY8rwqSA2dY5PsKkthT9MNvF12L4nHF0b0kEeibVR/9HeCQhMdIxPa4rM3yAArwEfE8AqZ
	/rDwCY3kM6TkwDJy3AFz0wci+PmBbV5owPyFiNlmDAwMIKG4W1ZhsU3GgQL/iItwSxqh5fQPsHubn
	UutZixRt9EjXFmcvqqrwKE9ArQ6Xc/ndT8zIh4i5IIO4Mzvt0ND1DIQajRmLSTGbSOXxkAPc8QMCH
	oNOi3JNiZU45zlcxRiJY7ICdWTg121NxU+3miGhsJwU8R69IGzXTI9Xc0xFrJ8OR4f01pJpG7Fu2y
	vVc1/cb5mLkHvTMN4Kag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNH6L-0008Hd-CO; Wed, 23 Oct 2019 13:55:01 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNH68-0008Gp-E5
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:54:49 +0000
Received: from mail-qk1-f172.google.com ([209.85.222.172]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M6m5o-1iMhXU0rcM-008G7C for <linux-arm-kernel@lists.infradead.org>; Wed,
 23 Oct 2019 15:54:46 +0200
Received: by mail-qk1-f172.google.com with SMTP id f18so19209440qkm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:54:45 -0700 (PDT)
X-Gm-Message-State: APjAAAXjLUQe6PBZl7XihVHQ5VeppBQwSvhgU63STWOpugJ8wesFFbSA
 GyWmYv2td+xTYoe9Rwu+iIMMORqO37ZJrI3dH8I=
X-Google-Smtp-Source: APXvYqwg1GMH8QdNiqBQrXGE6tBmtG4ranjbu2NqBzx98xXXHvxcSSud6NSUY0ZDvcAUkWXJquc0IymGFTx7V0wKlHc=
X-Received: by 2002:a05:620a:4f:: with SMTP id
 t15mr8358153qkt.286.1571838884945; 
 Wed, 23 Oct 2019 06:54:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-33-arnd@arndb.de> <20191023134956.GK11048@pi3>
In-Reply-To: <20191023134956.GK11048@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 23 Oct 2019 15:54:28 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1LVo0vfngK_7z-a0nC_t_v85OE8epke2XAFYH9EW821g@mail.gmail.com>
Message-ID: <CAK8P3a1LVo0vfngK_7z-a0nC_t_v85OE8epke2XAFYH9EW821g@mail.gmail.com>
Subject: Re: [PATCH 33/36] ARM: s3c: move low-level clk reg access into
 platform code
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Provags-ID: V03:K1:jnMV1WfIKgiiYsRDmAz1jSbSTs6Pzem00DV4PVonvO+Gzzl9swd
 YPIWMI1T4fCUhXtZDnFgNSGh6VlFo5+lq0cP3qXwjlBLoEJJA5JDJ7xQD06LL5cWfk0U5/w
 0Y86TmXn9/8AVEopLghtIxVbeL+9dX0GT9MQCpcHOQ3j5OJDRsWecPlYg5Nk5IHt7qWQ9Ke
 1Rvzp2zHu0ncFyb2qXt4w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ayi6LZVvU9U=:rtCGjvagEQOvAsk2ynxlPI
 6vZkE1+58YnK6QIY5/cUgW8WfSB0ngGtHIZrNgDgW0z9ssYMRgZjGNDR+i0No4M9FUWsD7NjZ
 a4+2lm240XEf6EOaPlirwJp/GIr9Y/0Y1gMx6Q5T84Qzy+TbJSGDu2o1HbowWBqEUbCsdphLt
 0Kq7yPj7BeMCzmmpcLCGmYaea5iyIitOHRdZF0QVuJAFxvd6HHo/0aTPvH8Zhb4ZPHwfRUBRc
 IUm1IaxTAYJ9uL/Ir/MehYOfH6eC9omhpYMlmS6gZUzFXCmT9GUbv9aKEWZF3x8JrCnevdJI7
 sIe7VcJ/nU65VaZgjxT5I/aOCqKScjQXsQfL5B8QII0t4bLQZr5EcIcIEnxr7Vw9cndoRqywt
 5tsZ9OWmR93/uBkU5+F3Qp1VEBdSMZffJBJKo6SeujKcag3AcCAODknGSTqu4mmHvsV42D54p
 fN5qLshWmk9NQzQ5vNaq2rt4KyUxyfPXzpgt9aYLsa2Yr5LE6LLvfOtEkifFa+W3W6+slE9ns
 uCbOYQP52n2vBZkSJYCCPTmFb6d3qQr7OweLrW2IO5J8G0r/U1jHhRkLwyQ38sNN2fOr5Sp3m
 CRdYZF5TWSe1w3mtFeuh2/mNs1+7/85WbBGoUzoEUJ6vc06M45dJBsgzRG9WYqTQ9atQu701T
 phFkV5gtxvQEfkHXsdYL7f/8l1sxpY19aB2SMAhHeVdO5iXIFjlheujY5a9BTD6TpbI70nUqq
 FNRvFMYM8gne7nEKoUQ93OKJP6nppSOHDvSp3ZTHqhElTKOaqhIc3yfR6KnJc7jnpuvQlyHNn
 qZ2ED8flWuCqN6gdJTS6wfvDNlQHp4hYNnxygkleqgz9TQwqL40eRkyPZosGglH1XwjWBwImp
 NlWU3ZGbjgoH5MNz56DQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_065448_773645_ABE8B5A7 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 3:50 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> >  # common code
> >
> > -obj-$(CONFIG_S3C2410_CPUFREQ_UTILS) += cpufreq-utils.o
> > +obj-$(CONFIG_ARM_S3C24XX_CPUFREQ) += cpufreq-utils.o
>
> Drop also here S3C2410_CPUFREQ_UTILS entirely.
>

Ok, done.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
