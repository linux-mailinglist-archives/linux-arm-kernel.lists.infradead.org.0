Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B201DADC1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E143cN1WRLY6pGX9tHFWbKEy5z73jP2eASgY0CfbTC4=; b=b5EqkNtQnd1SSa4UMQxaRhKjs
	Amrfhev8BbrfRbMvrtZZnNONak4H3Dt+NRR2BYTMAVhvbDOzl6JXGlW/mMPOlDE4OWe8Akbtv/R0b
	yQpG+Y02hlQBqAeGfT6yF2TMHMj8eCfTSs6CqWX+E94B7Uhg86Pm/vsEfRw882sZnaiqSO0lbim2H
	AM/dLIYWASwi1du9GDrdTWA1ftiaICoR6mWZ9RiY9lmVZ8OKrXO6hQ8B+14HxC8+NKj7Ur8S6I1xM
	uQb9nsddblntP2hMjssOlYNQpKlGNSLpxk+1wSjQrJ1IHNw6eZxRmyD6HLWR9EGdjgJJHRPiiSB4k
	t9GmEzsAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbKHP-00045S-P1; Wed, 20 May 2020 08:40:47 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKHH-00044h-3v
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 08:40:40 +0000
Received: by mail-ed1-x541.google.com with SMTP id e10so2138015edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 01:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mb7QfRxby7AgnFGtGNkrt8n1Z+I09eWHoPbIYOvFSUE=;
 b=HN5WshoEENtUHC//XetSGUywgC89HQlw72WmFsFajL0zjP4iecy9anYCQDmaPm9hix
 KPOSOkCNCc/L0NW4e3jomLfGoetbPVX82wmYqhfZakf5R3eZS4RSh6M7B9yide9u2vif
 M2/wFct8hwORZ13KWjh/VOKY/BA8qMkKshiqJuETntg2YBxnxnb6kZxS3d50UPg+kRBh
 lRypteSzxfVmFELrbz0slgBzdOVEjsZAO6nKJ3eebyNbxmDaNxXk6qkGkB4f2vLUWDjw
 WhF7ATHumIOcOsWLZVaYmCpAu07w43byyjaC7cW20t/B/2VBMV37wNGI9n4pDCg1kKei
 yVKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mb7QfRxby7AgnFGtGNkrt8n1Z+I09eWHoPbIYOvFSUE=;
 b=uLh1zrJUlMoamTKyWdAmpr8hZ+ZzqaQhl7K9u4up5ZV9CytGeZ4n/CricMqIq2qmXu
 EKGsNr8+lacs+r7pD2qTvx/O9E6zjEZxZc7qD3tGtPDFONrE7N9zbcAcUFuVHpoDk5vy
 n0zjZpTj3A1+bGuDeSzEGvfwaMBLBasEVmCJLwCBtFaHX4/yq388iADutBEl7hRwaNi8
 SjmJ4ubZfex6UCBgipjx115vd4vulLqj2MoJzd4rbfH2gQRhn8ugERMB1S4M0mTin0Jw
 4ZvQ9MZemDCv6TSpI0hqMC+Xzsw5A32RMOtYqK0tpg0//+XrrKRA2yv6B0ilkJJk221K
 EnxQ==
X-Gm-Message-State: AOAM531mm7cdm37BNW3kGMbrwUIbxrBBxHLjOheg4DVIQLscF9tYi/+A
 1ZoKkjUQVjZAXTb54HxIGEY=
X-Google-Smtp-Source: ABdhPJzG8f0TXlz0Nk/rGokoWRdNIDyW+F+nvg3m8ouKjflMeFxwi9VxHDp+21mYUW9jqy10ZbmoTg==
X-Received: by 2002:a50:d0d7:: with SMTP id g23mr2455355edf.163.1589964037188; 
 Wed, 20 May 2020 01:40:37 -0700 (PDT)
