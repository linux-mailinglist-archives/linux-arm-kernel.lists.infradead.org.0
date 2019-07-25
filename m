Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E36C756D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 20:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvgxPwikN6H2Rqj0EVcTbtad/VO0UlSHp7WzocOfyCg=; b=trMXbneplPJQDl
	cMFK5C982nGNi+Xc94wqdq2drOMOcUljjI67E7DXc+NUOOn7aphjWiEJGWWoLp4Lw0FkPvTthS+J1
	/uE1kPXO/RJsk3522WqPh/UhtYZhvL8G1IuWQh1s7xTdT0cXL5o2lSskc2m843LZGw+yUr2Mfp2zb
	xKFucTULgfjdW78+ifl/HAJB5DekDZU+belWDxqxR4qYOfHWsHaeDdk4/NtIa5OpWuvgaMK+PmnwA
	fvZ9hbEdDt9ojrORaS/i+eTA7GbdwBS5OHRZSnB+kWh2iIweiTTPrOsL7brui7wocFrUs9dIVhTBl
	lRxG/tCId7j/w5LMqHYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqiQC-0005Yl-2E; Thu, 25 Jul 2019 18:24:56 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqiPz-0005Xx-5k
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 18:24:44 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 45vgZ428mGzB2;
 Thu, 25 Jul 2019 20:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1564078989; bh=Wl70UkyUa1QvKhLDkVLuyu9SXp2lERXzmYfUoIOpTPs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cJOO3zNGNVmaEvljMlngn2KI1M1W+V6qNDrY6leJ6qyr+0WBnC33koMwEL87UtP2T
 Mfx6EK+g+fCpOMbYj8t6hw94F0H2W2UrIVlAUd9mNLUlKUNBZXX2FcA5Y9weYH1Faq
 hM3v2Y4F0iFpyoDLB2Q4e9q6ph3Fn2LrXhLaIr34Y5ZEME5q9SR6McDvIGC5PfEtq6
 AFTf8QRt0y5xVK9LJ/4yLq4H7ujtGwVY99gCJFOwCy9LJIihqF0rKoit3v3x5S3NRE
 pOEEQc4uTF0s53/RMpjv9iifiBxekbDlSChFXMBUwB2O5I9P+J6oojWgyEs+Yku6a5
 y7TVjs/i/tJBw==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at mail
Date: Thu, 25 Jul 2019 20:24:27 +0200
From: mirq-linux@rere.qmqm.pl
To: Codrin.Ciubotariu@microchip.com
Subject: Re: [PATCH 5/5] ASoC: atmel_ssc_dai: Enable shared FSYNC source in
 frame-slave mode
Message-ID: <20190725182427.GA16245@qmqm.qmqm.pl>
References: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
 <107e0cfd11a31ce1558e941612e183100022930d.1563819483.git.mirq-linux@rere.qmqm.pl>
 <eabb96e7-1567-3ee1-a00e-f241c5f23c1c@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eabb96e7-1567-3ee1-a00e-f241c5f23c1c@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_112443_529690_1ABE9D42 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, alexandre.belloni@bootlin.com, tiwai@suse.com,
 lgirdwood@gmail.com, Ludovic.Desroches@microchip.com, broonie@kernel.org,
 perex@perex.cz, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 03:02:34PM +0000, Codrin.Ciubotariu@microchip.com w=
rote:
> On 22.07.2019 21:27, Micha=B3 Miros=B3aw wrote:
> > SSC driver allows only synchronous TX and RX. In slave mode for BCLK
> > it uses only one of TK or RK pin, but for LRCLK it configured separate
> > inputs from TF and RF pins. Allow configuration with common FS signal.
[...]
> > @@ -613,10 +607,30 @@ static int atmel_ssc_hw_params(struct snd_pcm_sub=
stream *substream,
> >   		return -EINVAL;
> >   	}
> >   =

> > -	if (!atmel_ssc_cfs(ssc_p)) {
> > +	if (atmel_ssc_cfs(ssc_p)) {
> > +		/*
> > +		 * SSC provides LRCLK
> > +		 *
> > +		 * Both TF and RF are generated, so use them directly.
> > +		 */
> > +		rcmr |=3D	  SSC_BF(RCMR_START, fs_edge);
> > +		tcmr |=3D	  SSC_BF(TCMR_START, fs_edge);
> > +	} else {
> >   		fslen =3D fslen_ext =3D 0;
> >   		rcmr_period =3D tcmr_period =3D 0;
> >   		fs_osync =3D SSC_FSOS_NONE;
> > +		if (!ssc->shared_fs_pin) {
> > +			rcmr |=3D	  SSC_BF(RCMR_START, fs_edge);
> > +			tcmr |=3D	  SSC_BF(TCMR_START, fs_edge);
> > +		} else if (ssc->clk_from_rk_pin) {
> > +			/* assume RF is to be used when RK is used as BCLK input */
> > +			/* Note: won't work correctly on SAMA5D2 due to errata */
> > +			rcmr |=3D	  SSC_BF(RCMR_START, fs_edge);
> > +			tcmr |=3D	  SSC_BF(TCMR_START, SSC_START_RECEIVE);
> =

> Did you find a platform in which this mode works?

To be exact: according to the errata, TX is delayed improperly. So if you
use only RX (SSC side receives) direction, you're fine.

Best Regards,
Micha=B3=A0Miros=B3aw

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
