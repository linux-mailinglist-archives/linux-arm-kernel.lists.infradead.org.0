Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38B61696BC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 09:08:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjvpAl4qwXWKlc7x6RjDm0D+kB06KNBsFlN1PPrLsYY=; b=Ob1nsgoAkiAae2
	E80JwkxI/gpcxF/HWFx8QCZQ/hshumk1tJBxRs4fBSS4x9fos0I63/kvlndFsd6GYeceBuUel1Xp6
	it/AVlGyEBcN+iBnGUmX0JydxFIncT41bBej8MrDp1c0h5hlVfAuB2C+zaefp0URY7tPfa1PQIVcM
	J2KI98fFK0FVf8+uCMlKhfYmAJuL6y/7UGIf2EHl9wumdChz2oXzBpZyi6DhmKyy7S1eAv6CfG7/U
	0lWRMseX7iP9eAiKZcQEe/dwNvKqm+JrBIh8JM8z8nABryvDjV4RHPnTAuUJW/tHmFXgOvPrna0PN
	35xRST4RMGuXKu2/ZR2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5mJM-0006jY-Q6; Sun, 23 Feb 2020 08:08:24 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5mJD-0006jA-Oa
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 08:08:17 +0000
Received: by mail-pl1-x643.google.com with SMTP id j7so2713559plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Feb 2020 00:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yQk1zoKwLwWh37FUIzsv76O7XQbXKjoLP/vDR2rhq5Q=;
 b=qdG6a5mHwcoXs7RTbNh6kmru0Q2NPXRRviemSasiC2o4e01Hef3Y3Me1I5bBzz1/uO
 56D5yukc3T4KdRu9TgG5a+36a7OugpCRC8yaRLHrThJeDdfQ4rZhUvHfOKlo2SPRQ84F
 JWa885rbJ3z6h5PodG2mj4Kr9ZehV5e0X8fufvVJUyuiY2xNfrTnM/kQS086qlseDDlD
 jvk+qTi3wR7HpW9u8nNCE7EUhsQgVXElj0GG2TvQ3e1AdNp+rpXnq3q7pGx8/CxBEVyW
 AgMqJ6YTI6x4EhJ3yWiyAjGbrChD6TiAFG8XrawPeskkAEcUp/HkXJr5S1YSbA0ti1f1
 1j0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yQk1zoKwLwWh37FUIzsv76O7XQbXKjoLP/vDR2rhq5Q=;
 b=i4wUugNAELjb6gIb96hExyiZkRkERRF4nATtYSJRkV0Myb9rML+D1UvOuBAdDxwWbZ
 nZ/zECM+CcQRxXLxdIQKVKz7HX9Jjs+Gcqcc6HKMpvDEgu+cmN6iyhsCBi+Df9P2SRNp
 IzKg34RUHL9bpxhb5iFZky+/TMCF+921CDI3g9oSST5jvwxMME7c0z7R8qIOALbRV5/2
 f7AEL7DeV9qL3jdRmEklCSc+qbqLqvbEHB88DtnJ2o1pzjC1x3ydYsbWvGXlaJ1EjkTg
 1e9eg4gBC8V/nsbIP7U7r718MJlTk3DgYyV1WckiXU3YNCF8+Ob3QIyKyclhIggNig7C
 4cSw==
X-Gm-Message-State: APjAAAWaXLi4yVF7hHxB0tslz1Wt7KV9JjVFbmj0xhePMTUwIKWJmLtT
 EAdX9NvoOxSLI0PatM/eRKA=
X-Google-Smtp-Source: APXvYqwiTY7/62F2gOlXwYs8R/dmD9HUIJ8WtLe7LvqVjiyj6uzrb8cWFT7iegdF6/n7O6JgYId+mw==
X-Received: by 2002:a17:902:426:: with SMTP id
 35mr44071795ple.176.1582445294652; 
 Sun, 23 Feb 2020 00:08:14 -0800 (PST)
Received: from gmail.com ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id t8sm7876146pjy.20.2020.02.23.00.08.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Feb 2020 00:08:13 -0800 (PST)
Date: Sun, 23 Feb 2020 00:08:11 -0800
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 0/5] arm64: add the time namespace support
Message-ID: <20200223080811.GA349924@gmail.com>
References: <20200204175913.74901-1-avagin@gmail.com>
 <2d982452-12e5-5c0b-6e4c-adadb7a34616@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2d982452-12e5-5c0b-6e4c-adadb7a34616@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_000815_826220_03E3BDF3 
X-CRM114-Status: GOOD (  19.48  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 12:40:47PM +0000, Vincenzo Frascino wrote:
> Hi Andrei,
> 
> On 04/02/2020 17:59, Andrei Vagin wrote:
> > Allocate the time namespace page among VVAR pages and add the logic
> > to handle faults on VVAR properly.
> > 
> > If a task belongs to a time namespace then the VVAR page which contains
> > the system wide VDSO data is replaced with a namespace specific page
> > which has the same layout as the VVAR page. That page has vdso_data->seq
> > set to 1 to enforce the slow path and vdso_data->clock_mode set to
> > VCLOCK_TIMENS to enforce the time namespace handling path.
> > 
> > The extra check in the case that vdso_data->seq is odd, e.g. a concurrent
> > update of the VDSO data is in progress, is not really affecting regular
> > tasks which are not part of a time namespace as the task is spin waiting
> > for the update to finish and vdso_data->seq to become even again.
> > 
> > If a time namespace task hits that code path, it invokes the corresponding
> > time getter function which retrieves the real VVAR page, reads host time
> > and then adds the offset for the requested clock which is stored in the
> > special VVAR page.
> > 
> 
> Thank you for adding the arm64 support of time namespaces. Overall it looks fine
> to me even if I have few comments. I will test it in the coming days just to
> make sure I did not miss something major. I will keep you updated on the results.

Thank you for the review. All comments look reasonable and I will
address them and post a second version.

Thanks,
Andrei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
