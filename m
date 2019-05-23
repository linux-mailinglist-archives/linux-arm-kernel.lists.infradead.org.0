Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F197E283CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 18:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6KR61w5hdT6qpfUhQ4dBqUzDC3SKT4GuPK1U1WgBgI=; b=XTeBG5GO/gzxoP
	dwCR7UUnYskmCfHh75ho54c+wrdOZV0+g2K3aGL1bW8gd5WW8CU+/zto4UjCBTyUsTJhF3+VD/u77
	xuT/gRTneHSJAnLQbxXMhV7Quzzhh+62oJk3yR+IKHxXqxaC7VIAy/TwmN5hJtWgg/GiM2ab0p9FR
	CpAPoH+OXpbRHgY8Pm43J/sBGnvj7McGP3+4oVh/RF37S4lJF6tc9HLpbkD/22CfNNHBog+PlObaT
	hek8iHZZI6yqssIc4dqzN207tZrP13I/DrGnXXSY/VL+HlC/bLVG8l3p4tqdTgBuqXRON/A7fUA7A
	6CaeXGcnJPPjt72XuDkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTqgG-0002nU-NM; Thu, 23 May 2019 16:35:00 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTqg9-0002ms-Lq
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 16:34:55 +0000
Received: by mail-io1-xd44.google.com with SMTP id u2so5382096ioc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 09:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Iz31yxamDJ4SLEgYHA+H3kjkT5XCb4Zp6/gfezC2Qt0=;
 b=br9pbADirR+994GWUgAiKh+WIakMAmwjJW/UntS6Vn0UL+m+lo1dO/FTn+atO0TVUF
 WdA8FOmw4uGU2Bt+yb06vyTwDWlE5VoB/+44IeS//dPUmBtjE65Z0H9wy+5UAvWjM+bU
 m+bJeRTuOymmNkxLknco9nJkzLY7TqLdw6esosEZQQvPH6sHVcKReo2wvVHJQn0pMBUf
 OX51ptx8FqYA5dBO+dTICUUbyHUOH7QuXKfV6eA1u0UfOiAAh+Mf72MaHLSqmppeHekG
 sh6nJDFdLtpjiUyCOrk9t/mGk5+b5qcprSS2UKQvflivDDj11xTdb5tgLHk7Hl+UCr+t
 3OUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Iz31yxamDJ4SLEgYHA+H3kjkT5XCb4Zp6/gfezC2Qt0=;
 b=nD4wB48VPcM2uvhIx7YpbbdVpsimvN/CxWyOX424M55OyNSpdyXyYp35U4L2OC6B3T
 xDwW9wAyzR6H2vkHABgPOJoGIs0rFDre8nbTbZKZISneQLmCh5VYMJTsMwPOdSZu0pjx
 ISsppGDguf4BO/bAvJYi5X+5vfBO4YUNcLKrmDPoVKYC2yJcKOZ7eJSKQyupjYcce9j1
 SNtF5Jowg85jKFy8NlW6V/7388NknVTCPC9Sh+BPnqPXWklWqKbWk042Li4HesWxu4mD
 jGidTtt9wIWeQt2cogjEt771n8JuHUvd8AotcIBckSbXAgwaE+ArXj+PlF+dz4//fIVf
 QlLg==
X-Gm-Message-State: APjAAAUKqvGmjlFXJ8R1S0z6laWravb6fATsA0nbzrjEt55Q8fhElVqT
 qLrskNq1JPY8HWYge1bMFnoiYQ==
X-Google-Smtp-Source: APXvYqxbigL0wIoR0wevysC4IvW0XTy55FvFJYU3fuOueOdFBp/HEFetU0vD2YZ0NHaH83jARAO6OQ==
X-Received: by 2002:a5e:8e4d:: with SMTP id r13mr57452598ioo.300.1558629293065; 
 Thu, 23 May 2019 09:34:53 -0700 (PDT)
Received: from brauner.io ([172.56.12.187])
 by smtp.gmail.com with ESMTPSA id i25sm8797750ioi.42.2019.05.23.09.34.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 23 May 2019 09:34:52 -0700 (PDT)
Date: Thu, 23 May 2019 18:34:41 +0200
From: Christian Brauner <christian@brauner.io>
To: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v2 1/2] open: add close_range()
Message-ID: <20190523163439.56ucetlt6duvnhdj@brauner.io>
References: <20190523154747.15162-1-christian@brauner.io>
 <20190523154747.15162-2-christian@brauner.io>
 <20190523162004.GC23070@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523162004.GC23070@redhat.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_093454_208035_CFA301FB 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org, ldv@altlinux.org,
 dhowells@redhat.com, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, shuah@kernel.org, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, miklos@szeredi.hu, x86@kernel.org,
 torvalds@linux-foundation.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, tkjos@android.com, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, fweimer@redhat.com,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 06:20:05PM +0200, Oleg Nesterov wrote:
> On 05/23, Christian Brauner wrote:
> >
> > +int __close_range(struct files_struct *files, unsigned fd, unsigned max_fd)
> > +{
> > +	unsigned int cur_max;
> > +
> > +	if (fd > max_fd)
> > +		return -EINVAL;
> > +
> > +	rcu_read_lock();
> > +	cur_max = files_fdtable(files)->max_fds;
> > +	rcu_read_unlock();
> > +
> > +	/* cap to last valid index into fdtable */
> > +	max_fd = max(max_fd, (cur_max - 1));
>                  ^^^
> 
> Hmm. min() ?

Yes, thanks! Massive brainf*rt on my end, sorry.

Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
