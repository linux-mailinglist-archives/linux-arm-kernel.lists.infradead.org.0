Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8734A1E97D9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 15:32:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=14V1g2Een/+tog4Mm1CijdD0VeZhvFJ790l/gJBuAsE=; b=SiBt3gqTEGX2n8oqiTde8Pz1u
	1SkA6c0GR2AuCqlVKjUZTb+euHgAivOWR30lrA6tpr4dosDSvKvV5dGoxc1PRiE+K2H1k4ihmZYUO
	qsNVPKnwE3UwRffTDjW03QyND++ZedwxRner5ybMcPS7b+Le0irxSjsxAPmWQYYuy+MNyPJAuB5FJ
	xhKyKc7yCI4LbtAvKHr4xqUB6jFnJNqU4/kVCO39SR24PlOnAOtr1yf3y4a91qUFvmQNp3Sb9+7M2
	NPBV4xkDTOOpyF6m6zV+tdhaUKdrwfDcuTVqMNcgJ7u7lALOzYI2LzGj45CNuY4khQ2FxtPEAiFKV
	YMtAYVvjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfO4Y-00059A-Fb; Sun, 31 May 2020 13:32:18 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfO4L-00058k-K4
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 13:32:07 +0000
Received: by mail-qk1-x742.google.com with SMTP id c185so6665247qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 31 May 2020 06:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=7mjQPFZLDY3zOJxS6K+hwBYDZ7ogeoyTkdPn+NbadQA=;
 b=OvQUeyLfMwrvAin4ZW+rJVAV3Brt0cXRGFYFkbwhjGFNAlulLUWx2u+XlDicCYbIIv
 cngSvARYr/W1RWxz62Nu9/fYPz98+YYIE53Mv5wST7j3b2/BZ+Ck8mzn/gm3kX/kiIjA
 fAg42ScpwGAu2VBrl+wgSz0uMRL2n4sMzy7Peq2EXcpiI5HB2Cz5TRdsCHZmpxEQrbaM
 2hffWRCVFTk9uMmbVPUtjrifiAiqSS0uiWVBuJWkpUpP2QcBBHBKVdp+9FZbIqMo9v8k
 i1wOJg8tK0Q6N7B/MBkUAO30R4AE8SPalg+BkZoLrEosrQxINBJg49zXwiwBVsqLoOiF
 QIaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7mjQPFZLDY3zOJxS6K+hwBYDZ7ogeoyTkdPn+NbadQA=;
 b=h57r428RS82Ergpf+/4vcIXBPOm9SQME+IprVuibZJtJVoHymLPrwFL6/9L00FV5Me
 JtAnaVZprEYckX/JaAlxfWv9/+6vdK9La+GIuSjZ6eLu0LGdNuW/JwI1wb1vrDujPFLi
 QQ+YryY1/uz1/sHaPdGxnD0m4tFjJ6+Vh+6I/ZljPhTVLyKPDVb0uxWL5CLOIq2HRf5F
 PqCrmOjqeFwL4LNfjhQHBH9sbK6oa/WCvbCTQJxHrYLBpcL1v0hEw0S+SIn1/RvP+Zed
 7rxUTdjzx12r8oIOQyzGjSha5oR2d38fm3PeAGbokABqYJy4TGWhE0enmK4PwsKUiCEN
 2XKQ==
X-Gm-Message-State: AOAM532j3PSAsY/qAPT5oZ9VQIXgYa5LBC3K7eVANjRsf5x1NPEwzosE
 ba76oskMX0U5RToIIVLKrZU=
X-Google-Smtp-Source: ABdhPJyLqWvBTi+Blweff9xoUoSmEYagIdQTmznRqhCCEj/Zz7hVlATzQXnLTG1Q06c2kaU18tdn4w==
X-Received: by 2002:a05:620a:1f6:: with SMTP id
 x22mr15510121qkn.199.1590931921668; 
 Sun, 31 May 2020 06:32:01 -0700 (PDT)
Received: from shinobu (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id q187sm11366164qka.34.2020.05.31.06.31.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 May 2020 06:32:00 -0700 (PDT)
Date: Sun, 31 May 2020 09:31:47 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH v2 4/4] docs: counter: Document character device interface
Message-ID: <20200531133131.GA6725@shinobu>
References: <cover.1589654470.git.vilhelm.gray@gmail.com>
 <db0a9206d31c82f8381316ef5ff9872bfb53665b.1589654470.git.vilhelm.gray@gmail.com>
 <20200529132604.GB1339@bug>
