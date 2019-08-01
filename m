Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE837E3CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 22:17:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bEEbAW2/H+2u+gI1gfXNZ9jU1ADby/zhDjwXiVzJT08=; b=Yq/RzGece95ok2
	IJYm4M70QqunlDPlQ8Ln0+KyqECnqas9oMd9YEaKZJmvp/wfy0CzFKZ76n5Q0wte9vAv9PDUFpCCh
	43yZqLGgZ+JMvh6Hay2RZacCiodS6Dj94tGVyLBX+uwnu/1Ft/qg4m912diS8Gh+C6J6euLR4Eko4
	EoDkHscHO9fO8zM1WTOlL7620uG/w6hiDUcZywSPSTDt+XGoRLppMLxpaNF/gMkGQx5NVI7MBhvJ0
	hiK8M3FBUS8kOgOm8PudyMi8qzNtVUTVBpN2IIkYJbhJd1JZZ62ZERaiJX5CxvPqMr0qPXidGiH86
	GQYyajxtG3rzY1HxpJZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htHVm-0004Qa-1b; Thu, 01 Aug 2019 20:17:18 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htHVS-0004Ff-Oo
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 20:17:00 +0000
Received: by mail-io1-xd44.google.com with SMTP id h6so22016405iom.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 13:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h3WhGoIi+0fD87V19bY9bU41eWWkrRUqNuuw/aECDfc=;
 b=d35HqxGq+LWJJUrjukgLSEP3/wAE6QhxTZ4sUv26dz/EME03EOr7zfmqoiEDWseKSS
 uTSmFZpxDpHJuhhX7eEGsYECjGmOg6NjqbqUCocQY0MGQR9mep15ktB4Y1LoPnbqpIkq
 8FQxYyAROy3OEXqK0JCaCTbs0E1ugOl5SKAgLS6Dzh1VbElRjYToALfJyF2LarZnqjkM
 X42qVwN3vobBUUrCx39A0rbS+b4Gm05tS44EhnpLA5B7F4+F7V3Xm6Dqv29u4x3BtEMt
 0gRKxU8n4SSVT0tGA5z8MZC55rRYBBE0zZpOi5C9RLT/H9SksiLqGe9JZbS6QTRJ7PZj
 noHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h3WhGoIi+0fD87V19bY9bU41eWWkrRUqNuuw/aECDfc=;
 b=LhGmmy+xTnwZXM6f2rIEO6BVus7dDXugllloVTYwR2z8sRhQ6joxnX6YD3Ikc8BH7a
 GjGud7SbnUy+Mq9jPSugaZ/UuKvud9nXBp4kQZUvR3G1iimIqFYyj7sgAItaFf82mKEB
 Tw3+MzWMRMbtzfavAx6T9sMP7GOxi7Dv1eEMXuRa5KX5TPASZ2+MBcrU/Jk0Qz6D6aRV
 998I2j9L+UZi8hzqFtnwflbyRl2ZEAVScbM2vq5Rsi/O3dFE1F0w286H9qgrO7fpYqhE
 u2sWvrcDP4knpQlw2HSZDNT4qlzIboX7Inaj3a8Y9QnO2yVdSItq3l/2RjYjvtu7XBzh
 q26Q==
X-Gm-Message-State: APjAAAV7YOnxsirDjolaK/0cgxs4b7ppnFLY0bpTUZN/rB9JfAC25jEM
 20epFuyU5PBi6EKvUdpsIXh14+OuY1UflOtjNtowaA==
X-Google-Smtp-Source: APXvYqx97riEUdmQjIlRGvAjP/2ljjRjx32vVQEafb7HQG8G+RTwtd1m3L6u+7d4fvtwa3pZv385aMQsIPe2ZZilaro=
X-Received: by 2002:a6b:2c96:: with SMTP id
 s144mr119428007ios.57.1564690617105; 
 Thu, 01 Aug 2019 13:16:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190801172323.18359-1-mathieu.poirier@linaro.org>
 <20190801181739.GB5048@kroah.com>
In-Reply-To: <20190801181739.GB5048@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 1 Aug 2019 14:16:46 -0600
Message-ID: <CANLsYky1vC-=zNPvOmWt1wLd5A4jcD+sh=Hwdq0rwhW=b1cdwQ@mail.gmail.com>
Subject: Re: [PATCH 0/1] coresight: Fix for v5.3-rc3
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_131658_836667_5BBD5601 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 1 Aug 2019 at 12:17, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Aug 01, 2019 at 11:23:22AM -0600, Mathieu Poirier wrote:
> > Good morning Greg,
> >
> > Here is a fix I'd like you to consider for this cycle.  Do you think you
> > could apply it to driver-core-next rather than char-misc-next?
>
> All of my -next branches are for 5.4-rc1, not 5.3 (i.e. the "next"
> kernel).
>
> So either one of them isn't going to matter to you for 5.3-final.
>
> > My current
> > coresight branch is based on driver-core-next to pick up Suzuki's
> > generic device lookup helpers patchset [1]. Applying it to char-misc-next
> > will create two different signature for the same patch, something that
> > gives Stephen a hard time when building the linux-next tree.
>
> Why would Suzuki's patch matter for 5.3-final?

There was a similar situation during the 5.2 cycle [1].  Here too we
can fix a problem that is present in 5.3 rather than wait for 5.4.

[1]. https://www.spinics.net/lists/arm-kernel/msg736274.html

>
> > I also think this patch should go in stable but haven't marked it as such since
> > it doesn't apply to any of the stable trees.  Once it is part of v5.3 I intend
> > to send a new version of the patch that does apply cleanly to those trees.  Let
> > me know if you want me to proceed differently.
> >
> > Thanks,
> > Mathieu
> >
> > [1]. https://www.spinics.net/lists/dri-devel/msg219674.html
> >
> >
> > Suzuki K Poulose (1):
> >   coresight: Fix DEBUG_LOCKS_WARN_ON for uninitialized attribute
> >
> >  drivers/hwtracing/coresight/coresight-etm-perf.c | 1 +
> >  1 file changed, 1 insertion(+)
>
> Why would this patch depend on anything in any of my trees?

I send you patches for inclusion in the next cycle and as such I
thought it should be the same for fixes in the current cycle.  If that
is not the case, should I send them directly to Linus?

Thanks,
Mathieu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
