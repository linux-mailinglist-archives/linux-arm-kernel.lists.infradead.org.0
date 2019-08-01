Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEAC7D651
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9F1HbD6O7mPgmyPsRxBQ8xZ5fTaBTOB0CO2rys1sE0=; b=ZSeevPR9NQljeY
	9hVGMi1SbR3VCTCQMshEchxw4ch0+RQiCGxkYb/BdfJ1mBMPVsn2VvJMz/N0j+s+q7xLHEIk5mWiM
	keAHvGYLJkEPYXI2EWYDz8j/J5co85zs6CAOy+t+SIeUgaXkrHecNr7035kl+rqn5JLjnE0mcBCjM
	F9NCr7O4OCIDUahmtqUNjeg5ggk/4uCUANs204CR66LPwA5JEH67m5pwug6FltF+sf6udK6FISK55
	2syjLY486CFL1XQmWxuQGP9pmQhhAKAJek4oceHLx8hODY1nGJoCvGYRHbz7fxfOJzqqKmMj8/BvA
	N0bdGBIaJw/i07+bdC8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5Xg-0000W5-B9; Thu, 01 Aug 2019 07:30:28 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5XZ-0000VO-Lt
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 07:30:23 +0000
Received: by mail-lj1-x242.google.com with SMTP id h10so68346496ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 00:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rdlu4Ad817zx+iOTcsjqQM76adHXpOWbEydNxUMSAfU=;
 b=UzX7Ppc2TrBZ0COGTnbdhjA8/92a3SmUDMUBe7LHJnt7UzjMivXlt5ctFlFa8oCssU
 SYmn0SU0YmBzG+xH1D7Xm6LwZdeQI4DMIuCFZ2apRvrxooP1XuUSa4h0cqvLb+yZ84WV
 gzhVlRU7mA0IUpLblx7J9CW2e26MxMXKOvypsTKT7OA+spMddfGXtcyN9dJUUq1oZ3L2
 WXvXffxmd9eeUSa0XCpuLJgrwP5q0Njaz9GFOXVxMiAPzbRBN62y8b/zTpo9Vvq+4wem
 H3/6ktlq9TuBKIZYLltyIKoSiqKgUj5S5PLdGFqXB4oRQrT7eg2cwmMCz/P449szEX0W
 H97A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rdlu4Ad817zx+iOTcsjqQM76adHXpOWbEydNxUMSAfU=;
 b=ABbERqH7mnPoaG1CTZkrNo1RvrAbI675GFQ0lXFJlmVbjuIm2A26oJoDs35DGV08tb
 egSMOeGgZ7i8G/RouBMXT/Gr8N+Gae+Cp8gyMh8vl36NSFh+d6ityjPR6mA29Aqk4VhQ
 Jn67Fh172R7m8VPKeAW7zzCdZNP4mH5VKig8gSfvTi0eSPsQQrTWl9YjEGNLuoKBdjQj
 Fy7whwmaHFwcVKoTzJ5ziLRrGHMqRYh8Kho3MH388MOEV4vUd3G/deaEWd89epcChtHn
 gLziWDbPlYqe4TyRmILBV3SQ35a2QoQ3Q1jSoPdstAxSPJgkfURjbLvsvPN73dgACaG6
 jgew==
X-Gm-Message-State: APjAAAUhyjy0xKnLrFYwZQK6Bi+Q09H3FOmASkXzvqbrikYDpvQQt9Nj
 A1tHNabAAdDuNklM5kDufjC1SXWnS+kZcUED0213MJzE
X-Google-Smtp-Source: APXvYqzD4VpesQpUb8MYg+Q5e04vCOtwoAClw957rRW1FlaRZEsQmMx74W0N61umpEVSCQWDHKBhpRkvaPwaSWsWw1Q=
X-Received: by 2002:a2e:1290:: with SMTP id 16mr64210069ljs.88.1564644618088; 
 Thu, 01 Aug 2019 00:30:18 -0700 (PDT)
MIME-Version: 1.0
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
 <CAFA6WYPJAzbPdcpBqioxjY=T8RLw-73B_hpzX4cGnwVvm5zpJw@mail.gmail.com>
 <CAE=Ncrb23q++z8R8UMbjDE2epEq4YVcNGzrRD31eH3JAooYejg@mail.gmail.com>
 <CAFA6WYOKcOzSwakHhgshZcebD8ZBMSi7xQdjWYFS79=Xc+odOg@mail.gmail.com>
 <CAE=NcrYz8bT9zDhS_ZcvY84fpeTDxZ-KhJKeQGGyf=o4pG2J-Q@mail.gmail.com>
 <19d9be198619e951750dedeb4d0a7f372083b42c.camel@pengutronix.de>
In-Reply-To: <19d9be198619e951750dedeb4d0a7f372083b42c.camel@pengutronix.de>
From: Janne Karhunen <janne.karhunen@gmail.com>
Date: Thu, 1 Aug 2019 10:30:06 +0300
Message-ID: <CAE=NcraqD9FNM0Gk9UGhPGi3heVzZrAKGc1gNZxoe1OnDaQ=pA@mail.gmail.com>
Subject: Re: [Tee-dev] [RFC v2 0/6] Introduce TEE based Trusted Keys support
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_003021_744454_FC83E7D9 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: Sumit Garg <sumit.garg@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, jejb@linux.ibm.com,
 Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 "tee-dev @ lists . linaro . org" <tee-dev@lists.linaro.org>,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Mimi Zohar <zohar@linux.ibm.com>, dhowells@redhat.com,
 Casey Schaufler <casey@schaufler-ca.com>, linux-integrity@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 9:50 AM Rouven Czerwinski
<r.czerwinski@pengutronix.de> wrote:

> > I'm aware of it - I have implemented a large part of the GP TEE APIs
> > earlier (primarily the crypto functions). Does the TEE you work with
> > actually support GP properly? Can I take a look at the code?
>
> AFAIK Sumit is working with the OP-TEE implementation, which can be
> found on github: https://github.com/op-tee/optee_os

Thanks, I will take a look. The fundamental problem with these things
is that there are infinite amount of ways how TEEs and ROTs can be
done in terms of the hardware and software. I really doubt there are 2
implementations in existence that are even remotely compatible in real
life. As such, all things TEE/ROT would logically really belong in the
userland and thanks to the bpfilter folks now the umh logic really
makes that possible ... I think. The key implementation I did was just
an RFC on the concept, what if we start to move the stuff that really
belongs in the userspace to this pseudo-userland. It's not kernel, but
it's not commonly accessible userland either. The shared memory would
also work without any modifications between the umh based TEE/ROT
driver and the userland if needed.

Anyway, just my .02c. I guess having any new support in the kernel for
new trust sources is good and improvement from the current state. I
can certainly make my stuff work with your setup as well, what ever
people think is the best.


--
Janne

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
