Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4E87D6D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:00:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EEWXWfRkTGfcKVVCcSE0b0DC6fE6njfT8dK+UoaNsQ=; b=nEAwaQcd3h3aHJ
	k8xDd/haNFbH8LYCeHkdapzBrlbmru36ld7juqTROKpDhcCrVWyaJ/yw+tGxE5dU3BisgbVtorXoY
	JrvVjes12zWveoiOJBT13Cf4SBY+1AZV5lheRaud895uTzcV6aCXgkdQhD3yJO5dElbACo7F3HZGD
	QsjYVPeI+Q/1jMOD6f74KS1P8V4DaSma5RC0LjGFCFR3Yaweqzp4G7I47eiNve8JaDS/FR+PoNchn
	Ls0WUnTy6aKJksj2RsA99qn+9/O1uBVqEGZNb3wOUzPIqLRQlqUiIqdtIM0u3BkBqwgcORClSYOtN
	6Wvutxf92s71mzWRKQHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht60U-0005nO-Pk; Thu, 01 Aug 2019 08:00:14 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht60M-0004pH-Ae
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:00:09 +0000
Received: by mail-lj1-x244.google.com with SMTP id x25so68482663ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VAiKQtrdWdpAymEw2Fi6xVY10VrsZzJSh6lsPenXn5c=;
 b=KyWodxvzOSUl5vMHnbnrwzIAAyi2FLqjzsrJG4CDOo0xubx8uDbAyXqHvMjXb2EZKR
 3OTkmSgzUW5s4OFzZOJtJzkxL2Vw9tpTOsPuHNmJL10tEdjzf6+u9Z5Dm7Ybjzo2Fsnq
 upL41HGVkP0Apu7kDsQGa73HXRgsYJ4eGQN4LQaCrmmTCyKiMdEQRG2WVK4rAboEaFkL
 GR3a+bW/b/pBTN2NDcQHelOqJxfXR1ACeiixyEc+ACqJNOoNIwLeHNt7Gkj296UvulJw
 dWF9aAtR4dZnfFwdJPh3B21ex1Yyr1oWQ/ZqlU8QV6eNaXvHxEZcelG2uu1GWLoxBxgQ
 663w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VAiKQtrdWdpAymEw2Fi6xVY10VrsZzJSh6lsPenXn5c=;
 b=VUCEU3ZtVjz1eoGs6m8UVlBR76NqL8R05IBN1+Gl7eWA2DBHfjuHxuOgn0363mfnjI
 OGXOtxmXjN92MV8l6voKO2I0Oj6BIFdJc07bCOV0kXU1RUby94uco/eFZf0PTTrWNYRH
 +KoXDHTqFuZzst5TkOmqnnhM6E7iw/jIvz5S94VLpzGzQLkA5ymAe29PK39U9lEsvg07
 RXa5YvqjS/C6ItM5OZIYjkpyWYlTgVStCQUR+PH+Y7ADaAwHXYXxUNiu8alnHs71IX2L
 r1dJDewasr0gLv5OWOotpY/FAXpVwWTkushtZjN0VPJj3QaKKUOsfJlp3Bh09HLsJa27
 F5Tw==
X-Gm-Message-State: APjAAAVBC/zCVbtKq58+CkN+yWjh/chI2oUeheK8ITUlMu+/hYjTMSj0
 3UgS64smsNCU6zYwwwwfqS16ZSUErVUOWJ5GlKA=
X-Google-Smtp-Source: APXvYqx/gMgcGF2V7ylKamWcGjf6XGcn5JGjdm2r9vJ2Njp1NLJnu7wpmlveYBCUT/NrzJhe5JXapFqEUKI15zJ5ClQ=
X-Received: by 2002:a2e:5d92:: with SMTP id v18mr67333062lje.9.1564646402586; 
 Thu, 01 Aug 2019 01:00:02 -0700 (PDT)
MIME-Version: 1.0
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
 <CAE=NcrY7b8eTTovOszBhGhVbjfJAXoAYehiUJyPENGfwWoVcPw@mail.gmail.com>
 <CAFA6WYOEqe1a1DCyVYKA+oZaZ0n5hnjxdubstUnrwdUW1-4xHw@mail.gmail.com>
 <CAE=NcraDkm5cxE=ceq_9XkQz=NZ6KdVXkNUsdD4G2LrWz-bpDw@mail.gmail.com>
 <CAFA6WYMOXQbL5OeheFUFpTr8gte8XHHr-71-h8+qX0+R_sekDQ@mail.gmail.com>
In-Reply-To: <CAFA6WYMOXQbL5OeheFUFpTr8gte8XHHr-71-h8+qX0+R_sekDQ@mail.gmail.com>
From: Janne Karhunen <janne.karhunen@gmail.com>
Date: Thu, 1 Aug 2019 10:59:51 +0300
Message-ID: <CAE=Ncrae6pM+WBDu9eJ7Fw2Fkvf3_YqH5tj9Tt938D4RtWcdSQ@mail.gmail.com>
Subject: Re: [RFC v2 0/6] Introduce TEE based Trusted Keys support
To: Sumit Garg <sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_010006_378460_34A60F73 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

On Thu, Aug 1, 2019 at 10:40 AM Sumit Garg <sumit.garg@linaro.org> wrote:

> > I chose the userspace plugin due to this, you can use userspace aids
> > to provide any type of service. Use the crypto library you desire to
> > do the magic you want.
>
> Here TEE isn't similar to a user-space crypto library. In our case TEE
> is based on ARM TrustZone which only allows TEE communications to be
> initiated from privileged mode. So why would you like to route
> communications via user-mode (which is less secure) when we have
> standardised TEE interface available in kernel?

The physical access guards for reading/writing the involved critical
memory are identical as far as I know? Layered security is generally a
good thing, and the userspace pass actually adds a layer, so not sure
which is really safer?

In my case the rerouting was to done generalize it. Any type of trust
source, anywhere.


> > > Isn't actual purpose to have trusted keys is to protect user-space
> > > from access to kernel keys in plain format? Doesn't user mode helper
> > > defeat that purpose in one way or another?
> >
> > Not really. CPU is in the user mode while running the code, but the
> > code or the secure keydata being is not available to the 'normal'
> > userspace. It's like microkernel service/driver this way. The usermode
> > driver is part of the kernel image and it runs on top of a invisible
> > rootfs.
>
> Can you elaborate here with an example regarding how this user-mode
> helper will securely communicate with a hardware based trust source
> with other user-space processes denied access to that trust source?

The other user mode processes will never see the device node to open.
There is none in existence for them; it only exists in the ramfs based
root for the user mode helper.


--
Janne

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
