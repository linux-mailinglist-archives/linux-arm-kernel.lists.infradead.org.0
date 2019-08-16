Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5EF900C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 13:31:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=is2m5yTmAzCDXXlkHmz3YaOcxN8iSujuPQjOhDNpkCE=; b=PRm1zHC4v/FxbGVHcTnWl0DKs
	PU3MAQlGSiNXUb/P/Dx0Kur9CYUdD2I4SwAUPV5MPEgWQOyFlV3pry1i8x+t3KEmQA9oD/yKI6yYP
	xEmgXoESNtfGXcqnNn340DumQ60hamYgw/q9BmdBK1JG3U45m06jpWJqpQqQdIPwSWxU3tcLKOv/U
	p4vfsZ0Ls+8JbawC+AKbX/Xei020Y9p12cFrXbMwgTs480juD8tmPj9H2FRNgs73Zp09TNUasGegy
	wgmaSmDNLC9+Kl1UStaKd82skZAZ/tXANZrMjtQh9vxn/TEPXO8k23wIz9kjtCvxHYnmyQPWf+o4B
	REd4ciBSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyaSE-0000wN-Fg; Fri, 16 Aug 2019 11:31:34 +0000
Received: from mail-wr1-f100.google.com ([209.85.221.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyaRz-0000w2-LG
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 11:31:20 +0000
Received: by mail-wr1-f100.google.com with SMTP id k2so1234640wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 04:31:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=W2hB7LPtU2Ii5aUEVtZOPR7Z8zVO4iEBgFrpyeEIGM4=;
 b=XOGfhT8xZ9+7x1Y134yeiknNPzLLAY+ycTA0dJOQNx2p7erx1/w8jxLdlRE+pZVeIC
 hRh3DgUpUe7eHqum875XPOkucyAfd9smlrrJfYdCI9LjlwR4JKPgtatw1NOy13+sPC5R
 1dCco2Z+Tp0kQz12e5MzJJ3s0bnnkZRsFJ4uQsVsIIQ1yeQR1s4UpF78aD8P3a0F0evb
 F4ms4GF37ytGRRKusJsrd8fSj9JyPNhVqcE+RWKlMHKIJwOiAwj92eTpmg4QJoK61mNL
 1KDwxSzJxdFyZ6KmC/L2mtNADPksCXpVWWEqgslfXut4vC7OpK5AeywY7Dpt4OLifc/e
 hahQ==
X-Gm-Message-State: APjAAAVHcxcXghuECBB2kjK3fuk//RX18+Hgy5OglxO4kAizUXXe7UlR
 zdXrrJRT/7yXQ66FWlhxm0UZPb5KrOjPpvCK247e9EX1z+tepN272/NLRUJnWjwG/A==
X-Google-Smtp-Source: APXvYqzb6i/nWjKAu/KO4mBrisL/MdHJGj4y0qG/3D9y2t2wyx3UGDvmLRGBFFnc1k+fdymjFDZ5Qpgtwd07
X-Received: by 2002:a5d:4b8b:: with SMTP id b11mr10687281wrt.294.1565955078227; 
 Fri, 16 Aug 2019 04:31:18 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id a9sm81449wrn.40.2019.08.16.04.31.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 04:31:18 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hyaRx-0002ZW-VA; Fri, 16 Aug 2019 11:31:18 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 183DA27430D6; Fri, 16 Aug 2019 12:31:17 +0100 (BST)
Date: Fri, 16 Aug 2019 12:31:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 2/2] arm64: Don't use KPTI where we have E0PD
Message-ID: <20190816113116.GA4039@sirena.co.uk>
References: <20190814183103.33707-1-broonie@kernel.org>
 <20190814183103.33707-3-broonie@kernel.org>
 <20190815163541.yngqvjmehpuf74ye@willie-the-truck>
 <20190815180030.GF4841@sirena.co.uk>
MIME-Version: 1.0
In-Reply-To: <20190815180030.GF4841@sirena.co.uk>
X-Cookie: My life is a patio of fun!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_043119_699371_4BA1B054 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.100 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: multipart/mixed; boundary="===============6406249924767771613=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6406249924767771613==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0OAP2g/MAC+5xKAE"
Content-Disposition: inline


--0OAP2g/MAC+5xKAE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 15, 2019 at 07:00:30PM +0100, Mark Brown wrote:
> On Thu, Aug 15, 2019 at 05:35:42PM +0100, Will Deacon wrote:

> > Thinking about this further, I think we can simply move all of the
> > 'kaslr_offset() > 0' checks used by the kpti code (i.e. in
> > arm64_kernel_unmapped_at_el0(), kpti_install_ng_mappings() and
> > unmap_kernel_at_el0()) into a helper function which does the check for
> > E0PD as well. Perhaps 'kaslr_requires_kpti()' ?

> > I think that should simplify your patch as well. What do you think?

> Dunno about simplifying the patch particularly, looks very similar but
> in any case it does appear to solve the problem - thanks.

Actually no, it's not quite that simple.  They're not all looking for
quite the same thing even if they're all currently doing the same check.
For example kpti_install_ng_mappings() should run on all CPUs unless
none of them have installed global mappings and in particular currently
needs to run on the boot CPU but that's not what we want in for example
unmap_kernel_at_el0().  I'll poke at it some more.

--0OAP2g/MAC+5xKAE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1WlAEACgkQJNaLcl1U
h9A1zgf/UnD4Mxk3wNKTSicq3BCJk/+L2oQpoefjI+eZ16yd1E86dxadkDEeJf+M
CWtMS27bT1wo2ZoSJGMzMX7xP0pQkAN5rMi59hiGNLNpXVoB3M6SA7q1SOSH0180
6OQSCe5zc2GVwFTYda1sirVNctRgs5tBaaA81j28dNPV6/yt0QJdC7txnQMsJPte
4lgpthC4l0bC8sIBAUNZuEEKJ8t6cfGXpouRnqJXB1W9BCdnKXRNZ8nraF3yckRp
6nsDEgVQHw+6j1qPH2QpvgpptCfWzzlb5SIUgDziQpThQNo8OYMTaAfQVdmKKf6N
thmOK0AYEKWpAxL8BDThBvzUzfO8Vw==
=OzZv
-----END PGP SIGNATURE-----

--0OAP2g/MAC+5xKAE--


--===============6406249924767771613==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6406249924767771613==--

