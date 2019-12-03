Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D2410F4F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 03:28:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ooo8x2sZXWmmJ9nXUG8O43gEJw8GOUJtwT4wGsbo6zQ=; b=IpXsOgd7AdmMOB
	Qucg7ufmMP53BFgUf90pFD5uKgdf+1vj16sweta6Y6EWhWkRW+nkK7exXkxeHUNMkXr+zEi5cU792
	hrvxhCZmRjhV+GnwONXtSi2piWfQkUNPI8EovvCKfMqWVQ7EbFgooUB7wp/OvFs1OSNNVWv4Z6bay
	+F/0yBkFLRbPWAM0o0K4ncPK6HedwKbluP7Vbya4kVareTkh05dvTaHH3hDBBD8zJ7QgfsdzIUYKR
	pZ2o3ShBPhm1Dh2aSRrWMwXXIt2eeYdsdyOD7Irt6GeWVONNepG7abr7i4hSSddQ/SQWuyRM9SM/I
	Dl/2Dh/Qn/rdT4x/ZSJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibxvP-00082z-Ki; Tue, 03 Dec 2019 02:28:27 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibxvH-00082S-8J
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 02:28:20 +0000
Received: by mail-lf1-x12e.google.com with SMTP id m30so1553805lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 18:28:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x9x2A9dM3OHE6QSCCtIAb1al1ErxNEJ0VnFtGR8/8yM=;
 b=KGWAKEahrXpGW0oXdxb3Oa4a+b+AphHODs+Gflq8I7tltql4P85fi1D/GTawyCVsMN
 Q3+mXo1iUcGNVWJECrxoh7onZ6/HeKgW/qmcu7JOslWNsHbw3OCXQLRzVXS10J1Ewh54
 nwXNvbM+Cy5t+uArnnisUPTguc1u7QxcU0QcfAf6zltLlJQZeDmSSNihw5UyrWsUFq5o
 1jdqVvoRBzGC27GjfC+u2wqKjXpMnpubt1JGx0y7Dpp/6H5iGK3FwXMCWq7iX+tu/K+O
 /5TG9asD/wDBbAicv9GrYt+e0koudUOO46PQRxw1ouTlGDfWjrWX4+krOAe3+Ia5UQpw
 SIbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x9x2A9dM3OHE6QSCCtIAb1al1ErxNEJ0VnFtGR8/8yM=;
 b=qjwKaue0cd472bSx7j9egrgf4sfCs6PT/cDk4RFE4Tm5xhNpsIxtnxfISzMf4jsck9
 +ZLgRRDs6X5HS0l/MlbI3Oh+45JTRe42DeYHCBNn2DI2Zb7AwgiDeZYZnM9xMKY+hGXL
 JwF0LEnPiQzIcK5VtYjqsA1jkgDGdm519x10PrGcUj/sYFlW1ee6XTpQBkBz6KaB4FWq
 WfmMg0rCXSIkD/vDkP4u8IODxApI1yZJnQqMYw/0yQFXhKecgRtp/Yc+hf/lYwR/b4n5
 VWUrlRgVe6QaebSGY33Ep/ZzlLoNW5bIrkXJZO2enRBHOmy5REfSB7VW405glrtQm8Jw
 bnZw==
X-Gm-Message-State: APjAAAXKi/BW4+EJE7y0TVseVX0pLnSLQ0DyKYy9vO0uGXOn61DVNU4c
 oHEteORrm/A4iByfQ+u2q9JlGouDXRbW/4rdedw=
X-Google-Smtp-Source: APXvYqzmh7L78WwHgU44NbbjjY+y4osD4OTBxT3c0KGVbBDMBNiLXMhtaH4rOlBfwz+CjXcpBR+0ietbb+3QCBtOdC4=
X-Received: by 2002:ac2:5b86:: with SMTP id o6mr1229235lfn.44.1575340093785;
 Mon, 02 Dec 2019 18:28:13 -0800 (PST)
MIME-Version: 1.0
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <CAOMZO5AxvuWETvubZU1Tu=0-SeoSzJs=LZcj-JJFE1+4O6-FxA@mail.gmail.com>
 <VI1PR0402MB3600E87D07687EDD89AA1050FF420@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAEj2-1OXUguf-iT2E_HVE-c5LUkufCapsvCOZ0iT-knkLp1vFA@mail.gmail.com>
In-Reply-To: <CAEj2-1OXUguf-iT2E_HVE-c5LUkufCapsvCOZ0iT-knkLp1vFA@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 2 Dec 2019 23:28:29 -0300
Message-ID: <CAOMZO5CMjCBL0q3JALO6NToirkr8UjY01TkW905VAPmuXSFLiA@mail.gmail.com>
Subject: Re: [EXT] Re: iMX6/UART imprecise external abort
To: Andre Renaud <arenaud@designa-electronics.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_182819_320636_3AD22C87 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12e listed in]
 [list.dnswl.org]
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
Cc: Andy Duan <fugang.duan@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 2, 2019 at 11:01 PM Andre Renaud
<arenaud@designa-electronics.com> wrote:
>
> > > Could you please try a vanilla 5.4.1 kernel?
> >
> > Please try 5.4 kernel firstly.
>
> We are trying 5.4.1 at the moment, but will try 5.4 after that if the
> issue persists.

5.4.1 is fine, thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
