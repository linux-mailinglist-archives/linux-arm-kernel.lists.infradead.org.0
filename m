Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDBE178589
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 23:20:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdJVOS31dCxBgVccKlcznSWRXui2gzjYOUJtTS2/dRc=; b=AVCKU90Xmuxlkj
	sdHR8p1ZFv6CfZKeq3MhV899PDK18jGS1bwBRVauHi1TrAVkFvMok04tWkGDTA7J55/DJRfUyIGGW
	7znKio2kUEHKhQGMHH4CwVR5Kcn9iIlWbvqApWqLUtnokvi9Ci6SXpsiMHu6AQr82HNhKONlyId4d
	U2IRRnn0dQHpExJ+BqNT56Y0IZHGTJB6gAnmjZY+ajUbe7bQGcfURFqTfJc9A4k/t5qXcH89tWLWL
	aw5zfWyjNjOaXcO45k82u+2kCPTpHCU2PsNsJ3tLmDlP8Lo0R5L4f8N8oKg35DBPXTxd91cH7Ax23
	qx+8Ia3h79Q7Qk6F60TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Ftp-0006zw-Jg; Tue, 03 Mar 2020 22:20:25 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Fti-0006z7-Dk
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 22:20:19 +0000
Received: by mail-pf1-x443.google.com with SMTP id l184so2208654pfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 14:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A0VgoCajNQtcqmr3sAxZ7zwAICIrcd2LUoNAPqwJhMc=;
 b=JoEYFdqH8VMWl/v3oH9VXqNGlxqWFgnorIuL0o80ZngwzS/ndHRTcASbqclRrUjUFS
 JqDXYy6BFgb8RRrFi0Wguy7MFjm1Rx9YwjkChVADEVVdGOzA/Nh6wAc8Fvp7yZSOaCZ4
 cOzTqLmgjn4ShkaCTeB0wEWh3WU2S1mivlUnz8Qn+B2nvfX/AnGjrvd8CNWkq1bd8XQm
 p0PKu/SVvr1mTlYxgKG5QdG7UrmbLeScp3lDEyEy4N7EHsPCemUBKHbsMhp+PqtNrEMC
 iDc3Chr898nqiTtFwHk+hlM7QURM5bO50ptPMclx9dGGCYyAG7mOlQR5af5uVt1+dBGK
 B3qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A0VgoCajNQtcqmr3sAxZ7zwAICIrcd2LUoNAPqwJhMc=;
 b=fj2Y7dguqQMKhmOKWeCxlLQgsq6sQ4OV7kmibjnWAfD8xbWOgRt6w9ypgOA/O1cEdE
 j4YP83JNzBYXi04afK81X6Ye0PJnatLcYlHfMmbLjdlvPlzVyiAzQwgcRUlWI4iYhEP2
 /RPWG1rjAt2PJq3I5p3nfZufnnvpsF6+rVafBfmppVuG7id/EJft4lZVNnxA6f8gP+tf
 SZI4m7X42srYD7fZo6ykdFWl9+wdcFwPqlo5wK7UGk6uU17bGRguggYpakoqU5OIpx+8
 jl1E7mFln5WBny5/K+Mjl0CiZh9m7iRYycOL9ZkMwiJIKig8JkbbIfvbOXzcTvHw35Fr
 MdUA==
X-Gm-Message-State: ANhLgQ2T+vavlIQiHW2I5kp3KI2OpCIYIOvp8KkzsYBTKkx7PobzqR0I
 OJcP5rnfjUf2lVoH0iGSdIPBoPc2P5zXKGkKMzckJA==
X-Google-Smtp-Source: ADFU+vt4X4Q2+Uu+la/wP/hFUKrg/nR+9uZ1co62ESgEa0STG5Q0XI3VwZlAqZ1ci3kOGA0/3riqiLDrYgRWJ+NHPxM=
X-Received: by 2002:a62:37c7:: with SMTP id e190mr6303201pfa.165.1583274014576; 
 Tue, 03 Mar 2020 14:20:14 -0800 (PST)
MIME-Version: 1.0
References: <c41cc67321d0b366e356440e6dbc9eceb1babfe4.1583105749.git.stefan@agner.ch>
In-Reply-To: <c41cc67321d0b366e356440e6dbc9eceb1babfe4.1583105749.git.stefan@agner.ch>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 3 Mar 2020 14:20:03 -0800
Message-ID: <CAKwvOdmvOq9X3zR17TsEZpJ83BYC1vX=pYMPyZ6Db3xeHUxzag@mail.gmail.com>
Subject: Re: [PATCH] crypto: arm/ghash-ce - define fpu before fpu registers
 are referenced
To: Stefan Agner <stefan@agner.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_142018_488388_C5A4E2CC 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 LKML <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Jian Cai <jiancai@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Ard.Biesheuvel@arm.com,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Manoj Gupta <manojgupta@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 1, 2020 at 3:37 PM Stefan Agner <stefan@agner.ch> wrote:
>
> Building ARMv7 with Clang's integrated assembler leads to errors such
> as:
> arch/arm/crypto/ghash-ce-core.S:34:11: error: register name expected
>  t3l .req d16
>           ^
>
> Since no FPU has selected yet Clang considers d16 not a valid register.
> Moving the FPU directive on-top allows Clang to parse the registers and
> allows to successfully build this file with Clang's integrated assembler.

Certainly a side effect of having a single pass assembler...This does
fix what otherwise looks like a slew of errors for us, thanks for the
patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>



>
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> ---
>  arch/arm/crypto/ghash-ce-core.S | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/crypto/ghash-ce-core.S b/arch/arm/crypto/ghash-ce-core.S
> index 534c9647726d..9f51e3fa4526 100644
> --- a/arch/arm/crypto/ghash-ce-core.S
> +++ b/arch/arm/crypto/ghash-ce-core.S
> @@ -8,6 +8,9 @@
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
>
> +       .arch           armv8-a
> +       .fpu            crypto-neon-fp-armv8
> +
>         SHASH           .req    q0
>         T1              .req    q1
>         XL              .req    q2
> @@ -88,8 +91,6 @@
>         T3_H            .req    d17
>
>         .text
> -       .arch           armv8-a
> -       .fpu            crypto-neon-fp-armv8
>
>         .macro          __pmull_p64, rd, rn, rm, b1, b2, b3, b4
>         vmull.p64       \rd, \rn, \rm
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c41cc67321d0b366e356440e6dbc9eceb1babfe4.1583105749.git.stefan%40agner.ch.



--
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