Received: from localhost (pd9e51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id dh15sm1196510edb.35.2020.05.20.01.40.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 01:40:33 -0700 (PDT)
Date: Wed, 20 May 2020 10:40:32 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Mian Yousaf Kaukab <ykaukab@suse.de>
Subject: Re: [PATCH 2/4] dt-bindings: sram: add documentation for
 reserved-only flag
Message-ID: <20200520084032.GA2136208@ulmo>
References: <20200512144803.24344-1-ykaukab@suse.de>
 <20200512144803.24344-2-ykaukab@suse.de>
 <52f099e4-5c03-2141-f049-cd3adeb04c5b@wwwdotorg.org>
 <20200513104127.GA2309@suse.de>
MIME-Version: 1.0
In-Reply-To: <20200513104127.GA2309@suse.de>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_014039_156127_6CBEF5EB 
X-CRM114-Status: GOOD (  23.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, arnd@arndb.de,
 Stephen Warren <swarren@wwwdotorg.org>, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com, talho@nvidia.com,
 robh+dt@kernel.org, linux-tegra@vger.kernel.org, robin.murphy@arm.com,
 afaerber@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4166868458441880173=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4166868458441880173==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline


--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 13, 2020 at 12:41:27PM +0200, Mian Yousaf Kaukab wrote:
> On Tue, May 12, 2020 at 01:45:28PM -0600, Stephen Warren wrote:
> > On 5/12/20 8:48 AM, Mian Yousaf Kaukab wrote:
> > > Add documentation for the new optional flag added for SRAM driver.
> >=20
> > > diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Docum=
entation/devicetree/bindings/sram/sram.yaml
> >=20
> > > +  reserved-only:
> > > +    description:
> > > +      The flag indicating, that only SRAM reserved regions have to b=
e remapped.
> > > +      remapping type is selected depending upon no-memory-wc as usua=
l.
> > > +    type: boolean
> >=20
> > This feels a bit like a SW flag rather than a HW description, so I'm not
> > sure it's appropriate to put it into DT.
>=20
> Reserved regions themselves are software descriptions, no? Then we have '=
pool'
> flag which is again a software flag and so on. This flag falls into same
> category and nothing out of ordinary.
> >=20
> > Are there any cases where the SW should map all of the SRAM, i.e. where
> > we wouldn't expect to set reserved-only? [...]
>=20
> Yes, here are a few examples:
> arch/arm/boot/dts/aspeed-g*.dtsi

Looking at the implementation of the sole user of this, which is in
drivers/fsi/fsi-master-ast-cf.c, it looks like this really should've
specified a partition because the driver basically goes on to allocate
a fixed 4 KiB region of memory anyway.

> arch/arm/boot/dts/at91*.dtsi

While these define SRAM nodes, I don't see them referenced anywhere.

> arch/arm/boot/dts/bcm7445.dtsi
> Then arch/arm/boot/dts/dra7.dtsi is an example where we should map everyt=
hing
> except the reserved region.

The driver currently maps everything, so if this relies on this
particular reserved region not being mapped then that's already broken
anyway.

> > [...] I'd expect reserved-only to be
> > the default, and perhaps only, mode of operation for the SRAM driver.
>=20
> It will break compatibility with existing dtbs.

Yes, that's a bit unfortunate. I think this driver may suffer from a
slightly ambiguous device tree binding and then people just trying to
fit it to their use-cases.

However, I think we could preserve DTB backwards-compatibility while at
the same time correcting course and establish some sort of consistency.

Looking at the examples that you've provided and others, there are two
classes of users: users that don't specify any partitions either use all
of the available SRAM exclusively or manually allocate some part of it,
whereas users that have specified partitions all seem to use only the
defined partitions.

Given that, I think what we could do is check if there are any child
nodes and if not, keep the existing behaviour of mapping the whole SRAM
area. For cases where child nodes exist we could decide to go with the
default that Stephen suggested and only map regions for which a child
node has been defined.

This should allow both categories of users to work the way that they
were probably expected to work.

Any thoughts?

Thierry

--EVF5PPMfhYS0aIcm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl7E7PsACgkQ3SOs138+
s6HYyxAAkPk+vwNmlH7ETZWk+tDpu9p1jU53hBHo7thEwHCr+xFIaNlJFGmXWpOO
62hcSRW2fLx8upTQ5D9z+/lB5q9G6Uu1vSWl3fLqDx7EkUBTo5V9llrbjUUmDNXJ
rkMC3yYYfSPeXcQhkh+INMS3njREgduS3mJff6MbG6P6KTYd/sM67J5QxAX1CD0u
rYH1mTanQW0CVRwY99yl1vIcYHL+PFNTDkQLt8zG2tvqTWYlHCbkNhHG2cQLFpoI
wAwxgmnsD3ebq3/5UEH/1ba0x9XaRwMtzj/hNnG1EhqlQlpywfbOofy/xTz4LCgv
Z1bBt6w2wvtAW665KtBUHPFVVqLdTmEiyAMyDfTcHeDUPuv6KjXTqZcFjTQ6cK/E
MT0vPgePDZZ1CGqWa4vb6vWpkEvkAiXz5Bj3tZLHVyuKKtzLSjaneURKx8xYe6IH
vrzQamDlLlooFHHM8vOLTKU0nA3vXgRN9bQZrrn4fZBMa+vUyM69xHuQ+/4l4VJg
Aa0U0edhlzaX3067VcWJhZc+1VZ4OSLpH/JKEQfl3dPPM04e+yXtYelwpqaUWPwh
tZ+vY6oS6MefZiXFvsskxbbHwhO71Sq7SCWdNrKE2qw5zFMx9LWskGFXGJehUIoT
l54CPDD33NfU2N3T0j0Y6Pr5kPjKnaZq8NJQxMYBr3oZJZ/ix7s=
=r/Os
-----END PGP SIGNATURE-----

--EVF5PPMfhYS0aIcm--


--===============4166868458441880173==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4166868458441880173==--

