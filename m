Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC0B1203A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:20:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4/8beX9us7GXgaLD5oKkqfoLrWnvooQgZFCRwzpJV9Y=; b=jZE4q8sRTt3FM4qqE3v+5xUCU
	semJpw+9eSzGyZyhr+9Pmompz4eMDvbELJv/VDA51BUHfxYQMRRy1bG289OI5dSDMCUXROGJM33bU
	d2D0N3bPQXwT4q4AJcKkYjYoS0uDKNvMNCgfHiJXDPO5RstJk5sLVoDdbTy5836IJFDi08NDWUlXw
	fBAQOmvDd+WVmWQEM37JlLPhwiXkn7wsqgqWmRA4CtE3upc1JWV37l0dv9qbJYPCoY1YqXR9YCI2G
	VMSAe8d2SuVfDllMAv6mi57wLcbpqEgsO6PUO5HImPfvvVl3TPgxkepyb5FEUARVo9tCc6l2Shfgw
	bL85i0s+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoQk-0005eZ-P0; Mon, 16 Dec 2019 11:20:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoQb-0005dV-Re; Mon, 16 Dec 2019 11:20:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA0091FB;
 Mon, 16 Dec 2019 03:20:38 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 493DF3F6CF;
 Mon, 16 Dec 2019 03:20:38 -0800 (PST)
Date: Mon, 16 Dec 2019 11:20:36 +0000
From: Mark Brown <broonie@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH] spi: bcm2835: don't print error on clk_get() DEFER
Message-ID: <20191216112036.GA4161@sirena.org.uk>
References: <20191212231213.29061-1-jquinlan@broadcom.com>
 <20191213114138.GB4644@sirena.org.uk>
 <CA+-6iNz4WVJzfntJ5CUXBYvqQG4kEj8g8g_HOxZN5rFWTUvv3g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+-6iNz4WVJzfntJ5CUXBYvqQG4kEj8g8g_HOxZN5rFWTUvv3g@mail.gmail.com>
X-Cookie: Backed up the system lately?
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_032041_941264_8BA5B4B8 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <scott.branden@broadcom.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Ray Jui <ray.jui@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============2643104907725666196=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2643104907725666196==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline


--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Dec 13, 2019 at 10:33:41AM -0500, Jim Quinlan wrote:

> Understood; I could do a dev_dbg() on -EPROBE_DEFER and dev_err() on
> all other errors -- would that work for you?

Yes, that sounds good.

--TB36FDmn/VVEgNH/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl33aIEACgkQJNaLcl1U
h9AC6wf/R5j2jqumwfRVO/ylQSKn8tJJydGHwHAhVQa0OkQU0O+BqOeMBYdKfgJO
bN4q07uuvPEXt/IAhHh3RGvlQmVjCjmsh4fi+cErbP94Vq4RQKk0C8Oz43mYDAdd
N0L0RT3ZaL3Lx8VB9zpBOcoVIlnvxp5NsadklXFomNw0jPODBmZigQ2JozKGrQJg
JNPxPpJZbSm2CIiX+mov8XYMYY65n5RGj2VN2EfN2vlkoLyCG5KG81OwC+dfj0UN
+5pC/lfxyOh7mLgdPOpbN8JyGBp+ZmZQCMVMI9VXohBg3O38xiKoc/VX3kmhxGER
diLze8h6JB5EC49xjFrPPHxauD0IQw==
=rvrz
-----END PGP SIGNATURE-----

--TB36FDmn/VVEgNH/--


--===============2643104907725666196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2643104907725666196==--

