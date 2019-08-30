Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 290A7A3747
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 14:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VpwwA30w0b16xIDw1NOdSFoFnk9h97yWvTrAc3TKl9E=; b=IgJ3QB49GTZFo6PmSaiAsS+ye
	fxzEbmwAYykTNLs3b9nGHlggIBVR6nU8qwJWj7EjGu5Bb5c3Ov1uVU79xZ1623qFw7mXZSeBv6uci
	LRvCtf2k8P/rE6neB9iBAnN1ERaUWXmYIGeIWoHwMLZ8v6a3GH6sbaOXeJeicvUFna9n9VBkJ91ms
	7ikAe8rmQYbc82JAJXUhwHAcqmEfL1tS6P9f5i3f0gp+tpLrE0FN0z/kFi/kgSKPnNhJyvHEKbVWZ
	llEQecR+2zl2up6jq6hEcvySX/FSyTlPeGGv04hvwqPOoypWImt9oZ5LXXi5eSpvPr+pjqV2mdDG1
	z4UftEy1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3gSM-0006c9-3J; Fri, 30 Aug 2019 12:56:46 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3gS4-0006bc-Lx
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 12:56:30 +0000
Received: from localhost (p54B335BE.dip0.t-ipconnect.de [84.179.53.190])
 by pokefinder.org (Postfix) with ESMTPSA id 922732C0095;
 Fri, 30 Aug 2019 14:56:26 +0200 (CEST)
Date: Fri, 30 Aug 2019 14:56:26 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Subject: Re: [PATCH v1 1/1] i2c: iproc: Add i2c repeated start capability
Message-ID: <20190830125626.GC2870@ninjato>
References: <1565150941-27297-1-git-send-email-rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <1565150941-27297-1-git-send-email-rayagonda.kokatanur@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_055628_864846_22878A10 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lori Hikichi <lori.hikichi@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Shivaraj Shetty <sshetty1@broadcom.com>, linux-kernel@vger.kernel.org,
 Icarus Chau <icarus.chau@broadcom.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-i2c@vger.kernel.org,
 Ray Jui <ray.jui@broadcom.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7346347380772263585=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7346347380772263585==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qjNfmADvan18RZcF"
Content-Disposition: inline


--qjNfmADvan18RZcF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi everyone,

> +/*
> + * If 'process_call' is true, then this is a multi-msg transfer that requires
> + * a repeated start between the messages.
> + * More specifically, it must be a write (reg) followed by a read (data).
> + * The i2c quirks are set to enforce this rule.
> + */

With all the limitations in place, I wonder if it might be easier to
implement an smbus_xfer callback instead? What is left that makes this
controller more than SMBus and real I2C?

> +	/* Process the read message if this is process call */

Also, the term "process call" here seriously sounds like SMBus.

> +		addr = msg->addr << 1 | 1;

addr = i2c_8bit_addr_from_msg(msg);

> +		u32 protocol;

Hmm, another SMBus terminology.


> +	if (num > 2) {
> +		dev_err(iproc_i2c->device,
> +			"Only support up to 2 messages. Current msg count %d\n",
> +			num);
> +		return -EOPNOTSUPP;
> +	}

With your quirks flags set, the core checks it for you.

Kind regards,

   Wolfram


--qjNfmADvan18RZcF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1pHPkACgkQFA3kzBSg
Kba6Ww/+MiQX21OGgbWmV1RzOJTJcm22OqliAmcBgIMJnQ3TB9Uoo0xpA4XkwD1z
tHnXk1VKf4NsN7NLnoGRG8hYHwZLIElSTQz89eP/PMCmNnj5pu0ebgfP9X+NvC84
vbFUN3fhmdhMlzvWlS/ixiEbvFud28JxJE9YAOpSDv+3sTMDM/EB2rTLk+tF1Hrn
+L3B0D2C99gN/fm9kakCYow3FBCXEIwv2CSok5YQ2OXPdteG/rSNnm+3q6gSnleg
xEgzP6MNSkCJXUaGVt4VSNZ8uek8GQSwy+ZnPr8M07bpmhEfYARJYirQCMatbBoj
0Ga9/TZn/tFfArKiJMbVMVMJNzo479UQR+NXLpdcTSTScTckAyeNiFECAHXLAw76
ZMx8q2SAiO2GR9u8xJl7OQoPZoyc+4nHoLxtQVLW1xf+Kfl0irzNBZGQ41dk1gVL
veiFQy3+By3BqwzA4BaOIU2gsXMYORQ1yIczK4vQOTzq6tShAzj3gjVbrl0ijfc/
2EtqHB2b8b9X44xd1FppKiHfzcVc8RpNLUziBdJxlWKfC0SAVqM47IcSe/2beynS
4BUh9UbHhuIjJ+cS0fLUuaCHukk5p22G+g/DqmbctT7kP5GaZ0vQ07dWFyxzNb9/
4e04NH5ZecIvlp2xlAuJBOn1DFIIBCHbDCPNhj59U5YhY6Mj6NQ=
=1TD/
-----END PGP SIGNATURE-----

--qjNfmADvan18RZcF--


--===============7346347380772263585==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7346347380772263585==--

