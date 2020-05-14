Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1A71D2C8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 12:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sKeJ62rrMaebKH59XkaGtw8iDhw4mvd5OlFrVhR1VSE=; b=Cw3VNmbFGMrg6SRak6uHLKs73
	svUMjXwXLCoifT3ysKfpNE45HiXAsreC//OFwDNcIfLWwLYj2dvbcpitkn5j94MmmrIwU0uhrCHAR
	LDIIuTw1ofNfa2GbpC5JKakiRsznIYCC/SQqEHGraO7FFrX/xcfKVmGp3hFj71osWYpd0WUVmpbts
	E1xXMxDCA5cISMQrfFesfrztJsffek6dzfRg+3VL1q1eiZf4fTTYSIVaHN2twj1g/KZaTda/2ihGd
	xTekFUkWSE+jJaP2NUwk/9FCNuaJ4Z7Re1NjXyvzUDtlgf+B2roauXTVfimrlwiLw4AbrZwMXkDyg
	3TTlSm5pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZB1S-0004SP-B8; Thu, 14 May 2020 10:23:26 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZB1J-0004RY-1x; Thu, 14 May 2020 10:23:18 +0000
Received: by mail-lf1-x142.google.com with SMTP id b26so2158450lfa.5;
 Thu, 14 May 2020 03:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=on2D6elu53pZj4wNtYf7fZ0iGgEMC4vnCrij0e0GY3Y=;
 b=YWwJnh346DomNcO4odW5tj0MMLVzr9cRxcJo6n+Dt9fuMb4qneEfKEKUJHDnEy4yuN
 9cqWkmlSN93BhIYrTXcpa3kA/EtXoX8ZUxllaYJG2VuYBBbRA9Sab18ErkYrm5p02GXG
 KuTLvxrKQOAgsQJ7k3ip3Zz2n2cK/aCqUjj+FRR97mP/BhNETq1YUnciIbbHPU2Fclq6
 P0OJUdtkQMtwoWuV6zDzf6VUTxJlUEXBEwVROI/mQj5BQxuhH/dBkw/PrXszJn+a9ize
 l0mbAGcNZXhgwGywmoULZ8LhWBH+iz0dxAP2/gXPR4N43j6OYq0flMpdSl4iyCvLetSb
 wf7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :date:message-id:mime-version;
 bh=on2D6elu53pZj4wNtYf7fZ0iGgEMC4vnCrij0e0GY3Y=;
 b=no7MbcjMLxz0oI9xTt08A/8u3MNGJbZOEnoAdiOR22jJLAHpBnzrcKHqoBP7scWLkJ
 PMeUrlm1In/NbBmpYNQTq2c9KvlnaxSufR4tq7eAYBHqsvPyXN+6Sqt8QvTtfLQmx909
 WN2wxEQHI+lUADAxPuFYkAULdeYaB8EanVtU/ym57NKshAeeUavtl+ZsU6elOT+8YF4m
 SmrQ5C0ZNIDzMZQmI2ZbFwEU9CgVJbTs6J3bplNdB6J5BtT2jU2annsyZlZ35xdGRBCc
 9igPSXxJXidQSJuv6MhLy+SbYxkVxn43pi8i9sgBaCWdplgl3hfGP6Rn31Yu7ocwnsyE
 F9Vg==
X-Gm-Message-State: AOAM532c7YPg6+3sYGo8zpXG+m84nt5Z+AWXzu5m09hs26Y1dpVTSh03
 0czHKa4qGVZ0O1FUWd+e/80=
X-Google-Smtp-Source: ABdhPJz0OX6tX5Djvgz/x/V2SQPdQDpdcaDSPFTtdAjVwURPzcOQ1sZlYNWA8qY/i2cUpwYwILXpBg==
X-Received: by 2002:a19:e041:: with SMTP id g1mr2742299lfj.70.1589451795238;
 Thu, 14 May 2020 03:23:15 -0700 (PDT)
Received: from saruman (91-155-214-58.elisa-laajakaista.fi. [91.155.214.58])
 by smtp.gmail.com with ESMTPSA id k9sm1231222lja.52.2020.05.14.03.23.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 14 May 2020 03:23:14 -0700 (PDT)
From: Felipe Balbi <balbi@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>, kishon@ti.com,
 khilman@baylibre.com, martin.blumenstingl@googlemail.com
