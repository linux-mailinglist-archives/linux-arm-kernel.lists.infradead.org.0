Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 388121132D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 19:13:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G06rFluKq9RO7rhfOnydIi0AyVrPJDMp7MpE7dMgeWU=; b=WIWLfu/aA3FAQS
	m21CelsJ8/DnvYK8LiDP7ObdlqDRD/2oas5CyoOsRGiFpqN/dEPcTmxG16AcIvUD4wsQ2o50Vnx3+
	vCB2JkqV6+T0LO2Cuoyg7bacLbzCgfxzYOkNSmMPCw4o9YQahZoayo3sVmBpj2CyPJ0mRQ75cOAtV
	Trr2+pT70WwBReoQhrpt08HJpnyAR3zL1o8VmCF+fYCFxWtrshLR2qW38hapVBZzgYFBcyTaYTgpl
	2Wr5UZQo7yPrnbUv3C4aTwPyBwZMvfJY+/tJH/JCuq8jNfcklYrY+r/J3b70Y3P/hiG/jYYAddtIP
	n4lB4vS+uvUnAPOGTLFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icZ9U-0001EH-3i; Wed, 04 Dec 2019 18:13:28 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icZ9N-0001Cz-ED
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 18:13:22 +0000
Received: by mail-io1-xd43.google.com with SMTP id i11so565225ioi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 10:13:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KbjMhMLQ8ZXCsns4nZuVxnFXeq+4FdUf6xW1nrBKHDw=;
 b=Rvfdm8IAQbF27G90nuZjBxEtcEwJxiB+bs/eGLAXjvZ3cwULZ8T/egv/YLoZKttmIj
 o1UWTzyXjGfnAMRtOhBpUqnTaJP57qFcUyVVwmBiTDAs5V6Zhw8PuczWhc03XzKEtNSZ
 8vJVYsZKIQpZn4jXmdJBTjqCcmM6WRAm+LTyZvla3DgF+BexG/WPMWfQNgP9XBWhEGRC
 SR+miCcfuOkXH+qpUZ4L3/+E0wZ2WHflhUTlS7EgoOwhWMSiNhnpwRLi7xOZKojlV4Kw
 2QzONISlvHJdT/DQE+/uFSGIvTNWqGVS/y/1LKJr/wxuCC8AU3AavkB4gcEpPngiZ5Rg
 jBpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KbjMhMLQ8ZXCsns4nZuVxnFXeq+4FdUf6xW1nrBKHDw=;
 b=ipkxC+nZ0qwhMsI7D/nJ7GkVdSTOSXNfAr/kOaohVLXY9LDqqHhF6aoSWzZ1DW4lo6
 PEYsBDU9/dgDA7JxTA3jcp3stzYqfRP3G/l7xzk8XEPeor+3puhwHNLm6VywTRi61UbF
 UKHcHEZgkZFJpNgaDW4t0yNBRiUMTGY0WPgR8N+r0rQhAc4gZ7/Ql80FxQcleP98P0jP
 KVBiAqfW6o/29a7jRc6IhXo+drOpmHKc52e3V6WWIqwopaKB6s4cjvY1KRg1PpHBFdY+
 b4WW3ZYz5CQXTUlTK27s6QI5vH29oMuNHLf/DWx5e6U5EEUt4ihyz+AfR5iaysQcu1Hm
 qmlw==
X-Gm-Message-State: APjAAAXexHXvhuZGo9XQO84sBEMic3egWpYPALbfnRqJWocPKoLqHhO+
 1vw8UilveMDk3i6wbTGNSkH6kI92bewMW4JtcPiyZQ==
X-Google-Smtp-Source: APXvYqxckBA87s67w7YakD4b8GgZOryNfAxTyy+qPNdE82bEdoxtjPjZlJ/tt5IIpRik/K/Mqv7mj95v0hKcPAjDjZo=
X-Received: by 2002:a02:3309:: with SMTP id c9mr4378013jae.52.1575483198285;
 Wed, 04 Dec 2019 10:13:18 -0800 (PST)
MIME-Version: 1.0
References: <20191128165002.6234-1-mathieu.poirier@linaro.org>
 <20191128165002.6234-7-mathieu.poirier@linaro.org>
 <20191203194330.GA2847072@kroah.com>
In-Reply-To: <20191203194330.GA2847072@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 4 Dec 2019 11:13:05 -0700
Message-ID: <CANLsYkyBBp_bAjsEuS=ZDY=Qza67PrwyWJUaDdBHTe1ZM1=2jw@mail.gmail.com>
Subject: Re: [stable 4.19][PATCH 06/17] remoteproc: fix rproc_da_to_va in case
 of unallocated carveout
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_101321_488005_41E89C9C 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "# 4 . 7" <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 3 Dec 2019 at 12:43, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Nov 28, 2019 at 09:49:51AM -0700, Mathieu Poirier wrote:
> > From: Loic Pallardy <loic.pallardy@st.com>
> >
> > commit 74457c40f97a98142bb13153395d304ad3c85cdd upstream
> >
> > With introduction of rproc_alloc_registered_carveouts() which
> > delays carveout allocation just before the start of the remote
> > processor, rproc_da_to_va() could be called before all carveouts
> > are allocated.
> > This patch adds a check in rproc_da_to_va() to return NULL if
> > carveout is not allocated.
> >
> > Fixes: d7c51706d095 ("remoteproc: add alloc ops in rproc_mem_entry struct")
>
> This commit only shows up in 4.20, not 4.19, so why is this patch
> relevant for 4.19?

Your scripts are better than mine...

>
> thanks,
>
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
