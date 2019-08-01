Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1757D67B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJH49yIKBRA6BRmC32L/A5jj3cs20EvpXgJT3fIe/t8=; b=M7xphzKwF93WKI
	3Uhud5fW6hEQaQ9UCkuLdcqm7NxN+jOkNHtfjJfOKIJUjFC8kgk8xt75RS/e8dC9jLpqFReB3/7kj
	SHxqSs27OQYz0qt8DR7a3HodEKYbsdLb1B+TsoGs0+bVGrIYuYqdbyYEkbgQGe0tgeOmjez3XxCY2
	iJJsNuvPWJ3Zw4+H9l4xRYBNc2uS8NlYuGzdPKo8e1A1Xkze7luOh1zqqa7TeO4q4EUWLzpk0VMTc
	X9mGSirJB9mdn3ZcRNgpyt5Rsceg76kSMmZd9olFTGCZoGyvmDHv2BaAbneZAzaCb4Jw0kmF/FY+W
	9AN/3GQkk8xPBmhOHLnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5hq-0004xE-8K; Thu, 01 Aug 2019 07:40:58 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5hk-0004wQ-0Q
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 07:40:53 +0000
Received: by mail-lj1-x241.google.com with SMTP id m8so34757131lji.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 00:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H2DnLeysC51Jmq+BwRcdvsefRXSYiI2YJl6s9A/zlto=;
 b=qrMT7PcgSqQaPkhDNxMbADKheyhBnSC+xpb7kKF54VBYkSMPossLqpaZCuNtF0lDMK
 qXMEZEB3PZU5mAOOK9m7rgG41ScrZQmYocuw/IlarqJeVGqi35sAmjysYfxFyzDpdwrE
 q0o1/fC76kq7sPI1X42ApVVwfrkAaLdqAWBgpE4pkfS5OjtTTBWyOF0eCL4MZjZx1E5O
 hL8RRxrqjhZmDoasT8A3YGGN8527eUUnk+H3CroOjZQa0hqO8N1YZkTAY116z0aFZIV/
 b8i6FslmwUzzoFlRmDqExDGN92AQOqj3haKzc3fHcFHkDuqot0ElZe4/3d+LWlRDtHx3
 44jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H2DnLeysC51Jmq+BwRcdvsefRXSYiI2YJl6s9A/zlto=;
 b=nu50knHZJ0MjdtFMZhaAr8RUqPWPTJfJRy+M9rBseY19QW278twU1LgSdr3RH8PFK+
 czXAAfEX8U0HMYEw0qPtvySpE+UwXa/1sbAOnu5L32ig85oP5Jc49QbsKE9MuJ/tkY19
 qovuiWoyn5IyInMkTQfjJcfnb54sc3fS7Ii8Pe22yE0pFTrcNSB0YnyUB4Z66xuaN2N4
 RygIpy0IuoqPnm4fNn0oJXkhfdbhm+wyE0IojkSlVEX2p1VIr0ajTBWTATVqhEPURQR+
 ae/S3X4I/ldEzmoR60xuhcsheOSgWAfV4O1QX54fuLeDwuOgLGOHFu+VzA6224XucmE+
 7uQw==
X-Gm-Message-State: APjAAAUZ53LY4xAEetdihDno86rq0w5Rnz6IvHuwcNC3YJ6GKMfEmCfP
 LLXFSss0pb7OiemsE5smoblpfngpRjwjRNx3iKa6pw==
X-Google-Smtp-Source: APXvYqzq0IJ9GtmcxYuyJWtDtzNwkmT4P2unALVLFpkxdrititI5GvPVtJgr09S2tzYu63OXgUbjTzql4hcILCNGdOk=
X-Received: by 2002:a2e:970a:: with SMTP id r10mr63101245lji.115.1564645250122; 
 Thu, 01 Aug 2019 00:40:50 -0700 (PDT)
MIME-Version: 1.0
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
 <CAE=NcrY7b8eTTovOszBhGhVbjfJAXoAYehiUJyPENGfwWoVcPw@mail.gmail.com>
 <CAFA6WYOEqe1a1DCyVYKA+oZaZ0n5hnjxdubstUnrwdUW1-4xHw@mail.gmail.com>
 <CAE=NcraDkm5cxE=ceq_9XkQz=NZ6KdVXkNUsdD4G2LrWz-bpDw@mail.gmail.com>
In-Reply-To: <CAE=NcraDkm5cxE=ceq_9XkQz=NZ6KdVXkNUsdD4G2LrWz-bpDw@mail.gmail.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 1 Aug 2019 13:10:38 +0530
Message-ID: <CAFA6WYMOXQbL5OeheFUFpTr8gte8XHHr-71-h8+qX0+R_sekDQ@mail.gmail.com>
Subject: Re: [RFC v2 0/6] Introduce TEE based Trusted Keys support
To: Janne Karhunen <janne.karhunen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_004052_116846_B460AFFB 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Thu, 1 Aug 2019 at 11:51, Janne Karhunen <janne.karhunen@gmail.com> wrote:
>
> On Wed, Jul 31, 2019 at 4:58 PM Sumit Garg <sumit.garg@linaro.org> wrote:
>
> > > To clarify a bit further - my thought was to support any type of trust
> > > source.
> >
> > That could be very well accomplished via Trusted Keys abstraction
> > framework [1]. A trust source just need to implement following APIs:
> >
> > struct trusted_key_ops ts_trusted_key_ops = {
> >        .migratable = 0, /* non-migratable */
> >        .init = init_ts_trusted,
> >        .seal = ts_key_seal,
> >        .unseal = ts_key_unseal,
> >        .get_random = ts_get_random,
> >        .cleanup = cleanup_ts_trusted,
> > };
>
> Which is basically the same as implementing a new keytype in the
> kernel; abstraction is not raised in any considerable manner this way?
>

It doesn't create a new keytype. There is only single keytype:
"trusted" which could be implemented via one of the trust source
available in the system like TPM, TEE etc.

> I chose the userspace plugin due to this, you can use userspace aids
> to provide any type of service. Use the crypto library you desire to
> do the magic you want.

Here TEE isn't similar to a user-space crypto library. In our case TEE
is based on ARM TrustZone which only allows TEE communications to be
initiated from privileged mode. So why would you like to route
communications via user-mode (which is less secure) when we have
standardised TEE interface available in kernel?

>
>
> > > With the
> > > user mode helper in between anyone can easily add their own thing in
> > > there.
> >
> > Isn't actual purpose to have trusted keys is to protect user-space
> > from access to kernel keys in plain format? Doesn't user mode helper
> > defeat that purpose in one way or another?
>
> Not really. CPU is in the user mode while running the code, but the
> code or the secure keydata being is not available to the 'normal'
> userspace. It's like microkernel service/driver this way. The usermode
> driver is part of the kernel image and it runs on top of a invisible
> rootfs.
>

Can you elaborate here with an example regarding how this user-mode
helper will securely communicate with a hardware based trust source
with other user-space processes denied access to that trust source?

-Sumit

>
> --
> Janne

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
