Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AC311A894
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:05:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMAqs5rj75LTEf8ul0xyvEphdNB/RTxY9XkCJIQlKKc=; b=Jqc/zM7u23ecrz
	A0H1BS68eIkK9cnUJW8dPOGC9hA0/x6Oi4ytFdVjN9+/HUru7JSLsOzpkunk+j0kGNfpQZ0uj9FMN
	uUD+mJmpjFyP2Ce61G1pxG4cLGl04G9Kzz/nAkGzkt8nZEpluVz+Umbsb97y27a4bxCkaXRQWoPk6
	1N8mi9JWrccARKWNzOKjjYbSMgIbFcXVGnNdbwmONqg2QBK+9PBSYzykklMVhPstIaHQXCY8hGNG7
	RxTHn89Pi7Dv3JU5xw6Bc/WORSVpnqd/8upJjfp3vLIVOtHXLfeSv9tfuhxymP9sMnMYNJEx/w3oq
	eswM7DZQL9FsMtB/RJ6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieysD-0006gG-6O; Wed, 11 Dec 2019 10:05:37 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyrz-0006cb-GK; Wed, 11 Dec 2019 10:05:25 +0000
Received: by mail-io1-xd43.google.com with SMTP id k24so22042049ioc.4;
 Wed, 11 Dec 2019 02:05:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6+pzCvZCcIDCxscL/F2NTKLDHzaJQZFzo8UlrqTqymo=;
 b=OAQ8RhQT+BNhH5WtADE/JwpRUFq8FjSxLcLoHKg9BhA8CFuwWyRros3rT6ka5Ur4/+
 Ihml7KGm0Y4m4/XXTvPsq3lLnCdfzvm/y7ogVvxBUW63YsQggBu6Q/EsnrOv87po8LQT
 L1HTnnb7mESRAokBz9AV7RYDJ6bK+6uF9ajOBWDuq1AJsH+VEBdspzP8QU60fwLDZAY+
 aY+AiCuPlGavc2xAsguOm+mFP3bHPyVOqUlCj2eLmHgV/NGaeX4DsEFFV1cDvGguJI6I
 nDiSxVAaccq0FEnyYb7K0GSCJo9e/i7jtr2TX8RHlzK5X6nw5ifr1rVNHJWD+2ooxIr+
 WZKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6+pzCvZCcIDCxscL/F2NTKLDHzaJQZFzo8UlrqTqymo=;
 b=EmHlufe+ucvcb/GwoOwC55nU7Q6YIr5DfGpCzVO/mWBJXydTHx1n7OoNwvGIvLl2YS
 iajAedYu9T7d3vJ9I+BdkLTHiqX5VRt+n7TL2yX4xir4qXXusnVw90BLgkEveHjrFmpC
 0OBiEnUv89ZDppOMt1kArCxpH6tO5zcWDEJcVv3A3/u3psZmN41+X3M1GlDVY6i9ca60
 clhxDSEILe6ndNFStL6FwgjjW/1vbBhS12z8rMCB2hv+HzVHh8QSNBnQ2qZsd1TRURNU
 nkJ7JAZyTKuzjaLk+HRaioOjgl042b+o1w/NGuLU/bk0h4tCX+E9V2ZVb2aNBRZhrixo
 4xEA==
X-Gm-Message-State: APjAAAVFqk25uZOhHfpaR3nJ1rbfLbhkMKl1J660J1NS93PKNnkps2lq
 Uhgyd4hIJ5RW+bN3tjBRj12JrljYRkIseS+GQIE=
X-Google-Smtp-Source: APXvYqzQQF2cztKd3cNyU8ZNYeCQxBqzhYSOLa4dn2jZiKW/BvdhA1lQKaPvEUrsQi7tB6c3eXGWxmzJ+mHnVwC7J58=
X-Received: by 2002:a02:a309:: with SMTP id q9mr2222824jai.141.1576058722472; 
 Wed, 11 Dec 2019 02:05:22 -0800 (PST)
MIME-Version: 1.0
References: <20191211084112.971-1-linux.amoon@gmail.com>
 <a4610efc-844a-2d43-5db1-cf813102e701@baylibre.com>
 <20191211092741.totwucrkversjbav@gondor.apana.org.au>
In-Reply-To: <20191211092741.totwucrkversjbav@gondor.apana.org.au>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 11 Dec 2019 15:35:11 +0530
Message-ID: <CANAwSgSNKa2HgYZPhrFdsA4mwOgvaiBSzay_-eo-n80KqwXHLA@mail.gmail.com>
Subject: Re: [PATCHv1 0/3] Enable crypto module on Amlogic GXBB SoC platform
To: Herbert Xu <herbert@gondor.apana.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_020523_545840_5C455EB7 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>, linux-amlogic@lists.infradead.org,
 "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Herbert,

On Wed, 11 Dec 2019 at 14:57, Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> On Wed, Dec 11, 2019 at 09:53:56AM +0100, Neil Armstrong wrote:
> >
> > On 11/12/2019 09:41, Anand Moon wrote:
> > > [sudo] password for alarm:
> > > [  903.867059] tcrypt:
> > > [  903.867059] testing speed of async ecb(aes) (ecb(aes-arm64)) encryption
> >
> > Wow, I'm surprised it works on GXBB, Amlogic completely removed HW crypto for GXBB in all their
> > vendor BSPs, in Linux, U-Boot and ATF chain.
> >
> > Could you run more tests to be sure it's really functional ?
>
> Well as you can see from the tcrypt output, it's actually using
> aes-arm64 which is certainly not the amlogic driver.  Presumably
> the amlogic driver failed to load/register.
>
> Cheers,
> --
> Email: Herbert Xu <herbert@gondor.apana.org.au>
> Home Page: http://gondor.apana.org.au/~herbert/
> PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

Yes I think so you are correct.no Hardware Accelerated crypto on GXBB.
Failed to load the module.

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
