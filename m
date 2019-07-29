Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2930378445
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 06:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NXoZDdewJ9jvH0lW1lorGfY+MnvwlNDSwJq474n3q7k=; b=kSdS4dy1A2zpmtGTXmyxlBYhi
	W8eD1QK9KXlVBigMqr9ERaHvnf/2e6osuY2r1km35Bv+SCIayEOGY60rf4+meAfN6IKNTkv/qOqYw
	IvIrfkE77o2tZMNfhWcQrMDqekuFqaeWV1Bn4L5ht/tn+qeds2sK8lHfA1AI6h+ZjgDAz9akGfpYK
	oMaAbxcrwe+zxyUP/qSUDNCpA4mi0zaqTtgNXDvMMsGmg7b6z/V+1W85XxKxmDLNRtRdM7XcrAy42
	LS/Qv0+V/t+51qrvrpt90ieSGvxu5E1mwYTyHUd6AwJvzRKOKiSRPlEmInZPhgkY4odVt6CbJ5zJd
	rVrvK+dOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrxWQ-000778-3z; Mon, 29 Jul 2019 04:44:30 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrxWC-00076T-D3
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 04:44:17 +0000
Received: by mail-pg1-x52b.google.com with SMTP id f5so18741060pgu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 21:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lFDI6SML6T6xaZaSiFzp/ikbG+8fwaD6/E8/Mnuljfg=;
 b=h5jHjY/K6yyqOXtr5yOFQiZMVcjFt24L6rHKI5BuA7OBu3Cjn+VR1YEZlnBj7VInC6
 +XNc4pCtZhXR8YuDKQiaCoOXSDd8YiTC/Ly6N2wgQBi7BQ3cGaYrMO4ToyHKFjVqti8F
 A0tWvJhOIqveB3JbCmV8q8U/WNkJjZ4A5Kkv1l52kvNv0MxNU4B14YsIbrcJlNirsbN+
 b58rS1tbIv5jjCiQHcpm01lw+XZySDgAIaeYSE9G4mqLbU+vN1klIjXyxlI2+E0aL4Xm
 SjgXYAxPS2fzaaQ7Zzesk2ME/qvFJ/AKgSRpqsNizd1t3Yj2aoWWDQbcChaPitj1oiOF
 luCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lFDI6SML6T6xaZaSiFzp/ikbG+8fwaD6/E8/Mnuljfg=;
 b=cOo6wdtYeb/XDJaIOpsrOcncexa9pJiK+v/HTyIgvYAqhpVDhj/d8pEPOr/Iits4Jh
 9+6ZHoWWp7bHWufCqf2N7Hk/P1gpu2Gq/oVSxNJSqWSRf7eTtXhxfEp/KTvx+B3kvSkz
 BlWoyc4eYckkL2v9Rw30B5rw0DBjfcDKv7fajRvR7wnh0CevC+FrT28Q+ORKBYb4KfJg
 On8CQHp5qePkewLTs77qR1/Lj8s1FSmgV3MmHvfwECCSMQjmzUDV21SG/o/5u1oKPmNY
 fFWdf7esjS85ndVvOJ/9iv7sMRedwO1bQQNG2GLU86YMUPYV6V1Xe0rYuvNVJawRtFTP
 mSsg==
X-Gm-Message-State: APjAAAV4X9yoqfopDUSC8sWTmS0Wp5cMirlAfK+sItd/xd9ua5U5JfwO
 NablzuLS8re8RMF0K7qMoeA=
X-Google-Smtp-Source: APXvYqxX94zHNdhAue7Yk3IksR9BaJt7Qg//LgZYQuJL1V+4Kkm3SpOBcIiiSN+iFdIo+B3IXXwYpQ==
X-Received: by 2002:a63:8ac3:: with SMTP id
 y186mr102007247pgd.13.1564375455041; 
 Sun, 28 Jul 2019 21:44:15 -0700 (PDT)
Received: from OpenSuse ([103.231.91.66])
 by smtp.gmail.com with ESMTPSA id h11sm60843675pfn.120.2019.07.28.21.44.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Jul 2019 21:44:14 -0700 (PDT)
Date: Mon, 29 Jul 2019 10:14:05 +0530
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: Matteo Croce <mcroce@redhat.com>
Subject: Re: build error
Message-ID: <20190729044403.GA27065@OpenSuse>
References: <CAGnkfhySwXY7YwuQezyx6cEpemZW4Hox1_4fQJm3-5hvM3G6gw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGnkfhySwXY7YwuQezyx6cEpemZW4Hox1_4fQJm3-5hvM3G6gw@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_214416_441339_92BF91EE 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (unixbhaskar[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1668255252441832855=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1668255252441832855==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Matteo,

it's look like gcc is not in your normal PATH. Could you please locate
that fellow and realign it ,where is suppose to be.

Or if I understood right (I doubt that is why asking) that you might put
explicitly the architecture to target build with make also, that might
help.

Please do let me know, if I derailed grossly ...am not sure.. :)

Thanks,
Bhaskar

On 22:08 Sun 28 Jul 2019, Matteo Croce wrote:
>Hi,
>
>I get this build error with 5.3-rc2"
>
># make
>arch/arm64/Makefile:58: gcc not found, check CROSS_COMPILE_COMPAT.  Stop.
>
>I didn't bisect the tree, but I guess that this kconfig can be related
>
># grep CROSS_COMPILE_COMPAT .config
>CONFIG_CROSS_COMPILE_COMPAT_VDSO=3D""
>
>Does someone have any idea? Am I missing something?
>
>Thanks,
>--=20
>Matteo Croce
>per aspera ad upstream

--VS++wcV0S1rZb1Fb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEnwF+nWawchZUPOuwsjqdtxFLKRUFAl0+eYAACgkQsjqdtxFL
KRWD8gf7B3C4eQbJDjr+qcikIHk5D7vFZl6zTkyjyELHFJF9PLCpPjkBPV6XTBqt
+LzajOLzOhVQO30b/8uwi6FZYECxAFWGfk6qVmAJ4sjFFAvzFapoBdAe72/9D9Bc
3pQAKpgmuHmrE8gG2f7FXoSd4/38DWg69AvhE+a0wMHMAu2Ku09khH4BB9TZkZBG
OQrdPHhWDBZmBVRauaPjCrQlEJWvHXrjxSLhCBipxStTp4KbfhzdLPiaF1s3AbJi
c6aalQYBQj+KVhWKUS4RrTHXCJ1XHFhTVZ9buoRrSrM8qHuN9TzOsSzo51d5B8wB
PAYzSd0RSH4eCyCgGsCUW7og4QizXA==
=sTEb
-----END PGP SIGNATURE-----

--VS++wcV0S1rZb1Fb--


--===============1668255252441832855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1668255252441832855==--

