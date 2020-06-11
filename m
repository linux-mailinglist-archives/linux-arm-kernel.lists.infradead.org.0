Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85E71F6AC8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 17:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mIdvzKFlAeimRbiqYIwe7mFA7QNysWwcI4k/MJFPozk=; b=Afl8Ia4//FDGZ2
	2IH9xMjgqs0XwFFCyrvh9DUgIBn2mQpP8xWfLTAkMkQEbv7rGTktiB1VrBEg9X4HKCElPnlTJ8tpw
	Cj70vSvtc+DSAJrFQvqnNHxHG90cmGi3pW0l/xGBKR8bhm+UG0XiqmJaEaNVI9NjRWX482JmX0ERk
	Ifx+KKWrPPy0hqjqAzKscGNc9TLFBy4tFZ7Fx0RegrTeeOKxh32/3a9I3sXg7SkYpTNjV2As1u+Hr
	yvRiwZW973jsMG3R2DHb65h0Nwr24gsCd8tjOP9o/ghlOHX+IaiidZEWHs3X/RP1GjsgSQQEvFnd5
	6N8rs1MlAGKgkq5KzTMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjOzP-0005BY-8D; Thu, 11 Jun 2020 15:19:35 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjOzE-0005Ai-OF
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 15:19:26 +0000
Received: by mail-il1-x144.google.com with SMTP id i1so5724960ils.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 08:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1rqRniaTsYfE1typF6ugiU1ENkgUw21RTQiS6OA21zs=;
 b=lOcRhH308zGRYFzFWmmb6TOqkdNuqKJvRMJ431kDJUm7qRp0Nez4Bw33YJcr0ga+HZ
 Jwio0ovnSmDre48IBWO2c3Kev+NTZXRyKEH38lBRcz1zxNptVAD1WckLjHqTWFujDLIt
 ZbQH70Tb2cHCouT/hjjrB2LduSa70dfVTp4bS8VTStMooDF71Yofpe1NkG/4QYCzi2WV
 JatuZD7fYWFpNkxLyxO7xb99Qiulot2jh30CwHn1li5RJji6ui9r1dhx6rq0SH93hZPA
 6D6CUR8pa3AcydhcQK7z5J3PKH9qQQ3TLIV+RYSk6ShzfD2s3gzIin2pkXodGmaUsHcr
 Dapw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1rqRniaTsYfE1typF6ugiU1ENkgUw21RTQiS6OA21zs=;
 b=KexqRLpLIhNfytBH6dx57rN5o9/DdCJ9f1Y2A5gfhm4rUdAF0gcTSh8mlsT6U6bJTr
 xx6+m2hM5/Z5e4NOZm/AfZr6/2apivlOs+6qjpS9b6xWwPQ5nylf1aAgUo6lpVUxa5Q8
 GShpRuR2YfwjQsFEqrWNKvbmryaB8NNiDicpWtwiDRAeD0Mo5EzIwBEIvQ4p9zdzYgjt
 KPF293LH4vgxLbBx6KIvSSrDywJ1GbRNSptPVSVhFXcdYAJB/ZZohQISus/P789TZDuZ
 Y6cP6PMK1sTAjW08BL3csXRwgoTsIC7M21ZTuDe4wF/SXHJyrTNQpVYGRMVGJD5T9peP
 d7LQ==
X-Gm-Message-State: AOAM531mcmZ0ipTUkIFL1Q27sp/OYlNGKM9VCZzsf0UO4rhtKRPBgnUo
 YwqJsFA5WthNFBSqz01HJC2nIyg/xeMGxoe58Dk=
X-Google-Smtp-Source: ABdhPJzxPGRhXjT0I+vY4SOwb4jOqI2irsf9TnegwJsDXW6Wni9r4nNaEClfyd1Nmkjmg3gvsNxbwr5jqWF2z17aQ6E=
X-Received: by 2002:a05:6e02:ef2:: with SMTP id
 j18mr8604138ilk.69.1591888763752; 
 Thu, 11 Jun 2020 08:19:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200607193023.52344-1-jassisinghbrar@gmail.com>
 <20200610082315.GB2689@bogus>
 <CABb+yY1T03YLwiFvBykxsAHQ9Kpu=r1nRTuaP3Emf5dP=Upm0g@mail.gmail.com>
 <20200610155629.GA7357@bogus>
 <CABb+yY0pQYD7DTf=MNpVPB7F2PESiWyTYj=ftRHDPkKMOobRVQ@mail.gmail.com>
 <20200611084014.GB7357@bogus>
In-Reply-To: <20200611084014.GB7357@bogus>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Thu, 11 Jun 2020 10:19:12 -0500
Message-ID: <CABb+yY1K7fxEsujxwVMjJfLqVtg-p+5btteGtpUwEtUSsoWPtQ@mail.gmail.com>
Subject: Re: [PATCH] firmware: arm_scmi: fix timeout value for send_message
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_081924_786422_7187C187 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 3:40 AM Sudeep Holla <sudeep.holla@arm.com> wrote:

> >
> > > > > >       if (xfer->hdr.poll_completion) {
> > > > > > -             ktime_t stop = ktime_add_ns(ktime_get(), SCMI_MAX_POLL_TO_NS);
> > > > > > +             ktime_t stop = ktime_add_ns(ktime_get(), 500 * 1000 * NSEC_PER_USEC);
> > > > > >
> > > > >
> > > > > This is unacceptable delay for schedutil fast_switch. So no for this one.
> > > > >
> > > > Increasing timeout does not increase latency.
> > >
> > > Agreed, but worst case you may be stuck here for 500ms which is not
> > > acceptable.
> > >
> > Not acceptable to who, you or the kernel? :)    Now that you said you
> > are fixing the scmi's fast_switch implementation.
> >
> Sorry, I meant to disable it for single channel implementation.
>
The single-channel platform may have only cpufreq as the user, or only
users that respond quickly ~3us. So maybe we leave the decision, to
enable fast_switch, totally to the platform. But of course, this
discussion is for another thread.


> > Even though I don't think 500ms would ruin our lives, but ok, I will
> > make it 30ms - same as you did in the 'else' block. And drop the other
> > change.
>
> I am fine if cpufreq maintainers allow that in the fast switch path that
> happens in the fast path.
>
Thanks, let me respin the patch and include some cpufreq folks.

Cheers!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
