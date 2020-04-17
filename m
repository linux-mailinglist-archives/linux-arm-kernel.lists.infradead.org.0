Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2363B1ADED4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 15:57:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rx9PltBX9Z2LZ0/dy1PFT2LA+dggsFGHAr9+ESCiKkk=; b=PzHFNntKMId8YgeN3Etx5pImu
	uFk1P38k8sVS/M7tAUxqm/ub/HP2+F/xNHEZXn8N17YNQ34KaZn61lsIVOlS4EQsEVl9UHrFXfz7Q
	XtelMebrJXFqhwiYH9BEyhQhYFi7EkQTxNblAh2u4lExrhh+ic704cE/dgScAOgIivl+BAlPFcAKP
	Lgv68PYvoaL65M0fNbfYyAH3y9CfROqAFMe9YAt6YDmCY7MXOU5owTGVJnla8uPyZjdsyZPbYL8UA
	bQb9YXeJ/qfMgJebSVmmlmIJ4nIbyz+A13SyP4KNnTBmun03NF9F3QYpY19W0KVyOyV3WekDKWh+F
	Gwwgsdkrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPRUX-0001gK-CC; Fri, 17 Apr 2020 13:57:13 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPRUR-0001ft-6b
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 13:57:08 +0000
Received: by mail-qv1-xf44.google.com with SMTP id y19so895999qvv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 06:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oqcTP4i+a7YGi21w2c2gncPHzEaLd+RyksgvDG1LlGQ=;
 b=nkL7/2UwuToC9Qt2i6kcBIZYANeglyiEJgWOvtfpq4CAtzTk8zAzGzjSbhyG5yIke6
 KxE5LoodWN5XEKHKMjhMDp86xkGpMNypr4Bzx3u2ATA4iJ7Jb8YJldfTGpt9Y+Ci07Bo
 M4SlUWnmNlNBz/3Nk5rRLPh3a3tskzCNw9gefdLV32J4FVJed4gkMGBhfLouR+KAcqwv
 Hjz77TBwDuzNqzR8TRVMb2zH9Gjj8p0o7KhDbdXJvo0wkW/jnEfv7yRyCFsxNmiTMv8P
 kpX1+99eQeajo6XQsWCYZPqVXdsDpBF2GssNE1UxgK11+hpfsijVHnij9ARtEpzjQDr4
 rrTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oqcTP4i+a7YGi21w2c2gncPHzEaLd+RyksgvDG1LlGQ=;
 b=EFXsCT521Jkpe1jWqrGaFDjo6KpRFU2qxzVMD2by5LRAAZh0ZU2z9zD+h7eUAUbxuI
 DEM6rfgIn/FHQaXvq700o8YcPXxZ3izsrHUicP8y6mspr9/HUEoCqo0Zm7WGDCwFdhaa
 AjvX6dYig8GTT6XlUYqxyX6zGcnT7GreXiDW+/v06S+OSoscuAtGT2RIS7LNrObhL5Z3
 zih8k6VW2haq+ONWEqqqo8xxnl0/Pdqgb4ubkv4Bu38MAz/oTltkA2jX7jHs7AnsdyjD
 CDJN5cs47RJOWHR3IVmOVITLG8mNUIv5zOo4fVdbKl2aSTxRaMectOlb1vdOutqy/taH
 zYbg==
X-Gm-Message-State: AGi0Pua8zUn5j6h4KLWQUbarIsuneg1SCV7gB1JFZq4ydGkReFFa87Uk
 vDcXmBW3yRzAO3fR5bkHhq8=
X-Google-Smtp-Source: APiQypJ8JrKJ3vHc/mky7+x34T8yXzxIAA4sFNSJhjCHLPgr3v5dwnzrf21iZm9GgH2AV8+9/WiOoQ==
X-Received: by 2002:ad4:4744:: with SMTP id c4mr2857740qvx.203.1587131825006; 
 Fri, 17 Apr 2020 06:57:05 -0700 (PDT)
