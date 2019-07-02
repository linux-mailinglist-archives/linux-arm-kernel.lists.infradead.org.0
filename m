Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D695D420
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 18:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gIw2cIpHE94n6QU3F7z10CHKZj2nR4jqH+d5qEsZmJc=; b=YLLCIgjzCgFwMQ
	GpdyU+/ImOWrTT3Kv98+M8SmAQsoLXFphmA4WK0nWmGei0SSUzV+h+fitLgR7KjgyfA40xmeXmKIz
	YZT2KNSaygT1nd/3/vXLGEk39lpiTxzuq9sQYtJht7VI1dap4BB7qnjXNkX+q1iCHsD29iwwuTLdE
	Xye2TVR/tMemaQKWURh2Dz9GuIsOJVxYjhKdV51M9GoNA+be8PBFt0DKpWl9J3p55p3hlysmHoYAc
	028x6BwxDS2miVC5rEFH7RCES4uBEDOQAZO9Qcu1A6AIgR9nGejGdFFoFRMBX0cGi9VbJI1lbIlMG
	nqUceJDNiuPwNHExbBeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiLUA-0005CH-MN; Tue, 02 Jul 2019 16:18:26 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiLTz-0005Bp-2L
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 16:18:16 +0000
Received: by mail-io1-xd44.google.com with SMTP id r185so38329490iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 09:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bqgLrmmd8x6qlL6pHjQRFMF0iw374ktu2JdaBpcU1XQ=;
 b=U5owJF4EPNHtXUpH0awPjCfSVLKSI0k/mrRCiycKNS4KBTsOQ83w18XIgBnBBtnDRv
 rH3DIcfH2HVbPYBDR6SEhRXuGUsFSbBzKzUuMD9q5L0I3m6QsrnpiVcwnIKsKnCC9QcU
 D55YPieluwUjJyG4kbPkN7DTw3O/amZ7R0LRmX0ZAj6K4UZY69Nerg22QoO7Za16kXcC
 Pns3Q3RD4M330ECg7EXidtH0RG7ljvCx4Lpo8UWwvmRU4hTzqckArx5WARhclOM2r7hv
 ms7BEJutdHc9SDQ7L0cXkkZ70QJthPvGShKbTwxdADf4sAnAt0L3hd8ZcvdxdhelfGoI
 2ujw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bqgLrmmd8x6qlL6pHjQRFMF0iw374ktu2JdaBpcU1XQ=;
 b=aPtvK77nIdkK25ZcPGm9jaUpQAfzz1zq53igwTXQgnMhwhH8iHgsjbOeUY6cu/H7z2
 TzBjUo8Tz07uI89yBjuQV7vD1Bs3Bh6UBv6HKPa1caD8jGfzJlc6DI9hix7E2l+T+9YB
 nip+AaNhkhviJhvu7basEarKsVAhN3j4MR29w2YBXva9EsISok9fMedICA2Mu1KbL1qw
 tmOO+omFpCi9ILMN0UHR9RYBuH9+zlWg+/7YgctmLQvyxKlIDdkS2XEBbEL4ZOD6ebrT
 ezyw2u6wLE8reRqDdUalDgRZcUK/P9J93QyfNQqhY9jvIPmqv1dRujMZaUcrqjjlPzy0
 aWTg==
X-Gm-Message-State: APjAAAWnMTLu6kmNLiSPdGDpvjtNKqQ5nUluiQNhAAwbJNhhLVlWeaqB
 FlQR57ME7L1QUohZbSF+g7purhKvYvFpFZrxnYrkKg==
X-Google-Smtp-Source: APXvYqznZPszf1InsttaB2uooYsG48R6piC0PvtXd3xp0pPhLhMDUi95w3TX7pdZO3L2UATG+EJoxmifRt9he9buDcU=
X-Received: by 2002:a6b:1494:: with SMTP id 142mr13256231iou.72.1562084293335; 
 Tue, 02 Jul 2019 09:18:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190620221237.3536-1-mathieu.poirier@linaro.org>
In-Reply-To: <20190620221237.3536-1-mathieu.poirier@linaro.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 2 Jul 2019 10:18:02 -0600
Message-ID: <CANLsYkwh9z-Byc1qR6PLhmY9cfpgEmvk+idsX7GxMbYkL9muFg@mail.gmail.com>
Subject: Re: [PATCH 0/5] coresight: Fixes for v5.2-rc5
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_091815_116241_6A809E25 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

On Thu, 20 Jun 2019 at 16:12, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> As requested here is a set to fix problems found up to now in this
> cycle, supplemented with stable tags where applicable.

I haven't heard back from this set nor can I find the patches in any
of your trees.  Given the late state in the cycle I'm not sure what to
do, i.e should I do a resend of this set or send you another series to
go in the 5.3 merge window - please advise.

>
> Thanks,
> Mathieu
>
> Dan Carpenter (1):
>   coresight: Potential uninitialized variable in probe()
>
> Suzuki K Poulose (4):
>   coresight: tmc-etr: Do not call smp_processor_id() from preemptible
>   coresight: tmc-etr: alloc_perf_buf: Do not call smp_processor_id from
>     preemptible
>   coresight: tmc-etf: Do not call smp_processor_id from preemptible
>   coresight: etb10: Do not call smp_processor_id from preemptible
>
>  drivers/hwtracing/coresight/coresight-etb10.c   |  6 ++----
>  drivers/hwtracing/coresight/coresight-funnel.c  |  1 +
>  drivers/hwtracing/coresight/coresight-tmc-etf.c |  6 ++----
>  drivers/hwtracing/coresight/coresight-tmc-etr.c | 13 ++++---------
>  4 files changed, 9 insertions(+), 17 deletions(-)
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
