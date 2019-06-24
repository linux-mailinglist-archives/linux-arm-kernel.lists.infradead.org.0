Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C3E4FE58
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 03:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PrT+F8a2CTWv3pZ0l1DLXdB0jKEE0lCjk8PyyF6q/tQ=; b=CMTafW6znw2mEIUxMFjMCGH5F
	RgghGfZPnBrO95Iyk+l9dpLTlqcOdmb2VCZdeh/7ofhArvwFsTASvbq7Vo3Z+IntvLZTJSJUFVEt5
	Dk8SzwVSRq49BNo0tfsX7mDVrvUyKTAAH4Qw4KwInMchMf2j6I79d3Cu/DyjvhFmKbDqLEO9q+Qfu
	AP9V5JK5FNmlMCYSwQStWyY6YAWzb8NBnvjK3qj1maaDHrsvEwSTGXSwPkKYoOResCI9efgPVclKO
	7x1M1F+BBBU0uYayn2YhUaDi4/QK+evzjvhGv37pu5BCEK7w3vtrGXnU48xcySLsjiOFsickU6kxm
	SrLOK/mxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfDf8-00026m-AZ; Mon, 24 Jun 2019 01:20:50 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfDeu-00026J-Pv
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 01:20:38 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45XBLP6CHyz9sP1;
 Mon, 24 Jun 2019 11:20:29 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1561339233;
 bh=tHpKwuHkDaYhqmZgfsFoheh7ykmCSOsO+dlIAnOp5YA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iH/Ezv8DzLvBwG2s0LQ7ZBM1welnN8fckpARVHddhZPLxtjELZrJzSp8tZYjclIHj
 OiHAqv6wiLW5pCCaa9reiSr+VLvDsU4HFF6hKpNdx8mwP/+TMKGiaHvPmRS70uMSfT
 1d2b5DZrek2rF+dHmCPF7+4RWTaw19TsknadJ7KEg7DKURj+1IWE29q0rY6TQJX8Sn
 POZsWqoDp3665q0EDKriozuPffzKfV0xQPt73rUTT1gXEDINFIaMrUugDMEm1sekUa
 z3I7ArxUhv/hmTqmhwVj5cIwMdm5dOfjhnHdboIGIkHiUyOXUgMKUsG/AJ7wTubPYC
 7dJqjoN7uByRA==
Date: Mon, 24 Jun 2019 11:20:29 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH v6 18/19] x86: Add support for generic vDSO
Message-ID: <20190624112029.4f42a8cd@canb.auug.org.au>
In-Reply-To: <20190624002430.GN2226@sasha-vm>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-19-vincenzo.frascino@arm.com>
 <BYAPR21MB1221D54FCEC97509EEF7395CD7180@BYAPR21MB1221.namprd21.prod.outlook.com>
 <alpine.DEB.2.21.1906141313150.1722@nanos.tec.linutronix.de>
 <20190614211710.GQ1513@sasha-vm>
 <alpine.DEB.2.21.1906221542270.5503@nanos.tec.linutronix.de>
 <20190623190929.GL2226@sasha-vm>
 <20190624075834.2491a61a@canb.auug.org.au>
 <20190624002430.GN2226@sasha-vm>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_182037_120576_8737F61C 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-hyperv@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Michael Kelley <mikelley@microsoft.com>, Peter Collingbourne <pcc@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Huw Davies <huw@codeweavers.com>, Greg KH <gregkh@linuxfoundation.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: multipart/mixed; boundary="===============3153319181193121366=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3153319181193121366==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/UW6IjEE3Jj_YtxhGwam1e.t"; protocol="application/pgp-signature"

--Sig_/UW6IjEE3Jj_YtxhGwam1e.t
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Sasha,

On Sun, 23 Jun 2019 20:24:30 -0400 Sasha Levin <sashal@kernel.org> wrote:
>
> Pushed now. For some reason the airport wifi was blocking ssh :/

Thanks.

--=20
Cheers,
Stephen Rothwell

--Sig_/UW6IjEE3Jj_YtxhGwam1e.t
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl0QJV0ACgkQAVBC80lX
0GwUBQf/e/6tJWyAWMaopYMBDqN2qz4oN/vHsi0Cl4cEtZikDfm20K5/e1B/rwg4
3AdDGd4MfB2z5/yvCCH0gZcA3R8U8r/OX6rpU6BHD6jewnLN813ja7GesU+lgWGE
fDznHmIHmGaN2LljjUA34WkBymJGMDsOcA30q6ZIdO48ABULY+FstQOahDrTFMde
Btm0wVAvmSOP5iIIXt64JWYPhNzGJljLoW9Y5SzpAQOIrTCzYaTIcKceQsBXmPoK
XH6Ypn5GZCfCNZD/9reOW8IG8CNsSN+7OBdtFFC9W7/OGZdAmMz9n6eX+a/9WS3x
VqP7o7p8NE5G2ug+cDsnFn1aIkDb6g==
=/UhR
-----END PGP SIGNATURE-----

--Sig_/UW6IjEE3Jj_YtxhGwam1e.t--


--===============3153319181193121366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3153319181193121366==--