Received: from icarus (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id s18sm6143621qkg.53.2020.04.17.06.57.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 06:57:03 -0700 (PDT)
Date: Fri, 17 Apr 2020 09:56:35 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>, jic23@kernel.org
Subject: Re: [PATCH v3 1/3] ARM: at91: add atmel tcb capabilities
Message-ID: <20200417135635.GA94725@icarus>
References: <20200415130455.2222019-1-kamel.bouhara@bootlin.com>
 <20200415130455.2222019-2-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20200415130455.2222019-2-kamel.bouhara@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_065707_243928_A7B5B951 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4256928876770913859=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4256928876770913859==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline


--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 15, 2020 at 03:04:53PM +0200, Kamel Bouhara wrote:
> Some atmel socs have extra tcb capabilities that allow using a generic
> clock source or enabling a quadrature decoder.
>=20
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>

Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>

> ---
> Changes from v3:
>  - Added missing kernel doc for new elements introduced in structure
>    atmel_tcb_config.
>=20
> Changes from v2:
>  - Fixed first patch not applying on mainline
>=20
>  include/soc/at91/atmel_tcb.h | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/include/soc/at91/atmel_tcb.h b/include/soc/at91/atmel_tcb.h
> index c3c7200ce151..1d7071dc0bca 100644
> --- a/include/soc/at91/atmel_tcb.h
> +++ b/include/soc/at91/atmel_tcb.h
> @@ -36,9 +36,14 @@ struct clk;
>  /**
>   * struct atmel_tcb_config - SoC data for a Timer/Counter Block
>   * @counter_width: size in bits of a timer counter register
> + * @has_gclk: boolean indicating if a timer counter has a generic clock
> + * @has_qdec: boolean indicating if a timer counter has a quadrature
> + * decoder.
>   */
>  struct atmel_tcb_config {
>  	size_t	counter_width;
> +	bool    has_gclk;
> +	bool    has_qdec;
>  };
> =20
>  /**
> --=20
> 2.25.0
>=20

--Q68bSM7Ycu6FN28Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl6ZtX0ACgkQhvpINdm7
VJJsmg//ZzvO1iZZuwiC/V4qTReyr1hNkDABRiGVHOtaLLWCoDyPqxgZ+03mUfjz
nOHOaS4wHv52thU/N9zcgqT9gLTpStioyU7TTVdQONnINc1N9ObHfwX3+OYbtsAF
8ebes1Drz/cx13tJo/UR8IkyExUn9x18447s1cfUrzYVfTYLZUrbD6IweqL0NKgd
vNpOFWF0hNPy65DKp7qtmbURpAJjUOCTXPjJQcGdwcBtkYIDyFDcc1vO4f5QrM3d
uk7OWGdaLgyqp0rUkvXEWZT11CRP4OvuK0BLYrNgucE1hkU5vtzcA8pa1JJlCBer
fkbrLDUvazavSf1buTJZoxZbAfRtmTnBS1U5np/THmggu3kbNl0LDrSYcrjFJEr5
JmT5GCKyZy3C8vLHBKPOMkQ6MnQXRtpB+NtNCne4/6SFJRBC0LC73cwma04/hSm0
DTrxc+nVoDfrxXQEvlQ+neAoADJJx4gGh0BLdj09dO8jJHV9g2tm9/NUDur0U9wm
aJRxAB8WrXHup1lVaXC1pqd5sLNoeChLjL5SKOjUPqEnxfXlbZnFVSlhDo63aziN
YyJFpOxEh99s0HxfMMlibjGbUV1tL76Cb+wNAO1+DbjCgtFqbEzIwpKnriMEdy6q
E9bnkPrkRz/OexR1od28QEROZo5Uvl9PuhMyPcL8k83RzMW5/2Y=
=G8zt
-----END PGP SIGNATURE-----

--Q68bSM7Ycu6FN28Q--


--===============4256928876770913859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4256928876770913859==--

