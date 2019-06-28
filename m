Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBFF59D6C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 16:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Evbyta6i1WDi91ZcCG1AUfpB6BOrF9hTwf5R2blkTBk=; b=QYATJzqmBO1l6G/GQnbZMPncT
	viT28NyNQeSGicedXhj3NzZITABeQUMe4GxBNvolsrIe0+LjE2sqrYosy6zSMMwOTd8yVH4IobRva
	jMNfeJu6d9WCZS/8fzX+uuOXDxDkACWp2klRB3vS89W263f54P4xYVS+ABHO5EkBW+tSD8dClqVih
	SaQwRlCdXVBsiKaIgncHWHtsyzSdf7SI7qZ+360lGneuL8KlwyBDux8XEUguDkfh2IUF8qjyGk4tO
	uausf2QW6WNjacMQhPaaeqT+twPjH6Mgsk0AXONrX5iog7FzlYaRGcpDkIMOyMu8dfALb33zza+Qh
	Hg/7gke6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgrQV-0000Mt-Ip; Fri, 28 Jun 2019 14:00:31 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgrQH-0000M0-E6
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 14:00:19 +0000
Received: by mail-qk1-x743.google.com with SMTP id c11so4862409qkk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 07:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version;
 bh=/ObR3zRt+LL7cSozUPg9nxYsncYVeE++8B8BB5FGnig=;
 b=KSenq5dT4kNbFTSgiDE2z7SRCEjF3JO2jsoVwkb8aHiqNSZ0aMZpj8nLp/l/Wbthq0
 uQgakohmcREgywd7L7nhVa1+qvfnpVHliVQz9Te1xwllB7njlgY33UYku4BYa/MDcsN1
 oSFpy8PxluiEjB3JbXsYmgcjl56lhaLUJu7gboN/WmPSnB5CO8peVL+GowJC4as2oQ0a
 LU89J2tfWJGnR7ItWyTNkvCNg1WNhllDPjgOEckQw0H7z+7E1qS5JewyfbMG2t7Yo2NM
 MIFIg6JRirEuWHiDsuCkmnG+RYxv7y+BXU8urJcoEA0GG6xz64553nutCGI6WEQpYAH2
 k/8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version;
 bh=/ObR3zRt+LL7cSozUPg9nxYsncYVeE++8B8BB5FGnig=;
 b=nfNMHNrDFwaQ43CoyPniVA151sjf7Q/y2mugS90C/ukJr4u+DZ4gyYJPLslsQywda3
 Qy8asikJDyk0iEGQoQylhFFb4+da647tcYIPZxSSB/KgNgn+dlbgdPTte0UciyqT2CMI
 v8CNKbsok0gAuO0RHM6DVVEZuYbm+X8fIZIX+Efd/EkbHzjocS+X81zD4/fY6EuopMbc
 qkKxj6YZbbImFbZ6tSBSyfKrzpbFdlyWsC/X2YvShoPVtqJtyFPpFYrgrhTRQ3vMydZc
 JQyA3ZZSvgvMCK4kNPWIjZVGv7s+UJHElS1gxqIojj8dlUUYI0rsQ7+UO3bbmGOGOSvk
 aiKQ==
X-Gm-Message-State: APjAAAWCGL7aqd6SQe0zZD61BoumNe6tqej9xcMmPIX8ifizTu1xz1rF
 BLUlSU1uL5TtUrMe94HLL9/D8A==
X-Google-Smtp-Source: APXvYqxfl8fxH5/CoSWieWbccCSWrr9zL0RQUPIKNag0RTVNlRSyXa97/XWHEBYnqtJPTpynMga2lQ==
X-Received: by 2002:a37:a7d2:: with SMTP id q201mr8564626qke.150.1561730415786; 
 Fri, 28 Jun 2019 07:00:15 -0700 (PDT)
Received: from tpx230-nicolas.collaboramtl
 (modemcable154.55-37-24.static.videotron.ca. [24.37.55.154])
 by smtp.gmail.com with ESMTPSA id s44sm1257171qtc.8.2019.06.28.07.00.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 07:00:14 -0700 (PDT)
