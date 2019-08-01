Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAD67D98B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 12:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQAKpIlmeNj58DdjX/l/YQzX756ZnnioDNcy4BzK6lE=; b=h4I7Dl8mWq+28f
	vy464ZKoz7H2ycuB7upxwapWPLr8KJIi+w54Zu7qxZbwndzrJmm4ZXU8aaR1uMS/gkiolcpfFepbD
	z2XcSdmhrA1EanqlpcMFQV+1TZPDppAQesLfnXqFU7p07ncJwCc2l9zTORMRlNmtBqmlAFSGRMIAa
	O/hit6qfdrbDAjtybq+Bs0jnqCC5MVY5aQoYefnfJlNmw8tGdoxwmswY7z1tqHJoA92iGsywwilvs
	LRyAsDmgbv5o71tX1kpni+z23gimQHlX78J+uoGiH5XM44MxgN/zEecfVfCyS99jsJSdzWLIVILfa
	vd3vZ48onC1g5SAwv/Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht8W9-0008CD-2y; Thu, 01 Aug 2019 10:41:05 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht8Vl-0008BC-W8
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 10:40:43 +0000
Received: by mail-lf1-x141.google.com with SMTP id b17so49904869lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 03:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=isUGmEYOLpjEg3jfVYEfLLyDXZizpluoarkdQOeJEco=;
 b=e7zESjZM2/wzjwmiWWWbSAsTWhAV77ru/rCVx4JUymN/53sRSzBFQXud45X8Dr61zK
 sqmwE48x+NwYk2Cj06PSvNDR8EAL73UGkym1ZfUF++xJXuhNMPXz+ZbmblOckb2EDibR
 hn6TqYNEl4I925P779zb0qgrYlBYkGxknrNhHKo6jUgsDvnooc9DJ8mSJdetEzKQzfIu
 yGRZza/lQjKJDFIMW4HrtW4SNKRhMMEr9D67Icb79a0oMCaE2HtXRxR5M4RhrEn5SpKM
 a576UQfrDmvM2vsFwwi7Yxa0NJUzNBsNMxHNw41zLHW1yIPJgW5/e35MPiKmD1Qk/tSb
 zgFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=isUGmEYOLpjEg3jfVYEfLLyDXZizpluoarkdQOeJEco=;
 b=aWXjnAVF4QksJrC/r4ri/1KMb+8EjWrRaZ/GDhGxTu8ibYR7dM+R/FAIyshjzApdLo
 pdNcom5YoLl7opOwKoKDx6w5eHv2blxCoDM1DL4CEY4TA855K8lhcMp/WqxdoXoHQ/bo
 iJB/Fy/wX4bHdnQdEXGYm0cCvUZTu2sjXyl43MlWTz3xN8v6Y5An//I64YrL0IBgAtWV
 hN74qnpo12cM2wXrdEGjhECntjNP1Od2C6AtzCa1Zy9RxnV+wtk5xrahyU3xKeBfiMHD
 4wl4UDTaUchwE7QD7QALweO10RfkpLKpa95TN8lu1jHlhRGf660xZaezfDjB5jDEK2qC
 YPNQ==
X-Gm-Message-State: APjAAAXW0yIwJ2a+Xh1JstETE4Uj6mEmUZJwLsFhdJP+/zNXjFiJ3xZT
 /aZ9lTAxr0lEkpAHzAKAfKN/YV4RyZDivwbPbmvYl7jxKfs=
X-Google-Smtp-Source: APXvYqzBC9Gdh1FFxLOeL/OcODPMG8H50PClL/jL6/hOC+Ro8fVfZSKCPuosp/rXDAuw8uu1AiQV5PVAqbOPMwJCVac=
X-Received: by 2002:ac2:5181:: with SMTP id u1mr10511367lfi.42.1564656038513; 
 Thu, 01 Aug 2019 03:40:38 -0700 (PDT)
MIME-Version: 1.0
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
 <CAE=NcrY7b8eTTovOszBhGhVbjfJAXoAYehiUJyPENGfwWoVcPw@mail.gmail.com>
 <CAFA6WYOEqe1a1DCyVYKA+oZaZ0n5hnjxdubstUnrwdUW1-4xHw@mail.gmail.com>
 <CAE=NcraDkm5cxE=ceq_9XkQz=NZ6KdVXkNUsdD4G2LrWz-bpDw@mail.gmail.com>
 <CAFA6WYMOXQbL5OeheFUFpTr8gte8XHHr-71-h8+qX0+R_sekDQ@mail.gmail.com>
 <CAE=Ncrae6pM+WBDu9eJ7Fw2Fkvf3_YqH5tj9Tt938D4RtWcdSQ@mail.gmail.com>
 <CAFA6WYOwcO5-cyaJf3tMMAdyVHJo=BzmCWtsjA3S8aj5g-GZxQ@mail.gmail.com>
In-Reply-To: <CAFA6WYOwcO5-cyaJf3tMMAdyVHJo=BzmCWtsjA3S8aj5g-GZxQ@mail.gmail.com>
From: Janne Karhunen <janne.karhunen@gmail.com>
Date: Thu, 1 Aug 2019 13:40:26 +0300
Message-ID: <CAE=NcrY7zA1OkKwpVrPbPd+c0OymZeAgT2hp6xZ3HQOgbXaZjg@mail.gmail.com>
Subject: Re: [RFC v2 0/6] Introduce TEE based Trusted Keys support
To: Sumit Garg <sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_034042_069684_9AB3C8BC 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (janne.karhunen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Thu, Aug 1, 2019 at 1:00 PM Sumit Garg <sumit.garg@linaro.org> wrote:

> > > Here TEE isn't similar to a user-space crypto library. In our case TEE
> > > is based on ARM TrustZone which only allows TEE communications to be
> > > initiated from privileged mode. So why would you like to route
> > > communications via user-mode (which is less secure) when we have
> > > standardised TEE interface available in kernel?
> >
> > The physical access guards for reading/writing the involved critical
> > memory are identical as far as I know? Layered security is generally a
> > good thing, and the userspace pass actually adds a layer, so not sure
> > which is really safer?
>
> AFAIK, layered security is better in case we move from lower privilege
> level to higher privilege level rather than in reverse order.

You can look at this in many ways. Another way to look at it is that
the services should be provided with the least amount of permissions
required for the task. Further you can containerize something, the
better.

As for your PLATFORMS support: it is all nice, but there is no way to
convince op-tee or any other tee to be adopted by many real users.
Every serious user can and will do their own thing, or at very best,
buy it from someone who did their own thing and is trusted. There is
zero chance that samsung, huawei, apple, nsa, google, rambus, payment
system vendors, .. would actually share the tee (or probably even the
interfaces). It is just too vital and people do not trust each other
anymore :(

Anyway, enough about the topic from my side. I guess people will tell
what they want, I'm fine with any, and it is all progress from the
current state :)


--
Janne

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
