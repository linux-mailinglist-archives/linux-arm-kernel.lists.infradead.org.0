Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C30C1C19F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:46:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XlrnBEPeqiVMuFHzVKh/6SmwPxhnPMNkoiuR2WIjDVw=; b=ObXUcV4+sICONDDoBewBBYvL4
	wAnAqn5FMHNQO8QBO/WBwWA6xqEcdPkc7ZUgeOVgbGB5lzZcARJj18wK9UJt+E3OZef2Cq/HRyWpu
	IwfwgUGy0Yf0q32n2csv/Kh7fbUazHZ0fhEmYmOBOJ8SwDc4O+6+VyECiODj7e9JIekaNGYmVH3x0
	WAzGIbnC9Ut123ZdWZZbIxjm7OJQaZEny2sFn0ce56oacs7GDl8biut018EA4gvJmhuCbhFdY3yrc
	xMZvZ3zbP0knQswUSL0Mg736BTrqN0CblX02o4R9fZXDYfrBYBEJFMBYMLFoPXVWsydeyQqdUUIvZ
	2sGH6+GCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXs3-00062j-TY; Fri, 01 May 2020 15:46:35 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXrx-00062F-0U
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 15:46:30 +0000
Received: by mail-qk1-x744.google.com with SMTP id n14so1528690qke.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 08:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9IZ2eQ+0Lg2xRdGV6tDu7reTlhLp4Xc5JPkXDBbcKxY=;
 b=XDc0TY5SX3L4r0UC/FpLRruVMStQipLZyd9+hKPYV6zMVKEr/iRkmwLzJhw8z/LiqE
 etY2oegNkGD/f70ogxShpg6+zxdzui/CwPkDChCHQ3cPLbOf1z76ZC5noGN010kOjK6w
 1zkHGd41lpZkqbWIRveLHHFArCBX1+H/+YGgP1zirOkiVe8E+jEJ615Hcqz1cQmU00lT
 MJKdC9yhNfrvCtsX+HKVsv9QTchqbjpSbvhZHSiiUsvh6wCaHR7eDCiCjyKmZSsMA0te
 MMkpwrFuLSGyDums8FnNlcP+M0fWxdSQt9oD/FXNz3Z8GP5Q1ANiyWNto0MwM6Cq8/PA
 C+qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9IZ2eQ+0Lg2xRdGV6tDu7reTlhLp4Xc5JPkXDBbcKxY=;
 b=Dsm37jg311jIdVhGlJq1HAGpIQb7tGbubWus1g7hS6D/UnJ0ZKe2fyCFI6p8Dpi5gj
 XRIXpFAEz6ETGBYE9cwBIdi17NYtiiRCwnu3yXVR/0pbEYNFH5lrLaTYwwASn1hYm/7M
 fKkz/nQPwohw8bzYDOiZ8KmMs8uuQ6blkFvAAhQLit5h+BU0wPIo/dacRaxJMpMH2LJ1
 QhgKFNPjLPil0w9jlDYhwRepLVkNJRtGh5SYXDqVl5HFO6/hUjEHLv/lPQsuBS5meHVZ
 vi8Zvpnog5UWHKl912Vf3B6YuQCgtiuMkEcO0rZALOaFeYvGnw7wD087n8eQsD98SZCt
 VoFQ==
X-Gm-Message-State: AGi0PuZ8cLejqskPZWmi4VPgxyV0gGn6nLJKzufuMnrktleqxMk+EWI0
 Dj6Q5kN41XkdRCyCCJDEyAg=
X-Google-Smtp-Source: APiQypLNf73ajCHg1Jghx8lB8fhM62czg9IvdkYFl57UU+LiLnS4V8Wgo823PifvELVcLH+LtEvsqA==
X-Received: by 2002:a05:620a:1495:: with SMTP id
 w21mr4197594qkj.81.1588347987089; 
 Fri, 01 May 2020 08:46:27 -0700 (PDT)
Received: from icarus (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id v62sm2980371qkb.85.2020.05.01.08.46.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 May 2020 08:46:25 -0700 (PDT)
Date: Fri, 1 May 2020 11:46:10 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 0/4] Introduce the Counter character device interface
Message-ID: <20200501154519.GA4581@icarus>
References: <cover.1588176662.git.vilhelm.gray@gmail.com>
 <20200430201345.GX51277@piout.net>
