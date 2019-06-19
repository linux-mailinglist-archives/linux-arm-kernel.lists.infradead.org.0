Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FE64BC4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4fxI8eOnWTh5sEoeTzocSXwrDx9+4tA8Ittvyb0VSGk=; b=hLVWE+vE+9gSZ8
	TPLxfCRJD7K5GEBPT5PMKYCQgei9eTsLgQzPaMoiDulbJw5Vj8Uy3tv/bSVkDtF2t3jiuBqkPS37M
	06b8x9dDGj1zsbcSRmzQ437CIQQ+OodL93/4rDWCHUxIctMHEH2m/EA6JEjaup5KI8R2g5CGRutay
	PJrgdDRiL9kCGy2y9qSl2VjLlyEp5kGQmfVXwaQf8UQLxuvS3E41/EcbhcgweQUmfsy1ru/EAToY3
	qqV3FGq6VKcsHcDTjvwIkcpztcTy2eV0AaMi+rpM8ARekEjHFjFWscJPGjZUIUztTLSBAqhWAWUT2
	/IlvmAoHTRwutCjcToOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdc8P-0008RX-Jw; Wed, 19 Jun 2019 15:04:25 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdc8F-0008QV-2e
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:04:16 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id BCB6B21FDF;
 Wed, 19 Jun 2019 11:04:09 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Wed, 19 Jun 2019 11:04:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=bByssVIB1EYoVBDtjxIgtcfTwUo
 glLh/NnUiLiEfkX0=; b=oAFnIERq3L6VDbDxgRBBWjQ3xY8j90qhh8vJHUTGZLB
 CDK1/u6VgadXtYMWVQPAYl3Quw/McWO8vaTywD5voBB4W8OWaAo0H7BxugSmHeJV
 RDvBpDn/SctaSD/bTizzqKdmjh37q1c7WJVUYZc1ylKPWkOQEcGUQxbbdgXgB5kF
 77rjm6vwX6TfTsX51Y3o+j8R446XRr7/jJpZ+MvXr5DE+6LDnqOE3vCd7uncKb8B
 UH7oFOdRCsolueXNhohrcxqJvDZCSufOHt9zPJwSH4UPu3XJhU0dojb1GvUExo4S
 +pSFxGcEIUdYxAJNKx5W01lQbMZdk7mb0jdHbzJKMMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=bByssV
 IB1EYoVBDtjxIgtcfTwUoglLh/NnUiLiEfkX0=; b=KhgbnI6HfVWgDdDXLGSBZu
 97dInziUuc/uOJvVd4riwn0K1f+viDCRp2UVytIwUbJhYRdv5z+QkO5VC2f4GXYq
 vhGnKUsASfQ3bJuKMi6jN2/Wnad+VViEIpC7HH58eezowtjLjYJa69ovdUa/Frvq
 RY2KriZeJiiiY/wB9qXkA7JTzUk3MiHWb2sMAY912YrjaXFDXvjcWA8niiYcfLDh
 bZSsLuJZIdxZfsY6ra8cL9tz0e3VYUsm1z87IJYnj5xB/r6v6d0SB4yeSis7wxUO
 rXf2bjH43FJbrEHHYpqSKWJX4iRrVZ7Cc3xqL4+3D+puoIUP9hBavWxpdLOwiwKA
 ==
X-ME-Sender: <xms:6U4KXXAPRUrSpmonf1WRmD5QzscjnUFx_TWVM9csytjNyxeYVTvcSA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrtddvgdehkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
 mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepkeefrdekiedrkeelrddutd
 ejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhenucev
 lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:6U4KXb7Nnl0Ge13Rmi0udpXmPHguTqGX_flvhiLe9SKd07EGtpn-Hw>
 <xmx:6U4KXapZrks3Q3sdLyQXcrwqCJI7hAF28FnXPW-1UfmDav6hWdRY7g>
 <xmx:6U4KXe9pZOoKj8fQ9ccN7c5oHzMFR6HfCHcoFe5Qpfi5V44Gbp-KIA>
 <xmx:6U4KXU5Z0zlnbhiGMIx1it26ccBG8_Dqki0dDwlmNt-4-9YFHV0G4g>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id E37AE380085;
 Wed, 19 Jun 2019 11:04:08 -0400 (EDT)
Date: Wed, 19 Jun 2019 17:04:06 +0200
From: Greg KH <greg@kroah.com>
To: Pintu Agarwal <pintu.ping@gmail.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
Message-ID: <20190619150406.GB19346@kroah.com>
References: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
 <CAOMZO5BcLaS0gXUPi6oN6vjqagS5yf+rHh+EUjmi-Wi1OX7vqQ@mail.gmail.com>
 <CAOuPNLgEEfDca4aeT1+q8GfUfGzbJ4x6JwGf-ROB1pgpXUBHSw@mail.gmail.com>
 <CAOMZO5BY8JcLNMCRCC_d=emy8HR6kE=dB9f5qfZ=ci_c+Jak0w@mail.gmail.com>
 <CAOuPNLjYhkP_kL+q-ZpiDZMMpOHrU88BFBc2agtnCzXt8dihOg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOuPNLjYhkP_kL+q-ZpiDZMMpOHrU88BFBc2agtnCzXt8dihOg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080415_262101_9619422E 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
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
Cc: Kernelnewbies <kernelnewbies@kernelnewbies.org>,
 Fabio Estevam <festevam@gmail.com>, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 07:03:39PM +0530, Pintu Agarwal wrote:
> You can think that the version I am using right now is almost 4.9 itself.
> Upgrading again to higher kernel version is again difficult, also
> customer does not want it.

They don't want a secure and supported kernel over the lifetime of their
device?  That sounds really odd.  Never create a new device using the
4.9.y kernel tree unless you have someone else doing the support for it
(i.e. a SoC vendor that you are paying support from).

good luck!

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
