Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCB0810A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 05:47:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xFjoewOGmLvwfQvGQq/ZGPY8mBOAdw2o1e2xwNWZuoU=; b=Xh8uWrg9SG3RVl
	R+3+fAbg3pFhKRx0RIzBhm8Kj7WqGmHQVwd3ZZhPGrnyxc5k0M3Cnvcw8i6ZAP5vubIHzqwAEObHw
	fOpMMgmNINoYw2qNURJkgRK7H0b4yIFeZM+vqY1vFdFYJYufZX0EFStK/QzYum2KMJ7GzMLN3vv7E
	aZlxOQ2HauioCbS8LVNp4W1zqg56bVQWEUqR7VBZeML4a7gza+WSEYaU7CJVhglnq6Pj9hqUV6wbX
	QX8xKhI5SWw4Iutlt4q3THW1MWPQJwtlLW58BQ8BO+x5fmub/QOcMh6yOCY6tjhiEDs6OHuC1AuWf
	iKNquSoKVl6BJO4r4q6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huTy5-0002al-59; Mon, 05 Aug 2019 03:47:29 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huTxu-0002Zu-De
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 03:47:19 +0000
Received: by mail-io1-xd41.google.com with SMTP id k8so164439014iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 20:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NdPVws2a6Dt8y874ce3RveAAw3TWAis9HKBWlXlAjvY=;
 b=OBYI43XlN/vZLhQ4I5ks3RXrtil8B+rCxmR8cwtZaowww5tDMI+Cxo2hbvdu8FHNLu
 BhH+YD93jhkSfrl75up6xGGlXrLaP9X1t6rqAOFVil8kLtPjDeioFzDMuFQajnlVdRXD
 vKwdzSfwVwamLFFT/rx74hSgj/FhZcXk1ZWlptrNGi2gPYAiI8KZnlTVm+14MmX9P5FS
 8gmxewjFS1UqvwscTQgGNwQ6bR3nt37XDvxJJmddgiuSkKN9VaXugpLVKDADofPFxIQ5
 7Buoec1ZXqzVleG6k7Fc8qYaTdsBGRUzReQ+BvUDuQso9RmWcnuP87fxacB0HDOaS4fH
 7G6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NdPVws2a6Dt8y874ce3RveAAw3TWAis9HKBWlXlAjvY=;
 b=XLP8cshmTMSRqS4VrdlhMgjkVBiLbOaC5UDwh/fcJUjjxAGp1x9tf7NrcFNtisiqQZ
 ICiHYR+xeTLPLzxlmQEBX1CitBzugM3FrsYaoBsRckoIGpeU6xY/VJ4NSRzGZqM2zKPM
 M01E3SY0AApULtd/M7Uh/ns5J8hAc+x3eDk32mfFfuM5H7JGYjLgoMf4//JpS54HFNvO
 4aqI8rvY5f7gztOzkq+crcQ5o9LjiAcm0NWFZqRLhzEtlmQoghryKyNLLW6uC860D1FQ
 Lc0HfN1ou7xX+63JJ9/EK5oXjHGrMdQEnP5qE5MgItmY64lSA24kHhlw8DZUk6VOro4G
 wwJw==
X-Gm-Message-State: APjAAAWnOG4DlPWZTetCo2V5srySyldkHwQxCrKMo9OrgoQHDJOz+Zre
 qBQ8zkxFhFqPnJehNjbwDpHggs4QKYVuXPZ9wtY=
X-Google-Smtp-Source: APXvYqxtnVLtg3Sb9+ZhAgKfKLHG6VNs+MEi642xPS4QqUS2THpCFZQ3F8/DSRihpUHBbfKShzmtrYIA9PT3Yz+Gpug=
X-Received: by 2002:a02:29ce:: with SMTP id
 p197mr19639555jap.139.1564976837286; 
 Sun, 04 Aug 2019 20:47:17 -0700 (PDT)
MIME-Version: 1.0
References: <1563873380-2003-1-git-send-email-gkulkarni@marvell.com>
 <CAKTKpr5kmG3k4b85Zf05Q9xXpxMNZJyzWN7RXqZdteYUdMkc6g@mail.gmail.com>
In-Reply-To: <CAKTKpr5kmG3k4b85Zf05Q9xXpxMNZJyzWN7RXqZdteYUdMkc6g@mail.gmail.com>
From: Ganapatrao Kulkarni <gklkml16@gmail.com>
Date: Mon, 5 Aug 2019 09:17:04 +0530
Message-ID: <CAKTKpr6QqvNQcm43res=3MtAYSsbj5NVwstfuQE3cdFjyo2eNQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Add CCPI2 PMU support
To: Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "will@kernel.org" <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_204718_465142_3B57D1B6 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "corbet@lwn.net" <corbet@lwn.net>, Jan Glauber <jglauber@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 4:24 PM Ganapatrao Kulkarni <gklkml16@gmail.com> wrote:
>
> Hi Will,
>
> Any comments to this patchset?

If no further comments, can it be queued please?
>
> On Tue, Jul 23, 2019 at 2:46 PM Ganapatrao Kulkarni
> <gkulkarni@marvell.com> wrote:
> >
> > Add Cavium Coherent Processor Interconnect (CCPI2) PMU
> > support in ThunderX2 Uncore driver.
> >
> > v3: Rebased to 5.3-rc1
> >
> > v2: Updated with review comments [1]
> >
> > [1] https://lkml.org/lkml/2019/6/14/965
> >
> > v1: initial patch
> >
> > Ganapatrao Kulkarni (2):
> >   Documentation: perf: Update documentation for ThunderX2 PMU uncore
> >     driver
> >   drivers/perf: Add CCPI2 PMU support in ThunderX2 UNCORE driver.
> >
> >  .../admin-guide/perf/thunderx2-pmu.rst        |  20 +-
> >  drivers/perf/thunderx2_pmu.c                  | 248 +++++++++++++++---
> >  2 files changed, 225 insertions(+), 43 deletions(-)
> >
> > --
> > 2.17.1
> >
>
> Thanks,
> Ganapat

Thanks,
Ganapat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
