Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE88A950A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 23:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nnxNSeqGWULWbfHe6bgcTQSoJtes/F1CqC8nyPqxHdo=; b=RoolpzvfGpfYAD6dX6zAjI6AD
	g3EoIyOo+4+YK2nKul+xWdf9c3qYu2aftW9AJHA5yKKknU0ZGa0KtlYpRfjOnrdGBMlzmIPEY5XSC
	udZ0uQYf+trqkiMR06mREChCDWWeoT5Ys8LcjFqme9ffTB1M3qPgQlPTAgfhSAeTk75RD/h8d6fKs
	tMlMlGk7MMKTa7INNV2iDWJy6gh8XRDZTTQi89Y7R+vd3xXf7rTE39Ct6ysq/rvTkoI+RKJOB0kzu
	E3tRMgvDb++KbLFRFvba0KNSQKaQrbB13VAPJ9oC+2GPp5YdSDTnAbbqLwmzDNiqpDBrurBQ9V1dP
	PvgHE6Ukg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ckl-0001So-Mh; Wed, 04 Sep 2019 21:23:47 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ckd-0001S1-15
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 21:23:40 +0000
Received: from localhost (p54B337F1.dip0.t-ipconnect.de [84.179.55.241])
 by pokefinder.org (Postfix) with ESMTPSA id 285352C08C3;
 Wed,  4 Sep 2019 23:23:38 +0200 (CEST)
Date: Wed, 4 Sep 2019 23:23:37 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 1/2] i2c: qcom-geni: Provide an option to select FIFO
 processing
Message-ID: <20190904212337.GF23608@ninjato>
References: <20190904113613.14997-1-lee.jones@linaro.org>
 <20190904203548.GC580@tuxbook-pro>
MIME-Version: 1.0
In-Reply-To: <20190904203548.GC580@tuxbook-pro>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_142339_373747_58EB9F0D 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, agross@kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0526332366453132154=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0526332366453132154==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kbCYTQG2MZjuOjyn"
Content-Disposition: inline


--kbCYTQG2MZjuOjyn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 04, 2019 at 01:35:48PM -0700, Bjorn Andersson wrote:
> On Wed 04 Sep 04:36 PDT 2019, Lee Jones wrote:
>=20
> The subject implies that we select FIFO mode instead of DMA, but that's
> not really true, because with DMA enabled we still fall back to FIFO for
> messages below 32 bytes.=20
>=20
> So what this does it to disable DMA, which neither the subject or the DT
> property describes.
>=20
> Also missing is a description of why this is needed.

Yes.

I am willing to help to get this resolved soonish. However, I have
issues with the approach.

It looks like a workaround to me. It would be interesting to hear which
I2C client breaks with DMA and if it's driver can't be fixed somehow
instead. But even if we agree on a workaround short term, adding a
binding for this workaround seems like a no-go to me. We have to live
with this binding forever. Sidenote: I could think of a generic
'disable-dma' which could be reused everywhere but we probably won't get
that upstream that late in the cycle.

Is there no other way to disable DMA which is local to this driver so we
can easily revert the workaround later?

>=20
> Regards,
> Bjorn
>=20
> > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> > ---
> >  drivers/i2c/busses/i2c-qcom-geni.c | 14 ++++++++++----
> >  1 file changed, 10 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2=
c-qcom-geni.c
> > index a89bfce5388e..dfdbce067827 100644
> > --- a/drivers/i2c/busses/i2c-qcom-geni.c
> > +++ b/drivers/i2c/busses/i2c-qcom-geni.c
> > @@ -353,13 +353,16 @@ static void geni_i2c_tx_fsm_rst(struct geni_i2c_d=
ev *gi2c)
> >  static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_m=
sg *msg,
> >  				u32 m_param)
> >  {
> > +	struct device_node *np =3D gi2c->se.dev->of_node;
> >  	dma_addr_t rx_dma;
> >  	unsigned long time_left;
> > -	void *dma_buf;
> > +	void *dma_buf =3D NULL;
> >  	struct geni_se *se =3D &gi2c->se;
> >  	size_t len =3D msg->len;
> > =20
> > -	dma_buf =3D i2c_get_dma_safe_msg_buf(msg, 32);
> > +	if (!of_property_read_bool(np, "qcom,geni-se-fifo"))
> > +		dma_buf =3D i2c_get_dma_safe_msg_buf(msg, 32);
> > +
> >  	if (dma_buf)
> >  		geni_se_select_mode(se, GENI_SE_DMA);
> >  	else
> > @@ -392,13 +395,16 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_de=
v *gi2c, struct i2c_msg *msg,
> >  static int geni_i2c_tx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_m=
sg *msg,
> >  				u32 m_param)
> >  {
> > +	struct device_node *np =3D gi2c->se.dev->of_node;
> >  	dma_addr_t tx_dma;
> >  	unsigned long time_left;
> > -	void *dma_buf;
> > +	void *dma_buf =3D NULL;
> >  	struct geni_se *se =3D &gi2c->se;
> >  	size_t len =3D msg->len;
> > =20
> > -	dma_buf =3D i2c_get_dma_safe_msg_buf(msg, 32);
> > +	if (!of_property_read_bool(np, "qcom,geni-se-fifo"))
> > +		dma_buf =3D i2c_get_dma_safe_msg_buf(msg, 32);
> > +
> >  	if (dma_buf)
> >  		geni_se_select_mode(se, GENI_SE_DMA);
> >  	else
> > --=20
> > 2.17.1
> >=20

--kbCYTQG2MZjuOjyn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1wK1kACgkQFA3kzBSg
KbYdkBAAgFs9RXf2jczJ4+RRvtmpQ2kMs/T+w039wUaHrptyk1cujtkKBxIzzaQ5
PuTTxkEAxUQdfp8NX2fpjFDU9OJZPMwtXJ6kDLDINm/o35+dVZeJ/d2OealTBHwn
v3yDd7w6vR/ilOUW395nT0RF5ngxXMKOr9Mcy1qUPygIf7WJmhSUqL8Ps0jLai2F
xgV3dSHPAXjtciwzNwV7uhsSGEQl19COjYxG/CeQqRQrWy31i/3Pr71xYiTEre0K
mgg0O23T7h0TZvoXFYrWb62XqpM/kk2z5YCgYx2d3Zy9mVMCBVhoZkAnlzZ8aigb
nvPaO6y25m6kFeI4NlgMxqQH7IhCqCHWGx5Y2fdGFOqCt/2nTYwBmzaQvRozrXoa
q6oL30dW5dewd8sTN9RMH0C43TXApsPOOUFieARIIcszOZPJBRWuvAx69UEMEYdw
/U9Q5uknA9K72KMoNfQwRmK1SlQur5sZ0obxir8hvbDdg3+11oek+2h90fom2ZZy
Jdcg9i51an87RBRHe6YIXwOVstFWuq0GwOvB8gTT0m9v8TcnoFALWNrYlGaCmt1a
HvBw24Ds4n25HfcM4OCPnsxDJ1LN9/kAaupXUGwUbo6X1XVKRPQG1OzrYxhehQW8
N4v1tQBpjvVEN5DK5+hfU8zJozEAu8kqOVBWQJ4s12GvFYy18/0=
=Qcw2
-----END PGP SIGNATURE-----

--kbCYTQG2MZjuOjyn--


--===============0526332366453132154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0526332366453132154==--

