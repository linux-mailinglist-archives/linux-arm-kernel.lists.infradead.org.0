Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C50CA7D8F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 12:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54CNeRKe4lQPswO20uHI5QiC09fGJ7Q4jTI7xZWplNY=; b=VrrJYgVnjvZI4b
	A520T7hPz6svj2A4FpsQcv9YIwxaULRlzaF6Wi2iuufmvmIJF5aLqBlhXdmGIAUfs9RnH4g8NfsqM
	Ax6o5ZKrgd3dFTVuQNCwY68K318aCF11vLBkL/z4M3FMt9/FAWDdELDg7fExT+BlsS4/dtAHhekg9
	kVB5BU7h4wCVhHA+h/5CdV/eim7cZiTlmIxNXsighvv62FvVYzqdGR0l4pQwFuAuwOdYtob4m/vA3
	sl6ojGYMbUqJ6HBFolh2p71Q7IJr2IT3w3nsgShhviEv7KsbmwdnywvPF4RUaFfyn5WTVR35q/gS5
	qrVQFvFwE+rM7zX95aPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht7st-0008Uf-Ch; Thu, 01 Aug 2019 10:00:31 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht7sj-0008NB-A7
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 10:00:22 +0000
Received: by mail-lj1-x244.google.com with SMTP id z28so14523563ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 03:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7gKvcJabgKuUbvQyf6qVD7f9YQGD2U9hjlCz5FyenjE=;
 b=txHMwmKZEVe1dwKVgNRDOeChaNcOfwWW6SO7gSedbMhpOzA9pGEQq9mcO49z6Dy2nq
 XZyWuFjIrr94RLjep/tAet6DBQKpSwV/mDC6XfoCunkPf9vbhzXgPsigyelRV46JU+xe
 J7xWzK5+5BkhHdA/6IypMjQbxyqn63eNRO/1UvC7UyIATn/QhVzjMh5B8inochEaqOA3
 2t6ad/g+kpwhtVoWx9DFfwqr7P8Cwzey8gO7zTEN2pxnViu9dWy8Unqk8ev4XtKYTzJK
 r5Za5d8YNy3etaA/lLz8F6H7dqnCmoE6cGZ5Q+9f+tAQ0MszPXaB3xbzfBkuRZCdK+ff
 EQjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7gKvcJabgKuUbvQyf6qVD7f9YQGD2U9hjlCz5FyenjE=;
 b=gtEb7Kaaz01TMqilZFDFxLAjuXNX3JCtebVZWbCwN0T01Y+PEEV68q0AVgf0XvhVP4
 h6IYt411SnxlExD09bw/v58nCqQjJ1Ua4MwNJYwuvDwf7V7ttpOlgZCeCP0t6XoIGZny
 H2CeJmLpTVUV7ASyxYZ+tb+Rm6sggDDmGh2ltk5QR1Z4OG0l+N0qFg2s++RumdjV1e5d
 g2cch6hnK18biOdeZSsZTPIEhy7DUv4E9AlBnIUGj9LRjIY+aGK/eYkLCHHaa4qqEZZL
 DU5eDzKj74gsQ3zeUdu4JHUElmxGqKPfTI6XiDW5Mcq3ExW3sK1S9OpDQPVyzkzcOeiv
 1XLw==
X-Gm-Message-State: APjAAAVEoKPL0f5snpsSzuVMiftibinqNIXKpDBhAlyjIJCoVr6RSPOA
 Hq3fqJNz7nozLXlAhw4I1PRRfaKAXisxDm/Qalbf7g==
X-Google-Smtp-Source: APXvYqyWSE7IQpvuMFy/pIaK7WPbXKuGXqON/op4MJWwDpM4SPonR2MQsrxZdzAgHnF5eZuqmlowswx974SBISxIilQ=
X-Received: by 2002:a2e:301a:: with SMTP id w26mr65927001ljw.76.1564653619372; 
 Thu, 01 Aug 2019 03:00:19 -0700 (PDT)
MIME-Version: 1.0
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
 <CAE=NcrY7b8eTTovOszBhGhVbjfJAXoAYehiUJyPENGfwWoVcPw@mail.gmail.com>
 <CAFA6WYOEqe1a1DCyVYKA+oZaZ0n5hnjxdubstUnrwdUW1-4xHw@mail.gmail.com>
 <CAE=NcraDkm5cxE=ceq_9XkQz=NZ6KdVXkNUsdD4G2LrWz-bpDw@mail.gmail.com>
 <CAFA6WYMOXQbL5OeheFUFpTr8gte8XHHr-71-h8+qX0+R_sekDQ@mail.gmail.com>
 <CAE=Ncrae6pM+WBDu9eJ7Fw2Fkvf3_YqH5tj9Tt938D4RtWcdSQ@mail.gmail.com>
In-Reply-To: <CAE=Ncrae6pM+WBDu9eJ7Fw2Fkvf3_YqH5tj9Tt938D4RtWcdSQ@mail.gmail.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 1 Aug 2019 15:30:07 +0530
Message-ID: <CAFA6WYOwcO5-cyaJf3tMMAdyVHJo=BzmCWtsjA3S8aj5g-GZxQ@mail.gmail.com>
Subject: Re: [RFC v2 0/6] Introduce TEE based Trusted Keys support
To: Janne Karhunen <janne.karhunen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_030021_417656_8453A538 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Thu, 1 Aug 2019 at 13:30, Janne Karhunen <janne.karhunen@gmail.com> wrote:
>
> On Thu, Aug 1, 2019 at 10:40 AM Sumit Garg <sumit.garg@linaro.org> wrote:
>
> > > I chose the userspace plugin due to this, you can use userspace aids
> > > to provide any type of service. Use the crypto library you desire to
> > > do the magic you want.
> >
> > Here TEE isn't similar to a user-space crypto library. In our case TEE
> > is based on ARM TrustZone which only allows TEE communications to be
> > initiated from privileged mode. So why would you like to route
> > communications via user-mode (which is less secure) when we have
> > standardised TEE interface available in kernel?
>
> The physical access guards for reading/writing the involved critical
> memory are identical as far as I know? Layered security is generally a
> good thing, and the userspace pass actually adds a layer, so not sure
> which is really safer?
>

AFAIK, layered security is better in case we move from lower privilege
level to higher privilege level rather than in reverse order.

-Sumit

> In my case the rerouting was to done generalize it. Any type of trust
> source, anywhere.
>
>
> > > > Isn't actual purpose to have trusted keys is to protect user-space
> > > > from access to kernel keys in plain format? Doesn't user mode helper
> > > > defeat that purpose in one way or another?
> > >
> > > Not really. CPU is in the user mode while running the code, but the
> > > code or the secure keydata being is not available to the 'normal'
> > > userspace. It's like microkernel service/driver this way. The usermode
> > > driver is part of the kernel image and it runs on top of a invisible
> > > rootfs.
> >
> > Can you elaborate here with an example regarding how this user-mode
> > helper will securely communicate with a hardware based trust source
> > with other user-space processes denied access to that trust source?
>
> The other user mode processes will never see the device node to open.
> There is none in existence for them; it only exists in the ramfs based
> root for the user mode helper.
>
>
> --
> Janne

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
