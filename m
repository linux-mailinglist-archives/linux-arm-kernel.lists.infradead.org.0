Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C872AEA5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 08:28:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVrtP7svfe72FtSoaXmZofdJXE7bweMJAqmSfyUuz/Q=; b=P0mjdv7N4jkx0y
	AMV1E/ivxxsy0aFPwESFFBuGzy69lNMztNJ9J6Dy3yCl8+PRYtrUREiKPBYSi9ki9uHsqLVml7MkZ
	BRNq+x6pSHpliMUWsYXlSTflx3CbPimjG6ibUPDXBYQdGjzkp6qmMDEau9xMad20snhd8Em8uQliu
	ZqiY7DnN1vISxvpR8c2+aQNm+CoXF3wmBcx54jDO/Rt1MgvLzUjx/Jkq9Lgtwdo3a2OKG3DRgB7vU
	/4JgqT9RaAxvMFuhYZKL4gVxoDR7JQgmgybX/ByJ+PAX9m3sACjvSYL3U0qZe7Wioe1/Eb7MdU0hO
	K4fIf7+6E2faN562jDhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV97q-00066l-DQ; Mon, 27 May 2019 06:28:50 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV97j-000660-K5
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 06:28:44 +0000
Received: by mail-it1-x143.google.com with SMTP id i63so22579048ita.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 23:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y8EX+aBGSrqtOZLN7eyxUmkcUk0A/Ju5L1c1bYnhiNI=;
 b=qLTQLOErkYiZCZWLZsydpUkomQMNXVQBdtMc9rB1CB8V7whpCNIF9Bj/qjVm2K8sDP
 IkV9WUPa2vqEjNmemFw6A2MvtmhpRw/ohkvJQYh2T7l8WOQ8gou//bX60cBaoUF3jdZ8
 r7xmMFLdHeKNFd/Hit+LDbnP+9RU965MtzyTUL3Rk1BJXAuMZqb/7+zBQrYDPzY3+SWJ
 FjyuqEd94Db0nPijGELCONP04w568JS1aOWgDBCwI3CwOkab0OCBbNVojUTwWIbb3x4x
 l/PX8cNg8zaU2FYiZfUfYgBG96wwd85DMAi04zfmNvVSp8wrU5j3p+x+eOeLzisCZAEG
 NNUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y8EX+aBGSrqtOZLN7eyxUmkcUk0A/Ju5L1c1bYnhiNI=;
 b=TyBXFfCZfNIrnsre+IbgbZ8UAAlw7xOYjspf3dhaCyOOAq7nR9JkGBpXJwxmLXQ9KY
 XarSii3g5cPY6C/vJam72k0f0qanyMqnbjt052BVHpk3api85Tg5Lt8WFqSMsckdzCJU
 7TpQ1g3FJtGzWi/o98gVyO1/rjtckG5Hlp2avXuHoBF0ibbWIdPa5HUTdUa8/vl+ApS8
 Zlh3xVijAP0w/+zzkiN83fYuf8JvyQiV6LD0yMb1kSJlA1Vd5zpJeV4irbcwbbh3y09Y
 jnacmAJxSg3WI/HyUvh5jqzRcJRpzX2gtYzs7xyp5p1D1nkIEGpmtSLgg/4bCenglKJR
 SRTQ==
X-Gm-Message-State: APjAAAXY+CLtEf7n0pud8o+QgoadUMIYHbWhKKm2npGahaTX/HwtQi4f
 Q5419lmKImuBakVQAiPPPnyUzix/bLn8Ag+DbJDMGg==
X-Google-Smtp-Source: APXvYqxxUNY7KqIqSuNLvKP6LV6FwCHpAkbJoNgL93BLRqsLwPm99e8TItETb5FEBqsG1ivcn2EKLsn1genQRyxZU8o=
X-Received: by 2002:a02:ce37:: with SMTP id v23mr5424290jar.2.1558938521247;
 Sun, 26 May 2019 23:28:41 -0700 (PDT)
MIME-Version: 1.0
References: <1557310449-30450-1-git-send-email-sumit.garg@linaro.org>
 <CAFA6WYMPKxwxzbU=CFYLw83kpXP9LwMQ3-N-hp2NyExhs_HjSQ@mail.gmail.com>
In-Reply-To: <CAFA6WYMPKxwxzbU=CFYLw83kpXP9LwMQ3-N-hp2NyExhs_HjSQ@mail.gmail.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Mon, 27 May 2019 08:28:30 +0200
Message-ID: <CAHUa44FQKJDjSv+CirRVJBPEMMpZD4AtQSUZOb3P51wD9aq63g@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Add mailing list for the TEE subsystem
To: Sumit Garg <sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_232843_666406_4775C1B3 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "tee-dev @ lists . linaro . org" <tee-dev@lists.linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 9, 2019 at 11:33 AM Sumit Garg <sumit.garg@linaro.org> wrote:
>
> On Wed, 8 May 2019 at 15:44, Sumit Garg <sumit.garg@linaro.org> wrote:
> >
> > Add a mailing list for patch reviews and discussions related to TEE
> > subsystem.
> >
> > Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
>
> I forgot to include following tag as this change was suggested by Daniel. So:
>
> Suggested-by: Daniel Thompson <daniel.thompson@linaro.org>

Thanks, I'm picking this up.

Cheers,
Jens

>
> -Sumit
>
> > ---
> >  MAINTAINERS | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 920a0a1..c05dff7 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -11556,11 +11556,13 @@ F:    drivers/scsi/st.h
> >
> >  OP-TEE DRIVER
> >  M:     Jens Wiklander <jens.wiklander@linaro.org>
> > +L:     tee-dev@lists.linaro.org
> >  S:     Maintained
> >  F:     drivers/tee/optee/
> >
> >  OP-TEE RANDOM NUMBER GENERATOR (RNG) DRIVER
> >  M:     Sumit Garg <sumit.garg@linaro.org>
> > +L:     tee-dev@lists.linaro.org
> >  S:     Maintained
> >  F:     drivers/char/hw_random/optee-rng.c
> >
> > @@ -15312,6 +15314,7 @@ F:      include/media/i2c/tw9910.h
> >
> >  TEE SUBSYSTEM
> >  M:     Jens Wiklander <jens.wiklander@linaro.org>
> > +L:     tee-dev@lists.linaro.org
> >  S:     Maintained
> >  F:     include/linux/tee_drv.h
> >  F:     include/uapi/linux/tee.h
> > --
> > 2.7.4
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
