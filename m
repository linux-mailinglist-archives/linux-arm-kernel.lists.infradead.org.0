Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0AF1A6241
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 06:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOhXqvWhbJHbhtEafLOL3dU4XSPKzsptklcCqdgyxz0=; b=ZHEErIjqB8WRDL
	TKw4wjp/1Etlqe3p+Hj1KOhjfn+YLLZMsBOZ2IewvdNxgPMKPvYdyJSYe6UQOHGdKdIymtWfz8Hxa
	BNYONEjrkEr9P5CwL1Xdg7wjcAOSl5lVZuulETdd8JODRnN+tZ+IQMUBTEg+XZFgR0MJjieMquKvZ
	pWFOnKqqfA7QvEOQSQl4AXEqQdsVdAmMon0jP6kkfnHv6HlWEFacGQcYYbUaJGEqy3UnPbwt7ZW3J
	T7D0DP89uVY9H4bkSxXwlOWzEdodMfBLaKDyHKiREYsVL+xZGEhCRHNNSUSI3Kjgf3JQOBMskdN5K
	SxB2uS2HBk8dVHgYhKVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNr34-0007PS-FJ; Mon, 13 Apr 2020 04:50:18 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNr2v-0006QN-VF
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 04:50:12 +0000
Received: by mail-pl1-x643.google.com with SMTP id h11so2990215plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Apr 2020 21:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=NhWWJKHzx6HRDsAvn1ifQlJriij6MaMtMDKuj/k9bmI=;
 b=Ilf0eHpIqXWj5aYziVWyWEVczzYaKO7xs3TOtGKjHZzpBRWKefSNqvpSIRz9SNA1An
 9T9MWJEW7SY+f2k1L1XT31fWJtol2e1d2HjiRCRiFhBnNqqDLSp0jz4yZhcBzFEXFCJl
 DqC+0HiE9pjACjrXoTJ0vnvCva1g7VOu4ySPHUM0rrmgfO4hZCugABlWPanwKiffA9Cr
 6jxz+bi8J10Hz69rgG3VeWy5fqc9aB6QN+Ch3O93EWByn3KSYkIepa9lZFJQlXM7LHza
 2Y9O8QagnqoBVDmWaYzh2rHHWsJHajxeOrWC+dBIyQHY6mbM5I/nw7gTU5zY+B1m+GU0
 vnqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=NhWWJKHzx6HRDsAvn1ifQlJriij6MaMtMDKuj/k9bmI=;
 b=Kuml8XukrWWfG9GjXzD4YuiJzvkyN1Q16FGfeLlZvbooiOsI/du29oWJW4+bRWQUVW
 uBgTia9kPkGci1ohuit3LfXC7IeeH9HAr8I5zvcqhTC+xU7jrIicbphwMHXCB7FbKE8d
 YXsii2M6H/xtgofYDvGS8hZ3B00/c0jCEFyKvTuUvpr8QuSMbg83YVbZolqdjvRN1rAP
 kAH+Fa0ulclL2T9vhphKkhvrHwz70Rn+PY+9SpzrXBfxL3dqKzRugsGojlFt5UozG/9b
 9EjZ/mR8WepH/fekxwe/p+RQV1nZNlq+3Q2VLWXL9WnxUFhcmuIwgc2zv5QNqkzE21c1
 BeSQ==
X-Gm-Message-State: AGi0PuZ1Kt9DAYAqClvknXU/EsuHFJeDCffsyFl3lCRgnrjZSc36cH8h
 TAWC1R1YhwI3Q7urlmJ97QUYF0q9Ww==
X-Google-Smtp-Source: APiQypLxN2kWhH7Hd3VY0khso1oP2c+rM/YXoKt5qQA/anPTSaA65z9Pb4w05IXpmzUAuzbW/FopKw==
X-Received: by 2002:a17:902:7d89:: with SMTP id
 a9mr388312plm.233.1586753407086; 
 Sun, 12 Apr 2020 21:50:07 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:621d:5eab:88eb:9bf8:e528:ec6])
 by smtp.gmail.com with ESMTPSA id f10sm8020649pjt.7.2020.04.12.21.50.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 12 Apr 2020 21:50:06 -0700 (PDT)
Date: Mon, 13 Apr 2020 10:19:59 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Amit Singh Tomar <amittomer25@gmail.com>
Subject: Re: [PATCH] pinctrl: actions: fix function group name for i2c0_group
Message-ID: <20200413044959.GA3071@Mani-XPS-13-9360>
References: <1586702060-3769-1-git-send-email-amittomer25@gmail.com>
 <2d629e23-ddb1-6033-5ea3-fe9e02476e18@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2d629e23-ddb1-6033-5ea3-fe9e02476e18@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_215010_537195_797C90B4 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: matheus@castello.eng.br, andre.przywara@arm.com, linus.walleij@linaro.org,
 linux-actions@lists.infradead.org, linux-gpio@vger.kernel.org,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 12, 2020 at 11:58:05PM +0200, Andreas F=E4rber wrote:
> Hi,
> =

> Am 12.04.20 um 16:34 schrieb Amit Singh Tomar:
> > After commit 6f87359e8bcaf88381b9c9c038929e0e6872d308("pinctrl: actions=
: Fix
> > functions groups names for S700 SoC") following error has been observed
> > while booting Linux on Cubieboard7-lite(based on S700 SoC).
> > =

> > [    1.206245] pinctrl-s700 e01b0000.pinctrl: invalid group "i2c0_mfp" =
for function "i2c0"
> > =

> > This commit fixes it by using correct name for i2c0_group.
> > =

> > Fixes: 6f87359 ("pinctrl: actions: Fix functions groups names for S700 =
SoC")
> =

> The commit hash should have 12 digits.
> =

> Please also check the white spaces: The subject seems to have too many af=
ter
> "actions:", and there's one missing before each parenthesis above.
> =


Amit, you can use something like this

git log -1 --abbrev-commit --pretty=3Dformat:"Fixes: %h (\"%s\")%n" <commit=
-hash>

Thanks,
Mani

> Regards,
> Andreas
> =

> > Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
> > ---
> >   drivers/pinctrl/actions/pinctrl-s700.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/drivers/pinctrl/actions/pinctrl-s700.c b/drivers/pinctrl/a=
ctions/pinctrl-s700.c
> > index 47a4ccd..f579a65 100644
> > --- a/drivers/pinctrl/actions/pinctrl-s700.c
> > +++ b/drivers/pinctrl/actions/pinctrl-s700.c
> > @@ -1435,7 +1435,7 @@ static const char * const sd2_groups[] =3D {
> >   static const char * const i2c0_groups[] =3D {
> >   	"uart0_rx_mfp",
> >   	"uart0_tx_mfp",
> > -	"i2c0_mfp_mfp",
> > +	"i2c0_mfp",
> >   };
> >   static const char * const i2c1_groups[] =3D {
> > =

> =

> =

> -- =

> SUSE Software Solutions Germany GmbH
> Maxfeldstr. 5, 90409 N=FCrnberg, Germany
> GF: Felix Imend=F6rffer
> HRB 36809 (AG N=FCrnberg)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