Subject: Re: [PATCH 00/13] usb: dwc3: meson: add OTG support for GXL/GXM
In-Reply-To: <87369rfo7l.fsf@kernel.org>
References: <20200324102030.31000-1-narmstrong@baylibre.com>
 <87369rfo7l.fsf@kernel.org>
Date: Thu, 14 May 2020 13:23:09 +0300
Message-ID: <87r1vm4xyq.fsf@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_032317_091939_46DD96D4 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [balbif[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: multipart/mixed; boundary="===============6882177197309502986=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6882177197309502986==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Felipe Balbi <balbi@kernel.org> writes:

> Neil Armstrong <narmstrong@baylibre.com> writes:
>
>> The USB support was initialy done with a set of PHYs and dwc3-of-simple
>> because the architecture of the USB complex was not understood correctly
>> at the time (and proper documentation was missing...).
>>
>> But with the G12A family, the USB complex was correctly understood and
>> implemented correctly.
>> But seems the G12A architecture was derived for the GXL USB architecture,
>> with minor differences and looks we can share most of the USB DWC3 glue
>> driver.
>>
>> This patchset refactors and adds callbacks to handle the architecture
>> difference while keeping the main code shared.
>>
>> The main difference is that on GXL/GXM the USB2 PHY control registers
>> are mixed with the PHY registers (we already handle correctly), and
>> the GLUE registers are allmost (99%) the same as G12A.
>>
>> But, the GXL/GXM HW is buggy, here are the quirks :
>> - for the DWC2 controller to reset correctly, the GLUE mux must be switc=
hed
>>   to peripheral when the DWC2 controlle probes. For now it's handled by =
simply
>>   switching to device when probing the subnodes, but it may be not enough
>> - when manually switching from Host to Device when the USB port is not
>>   populated (should not happen with proper Micro-USB/USB-C OTG switch), =
it
>>   makes the DWC3 to crash. The only way to avoid that is to use the Host
>>   Disconnect bit to disconnect the DWC3 controller from the port, but we=
 can't
>>   recover the Host functionnality unless resetting the DWC3 controller.
>>   This bit is set when only manual switch is done, and a warning is prin=
ted
>>   on manual switching.
>>
>> The patches 1-8 should be applied first, then either waiting the next re=
lease
>> or if the usb maintainer can provide us a stable tag, we can use it to m=
erge
>> the DT and bindings.
>
> it's unclear to me if this series is ready to be merged. Can someone
> confirm? If it is, can you resend with all reviewed by tags in place?

Are we getting a v2 for this?

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl69HA4ACgkQzL64meEa
mQY4DhAAtHTcNLDu5ri1XuAeABlYEcezvODzuPM7Xg0my7l1TAURKXzAe0LV/LSB
9FU5hFcfAPUD7JSDmyGey9foVoFKo0ZxOvXLTXCW7AFHq5UyphcWAa5dW7kjtrI7
uqJ9VYc6gdQ6a/lEJXTdEuq8lLBt88hJkU8OPjzedp82in9fGXZg0mmwDePj3yVE
6KAnwJG+9qKZ/t06kNY2POoQpyFGnjOruj+9K4kG1R/RXGrU1YV1Cq6+GZp/DNoj
Z81nw30hMBIFmKrxMl9bx+/hXAQUPV0C01txbCkdCGVTtp/L7GB3RXWgEljIyPPw
KiE2yF12BFeuOB2egjAIWVztPxlzh0W19f/2bAQPEhlHrfcu83SJDAdEfMx/pe+w
aFVJhdTZz+GeJ7K1Oame/ddtzbuPTyUbZFo4c0qASictw1dXGir88hOBeRrzpjJ0
d7cmNieizTfV8EoF0/FKN1NuwIie/k/dZiejZ28lukE8pZ2RUXxuBrrncmHk+Hrp
iHTOjXsXTYJgVU4OxXFk9Q+B0YYgvpiAtrAS3Hpn3UQMX+KYd1RMELFSYtBLUGCG
TZ9WJPGijn2G7rmvDy0sJtxhLsRoE9tx7tvr6HG5btz2fMdZmTnK6cW1nyIoP8kP
ijmeyb1OUfQTkFoBIZUIPi5pTkuuqScPtsu7LAF+nP7HjD/+VYk=
=8p6e
-----END PGP SIGNATURE-----
--=-=-=--


--===============6882177197309502986==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6882177197309502986==--

