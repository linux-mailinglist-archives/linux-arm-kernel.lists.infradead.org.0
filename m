Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B809012D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 14:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m9CPhou0ct8EVBpTQt2mw0UPE5kBDGANI77G7f3BDxs=; b=dz5VvqDobhtC+RplX69bl9yPz
	0y/TjI4npl3nR3YL7rVJIEHu7chuI3Idx/bFgpdGvaw0GyXM9NCjb3Jhjw78heLz8n5hEVxXtFtR9
	nlO6Keu/DaT2McR7zoEq3Fz+dCuwY/17KsP894L1Ak3julz6OM6MIYV4oMDb/yROGwvCCAjYEjF3F
	0IzuytUKZ91P18hZkxRyC5F/9PUlCHYb/7T/hEf6m3Z1yUHORyjgYeh0OH+wLh/n93K9vR4hWiK6E
	4unDpNbnU82jMR09auUD6xmO8KuL3nqrdVrh0u3Ful//Pm3gFVTSIeM7GBGtsN1doxZI8oRSzPLsL
	7uTNpM/Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyb9y-0001zt-0u; Fri, 16 Aug 2019 12:16:46 +0000
Received: from mail-wr1-f97.google.com ([209.85.221.97])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyb9f-0001xg-SZ
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 12:16:29 +0000
Received: by mail-wr1-f97.google.com with SMTP id p17so1338557wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 05:16:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dn2KIuS3Wg8ZAV1Rn4EmhRNXAghPOAWFXahs2NO+P7I=;
 b=mypLM958OjRgXPIerLq+yngD+vGGukKrFyqakxTvmc6/hTFA0UDM4eAyHfD3R4/VQ+
 DC5PNxC9fWgm4cok9PFrnUIQIZuxg0L8VSG2mPyEhTj05x8HxaPt58Wf6VWHXe7QgyAh
 JjK/xjJeeRpaGXMOV//+12DdjCog+fLdpsIjkDG4b/sSbRKxoasex7LoOaMhHLIf/eSG
 8lfSBYD1zBNNSabAHLxHYKTouVIUCZDjPN+jxnQXnq1RlPYDOdq/bxGSr/jdSoolZug/
 fC23cJ/ETEXULCuIoAe6DFt8DgaTAjqM6ojIhD8iJJ9LMSYjSLefN7QnzMOhnkucooPe
 ZJFA==
X-Gm-Message-State: APjAAAXv8SulqE2lUQ55otmhB9DOvj1xqzxZxuVUrEzm0OdslsKObXvT
 lNEMRQHV+hxvl6cvnwlfbJhdKKzXN1EEZIdZbVAe6nHURMn5vBTPLx2sUE6KRGd5vg==
X-Google-Smtp-Source: APXvYqxzvi1VoIOoRXJFajCnQ/dE3fzFo5N+5Qat7cLvuByHbL41fsf69MyjqXOpnK7z54RKl4/zDq8J3tpC
X-Received: by 2002:adf:f287:: with SMTP id k7mr10732366wro.183.1565957786460; 
 Fri, 16 Aug 2019 05:16:26 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id k67sm34897wma.53.2019.08.16.05.16.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 05:16:26 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hyb9d-0003MM-Ul; Fri, 16 Aug 2019 12:16:26 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 2556927430D6; Fri, 16 Aug 2019 13:16:25 +0100 (BST)
Date: Fri, 16 Aug 2019 13:16:25 +0100
From: Mark Brown <broonie@kernel.org>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Subject: Re: [PATCH] ASoC: imx-audmux: Add driver suspend and resume to
 support MEGA Fast
Message-ID: <20190816121625.GC4039@sirena.co.uk>
References: <1565931794-7218-1-git-send-email-shengjiu.wang@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1565931794-7218-1-git-send-email-shengjiu.wang@nxp.com>
X-Cookie: My life is a patio of fun!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_051628_027933_7ABA5B19 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.97 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org,
 linuxppc-dev@lists.ozlabs.org, timur@kernel.org, Xiubo.Lee@gmail.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, tiwai@suse.com,
 lgirdwood@gmail.com, perex@perex.cz, nicoleotsuka@gmail.com, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0190366672357400263=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0190366672357400263==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Bu8it7iiRSEf40bY"
Content-Disposition: inline


--Bu8it7iiRSEf40bY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 16, 2019 at 01:03:14AM -0400, Shengjiu Wang wrote:

> +	for (i = 0; i < reg_max; i++)
> +		regcache[i] = readl(audmux_base + i * 4);

If only there were some framework which provided a register cache!  :P

--Bu8it7iiRSEf40bY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1WnpgACgkQJNaLcl1U
h9AuxQf/SUokJSA9quJeah9hsT6jJhQKPr9uQwbuhnIcx6+bhKouXbtrmPWZsHF8
zLUHwY1cvcQm2qitQxsYCZm1a65PWSIAX9P4s+GUfNVz9p2dL0q3TYDH8mDJBjWv
CK1KDEfko6PsY4AHrSa13aNy7IImcOn2J5+/CUOonmPlKPS7CezGbfACaQMG5Zdf
Ln4T/JnCQ6IZzFeJMwzD/RzXiwXOLc7SZ5mIADxbP+4rL9ByOG1BJy/rXIV9YbJe
IQqO5Zu7uen0NjPDOQP/Uy8RF4HItglOTrO8Cjr/95gQ4QJKxLzQyq5NzEGJu1h8
BgQWgH1vDAKWp04BZb2jzQtLMtmwiA==
=hQwi
-----END PGP SIGNATURE-----

--Bu8it7iiRSEf40bY--


--===============0190366672357400263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0190366672357400263==--