Message-ID: <54088ebc2fcbcc3a202ab0fd4d32f9ad8c1e9b82.camel@ndufresne.ca>
Subject: Re: [PATCH 01/31] staging: bcm2835-camera: Ensure H264 header bytes
 get a sensible timestamp
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Dave Stevenson <dave.stevenson@raspberrypi.org>
Date: Fri, 28 Jun 2019 10:00:12 -0400
In-Reply-To: <CAAoAYcOvnF55U0kPMFE4cOd=nUqjoidirbGP6AWN=5Rqp0RhbQ@mail.gmail.com>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <1561661788-22744-2-git-send-email-wahrenst@gmx.net>
 <5e20b1d04b3c2f64173631ec2f0261a8a9597f0c.camel@ndufresne.ca>
 <CAAoAYcOvnF55U0kPMFE4cOd=nUqjoidirbGP6AWN=5Rqp0RhbQ@mail.gmail.com>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_070017_617306_A8B61CC9 
X-CRM114-Status: GOOD (  32.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LMML <linux-media@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Eric Anholt <eric@anholt.net>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
Content-Type: multipart/mixed; boundary="===============3274653542073411589=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3274653542073411589==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-9zNGfIk5+814WxwZsJuh"


--=-9zNGfIk5+814WxwZsJuh
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le vendredi 28 juin 2019 =C3=A0 11:10 +0100, Dave Stevenson a =C3=A9crit :
> Hi Nicolas
>=20
> On Thu, 27 Jun 2019 at 20:55, Nicolas Dufresne <nicolas@ndufresne.ca> wro=
te:
> > Hi Dave,
> >=20
> > Le jeudi 27 juin 2019 =C3=A0 20:55 +0200, Stefan Wahren a =C3=A9crit :
> > > From: Dave Stevenson <dave.stevenson@raspberrypi.org>
> > >=20
> > > H264 header come from VC with 0 timestamps, which means they get a
> > > strange timestamp when processed with VC/kernel start times,
> > > particularly if used with the inline header option.
> > > Remember the last frame timestamp and use that if set, or otherwise
> > > use the kernel start time.
> >=20
> > Normally H264 headers are considered to be part of the following frame.
> > Giving it the timestamp of the previous frame will likely confuse some
> > userspace and cause an off-by-one in timestamp. I understand this is a
> > workaround, but am wondering if this can be improved.
>=20
> Sorry, slight ambiguity in how I'm reading your comment.
>=20
> Are you saying that the header bytes want to be in the same buffer as
> the following frame?
> I thought this had also been discussed in the V4L2 stateful codec API
> threads along with how many encoded frames were allowed in a single
> V4L2 buffer. I certainly hadn't seen a statement about the header
> bytes being combined with the next frame.
> If the behaviour required by V4L2 is that header bytes and following
> frame are in the same buffer, then that is relatively easy to achieve
> in the firmware. This workaround can remain for older firmware as it
> will never trigger if the firmware has combined the frames.

The frame alignment is a requirement specific to the stateful codec
API. Stateful codec must interpret _H264 format as being one full frame
per buffer (1 AU in progressive, and 1 to 2 AU in interlaced), the
first frame should include SPS/PPS and any other prefix NALs. You may
follow this rule in your capture driver if you want to make it possible
to zero-copy the encoded frames from the capture to the decoder.
Though, userspace will still have to parse as there is no indication
for capture devices of the H264 alignment being used (that imply 1
frame latency). Boris is working on a control for stateless CODEC to
control if we are running in full-frame or per slices. I do hope this
control will be extended later to allow cameras and decoders to signal
their alignment, or simply to allow enabling low-latency modes
supported by CODA and ZynMP firmwares.

>=20
> Or are you saying that the header bytes remain in their own buffer,
> but the timestamp wants to be the same as the next frame? That is
> harder to achieve in the firmware, but could probably be done in the
> kernel driver by holding on to the header bytes frame until the next
> buffer had been received, at which point the timestamp can be copied
> across. Possible, but just needs slightly careful handling to ensure
> we don't lose buffers accidentally.

So this isn't specified by V4L2 itself. So instead I rely on H264 and
MPEG TS specification to advance this. This is also the interpretation
we have of timestamp in GStreamer (ffmpeg uses out-of-band headers with
full frame AVC, so this does not apply).

So H264 AUD, SPS, PPS, SEI and other prefix NAL are considered to be
the start of a frame. With this interpretation in mind, accumulating
them is considered zero-latency. This basically means that if they are
to have a timestamp, they would share that timestamp with all the
slices of the same frame. In GStreamer, we have the notion of no
timestamp, so in such a case we'd leave the timestamp empty and our
parsers would pick the first valid timestamp that formed the full frame
as being the frame timestamp (it's a bit buggier then that, but that's
what it's suppose to do).

On top of that, if you don't have any meaningful alignment in your H264
stream, the MPEG TS format states that the timestamp of a buffer should
be the timestamp of the first NAL starting within this buffer, or the
timestamp of the current NAL if there is not NAL start.

By respecting these standards you ensure that latency aware application
can work with your driver without causing delays, or worst, having to
deal with artificially late frames.

I hope this clarify and helps understand my request for "unhacking" the
headers timestamps. I had assumed the timestamp came from the driver
(instead of from the firmware), sorry if that caused confusion. If
merging full frames is easier, I think I would opt for that as it's
beneficial to performance when combined with other full frame APIs.

Nicolas

>=20
>   Dave
>=20
> > > Link: https://github.com/raspberrypi/linux/issues/1836
> > > Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
> > > ---
> > >  .../staging/vc04_services/bcm2835-camera/bcm2835-camera.c  | 14 ++++=
++++++++--
> > >  .../staging/vc04_services/bcm2835-camera/bcm2835-camera.h  |  2 ++
> > >  2 files changed, 14 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-cam=
era.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > > index dce6e6d..0c04815 100644
> > > --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > > +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > > @@ -359,7 +359,9 @@ static void buffer_cb(struct vchiq_mmal_instance =
*instance,
> > >               }
> > >       } else {
> > >               if (dev->capture.frame_count) {
> > > -                     if (dev->capture.vc_start_timestamp !=3D -1 && =
pts) {
> > > +                     if (dev->capture.vc_start_timestamp !=3D -1) {
> > > +                             buf->vb.vb2_buf.timestamp =3D ktime_get=
_ns();
> > > +                     } else if (pts) {
> > >                               ktime_t timestamp;
> > >                               s64 runtime_us =3D pts -
> > >                                   dev->capture.vc_start_timestamp;
> > > @@ -372,8 +374,15 @@ static void buffer_cb(struct vchiq_mmal_instance=
 *instance,
> > >                                        ktime_to_ns(timestamp));
> > >                               buf->vb.vb2_buf.timestamp =3D ktime_to_=
ns(timestamp);
> > >                       } else {
> > > -                             buf->vb.vb2_buf.timestamp =3D ktime_get=
_ns();
> > > +                             if (dev->capture.last_timestamp) {
> > > +                                     buf->vb.vb2_buf.timestamp =3D
> > > +                                             dev->capture.last_times=
tamp;
> > > +                             } else {
> > > +                                     buf->vb.vb2_buf.timestamp =3D
> > > +                                             ktime_to_ns(dev->captur=
e.kernel_start_ts);
> > > +                             }
> > >                       }
> > > +                     dev->capture.last_timestamp =3D buf->vb.vb2_buf=
.timestamp;
> > >=20
> > >                       vb2_set_plane_payload(&buf->vb.vb2_buf, 0, leng=
th);
> > >                       vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE=
_DONE);
> > > @@ -541,6 +550,7 @@ static int start_streaming(struct vb2_queue *vq, =
unsigned int count)
> > >                        dev->capture.vc_start_timestamp, parameter_siz=
e);
> > >=20
> > >       dev->capture.kernel_start_ts =3D ktime_get();
> > > +     dev->capture.last_timestamp =3D 0;
> > >=20
> > >       /* enable the camera port */
> > >       dev->capture.port->cb_ctx =3D dev;
> > > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-cam=
era.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
> > > index 2b5679e..09273b0 100644
> > > --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
> > > +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
> > > @@ -90,6 +90,8 @@ struct bm2835_mmal_dev {
> > >               s64         vc_start_timestamp;
> > >               /* Kernel start timestamp for streaming */
> > >               ktime_t kernel_start_ts;
> > > +             /* Timestamp of last frame */
> > > +             u64             last_timestamp;
> > >=20
> > >               struct vchiq_mmal_port  *port; /* port being used for c=
apture */
> > >               /* camera port being used for capture */
> > > --
> > > 2.7.4
> > >=20

--=-9zNGfIk5+814WxwZsJuh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXRYdbAAKCRBxUwItrAao
HL+LAJ44dquMC3ahU1braDb8t+6gILF6dgCffJk6UGKu6CPlOB9YXRq8fan29SU=
=Fhnr
-----END PGP SIGNATURE-----

--=-9zNGfIk5+814WxwZsJuh--



--===============3274653542073411589==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3274653542073411589==--


