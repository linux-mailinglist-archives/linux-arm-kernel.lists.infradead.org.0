Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 072BCD88DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AGjiuTWI3Ku2MMzzKgmDS1B2O8Nei/dHBcRlimA1OpU=; b=t8WjT3W9+boN/Ftu+hWjA3HQr
	5RslOBvW7YRVgw4e3528vC3HlEO5QtkOYqaGHziUcoOP/DsBk+t4FouQMP37ov3itOTBQKkERCyLS
	lZoGpIC2mHIA6/HvxutdVXb2ivs3OTkz3a+sn48B72/+Zs+1FdROXZ+OmgBjxZvHwCRnC4o+1d8zh
	dQZJCycJDwmuevzG/vPa4YnqdVRb403ZBHqCph2tsnz2QgeaHOH6EFCVvKCAovUHMGjtLJuBlIK2n
	4ixWz/M5Mw5TWfyh6ZYC+kh5EOq9e4W2nESbvokzbHqHUlvDnhfPvMqQk2t2xDMU8mnE9Dt2WhUKs
	kpU/Vm/VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdI8-0004Fc-Gv; Wed, 16 Oct 2019 07:00:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdHp-0004DF-NT
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:00:00 +0000
Received: by mail-wr1-x442.google.com with SMTP id j18so26602169wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 23:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=diX73upTDH+Le9kcw7/XCVjA0EDthPi0kI1j7qCDE7U=;
 b=D45DQTXRZHpHqmNV1ZHx/1jV+zI72KyaocnL5qI5Bhvrm4gLEuEFtVXPXUYWHUfG35
 fLqAhBs2BjHNKQ05KN9EFlH1euiZStEoZRRO7IMq2A9pM2HV115cXo36Eb4MAh9aOKTu
 rbYX09lp4sO4fuO/YdzCEurFqJQduJanR1vYdAVt4095ahIb3hjimbmyLZJyo/QPn0V5
 PQ1E02E0nlbssAYBvHNoZHIu2+ahFhCHowIj/ClyCk2I2DI5+URuXjr7+bHBt1Jl7BN5
 Y1Yex9kIG9e0r9el3lhHv5C9AJ8x9RIGOQARUt1X7CSZGRdtqFTvMuBsWMSVKiHMjZhy
 VnzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=diX73upTDH+Le9kcw7/XCVjA0EDthPi0kI1j7qCDE7U=;
 b=A9lUt0KIpMlBhJsmrmvuoDi+hUSvUI2TVxexOQN6WRn2AVYWb9wBUcWOOlhciqdEDt
 KAb+ecT+aPIQLgPURxB6bktn5YILyZLfB3ZcUqtK0TKtyrdYRLfQT/yvpqW9cNawY9Nz
 rvRrdt5eRQ4rvkeu9847V3JIF0luuuar8kkutUXpRBvQTMS6ywjw+egifsyLhR5+3/cg
 SmEgEweXKL/c7IZq9XIOl0VnhcNMYp+oA9n+7hustoONjK9YhK8MulyP7l85hfm6uRkv
 4nCVdKHpbJpSVvJ67XJhHG/EnJC3G4I8b4g0Rzdr1D3kahZgFVxLKL+/ETPNXjdWx9sb
 vUHw==
X-Gm-Message-State: APjAAAW7MhggefXDSseFzFTusVYYAS7ZPIG7FY9mfvl2MiTG/KL5zaUj
 8MoOOoAaEUd65Kj+LFuY0Pw=
X-Google-Smtp-Source: APXvYqzw7i7UVTV7xJwRgPRf9mHmCqNLbvW5Tm4FhWaG2fTixmFPnl/QWZqe/Xpc2GrgzM2xBXPoUg==
X-Received: by 2002:adf:fa87:: with SMTP id h7mr1308017wrr.304.1571209189718; 
 Tue, 15 Oct 2019 23:59:49 -0700 (PDT)
Received: from localhost ([46.91.226.206])
 by smtp.gmail.com with ESMTPSA id k24sm6060907wmi.1.2019.10.15.23.59.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 23:59:47 -0700 (PDT)
Date: Wed, 16 Oct 2019 08:59:45 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: pwm-stm32: document pinctrl sleep
 state
Message-ID: <20191016065945.GA1296874@ulmo>
References: <1570193633-6600-1-git-send-email-fabrice.gasnier@st.com>
 <1570193633-6600-2-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
In-Reply-To: <1570193633-6600-2-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_235957_766513_708F3A88 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, u.kleine-koenig@pengutronix.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: multipart/mixed; boundary="===============8057260573490463191=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8057260573490463191==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Dxnq1zWXvFF0Q93v"
Content-Disposition: inline


--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 04, 2019 at 02:53:51PM +0200, Fabrice Gasnier wrote:
> Add documentation for pinctrl sleep state that can be used by
> STM32 timers PWM.
>=20
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  Documentation/devicetree/bindings/pwm/pwm-stm32.txt | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)

Applied, thanks.

Thierry

--Dxnq1zWXvFF0Q93v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2mv98ACgkQ3SOs138+
s6HF3BAAmYT8qlTIl02DuYkZiIEEQt9hsB26Q0G5lb9hNoOoKx6lZQ+fH6rl2YGG
4qNTgV7tO6d2L3ip18Khcwjix/qAMIquiQS7X98cRjYA72kq3zwY5hj6pRxwF0Z5
qdY0aTeeN2YpT9rhOR0vjmMfVGDgds9wfCLZXvkYGJ1eIHlrWD7MTDBcQeResxLk
IGpnF6avlEnIlnaVKhUExslBOfivCtPho2GT8mXRQwR2UEjT2hQwJf+Sx98retQ9
C9rrKMP900bMgeyBzQ0AZbZk1/U6wW1yeJaIITR0wJFLN+Gg+FMS+lb/fhGYMKwu
9uQUNAYK03J0FUEZp8Esp1W36ua2XVlmEd+7meqo1OQXBG3uVPpIwTJrBmbPON7s
Q5wHH96B8zjwGdwaVXi/opEDrRezm5c3Ek2bE5cuKfE1grspT0TIqrxmfKnJjzEY
p12kGLnyp7UCaRV8EpUlVDo74koFoMtsCJMNB+PkeZfJEcpoAE1P+gJtt7mWzrXa
dH/ZR6ezffrGbHvH9xKqWLoYSBv1r6PbAiNTJLFCzfWUGBujwQut3bTMNJQoEC4Y
cYPLZnLDnw4Sv7tRoF3nlz3zI5RmQy6qQ0ycz/0CXNv1+W5LVgBa1izwHJ5g1Civ
+vcMdBtQEl6PC4APpHq3jfKFRnO/LOfYRuh8YFl0IwUa9dURl2Q=
=xIm6
-----END PGP SIGNATURE-----

--Dxnq1zWXvFF0Q93v--


--===============8057260573490463191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8057260573490463191==--