MIME-Version: 1.0
In-Reply-To: <20200529132604.GB1339@bug>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_063205_679091_C47B18C0 
X-CRM114-Status: GOOD (  22.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kamel.bouhara@bootlin.com, gwendal@chromium.org, david@lechnology.com,
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, syednwaris@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org,
 alexandre.torgue@st.com
Content-Type: multipart/mixed; boundary="===============6416789360296114410=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6416789360296114410==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p4qYPpj5QlsIQJ0K"
Content-Disposition: inline


--p4qYPpj5QlsIQJ0K
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 29, 2020 at 03:26:04PM +0200, Pavel Machek wrote:
> On Sat 2020-05-16 15:20:02, William Breathitt Gray wrote:
> > This patch adds high-level documentation about the Counter subsystem
> > character device interface.
> >=20
> > Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> > ---
> >  Documentation/driver-api/generic-counter.rst | 112 +++++++++++++------
> >  1 file changed, 76 insertions(+), 36 deletions(-)
> >=20
> > diff --git a/Documentation/driver-api/generic-counter.rst b/Documentati=
on/driver-api/generic-counter.rst
> > index 8f85c30dea0b..58045b33b576 100644
> > --- a/Documentation/driver-api/generic-counter.rst
> > +++ b/Documentation/driver-api/generic-counter.rst
>=20
> > +
> > +Counter chrdev
> > +--------------
> > +Translates counter data to the standard Counter character device; data
> > +is transferred via standard character device read/write calls.
> > +
> > +Sysfs Interface
> > +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > +
> > +Several sysfs attributes are generated by the Generic Counter interfac=
e,
> > +and reside under the `/sys/bus/counter/devices/counterX` directory,
> > +where `X` is to the respective counter device id. Please see
> > +Documentation/ABI/testing/sysfs-bus-counter for detailed information on
> > +each Generic Counter interface sysfs attribute.
> > +
> > +Through these sysfs attributes, programs and scripts may interact with
> > +the Generic Counter paradigm Counts, Signals, and Synapses of respecti=
ve
> > +counter devices.
> > +
> > +Counter Character Device
> > +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> > +
> > +Counter character device nodes are created under the `/dev` directory =
as
> > +`counterX`, where `X` is the respective counter device id. Defines for
> > +the standard Counter data types are exposed via the userspace
> > +`include/uapi/linux/counter-types.h` file.
> > +
> > +The first 196095 bytes of the character device serve as a control
> > +selection area where control exposure of desired Counter components and
> > +extensions may be selected. Each byte serves as a boolean selection
> > +indicator for a respective Counter component or extension. The format =
of
> > +this area is as follows:
> > +
> > +* For each device extension, a byte is required.
> > +* For each Signal, a byte is reserved for the Signal component, and a
> > +  byte is reserved for each Signal extension.
> > +* For each Count, a byte is reserved for the Count component, a byte is
> > +  reserved for the count function, a byte is reserved for each Synapse
> > +  action, and byte is reserved for each Count extension.
> > +
> > +The selected Counter components and extensions may then be interfaced
> > +after the first 196095 bytes via standard character device read/write
> > +operations. The number of bytes available for each component or
> > +extension is dependent on their respective data type: u8 will have 1
> > +byte available, u64 will have 8 bytes available, strings will have 64
> > +bytes available, etc.
>=20
> This looks like very, very strange interface, and not described in detail
> required to understand it.
>=20
> Could you take a look at input subsystem, /dev/input/event0? Perhaps it i=
s=20
> directly usable, and if not something similar should probably be acceptab=
le.
>=20
> Best regards,
> 									Pavel

Yes, I don't think this is a good interface afterall. I'm implementing a
different design for v3 that should be more intuitive. The input
subsystem could be useful for streams of events such as timestamps, so
I'll take a look at it as well in case something similar to it could be
used.

William Breathitt Gray

--p4qYPpj5QlsIQJ0K
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl7TscMACgkQhvpINdm7
VJLU9hAAjZE3eFls1/dM0bpj9fivaZE+WCka2FakUqh0/3e48BVKe4lgLXBKxvBV
EYJrNH9fastmhGjWwI2JU9nVaTMUMeDZMtQFX6WccLR6wbZbncR6eDv/N2sn0VNB
jqQ+QdidLI+0tHJIVhQCzgEE0G6J6OMlUI1XkolNQVFKc2AWyxVFOKYcXWVlOaJF
5RuNDd067JuwqUncPfnInAMsI/5310+8UTEDza3twfjg61EI5wzU/PB7CzeE5rpz
uXex2BiRUcR/QQiNP1KjhrIyawQkBGhx4LKcqFGlx5QTwec/Jg7NmjyWEnSsboZg
AnHu1w+b2UbsHhWWRSHDWB1m7qM+zKhDYTYVOr5d0u0qgvitqeOsOaux34/tNMTT
cc4PTlf5zZFozDvTsilbLhNf5OhkIp5emAVCG5lXF4i0r7Q/jcRI0ScHZ3BSmL1p
unxD66ZbwtxHej5HJWAdZ1VPGr0gjWL29q+cxK3B7RqOUgl5ZwYnKgUaqbJAOM6Q
2K8z+BqLVH975M33jnPm0PSRyCxLfYPN+vKcEgw/ly3Z/3b3LYePtsuxc7bo8kVA
7uNPKFaSp2VW1XCaAd0hqBx3/q/LZEQjaPGVFtWkrMpv/vnsJVWSPAoJO9+9T/zS
HZ5TugHnAaPTVx7eo+0u7rzLOVv2wS5v0G0MU4KMwiN85Ws1Umo=
=ca5o
-----END PGP SIGNATURE-----

--p4qYPpj5QlsIQJ0K--


--===============6416789360296114410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6416789360296114410==--

