Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBD77D95A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 12:27:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ikr9KFauxocuCylbrqBvm9tHs3WzjNEQu5kEuJkF5fI=; b=ay0iN73JyFqydI
	TV84uPonNIbqDn/vIY9g7gQe6KOo9GFv8FO1NkP+T7ZNRpATBu/9Kk1daaNzGYk9siByzjmHzuted
	oCOeMnUr6IdXJuH5uH2SwL/SFEHcocffWU3LnCWVGcN1RSPtLtzwjysb28glBxfjyqxmo5FqcqkZd
	ZCXPBLjSiM5GN8ws63kyFzDADalojQ+FJXY/CYtrLE3Rm+E70M7pFSqGz58TqIkYm4smocsjhBZNd
	GeKyyhGoXHo373mC4PIKBm/tZuOudRQ+3lT8aLLOZKKFmBFkY5X2h4SDG+IcCjgkCVO2PALo5CWKZ
	6bBzpI8XN6Lo1dy7wzrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht8JF-00036o-3X; Thu, 01 Aug 2019 10:27:45 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht8J8-00035D-Gi
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 10:27:40 +0000
Received: by mail-lf1-x142.google.com with SMTP id r15so32852970lfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 03:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WavWyKi8xsYiSOtxhL/Mupk8NjZ0g0ho0jTiP91yMfo=;
 b=ILM98uDeH4Kq4OeEe/3O0IuQ1XoT0Qrd38bGRpHpc3YusALaKFR5/NOUMP1lmLymeL
 uerpCmuZR0a1Ra+J73y/ObaEd3+lTlP+dZRGaqKwbJ5arq4Dpi9co1/B/neD92Q2EM9o
 GaJZgvDUjykVsBwgoxzGc0Yi4uiXhFR1WxNFbCKjIyWlRjAqYjRv7UpAuWRa+KOyiTSI
 4ekpU/2spRg64dnda+XLs9xM5a6iUu3cw0WBJ+BV6IV+srs+pRbtYrqupbnr4gqMoCIs
 3kdTbq6UX1CSHZkp7klNL5IqDWMCnxgiRV98mt9LYpxn2mukho+gu6Gs/5Qm/eJnVEHP
 FmBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WavWyKi8xsYiSOtxhL/Mupk8NjZ0g0ho0jTiP91yMfo=;
 b=KNNgKc+X/beVZxeK2bYS3l5Dmu74um1/horCub+m7ktVC2al9TGcpibnJYH8gjcPaW
 yy37powmGC/xxRwp5TrRYmZPz6mSg8mgPboWVVGk7eFAvhQWn1hDMjuuU4qC8+UTg5Gp
 XQMgguAKG/0RstfNclgx3Y11Zj/t8lsRhJ2S6XhZAu/4bicRd6bduc6xT0iAr7uDB+OH
 t/GQjWiyXvegjTT0Xd6PQ+12/Te816Tz+l09bRUHmhU7U0AuN7kxu5nE5RJSo7/ZRui4
 WfZcnqRqcQpnkuJSEFB2RpIn+TxlZnGDaPmdHDzFXYGqp83Nt7Fw9Li5v+1rhJT6jk+J
 Ze5Q==
X-Gm-Message-State: APjAAAWx3R3EWRJa36nZQ0gJ43Tb1jhxEfzpYMt4EVHtmr/yrFgda5Zf
 yChvucmotiKhkTT2h6/Hqn9dbzvMXLuZOwCL4G48Pw==
X-Google-Smtp-Source: APXvYqwcjanstBYp6ci2fM+2NuJ04h4Vkq12OnvRSlbvhbEkiqzESM49hkfaP96wyF8xEMXGU6rNE8v77LiXVZl4mq0=
X-Received: by 2002:ac2:5094:: with SMTP id f20mr63091641lfm.186.1564655256560; 
 Thu, 01 Aug 2019 03:27:36 -0700 (PDT)
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
 <CAE=NcrbujsM8wYJXq+s=o5Vy1xY1b0uKYBGvp6UP5ex70HrB2Q@mail.gmail.com>
In-Reply-To: <CAE=NcrbujsM8wYJXq+s=o5Vy1xY1b0uKYBGvp6UP5ex70HrB2Q@mail.gmail.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 1 Aug 2019 15:57:25 +0530
Message-ID: <CAFA6WYNzW-+N3rcKMCJ0wK9peuq97CETnxMSwxixN7844XinTw@mail.gmail.com>
Subject: Re: [Tee-dev] [RFC v2 0/6] Introduce TEE based Trusted Keys support
To: Janne Karhunen <janne.karhunen@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_032738_568052_5BC98F49 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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

On Thu, 1 Aug 2019 at 14:00, Janne Karhunen <janne.karhunen@gmail.com> wrote:
>
> On Thu, Aug 1, 2019 at 10:58 AM Sumit Garg <sumit.garg@linaro.org> wrote:
>
> > > Anyway, just my .02c. I guess having any new support in the kernel for
> > > new trust sources is good and improvement from the current state. I
> > > can certainly make my stuff work with your setup as well, what ever
> > > people think is the best.
> >
> > Yes your implementation can very well fit under trusted keys
> > abstraction framework without creating a new keytype: "ext-trusted".
>
> The fundamental problem with the 'standardized kernel tee' still
> exists - it will never be generic in real life. Getting all this in
> the kernel will solve your problem and sell this particular product,
> but it is quite unlikely to help that many users. If the security is
> truly important to you, would you really trust any of this code to
> someone else? In this day and age, I really doubt many do.

There are already multiple platforms supported by OP-TEE [1] which
could benefit from this trusted keys interface.

> Everyone
> does their own thing, so this is why I really see all that as a
> userspace problem.
>

IMO, we should try to use standardized interfaces which are well
thought off rather than implementing your own.

[1] https://optee.readthedocs.io/general/platforms.html


-Sumit

>
> --
> Janne

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
