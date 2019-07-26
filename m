Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C44D176537
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlOSIMV6q/9J2A+9IgVNh74eWHY/Ko3v4eaGjgtrulA=; b=WC26CzCakWXIOF
	owxzHyQOhI1woI/YKNZLZqhkLQR0kPf34FCZq1wPSOL4CttRKFssfCX8VIWYy1jqRJxjkiU77Y/PZ
	XBPw7i2J3+g17IimuqAh3b5v2pw8wXXX4RDDdn6Dbwp8hn6+92yKmwY9Kri0s6DamypRSnl5zIluz
	vhpStfRyYHB726gmgOAn29xf3dZIxVk/tUAhdxmCAhp34er1uSZaGnJ/e6rixp2U3XmorUtQlxOg1
	IK20fM4jkQVd6+TlQvPWWtqa7GCqPPSVpn02n1GErSnBlHO9mm81NGyqen6LKYkqnh+Is3ALEvXep
	M1Jtll0tg8XRWdG0f3WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqz2a-0004II-Mz; Fri, 26 Jul 2019 12:09:40 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqz1s-0003u1-O9
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 12:08:59 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 45w7B94bnbzB2;
 Fri, 26 Jul 2019 14:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1564142851; bh=+BQ1LKYu6336M0FwVYPvUJaJNhiZCTl8l1SiH8AfHx0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OMurcdllC7deHb/blzpx+dNiTmUEOSYZ2oXROzw++3sNCSVGERNm+epHMAwk6eYm4
 KIYCjj+k5b6MLb9V7srqudq6QpwFi/fABzNh3KJGPYGZ/N4G+cppm166W+sMXDUOca
 AOAGGKSzOSyAtnqO56DwbKgfvvURDKgEeeXdvLZSdYmOVzKUDqx9zXDoA4MzMhxNSd
 SZABB14mjedRIXqW0vcACL3N6AaWVCXjP6ZXgZwS5/Z1BzNeZZcjtVr5ZAQ2i6eqMc
 lCJY4s4O9VgZcSx0mfqVZ+jUPmfA9GdTBIxAgfJNJkcTKByRJ8xHNx+zhzIYn5Umid
 4vdhwL2wM1ulw==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at mail
Date: Fri, 26 Jul 2019 14:08:49 +0200
From: mirq-linux@rere.qmqm.pl
To: Codrin.Ciubotariu@microchip.com
Subject: Re: [PATCH 5/5] ASoC: atmel_ssc_dai: Enable shared FSYNC source in
 frame-slave mode
Message-ID: <20190726120849.GA1078@qmqm.qmqm.pl>
References: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
 <107e0cfd11a31ce1558e941612e183100022930d.1563819483.git.mirq-linux@rere.qmqm.pl>
 <eabb96e7-1567-3ee1-a00e-f241c5f23c1c@microchip.com>
 <20190725182427.GA16245@qmqm.qmqm.pl>
 <6fdbcec1-346f-9ebf-34e7-83b0ceaba404@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6fdbcec1-346f-9ebf-34e7-83b0ceaba404@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_050857_132003_98D99428 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, alexandre.belloni@bootlin.com, tiwai@suse.com,
 lgirdwood@gmail.com, Ludovic.Desroches@microchip.com, broonie@kernel.org,
 perex@perex.cz, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 10:33:29AM +0000, Codrin.Ciubotariu@microchip.com w=
rote:
> On 25.07.2019 21:24, mirq-linux@rere.qmqm.pl wrote:
> > On Thu, Jul 25, 2019 at 03:02:34PM +0000, Codrin.Ciubotariu@microchip.c=
om wrote:
> >> On 22.07.2019 21:27, Micha=B3 Miros=B3aw wrote:
> >>> SSC driver allows only synchronous TX and RX. In slave mode for BCLK
> >>> it uses only one of TK or RK pin, but for LRCLK it configured separate
> >>> inputs from TF and RF pins. Allow configuration with common FS signal.
> > [...]
> >>> @@ -613,10 +607,30 @@ static int atmel_ssc_hw_params(struct snd_pcm_s=
ubstream *substream,
> >>>    		return -EINVAL;
> >>>    	}
> >>>    =

> >>> -	if (!atmel_ssc_cfs(ssc_p)) {
> >>> +	if (atmel_ssc_cfs(ssc_p)) {
> >>> +		/*
> >>> +		 * SSC provides LRCLK
> >>> +		 *
> >>> +		 * Both TF and RF are generated, so use them directly.
> >>> +		 */
> >>> +		rcmr |=3D	  SSC_BF(RCMR_START, fs_edge);
> >>> +		tcmr |=3D	  SSC_BF(TCMR_START, fs_edge);
> >>> +	} else {
> >>>    		fslen =3D fslen_ext =3D 0;
> >>>    		rcmr_period =3D tcmr_period =3D 0;
> >>>    		fs_osync =3D SSC_FSOS_NONE;
> >>> +		if (!ssc->shared_fs_pin) {
> >>> +			rcmr |=3D	  SSC_BF(RCMR_START, fs_edge);
> >>> +			tcmr |=3D	  SSC_BF(TCMR_START, fs_edge);
> >>> +		} else if (ssc->clk_from_rk_pin) {
> >>> +			/* assume RF is to be used when RK is used as BCLK input */
> >>> +			/* Note: won't work correctly on SAMA5D2 due to errata */
> >>> +			rcmr |=3D	  SSC_BF(RCMR_START, fs_edge);
> >>> +			tcmr |=3D	  SSC_BF(TCMR_START, SSC_START_RECEIVE);
> >>
> >> Did you find a platform in which this mode works?
> > =

> > To be exact: according to the errata, TX is delayed improperly. So if y=
ou
> > use only RX (SSC side receives) direction, you're fine.
> =

> I know, but there are other platforms with SSC, which don't have this =

> errata, like sam9x35 or sama5d3. Have you tested this mode, RK input, RF =

> input, RD starts on edge detect, TF input, TD starts synchronously with =

> receiver?

No, I have only SAMA5D2 available to test.

Best Regards,
Micha=B3=A0Miros=B3aw

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
