Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F83163AB7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 04:04:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AkqDgbz6fP3+zIDKyoqZGa1J7UVgzOVIpTPScVKleg=; b=HW5c5KClzSn7Q5
	wGj4NVSYUd3hhFS4nbaKjtpfGU1YEwbADyT757hoVscuyY6dPwAtGWqOWkQwwYdTy8S5wHB+2Zl6l
	AULvyxq6nLULSYTOODol6sRYbs1KS0VrO/UeNJEImLaJEOE3mHTIMj/DJZn9fXtAjyoV4SfthIUT4
	Yfu9KLRiqDZB+7i5uORgB6fE8euGzqtjX67T/M6zfQKlY309xIWSypmtgmOIVSgU9lqeNMwz2dsE8
	Qrd4zw8YbjzfbNUOv/hfU4ZHRuuZgtWZfFw37iLjwybkA5WYv/fZR3JNxSN0s1TvVIUZFqmujkEjG
	6aPQuhqViDQRBlOOiDtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4FeU-00025H-Fo; Wed, 19 Feb 2020 03:03:54 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4FeJ-000240-Sn
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 03:03:45 +0000
Received: by mail-ot1-f68.google.com with SMTP id r27so21696447otc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 19:03:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=3ww9jD9BZoI0pj8Fh4zqJj/5ENJzlS5CiCEh5EfEMME=;
 b=deeTmyk/gr2bFEgOWDKqd0WjiPq/+w+T/p7bOptKrfRrQ+adljSHxjOljg7SYcHVaL
 6rKk7nGVpqeM0KZFBN6tlh9j5HeUsP4TUnpgxrgFdgE78NXfp/oh4eCKf8wQMWunqKk9
 0nYAYrvoHUYKMBG56jCEsyK853kR523BioqukV/81wrYN5lFQH5jaDrMqGqtH3Wp8Rgj
 o8cljvM3liPqgzL/KGUT3I1j0dxNQosCp7HskHoKzSP79/Ui2pmREiutuLqry8x3msJa
 gu0pKejCscJ3GKDPE7+YoYDDBlnCd4LbORoEnjtqf/Rx4Rx3umOAW0RPxra+LiE5B2S1
 C0Pg==
X-Gm-Message-State: APjAAAWbktB20eaoJoFtO/QQe9AmH5GWgPu96YoFCwbW21IRyrDkKdZ2
 1XOVQr9QkEqDlOiCB7Q6ZA==
X-Google-Smtp-Source: APXvYqzTdqeuboLoLPJb+yflZq5A5EEQsO0iTNPuA/QcWSn7buqxIsiMpRFFdj7EAa+AdIsqcpxByw==
X-Received: by 2002:a9d:48d:: with SMTP id 13mr16994562otm.249.1582081423252; 
 Tue, 18 Feb 2020 19:03:43 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u18sm211383otq.26.2020.02.18.19.03.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 19:03:42 -0800 (PST)
Received: (nullmailer pid 16790 invoked by uid 1000);
 Wed, 19 Feb 2020 03:03:41 -0000
Date: Tue, 18 Feb 2020 21:03:41 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3 RESEND 2/7] ARM: dts: imx6sx: Add missing UART RTS/CTS
 pins mux
Message-ID: <20200219030341.GA16734@bogus>
References: <1581938021-16259-1-git-send-email-Anson.Huang@nxp.com>
 <1581938021-16259-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581938021-16259-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_190343_930554_37C4B13A 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, u.kleine-koenig@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 19:13:36 +0800, Anson Huang wrote:
> Some of UART RTS/CTS pins' DCE/DTE mux function are missing,
> add them.
> =

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> No change.
> ---
>  arch/arm/boot/dts/imx6sx-pinfunc.h | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> =


Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
