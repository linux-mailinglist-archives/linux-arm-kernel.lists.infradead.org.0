Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA59D50423
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 10:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8HotuERaqVugFut/TFEXjVSlsnYTlRG512FiMoRXuU=; b=IZLUvWPtI4xL11
	lucc5N0VHXXDDusR6aiY2KRupS3M3mlaKICT0jA5KNZ3fYpXgyDGeckiPwLlAIHoN25xP5F7LQOLg
	wnz9CoUcdrCPU5+G56mOFqqjuSmXD00FNHdbeBC5HLwk6LuSIYsaKXmYpN6CtOLc1yqmKH8X7CZXR
	gH0PMnFkf9gV9g9aI0MbEFuVHaXx9P3p001i9qFEyVMZmKdgZwOzSa9JX1BgAKdnOSpLWKpyTnykv
	T2PNxAOrXCtW0MzVjF72bZ2Bqr/5V6H2eyNA4PKJiiF9r/53wKNxfTF309E6SSlCsbFI7p8uh92/y
	71EFix0b6kmCqETjfa2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJvR-0004Km-LY; Mon, 24 Jun 2019 08:02:05 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJvD-0004K4-SV
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 08:01:53 +0000
Received: by mail-io1-xd42.google.com with SMTP id j6so1393074ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 01:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FTPWwACdEm2iARChdi+A0l0E519w0LgFxkdMjzE6KqA=;
 b=Sqr1MaHRYO02yMQpmq6sGmEOyYe4gqkL//8AtMvJOtTKj39AZpjbOgbVi/XBZlrcT3
 gp1JZO0PeQfv5PSCB1yzkwsbsCcCFg3PvvLqE3wkCsPotrbDsBbd3RsEPLbwVBVW92ea
 DOei8IpXCQ7BRAgxycot1z8B1VMu5YE6OQjrIgcsHHqZuV9HVoZ95uBAlD6YqWgGHabY
 e0E9efXtJzMzmBwkSL3olYKJbN99R/HA65opTIx3nlFkiUSu65Un2cO+dYdGrY+z4+9A
 BhBsIdGGn5ZpKyrNxHmvHTbX+HTyaJwgUqVASZGxmNUwlRps6LYyqMTZc0jW6IPp6WsV
 H61w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FTPWwACdEm2iARChdi+A0l0E519w0LgFxkdMjzE6KqA=;
 b=I3QMxhbx7zrNRD9IlXu93ETiDULe6ZqHjGIeoGXUm4sicRJGEtwRYlwrAryqRc2eyk
 ukPzlOfGuhLv+d1skwRRZDhfnkqavUsGwD0FlPBoWf56p2p7++Oibloyn7tBcOkNIQdJ
 d7mqOWGUh3/5PGYC/IASDU8agMSyzmz2jzReLpM878/okhDTvbcB3K4qPbbPEuv1Ve/q
 bk5LBcl2fo5LfADRDwGBVSXUNRKdZvPz4p6BU11gw++6lzcTMIIHuzIVpxCEtwlg1RPI
 K3vQgvuN5/AAq9JtJwMEFU9B737KQNqK9f9McxCvPDpl0u5Njniu08QtJSbuZ+oR+dY9
 wIsw==
X-Gm-Message-State: APjAAAVItNrqU0ICxdGGm2kT9MLqwgfnGWFKhtnH/8i9enOXrrg+142m
 /x+EGRLXsbWEYIPZWt0k8zuEB8q60b3En8zVXz1JUA==
X-Google-Smtp-Source: APXvYqygfqk82gjJizKwuyDhHTlE1j+Su2e7VGfdGDa2jVMnGL3Ouit0b9Fe24gt7DT23pEtf84DZF3Iqm24HkWYfe0=
X-Received: by 2002:a05:6602:98:: with SMTP id
 h24mr20097216iob.49.1561363310654; 
 Mon, 24 Jun 2019 01:01:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
 <20190624073818.29296-2-ard.biesheuvel@linaro.org>
 <CAFqZXNt4PgTB1Ocmui4CCYTCbguAqmcrdA=ZMbA6anH3LBX9EQ@mail.gmail.com>
In-Reply-To: <CAFqZXNt4PgTB1Ocmui4CCYTCbguAqmcrdA=ZMbA6anH3LBX9EQ@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 24 Jun 2019 10:01:37 +0200
Message-ID: <CAKv+Gu-UQ_QYqwDXM659PfZNKjHnS8vPfL6yV_ZT=Ggt5jDB-A@mail.gmail.com>
Subject: Re: [PATCH 1/6] crypto: aegis128 - use unaliged helper in unaligned
 decrypt path
To: Ondrej Mosnacek <omosnace@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_010151_930033_19792702 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Steve Capper <steve.capper@arm.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Eric Biggers <ebiggers@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Jun 2019 at 09:59, Ondrej Mosnacek <omosnace@redhat.com> wrote:
>
> Hi Ard,
>
> On Mon, Jun 24, 2019 at 9:38 AM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
> >
> > Use crypto_aegis128_update_u() not crypto_aegis128_update_a() in the
> > decrypt path that is taken when the source or destination pointers
> > are not aligned.
> >
> > Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > ---
> >  crypto/aegis128.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/crypto/aegis128.c b/crypto/aegis128.c
> > index d78f77fc5dd1..125e11246990 100644
> > --- a/crypto/aegis128.c
> > +++ b/crypto/aegis128.c
> > @@ -208,7 +208,7 @@ static void crypto_aegis128_decrypt_chunk(struct aegis_state *state, u8 *dst,
> >                         crypto_aegis_block_xor(&tmp, &state->blocks[1]);
> >                         crypto_xor(tmp.bytes, src, AEGIS_BLOCK_SIZE);
> >
> > -                       crypto_aegis128_update_a(state, &tmp);
> > +                       crypto_aegis128_update_u(state, &tmp);
>
> The "tmp" variable used here is declared directly on the stack as
> 'union aegis_block' and thus should be aligned to alignof(__le64),
> which allows the use of crypto_aegis128_update_a() ->
> crypto_aegis_block_xor(). It is also passed directly to
> crypto_aegis_block_xor() a few lines above. Or am I missing something?
>

Ah yes, you are absolutely right. Apologies for the noise. I just
noticed the asymmetry with the encrypt path, but I should have looked
more carefully.

Please disregard this patch.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
