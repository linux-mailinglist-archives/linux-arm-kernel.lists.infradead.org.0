Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEA37D7A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8k7wZVNaf44QfupGt38YgQSg8pXhdU+YXmNY5Y8Dyg=; b=ogsWxuw71I8JbP
	+Gyc+CloUOKU6mc9tBgyUpRtdvObNCwEewJ4zoQ/kdfM2lGEJuUx8/img2qR25urJnErgPSk2xtOM
	O1lNS2E7CUU8+jVOeCCkO9qXjUm124PpS/CLXAv4/suDF29yD0QgTBJnQhmT8jb0Ro16Pz6TFWm0m
	AXonarPS17tGcXBW5pjyTe/BiTMfdRSJCc0yeidPMz+3jpVzjMpEPNawvibq5l4X6VQ2pxbS7Q5AZ
	2HqrVEpnQ9YMOaOvZjEGHLPXOMybsDcg51hvjmWOSidl3JLe+6+2GvCLG0d7SYVYLMgqKFiRDYilU
	xYG9xSfaX1G4WsEwA30g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Th-0000gD-7v; Thu, 01 Aug 2019 08:30:25 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Tb-0000fr-1s
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:30:20 +0000
Received: by mail-lf1-x144.google.com with SMTP id h28so49544776lfj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2xNohy2xyMAt9HM3Gyk3aetZhs8G9eF7ELJFgFiK0/I=;
 b=KVeh8Jw9S5Hs+wIxrPmvLbiA/a8qd2ZozSyly4TxKurfCOo1wsw0V1V4FfYAeJ2wAl
 hX+8KRVyClJNg+3FptaphJmcdmM9LnzOh6gagbOFy1eMrZjqDl8bcVFvxVo1dAiR9p+b
 FgdFqaoPZgECEcYJFHKHAoCypPwq4VSG353KdX7BgFGul9ORNUmXLocQaAQdLdRYnRab
 T20nnn0f6BhIpOqtJKrlqaa9f6Yn6/vlQQ1nLKTFluF8kJjAcp5eNSoiPczaPKAQJHFy
 DDP/HFLbIHCTMQOK6z+FkUHrlVi24L40YmEl1myxFuqnS8aWTlzma/wECZhp/dCoKJv3
 W0sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2xNohy2xyMAt9HM3Gyk3aetZhs8G9eF7ELJFgFiK0/I=;
 b=U+4bCAWTosjneQ8600LgiPHl92QoPpwiN7oI6vSl8LBswxyVckZ/MS2ysY3MwYVsVl
 MMnUGkweOTfFc9yu8E6wNvR6QyUySlJ/OGqwCRw8zSjHcScTQAjDFXO3bjk8n9r+LKMP
 kAHqQE6dnDtZhT5qyZOhLm240PDH7Zy9X7JydeoaIAY6niq92mPId3BsCb+WaWti/TT2
 gkeUWHeLlB8kYNQrXcDQTU4+89yt991+8g9SRRMJQSUOEywgmEN0pDAZDFMkqJwqSe0g
 Qk78NTOQOQJE5xW0qZ+mM9VC+5c7APSelMaWXuteJGcnUuPNxeiYSGjHQFK0bnGPOIsI
 FNvQ==
X-Gm-Message-State: APjAAAU5gBfJ+0gCBnOuTY+5s7iPx2/WEk8YkKsCyoBs+6GbgwF5hcT8
 1mTygQzExtqX27ZjyzWqwDiMhSM/2sBrxUYoIOCPqpLrVkE=
X-Google-Smtp-Source: APXvYqzzD88SDt0GVEYWnLJkJRlwD14+HIfeihD4WoOdeKaL/6vYosJryMtEFIiIAgKt+K60XVbK4UMpvkES4vMcWVE=
X-Received: by 2002:a19:f806:: with SMTP id a6mr47249319lff.102.1564648217496; 
 Thu, 01 Aug 2019 01:30:17 -0700 (PDT)
MIME-Version: 1.0
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <CAE=Ncrb63dQLe-nDQyO9OPv7XjwM_9mzL9SrcLiUi2Dr10cD4A@mail.gmail.com>
 <CAFA6WYPJAzbPdcpBqioxjY=T8RLw-73B_hpzX4cGnwVvm5zpJw@mail.gmail.com>
 <CAE=Ncrb23q++z8R8UMbjDE2epEq4YVcNGzrRD31eH3JAooYejg@mail.gmail.com>
 <CAFA6WYOKcOzSwakHhgshZcebD8ZBMSi7xQdjWYFS79=Xc+odOg@mail.gmail.com>
 <CAE=NcrYz8bT9zDhS_ZcvY84fpeTDxZ-KhJKeQGGyf=o4pG2J-Q@mail.gmail.com>
 <19d9be198619e951750dedeb4d0a7f372083b42c.camel@pengutronix.de>
 <CAE=NcraqD9FNM0Gk9UGhPGi3heVzZrAKGc1gNZxoe1OnDaQ=pA@mail.gmail.com>
 <CAFA6WYPt4q+jaJbaoauXKr2qKgBHvtQ663s4t=W3nuPJPe2xpw@mail.gmail.com>
In-Reply-To: <CAFA6WYPt4q+jaJbaoauXKr2qKgBHvtQ663s4t=W3nuPJPe2xpw@mail.gmail.com>
From: Janne Karhunen <janne.karhunen@gmail.com>
Date: Thu, 1 Aug 2019 11:30:05 +0300
Message-ID: <CAE=NcrbujsM8wYJXq+s=o5Vy1xY1b0uKYBGvp6UP5ex70HrB2Q@mail.gmail.com>
Subject: Re: [Tee-dev] [RFC v2 0/6] Introduce TEE based Trusted Keys support
To: Sumit Garg <sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_013019_091051_8588E3F7 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: dhowells@redhat.com, Daniel Thompson <daniel.thompson@linaro.org>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, jejb@linux.ibm.com,
 Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 "tee-dev @ lists . linaro . org" <tee-dev@lists.linaro.org>,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 Mimi Zohar <zohar@linux.ibm.com>, Casey Schaufler <casey@schaufler-ca.com>,
 linux-integrity@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 10:58 AM Sumit Garg <sumit.garg@linaro.org> wrote:

> > Anyway, just my .02c. I guess having any new support in the kernel for
> > new trust sources is good and improvement from the current state. I
> > can certainly make my stuff work with your setup as well, what ever
> > people think is the best.
>
> Yes your implementation can very well fit under trusted keys
> abstraction framework without creating a new keytype: "ext-trusted".

The fundamental problem with the 'standardized kernel tee' still
exists - it will never be generic in real life. Getting all this in
the kernel will solve your problem and sell this particular product,
but it is quite unlikely to help that many users. If the security is
truly important to you, would you really trust any of this code to
someone else? In this day and age, I really doubt many do. Everyone
does their own thing, so this is why I really see all that as a
userspace problem.


--
Janne

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
