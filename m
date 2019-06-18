Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD8C49C51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 10:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9NpZzksz4iyj4pYTgRsfoYKt+Bnie0PnH9snVZERlGg=; b=hdWXWXHItuViGG38KhA/0ei/u
	VMk/gAaqw/o71BczRm83zZVMOZ/1edbROs9XMoru/jWPhhoIKjfdySAbIduq0D9wP6BnL8/iWKU+t
	x+TkH34EVdh0Aj7Jwq21M+60I3z1lxP2bM0HT01dA3tKWvSa70Vnt+cWxvqmmxJhpmZAuUaR04Lj9
	5zBZWZN8NLn6UEXXm68e6kkQzoyf1fFibCfkZPvA5jgNmCb1vQSk1usdkDtSW3KyfMid+8cBVeVCK
	lYC7M1pjgM6nAbwsdy5YrQY/LehQf9z4lXOGlI+s8wtn/w7mhV9cuABRfZwIdg4oEG7GFW4DqiKej
	5KHCgXgMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd9kO-00028l-UT; Tue, 18 Jun 2019 08:45:44 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd9kG-00028S-4Z
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 08:45:37 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 01:45:35 -0700
X-ExtLoop1: 1
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by orsmga008.jf.intel.com with ESMTP; 18 Jun 2019 01:45:33 -0700
From: Felipe Balbi <balbi@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] usb: gadget: udc: lpc32xx: allocate descriptor with
 GFP_ATOMIC
In-Reply-To: <20190618074633.GC23549@piout.net>
References: <20190510124248.2430-1-alexandre.belloni@bootlin.com>
 <87zhmffiui.fsf@linux.intel.com> <20190618074633.GC23549@piout.net>
Date: Tue, 18 Jun 2019 11:45:29 +0300
Message-ID: <87tvcnffiu.fsf@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_014536_196556_F34B73DA 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 James Grant <james.grant@jci.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2262504069123460245=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2262504069123460245==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Alexandre Belloni <alexandre.belloni@bootlin.com> writes:
> Hi,
>
> On 18/06/2019 10:33:41+0300, Felipe Balbi wrote:
>> Alexandre Belloni <alexandre.belloni@bootlin.com> writes:
>>=20
>> > Gadget drivers may queue request in interrupt context. This would lead=
 to
>> > a descriptor allocation in that context. In that case we would hit
>> > BUG_ON(in_interrupt()) in __get_vm_area_node.
>> >
>> > Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>> > ---
>> >  drivers/usb/gadget/udc/lpc32xx_udc.c | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget=
/udc/lpc32xx_udc.c
>> > index d8f1c60793ed..b706d9c85a35 100644
>> > --- a/drivers/usb/gadget/udc/lpc32xx_udc.c
>> > +++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
>> > @@ -938,7 +938,7 @@ static struct lpc32xx_usbd_dd_gad *udc_dd_alloc(st=
ruct lpc32xx_udc *udc)
>> >  	struct lpc32xx_usbd_dd_gad	*dd;
>> >=20=20
>> >  	dd =3D (struct lpc32xx_usbd_dd_gad *) dma_pool_alloc(
>> > -			udc->dd_cache, (GFP_KERNEL | GFP_DMA), &dma);
>> > +			udc->dd_cache, (GFP_ATOMIC | GFP_DMA), &dma);
>>=20
>> doesn't apply:
>>=20
>> checking file drivers/usb/gadget/udc/lpc32xx_udc.c
>> Hunk #1 FAILED at 938.
>>=20
>
> You already applied it for v5.2-rc5

d'oh!

Guess I haven't looked at my inbox in a while :-p

thanks

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl0IpKkACgkQzL64meEa
mQYO4RAAitET6cBuDxzFobV4YHrYjjF73rGS7yNKbAtd+M+GXQ8pNAoxCtlGal7l
q4b49b11QVDgEKuXse4fKPkywviIDJdjkpzt0nO4/MLiMj3+3KRHlgazy5fMdJa2
Z9qkf8mSXR6VA2jrSbQRDwl1TcVZYj8cGivfsXGoX4PkNyplprXnphPpnaMEIfwq
97SEYUb7XnoUeMLcvxqGdCJRsuC5qaTuwmfjVeO4g7MHw2t6qc+ApAmLw4D2MfHj
td6eDfgyzhFDfm+qVQ74G/wYAVghNx5x7+MpUhDKCUX/VmcpWE9jodOQCzBTJEgM
BINzvBgdN/X/lu9S6aKkmEboRERbMUyub6JB5kZIWJF6wM8RfOA9izTb20eNkB+4
2koU6Pjl3C044HM0WR/MFK+TlMSOm+bGdXASCgMt2VwqsSqP3KPhLDwnKMVRyJyA
8y5xM3H/Tn5rxHqWIWzwX/hTo2bA+WyL5SM21K+BEXaJE4gbCiR8oUJG8ZHkbgi9
b/Ptky/Ss37Jbsjq5Sn2srSmDV3SGH4YNGoiZIfxrGgyRY4UqJgmgs1Y0KnJP0YA
BixOhFb1Vnub7jkhgNtQ7iilO2gpY6hptmrdbV/LRQqkSfKgzh9dtFp2IecZ34Zf
oL3TsbxVuhm/Wmf3sujdRsScVH0CjjKwpl2iV4Hr3k4mXTqGjNU=
=KroP
-----END PGP SIGNATURE-----
--=-=-=--


--===============2262504069123460245==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2262504069123460245==--

