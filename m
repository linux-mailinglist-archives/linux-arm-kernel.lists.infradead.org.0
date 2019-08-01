Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 376417D576
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 08:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fiv8ptO/luNVYXEVQDAbv1fHGCcsPFClXZgZ2S3ccw4=; b=NyrsL/RbTh0fid
	2SWjK3jIjBZO1JAjgLdcuesew4zewQjy5WNgm5JgLblKN1AgWAFlsEfwv+L9FHw4IupbXEKQKklVK
	8dFsfEwk37I2USP1QymXe64duKlfXC0wuyN5VQ2gAa+zD2HdlVwSfyVu1aTp8ADrUlc2YyavalgXU
	73n6LIZ2i4b7Pg7ruwqWq14F5MTAoVRT+tFOuIGwARIsgA6DEn/hj7vFKvl3zN+xaMvNbu4ElBGXI
	Nf/F6AcEtmB6Orgax7AcQ7tXhLzgNjDdrX4CJ6FOX30BG9din8HOVSB94iZJV6fG2tvvqlGSsKt5g
	+yN+vHx1SZtM/onQLBag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht4TQ-0003uH-Dx; Thu, 01 Aug 2019 06:22:00 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht4TJ-0003tg-Gs
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 06:21:54 +0000
Received: by mail-lf1-x141.google.com with SMTP id v85so49273528lfa.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 23:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1vSZqJMnvEYK79BuKh6WUgr+O0wW6TMjJ9YpHKa1USU=;
 b=Arm8SbO3zGrCc5avNA7dsMeg85DbeTjU5zzCj7quGtHPNxa8/SQT6F5BxoH/oW9lU+
 rxTr+oQxxUsihwCoaxsTIyiDxgny9BvFH1L8WxV3tlw2KRSZPI+I16EN+PzHL0wEaHUC
 +wk5CNLeGxCaTXsaXuQW46Zml1KG+s2Q/hXX165ScX10Rhvf74bOIcX4NlnjS54S8AHI
 xxbUlheuiKF7RwuNv+h83UPOZrSFZ33E+Xxk7rMCrOZA2taAypqDXjNgZlx09PmqGlUu
 hhWb44TjnRf0xQuebHwAMIC2EBjamD7JbUM+fNSQmxuS4VBghCU1+21vEVInMcUZd824
 MIiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1vSZqJMnvEYK79BuKh6WUgr+O0wW6TMjJ9YpHKa1USU=;
 b=ucnkaQVJdVtRbHSKQmRd8mg2dp8FZ901MO0NFfgg8iNJtW/j3DO40rEqJwTp9va9+p
 kf3XBUEel3XER7eQ4EFSkh5wqE9gp9ORPkRqGaK4r1C+IGtH5jyKOPOF/6OsRZQ1CTYr
 k59F3SOjuByMYyEMkOu2IjMsugVQJzAg+pWD/c96jacukrpsd5B54AZDi+cj/ybvgnp2
 cFEEg2Gc1s5ZYT4aEQVXZmxlvyI7b/wifGM/TsZhoMSI366KTEvf6ELPD1alVQTZjImB
 PSNRyGwnnyk45ytNZ8cC/D2QnO0+Sl7K3bAnwZ1J9iV+bxkdzFBLGLfD0p5mPmmDTY5v
 AOIA==
X-Gm-Message-State: APjAAAVi1y8SsHIwxaLeNnb33/dIB6V4RlQxUVadFEWIiYQXd1UJGwIa
 5e8e2OywjMgHxL1A1W8OtbBTpDiMTy7KpQIhPP0=
X-Google-Smtp-Source: APXvYqwHSeFpB9tSV0Ei5U+HuQh1iF1dV3lxekEtE3WsWY2xkt0Unm2jUg3lSom7xaUo+nfynVkJjq4uUMXG5qYU6Jk=
X-Received: by 2002:a19:641a:: with SMTP id y26mr58261160lfb.29.1564640511451; 
 Wed, 31 Jul 2019 23:21:51 -0700 (PDT)
MIME-Version: 1.0
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
 <CAE=NcrY7b8eTTovOszBhGhVbjfJAXoAYehiUJyPENGfwWoVcPw@mail.gmail.com>
 <CAFA6WYOEqe1a1DCyVYKA+oZaZ0n5hnjxdubstUnrwdUW1-4xHw@mail.gmail.com>
In-Reply-To: <CAFA6WYOEqe1a1DCyVYKA+oZaZ0n5hnjxdubstUnrwdUW1-4xHw@mail.gmail.com>
From: Janne Karhunen <janne.karhunen@gmail.com>
Date: Thu, 1 Aug 2019 09:21:39 +0300
Message-ID: <CAE=NcraDkm5cxE=ceq_9XkQz=NZ6KdVXkNUsdD4G2LrWz-bpDw@mail.gmail.com>
Subject: Re: [RFC v2 0/6] Introduce TEE based Trusted Keys support
To: Sumit Garg <sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_232153_589680_D9ED6E94 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (janne.karhunen[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "tee-dev @ lists . linaro . org" <tee-dev@lists.linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 jejb@linux.ibm.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 James Morris <jmorris@namei.org>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Mimi Zohar <zohar@linux.ibm.com>, Casey Schaufler <casey@schaufler-ca.com>,
 linux-integrity@vger.kernel.org, Jens Wiklander <jens.wiklander@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 4:58 PM Sumit Garg <sumit.garg@linaro.org> wrote:

> > To clarify a bit further - my thought was to support any type of trust
> > source.
>
> That could be very well accomplished via Trusted Keys abstraction
> framework [1]. A trust source just need to implement following APIs:
>
> struct trusted_key_ops ts_trusted_key_ops = {
>        .migratable = 0, /* non-migratable */
>        .init = init_ts_trusted,
>        .seal = ts_key_seal,
>        .unseal = ts_key_unseal,
>        .get_random = ts_get_random,
>        .cleanup = cleanup_ts_trusted,
> };

Which is basically the same as implementing a new keytype in the
kernel; abstraction is not raised in any considerable manner this way?

I chose the userspace plugin due to this, you can use userspace aids
to provide any type of service. Use the crypto library you desire to
do the magic you want.


> > With the
> > user mode helper in between anyone can easily add their own thing in
> > there.
>
> Isn't actual purpose to have trusted keys is to protect user-space
> from access to kernel keys in plain format? Doesn't user mode helper
> defeat that purpose in one way or another?

Not really. CPU is in the user mode while running the code, but the
code or the secure keydata being is not available to the 'normal'
userspace. It's like microkernel service/driver this way. The usermode
driver is part of the kernel image and it runs on top of a invisible
rootfs.


--
Janne

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
