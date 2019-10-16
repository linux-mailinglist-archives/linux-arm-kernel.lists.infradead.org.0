Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC87D98C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 19:58:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCgmuCW7J5Ct3my5ryegNCMXHXv9Dk2ZUjkpmkcdt3I=; b=OdBL0y3CaPwuZ2
	qZ+zU3AiCSxIEQdN/hN+zC3wXeW5PiXZvcsu0mFlcvZjzXpgHhP/Zfii2ueYP+qYmY0bLjyLZv3vX
	BNLl0deyoU/Ri/C/S8D5EIrERgk6cyRil8EkJJq4cKooxd5L3bxfiuqpYUZ3VfAHBEVU4dnI1nuTK
	F36Wf4GMlrMpSQjpNbdxmN403cxZqmNv9SqpKEGRLmIGu614mzP7d1lb2rKJvb5VM2eunWjw9tXLt
	3QVb7374wQ2myBfBRTN+N82H/ZA7ABVIbj+CEw7Z5MO8qejfGkUJjau4Ldcx2IkKJPlVghSfUv66M
	z2cbRI4jnkYteC+4czlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKnYy-00068f-Ob; Wed, 16 Oct 2019 17:58:20 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKnYp-000683-5m; Wed, 16 Oct 2019 17:58:12 +0000
Received: by mail-wm1-x342.google.com with SMTP id m18so3751198wmc.1;
 Wed, 16 Oct 2019 10:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=nFz4T0vFX9I/roldji38Wknwl/JNJ6KhqR7kFUGrr+8=;
 b=MG8kkB/maSXdkwrwZNVgc+Xt3j8g2HWexcftmSC0vzdBO837oFQKzV2Hlniy6PE0yH
 WI40Q0LAOwT9M9yDnx6e0NCvpSy4g4fh8iUCaLzH/ciRPfS9YHMPj6bgX234D+yhGdse
 ZYMPpMe5M3HTAg6sMw0/Jw/gVWMTJCypdNTDrqjnLixFJIQT3uvbrEfcWCHPxuFfMcwi
 kRwt4w2lZLppVnDv6jcrUjfbaaRIZFEqlJj/qA0AazdcIEf8bOsvGhUCdpB2RRrexIMC
 PlRL465867YiyQtZ8NfvBTsriVq6F11OzW1hvwIB/JKliHP5V8RHHXIpJjyolospeWtQ
 r9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=nFz4T0vFX9I/roldji38Wknwl/JNJ6KhqR7kFUGrr+8=;
 b=WFOed4YP79vahamHsZr3dl/r6dPRpO1B8SQideZm7AR5eAafEP9mmAI8tTt3jTpBjs
 fuXYuRk9Y5PwhNvKNdeGLIhrIQ7HOQNXjq1ERAEbU3+oKZqB5wE95SpYV/ynuNc9JqKx
 snhUs0iOV+OFagGzrsp3SJw3/evZk7tiKsCh84J/lzI0Re+teeq8wd2/AzaJ36dmOmlF
 pXBxX7F4GgRr50yTN97D9vVHZVtwNl6OqfvKnBRE4L3v6grZxUS/2nqyuBVgcSxGx8YT
 LOGmXymycKC7hXv7YPOMQWX2tJ2zy1FbAXYqAa7BgBYQxq+wB0+XXK0dLX8MSVcgj5vU
 j1Rw==
X-Gm-Message-State: APjAAAW8U29v9OIEWelPMLhk+GrytAQohf0oITtJQeUsjVM4oischQVF
 k/TisjxmVBChgh2KRI8QDw==
X-Google-Smtp-Source: APXvYqzhSei8ojosNKz5bE95s1ODgdjfle9rj/9SqQgQEUrQ7Cy8VxXIGgT84Tsi1e8CY5tQ6SuylQ==
X-Received: by 2002:a1c:e455:: with SMTP id b82mr4444588wmh.41.1571248687904; 
 Wed, 16 Oct 2019 10:58:07 -0700 (PDT)
Received: from ninjabhubz.org (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.gmail.com with ESMTPSA id
 143sm4430952wmb.33.2019.10.16.10.58.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 10:58:06 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Wed, 16 Oct 2019 18:57:42 +0100 (BST)
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: fix line over
 80 characters checks warning
In-Reply-To: <alpine.DEB.2.21.1910160713140.2732@hadrien>
Message-ID: <alpine.LFD.2.21.1910161855320.8071@ninjahub.org>
References: <20191015225716.10563-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1910160713140.2732@hadrien>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_105811_240271_45197206 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbi.octave[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.5 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 eric@anholt.net, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Wed, 16 Oct 2019, Julia Lawall wrote:

> >  #ifndef VCHI_BULK_GRANULARITY
> >  #   if __VCCOREVER__ >= 0x04000000
> > -#       define VCHI_BULK_GRANULARITY 32 // Allows for the need to do cache cleans
> > +#	define VCHI_BULK_GRANULARITY 32 // Allows for the need of cache cleans
> >  #   else
> >  #       define VCHI_BULK_GRANULARITY 16
> >  #   endif
> 
> The branches should be indented to the same degree.
> 
> julia
> 
> -- 

Thanks, I have just  updated. 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
