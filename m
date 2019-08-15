Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D888F78F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 01:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2N42CwCNOSvpVvc66eWnhmz8YLUzZvkUAkKLkZt1r6s=; b=FBw
	SqD4PMXsvDh9CFnvCqaQLNMBqr+oiti99N+NwsM0iLLky7EPuBr8Wgeby/Dh25o2/ugr5V8+pCd1i
	SDWadqN1kcSNucL6zXcofCnaU85JSz9dCd5+dOYsyCLrd8x3noNXqyeIiobAim4keMFs/SbHUkdx+
	3wme8nRMMiaTLBUoFMhFJUj9FCY6Yx0p5rP+/9KHYKhjsKXnlZZewWCj4mhMuCqHU1lgesu8vYokF
	8+v6SE7uNioDuMT17MlJxz+E134BNhc1ZpilAEiTJfle2HzwRm44mVYw9jbwzlXNVnpkwTCwc/CM2
	YlQceygvwUCY0oS12+C9g6MI0iIeqng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyP6G-0005SH-Lu; Thu, 15 Aug 2019 23:24:08 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyP65-0005Rr-Ou
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 23:23:59 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 468jFQ4x00z9sDB;
 Fri, 16 Aug 2019 09:23:54 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1565911435;
 bh=kks2UrOgD/eep7ZxAVkInH+kO1NgToNJBllyhwrLo4s=;
 h=Date:From:To:Cc:Subject:From;
 b=FZR9lfPSSyw5DZVXfhI5bxPAeKEsaiJZt3w7SFFA1S5D06IDbUuT6KusRKbzZTmq/
 fYGlWBYQFd5N3HlGYoxfa/bzzoXc6+eCjlLuAmER25tqJLI+3PFW/USn2OBrK6Xx28
 K5kB6kcPRBmsWhWJ0z9c/DyU/cQUFHRJO7izRUKFabD/0Oc8JJgvejjoiqBc/kvUNZ
 fjKKwE73T6eMBN0Li39DC4xmyZYkzl03EhFt5K1upmht/90Dgyow5KLaG5QG1iYUhy
 WIhUe6EKUPBDbTqroipCXeu/NJj+rYL42uF2i8otCPa2TAVGsNrGDT4nckOw3s9R/2
 V23iGaVpnQXug==
Date: Fri, 16 Aug 2019 09:23:41 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: build warning after merge of the arm-soc tree
Message-ID: <20190816092341.06899516@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_162358_036114_0518008A 
X-CRM114-Status: UNSURE (   5.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============6622527171348599885=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6622527171348599885==
Content-Type: multipart/signed; boundary="Sig_/OoFaWTzmhYPTaAT95jsTflI";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/OoFaWTzmhYPTaAT95jsTflI
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

After merging the arm-soc tree, today's linux-next build (x86_64
allmodconfig) produced this warning:

In file included from include/linux/kernel.h:15,
                 from include/linux/list.h:9,
                 from include/linux/module.h:9,
                 from drivers/dma/iop-adma.c:13:
drivers/dma/iop-adma.c: In function '__iop_adma_slot_cleanup':
drivers/dma/iop-adma.c:118:12: warning: format '%x' expects argument of typ=
e 'unsigned int', but argument 6 has type 'dma_addr_t' {aka 'long long unsi=
gned int'} [-Wformat=3D]
   pr_debug("\tcookie: %d slot: %d busy: %d "
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/printk.h:288:21: note: in definition of macro 'pr_fmt'
 #define pr_fmt(fmt) fmt
                     ^~~
include/linux/dynamic_debug.h:143:2: note: in expansion of macro '__dynamic=
_func_call'
  __dynamic_func_call(__UNIQUE_ID(ddebug), fmt, func, ##__VA_ARGS__)
  ^~~~~~~~~~~~~~~~~~~
include/linux/dynamic_debug.h:153:2: note: in expansion of macro '_dynamic_=
func_call'
  _dynamic_func_call(fmt, __dynamic_pr_debug,  \
  ^~~~~~~~~~~~~~~~~~
include/linux/printk.h:336:2: note: in expansion of macro 'dynamic_pr_debug'
  dynamic_pr_debug(fmt, ##__VA_ARGS__)
  ^~~~~~~~~~~~~~~~
drivers/dma/iop-adma.c:118:3: note: in expansion of macro 'pr_debug'
   pr_debug("\tcookie: %d slot: %d busy: %d "
   ^~~~~~~~
drivers/dma/iop-adma.c:119:18: note: format string is defined here
    "this_desc: %#x next_desc: %#llx ack: %d\n",
                ~~^
                %#llx

Introduced (or exposed?) by commit

  00c9755524fb ("dmaengine: iop-adma: use correct printk format strings")

--=20
Cheers,
Stephen Rothwell

--Sig_/OoFaWTzmhYPTaAT95jsTflI
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1V6X0ACgkQAVBC80lX
0GwpOAf9H72e03ULtColpkz7dumUbcWHXgwX0b8iR5caWpy0CsiEISXuvI0eHnYW
aIu1KZ68rlWww/31dBIuFBzu7rF5mENS7RcoJTgLWy6UfeJCHD8o/kycgW33GoaE
Sc0VWEq8UiW0oFgIlcY8ubQ/ntDx2GlWn3ekNxuzngMyj+GsQvLNSfy+ttww9DYI
Z+XvOTvtLmc5Qp+laSFGWZi5nL1buCHyLPW1529ynqQFSm12N4h+zbJJP5RrIXpU
vMCJ0Qv1KcaUG4cBzFJxN1NdDAxHtolLjNpn03iOH/jxUrPLh9EjECX2XKQMrZ4S
OjqlAx/HATz7uOARvEtPiG3P4IUbew==
=DzRo
-----END PGP SIGNATURE-----

--Sig_/OoFaWTzmhYPTaAT95jsTflI--


--===============6622527171348599885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6622527171348599885==--

