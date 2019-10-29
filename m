Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5E7E7F0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 05:15:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IS/Vu0u6soi1i1NnzkxDyk8PSabeSdtjKsWsi5KeP+s=; b=RiUNb9+k2lQpXw
	12k2qXBsXTWaMUYyTKbkTVxk5QqSqj9RD4lQsdj/1r8lEyG24IDoICEejcOsm9TIk6J/FbjCS+YhM
	/9sXlgUEMG2WOTJcQB4vYzF+/4TmkMCVi4NL+o74NApa09CukEyXogyG7Wj7OpR4G2pJPv2g3LbMX
	7QvA9n3xNJVRSEVYmX+amTKHcuRdHYN2+BRH+WJ4QsQFJsjiUmBqfXI4m99lj5CLJxPOMYTLsJy1K
	aFSQWYm1Ab2PRU7KTVhbFBZw/c1VVA0/oQDiefNALkzYrHKAMIrSLU5ZLW208QSF4aFXqLC9eJE1e
	WPVFdsEaYyks9NEwB37A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPIup-0001ED-Tp; Tue, 29 Oct 2019 04:15:31 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPIuf-0001DK-Au
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 04:15:22 +0000
Received: by mail-pg1-x543.google.com with SMTP id p1so8585415pgi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 21:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=qIDdA9X0WLHYmvMMfU04BjScbjP58X4CNbduUQFyWDU=;
 b=isEoAFkAFr9mNWbL9TkpQ26vA2bO0gAwBibIllTAzPH1HFa9W1mDsosBtMIP36RQt4
 vwmXAyd3Ub8rgW6Gp7a4TQkFfbYxLi2v3eatycdlWwC7nj/yFWvieRsr8KMJxHB34UfV
 ifNWKjuVp5vijWTjO1kxnt7D9uOtbrXZnUf/yKPxeewaDk7Tfzg/XJuAjD9w9X3YlllO
 xXRV5gC7AW0Y8/UYA+j29EpfHrosEGiDz5S6Lb5tIsMpD2iR1qCII+EPZfJOTivhhPm2
 vBvBnPnOn0j16RoVTlXWiulPePLYGiN/fOtyw7MIsGMrsVBx4pThJBDjKmuR81ypeQOA
 F8Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=qIDdA9X0WLHYmvMMfU04BjScbjP58X4CNbduUQFyWDU=;
 b=DPCFLVGeO1JltZ0ZaNmU4MTYbvmkz9YGbg8+pcfz/i8Dkw7Zw5gZJRYPA8LV3oLPZ+
 n9IMxBP9w7YBMKZkvFZdVBsPb45WLpFRy4cC+zkcIGyBQ9CE+ZAD9i2N7Q4tizqhC5QN
 Q69oXW4lrqg6Z4c754WNSrckqho0qRtFI5HFZEhXvU0fj36/CpDyIUq26LvoaidGu+QX
 Iiy9XFFU1sR0lPmdMa3aX+9SqPVaAFmUnsyQZBHQygPowOB8GjJ0CgPxa9UwORpBw59W
 J3DmYuvQENIATRqm6CqTv8gM1slTiq+k6uhKgmTBb3YkwwImrrXdlKJQjMnmetRnNPBS
 oqJQ==
X-Gm-Message-State: APjAAAXyN0a7tzic5IQcQsypkPDIGOPlO6SMkgMJi+gpxKAy6zZCspgU
 MWDAsgKezMtC0nPpczoDIXk=
X-Google-Smtp-Source: APXvYqxu2Nxxme/n4W6QvLay3PR21FaAPSpZh659xTZIxYXiTzJfPOc+2YGd4GH7Jjc+GuHAsiz4cA==
X-Received: by 2002:a17:90a:a891:: with SMTP id
 h17mr3674995pjq.32.1572322519869; 
 Mon, 28 Oct 2019 21:15:19 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id bb15sm954517pjb.22.2019.10.28.21.15.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 21:15:19 -0700 (PDT)
Date: Mon, 28 Oct 2019 21:15:16 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH 0/3] Add touchscreen support for TBS A711 Tablet
Message-ID: <20191029041516.GE57214@dtor-ws>
References: <20191029005806.3577376-1-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029005806.3577376-1-megous@megous.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_211521_377582_E8313A09 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 =?iso-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Marco Felsch <m.felsch@pengutronix.de>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 01:58:03AM +0100, Ondrej Jirman wrote:
> This is a resurrection of https://lkml.org/lkml/2018/7/25/143
> =

> Compared to v4 of Myl=E8ne's series I've dropped all attempts to
> power off the chip during suspend. This patch just enables the
> regulator during probe and disables it on driver rmmod.
> =

> I've tested the driver with suspend/resume and touching the
> panel resumes my soc.

OK, I guess we can revisit when someone really needs power savings in
suspend...

I folded bindings into the driver change and applied, dts changes should
go through respective tree.

Thanks.

-- =

Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
