Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B21BA7752
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 00:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oH14hNkfMaSfRF3hij1DEvM8rXnLXjZocZLk1K2pFLc=; b=lGVbA+E9WyatUc
	jd4f6esmohNdYlFF172dty/FCtWNKnkF2fkZyX4BAkU7mKma6XYhThQGcTIecahOzz6EMwnIRe+qP
	Nw3vAowSayIfQAwMTNx73l6xlH0qWMhfCgqP2PTjiDPiYvKw6LJdhXp4/rBofYDmKSlLisyNDdkec
	Tv5CNazjEpPm5bO36HMVv/i7eVK2SmUCN89XAmCCWNISCGcMZuLWnQMDIa5pOS1B/hWEs2+Xp30ni
	z4L3hw0PsTmH/dx5sDot5U30nqL0JOSg8jjeCq1xsPs9uZhUk53tVn+PVQv45pEQty+sekDRMGnKU
	7MHi1ColMDfdiW7/mDng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Heh-0006HF-74; Tue, 03 Sep 2019 22:52:07 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5HeT-0006Gg-Gz
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 22:51:54 +0000
Received: by mail-io1-xd43.google.com with SMTP id f12so22318229iog.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 15:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kYO7eVBCNrnpFOyRb3Amb6W0vdTOqYDKVyWymRh0QNs=;
 b=g+GVoCijZgDqSnsdGqVziBFgPBsX4jMTrSmbCCUhy3mGL8Fcbqk7jMlzoExRvAdOeh
 WA1uwt/XIXWne8OhY9TKjI2oZ//SyLg8Phrvfl6722RzurwumBKofu6L+1/UDVMF+l9G
 80MjqcJT7rR4p7ysdrj/F1b57bmozMjVHtEE2+rxdnyOmPoCQRFy9Ygq96ITVWPkFeDa
 cMyStSaXvUeKCVWcVoQgQAUiIcEBb2YqJl6AVOIucnlUYV+guv9KruXTjG4pVM5aRXWr
 LYmWAzNG7d6l0HMbj1M2jMaf5GtLXObTNeKE9/O1ZFTCfDGEa2e4cn23HTWBuaN8EP3/
 MLhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kYO7eVBCNrnpFOyRb3Amb6W0vdTOqYDKVyWymRh0QNs=;
 b=LCrHq4qtHx8e6ApvD+PwyUrbIJDBkaCY6fu2DhJ+rqtHj1i076dpqRkFRrfbGWB/5Y
 3BLOoJT70tYoVFof/Clw6c3v6ZNFJwVdb8n2K2aGy3tQzp2rqxo8Entwm1kiBEIw2UwT
 Vhc6YvZD3J3T167SWdWzELZcA0QjyeHHud16K1zR68QuEkXsACwa2bQxYKuKpYP0xJX8
 yV6BebeI2YoH19ktaeQz+4uAEkmqHWFsEM/lWN1AaUOD4v32VfLMxWI2Pf/sqF2uH5cs
 /rUO23X5rGKe2sB0ayoXugtzVd5xc/2k7IWTSa3e6P85JlWw+ZPg7lPP/Mp2VvTxUCbP
 7/nA==
X-Gm-Message-State: APjAAAXfbaAAHJBGsahc8OQEVffszplxP2miqEaqFJlwxeFd+bseSW72
 mpB69FBcOMqcx+i/GDwIY+cNmmhk1fMqH9POFe0WeA==
X-Google-Smtp-Source: APXvYqyN4ahmzdcyJ7W9qi0KkM9Y5yP4GjOu24tSPXRsLsC+VsTfW+5Qc8eZJvDGOkt9ra+LaHsPs9XSVv+qQKxWRj8=
X-Received: by 2002:a02:92:: with SMTP id 140mr7435167jaa.98.1567551111624;
 Tue, 03 Sep 2019 15:51:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190829213321.4092-1-mike.leach@linaro.org>
 <20190829213321.4092-10-mike.leach@linaro.org>
 <20190903195951.GA25008@kroah.com>
In-Reply-To: <20190903195951.GA25008@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 3 Sep 2019 16:51:40 -0600
Message-ID: <CANLsYkwvasYKaepXuWdkTKDj7RquATaum-dmTZZQL237wesryQ@mail.gmail.com>
Subject: Re: [PATCH v2 09/11] coresight: etm4x: docs: Update ABI doc for sysfs
 features added.
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_155153_565558_8AA69426 
X-CRM114-Status: GOOD (  16.74  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jon Corbet <corbet@lwn.net>, Coresight ML <coresight@lists.linaro.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 3 Sep 2019 at 13:59, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Aug 29, 2019 at 10:33:19PM +0100, Mike Leach wrote:
> > Update document to include the new sysfs features added during this
> > patchset.
> >
> > Updated to reflect the new sysfs component nameing schema.
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > ---
> >  .../testing/sysfs-bus-coresight-devices-etm4x | 183 +++++++++++-------
> >  1 file changed, 115 insertions(+), 68 deletions(-)
> >
> > diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> > index 36258bc1b473..112c50ae9986 100644
> > --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> > +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> > @@ -1,4 +1,4 @@
> > -What:                /sys/bus/coresight/devices/<memory_map>.etm/enable_source
> > +What:                /sys/bus/coresight/devices/etm<N>/enable_source
>
> You are renaming sysfs directories that have been around since:
>
> >  Date:                April 2015
>
> ???
>
> Really?
>
> That's brave.


When I worked on the coresight sysfs ABI a while back I specifically
added it at the "testing" level as I was well aware that things could
change in the future.  According to the guidelines in the
documentation userspace can rely on it which was accurate since the
interface didn't change for 4 years.  But the guidelines also mention
that changes can occur before the interfaces are move to stables, and
that programs are encouraged to manifest their interest by adding
their name to the "users" field.

The interface was changed in 5.2 to support coresight from ACPI and
make things easier to understand for users.  It is a lot more
intuitive to associate an ETM tracer with the CPU it belongs to by
referring to the CPU number than the memory mapped address.  Given the
"testing" status of the interface and the absence of registered users
I decided to move forward with the change.  If "testing" is too strict
for that I suggest to add an "experimental" category where it would be
more acceptable to change things as subsystems mature.

Thanks,
Mathieu

>
>
> What tool did you just break?
>
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
