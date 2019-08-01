Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 247927D58D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 08:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z452o5SkCsk/A12CS30UPCWOd6NZZuu0+4rOk9ZAgw4=; b=PZ4GCyWm9368kD
	DDzwyprzhP5Avz2nmVqe93GYHJrdYRKaVggPuNuO55ujyvjMcuWQDoCUhSu67vooDTxBwmE5mofhN
	xshzMcx424G+OxtkURWmsz9kBxJHfGRARqpPtsMldAOnDbvh2YTBLnjPpxLfa3/LBSr2+2tCYhk0h
	7VF/WJXXOIhctdY2ygcJrWOGzO0wOh8NqVpONa5WZo4iNSXM4TGW1Y4LkvVhaNcCOVWl2Jw7ZgALp
	0f8iR+QHJ78RqKA6W5IRJ7IgdsX3ASLqhSWr8rjcZMioa/cGXKDOCO2N/FQtbknJdt6XhYJMnwBpr
	78RS53TkxgfVzK7/rk1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht4i1-0001q7-KI; Thu, 01 Aug 2019 06:37:05 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht4ht-0001pO-PA
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 06:36:59 +0000
Received: by mail-lj1-x241.google.com with SMTP id d24so68178330ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 23:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X9ZQbHrGzFtjEODVBGVi3gOgXCwBSDCk0xPlVmAv39c=;
 b=Irrr23fMhTG6al2CUIKvRGL5QX0PhtRLcRnbsblPKgEqQOxD8SJoM0uIVm3vH8a07y
 sps88K+hpaaGuRLYTRBAE727L6SCNxZHl98YcWCGE2nZBlrKZCFqhQYnFQa3O46eY8lL
 /DxLFOpm2FTCNqNU9snTg9au+8PRn02r+vYkQ8uFHGAqYPis0WcrgzH4YS4+SDBfQEoV
 7J4/uuOHdv42lZlMfAfkuWhF1r6IfctmUnPGE8QearmzNB3FBL+pVJ7DCBccFWYyYHn4
 IiZQ1ElUjB3Z1LOP9E4MADCJzJeaPW8qtNE1bgA7zqga8L4CC95+lpKWT1r1gq4voAWE
 6ZVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X9ZQbHrGzFtjEODVBGVi3gOgXCwBSDCk0xPlVmAv39c=;
 b=WrQF7CQ8IEohfGFUWvh1Q6pUmaKQKDZ27PbOZyvppnTU12RtOJy9Nyp6A9hKrda343
 B0YhyIOVztjXIflKqUIxdcbiuRQEiqzP4xJpkIE5XdhRYkJclD08pttNXLccuq+i0Qdn
 Aqj9nOTa89KF+vh018Rr8QV4BaHV8JzHK6ZJHyg9cYTF9xIum0nHKhlMD5c+g+YQ2n3r
 GRsppB5Cr1E2O/VgS+G7ZIN/VaZ6Cjs1VV8rpSU5g34wM3aiRNX/kAmteWOeej8+VmgS
 8OJrf9YASxdtb1XOtKtNYfEJbBVfC9+F9NFEL3Gyyk9INKLTtO44MYGIAjLgyuwy72jp
 Kayw==
X-Gm-Message-State: APjAAAVUmV2G5Ve8gjNQyMTNKc6R6KZBJXezym8R5oDE71X9rLpwwavu
 3IZH7uXU+BPcHYG9yocPL38parN2joWq5/PXVfo=
X-Google-Smtp-Source: APXvYqxL/s6TY+Lcm9PtMPnltGMxl9EapEj/9hC3l7HRYjwRx4X4cLUEHb7EUd4m82x93CeGKns2H6cCLt/hUSnHVmU=
X-Received: by 2002:a2e:b1c1:: with SMTP id e1mr31450663lja.228.1564641416029; 
 Wed, 31 Jul 2019 23:36:56 -0700 (PDT)
MIME-Version: 1.0
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
 <CAFA6WYPJAzbPdcpBqioxjY=T8RLw-73B_hpzX4cGnwVvm5zpJw@mail.gmail.com>
 <CAE=Ncrb23q++z8R8UMbjDE2epEq4YVcNGzrRD31eH3JAooYejg@mail.gmail.com>
 <CAFA6WYOKcOzSwakHhgshZcebD8ZBMSi7xQdjWYFS79=Xc+odOg@mail.gmail.com>
In-Reply-To: <CAFA6WYOKcOzSwakHhgshZcebD8ZBMSi7xQdjWYFS79=Xc+odOg@mail.gmail.com>
From: Janne Karhunen <janne.karhunen@gmail.com>
Date: Thu, 1 Aug 2019 09:36:44 +0300
Message-ID: <CAE=NcrYz8bT9zDhS_ZcvY84fpeTDxZ-KhJKeQGGyf=o4pG2J-Q@mail.gmail.com>
Subject: Re: [RFC v2 0/6] Introduce TEE based Trusted Keys support
To: Sumit Garg <sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_233657_842601_A3F6F1EF 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

On Wed, Jul 31, 2019 at 5:23 PM Sumit Garg <sumit.garg@linaro.org> wrote:

> > I guess my wording was wrong, tried to say that physical TEEs in the
> > wild vary massively hardware wise. Generalizing these things is rough.
> >
>
> There are already well defined GlobalPlatform Standards to generalize
> the TEE interface. One of them is GlobalPlatform TEE Client API [1]
> which provides the basis for this TEE interface.

I'm aware of it - I have implemented a large part of the GP TEE APIs
earlier (primarily the crypto functions). Does the TEE you work with
actually support GP properly? Can I take a look at the code?

Normally the TEE implementations are well-guarded secrets and the
state of the implementation is quite random. In many cases keeping
things secret is fine from my point of view, given that it is a RoT
after all. The secrecy is the core business here. So, this is why I
opted the userspace 'secret' route - no secrets in the kernel, but
it's fine for the userspace. Umh was a logical fit to implement it.


--
Janne

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