MIME-Version: 1.0
In-Reply-To: <20200430201345.GX51277@piout.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_084629_077808_CDF5EE6A 
X-CRM114-Status: GOOD (  32.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kamel.bouhara@bootlin.com, gwendal@chromium.org, david@lechnology.com,
 felipe.balbi@linux.intel.com, linux-iio@vger.kernel.org, syednwaris@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, patrick.havelange@essensium.com,
 fabrice.gasnier@st.com, fabien.lahoudere@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org,
 alexandre.torgue@st.com
Content-Type: multipart/mixed; boundary="===============9058849836604130038=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9058849836604130038==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="11Y7aswkeuHtSBEs"
Content-Disposition: inline


--11Y7aswkeuHtSBEs
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 30, 2020 at 10:13:45PM +0200, Alexandre Belloni wrote:
> Hi,
>=20
> On 29/04/2020 14:11:34-0400, William Breathitt Gray wrote:
> > Over the past couple years we have noticed some shortcomings with the
> > Counter sysfs interface. Although useful in the majority of situations,
> > there are certain use-cases where interacting through sysfs attributes
> > can become cumbersome and inefficient. A desire to support more advanced
> > functionality such as timestamps, multi-axis positioning tables, and
> > other such latency-sensitive applications, has motivated a reevaluation
> > of the Counter subsystem. I believe a character device interface will be
> > helpful for this more niche area of counter device use.
> >=20
> > To quell any concerns from the offset: this patchset makes no changes to
> > the existing Counter sysfs userspace interface -- existing userspace
> > applications will continue to work with no modifications necessary. I
> > request that driver maintainers please test their applications to verify
> > that this is true, and report any discrepancies if they arise.
> >=20
>=20
> On that topic, I'm wondering why the counter subsystem uses /sys/bus
> instead of /sys/class that would be more natural for a class of devices.
> I can't see how counters would be considered busses. I think you should
> consider moving it over to /sys/class (even if deprecating
> /sys/bus/counter will be long).

At the time I wasn't quite familiar with sysfs development so I was
following the iio sysfs code rather closely. However, I see now that
you're probably right: this isn't really a bus but rather a collection
of various types of counters -- i.e. a class of devices.

Perhaps I should migrate this then to /sys/class/counter. Of course, the
/sys/bus/counter location will have to remain for compatibility with
existing applications, but I think a simple symlink to the new
/sys/class/counter location should suffice for that.

If anyone sees an issue with this give me a heads up.

> > Interaction with Counter character devices occurs via ioctl commands.
> > This allows userspace applications to access and set counter data using
> > native C datatypes rather than working through string translations.
> >=20
>=20
> I agree with David that you should consider using read to retrieve the
> counter data as this will simplify interrupt handling/polling and
> blocking/non-blocking reads can be used by an application. ABI wise,
> this can also be a good move as you could always consider having an
> ioctl requesting a specific format when reading the device so you are
> not stuck with the initial format you are going to choose.

My hesitation to implement support for read/write calls is due to a
concern that we will end up with various incompatible formats between
counter drivers (thus requiring users to have intimate knowledge of the
drivers and therefore defeating the purpose of a subsystem). However, if
we can standardize on a format that is flexible enough to work for all
counter drivers, then read/write calls should not be a problem.

I think a general format could be possible. For example, the counter
character device can return a standard header data at the start which
provides general information about the counter device: number of
counters, number or signals, number of extensions, etc. From this
information, offsets can be computed (or perhaps provided by the device)
to where the binary data for the count, extension, etc., can be read or
written. Interrupts can then be handled as blocking reads, as could
other types of events we implement.

Would something like this work well?

William Breathitt Gray

> > 2. Should device driver callbacks return int or long? I sometimes see
> >    error values returned as long (e.g. PTR_ERR(), the file_operations
> >    structure's ioctl callbacks, etc.); when is it necessary to return
> >    long as opposed to int?
> >=20
>=20
> You should use a long if you ever have to return a point as it is
> guaranteed to have the correct size. Else, just stick to an int if you
> are not going to overflow it.
>=20
> > 3. I only implemented the unlocked_ioctl callback. Should I implement a
> >    compat_ioctl callback as well?
> >=20
>=20
> The compat_ioctl is to handle 32bit userspace running on a 64bit kernel.
> If your structures have the same size in both cases, then you don't have
> to implement compat_ioctl.
>=20
> Have a look at Documentation/driver-api/ioctl.rst
>=20
>=20
> --=20
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

--11Y7aswkeuHtSBEs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl6sREIACgkQhvpINdm7
VJLBdw//ZnjNv3uOgQIw96NCsmli/By/9yxpfSObH4s6mTX743wjoWvC581vbI6D
fS8QxevlEVN6Lyz0MVx5GGQmzhTCfAcXJXMG2NbXQ8YJlDYii5bG3zwvjOV/r4mI
7iPi7+FBkRjGxa2hngyRE97Cz6KOub9vKUJAs4nxWuswWzMjkma1yApWh7Q47uCm
wvpJKzFFSSJ9EwuwSjk4Hk1ilnuSaQlYVbwy+8/DMtMsZ+gBAKq/jXrME5GBPk5s
t9zMIA/my6IgnCb+VblT7gB7qnlAslr5Mu/fK7VRNtUEpTLPRaB39unYX7dzhcsG
xEVJuVjks6KR2l881uR+JK3X+CH+tf1R/1aOJ62Pk6akANPeHfsjq7RfjYJ25fYJ
7LKviLwYVQEppuzNiRqebzJc3K3OdtdLwo3K7E3fX/7DssURvmwpNN3hAkvftnPn
EGwKWMD4Q0behQYtkGaVR/EpV1MsNHa+qsm62wEdoK0ax215Ws6A6h9NJ+hDlFq1
ZQNxZSJYeURWrqPqRvgD1BucbkIb/UWH17Gmn9c3B4SVpwcvuxWJ1h6iWbuCZv6c
qSC++NL3HtbWfb9HGmkNf7dVIVhRQNeywAN7OxE7ZV7wrccEA93Zp8ZjraJoZ6lg
aYe92T0eZ2edQkxiyTCWl7vpKa7LN6SV0x1oAsG/w6llSaJu40c=
=H03J
-----END PGP SIGNATURE-----

--11Y7aswkeuHtSBEs--


--===============9058849836604130038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9058849836604130038==--

