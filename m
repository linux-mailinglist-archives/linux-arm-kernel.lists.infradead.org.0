Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D739CE2BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZP23oH+pieGLGHWndStStWqoxKAe06OC+ufaUrm1z0=; b=YGTL1QieT4kaHO
	tKxrwNEiRoTgqcWCPhB31pmd+zjI7uVM4eRgC1KdPLcRBnNORsTl136gVcVwhueM1awQmEqHG25Lr
	BmSGg34mtgK0atu79vlluUqMugi9VycznHsFkGNbfz8aAGOSfVvL7jdSW+DZOwsirA3CL5zEngzr0
	/4qEIXD3U2gJwcvGcS+wl5vZ0tNMC7fialWmBkDs8CxCEbKn/ApN+Vguz0MZzaQTrjZQUGGySdUUi
	WQbYYGc7bsW8P/r6l5c+hWaPqabR/Nh5wWkRgabs5haCgD+fUcUJdn5PElT54UdK5o/3ooMrJD9j7
	cv3JCHHJ7qH847ze546g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSkk-0005iP-MK; Mon, 07 Oct 2019 13:08:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSka-0005gZ-Eh
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 13:08:33 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 251FD2070B
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  7 Oct 2019 13:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570453711;
 bh=vxO/s54dTSEzl5R7GT884moYyXRk4GkYf/RtZPNdPqM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=E24C54eS5QstHHB+h3eQVSYk65KL+h5v4BqBRUMw7SxYY+pIuIpbwYFaEImNXipDy
 SA+nl++VUFDCuNX/xtbtrfM6UohU5jGE32dgwZ4bQ/Vvi/aYvVNnDKzBWR20jCFiLj
 BEJh7BCjEdlmWmsOF8XS1LALokCjjlxmb3RQXVV0=
Received: by mail-qt1-f178.google.com with SMTP id c21so18948340qtj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 06:08:31 -0700 (PDT)
X-Gm-Message-State: APjAAAXC14X//EsQYnsY2y15HFF9ftKYvwzaOlFtfTpIdPCjpS91Xo/X
 zQMXKSnK2GFfeu9MR0fR8gaoKZ1XSduYRM1otA==
X-Google-Smtp-Source: APXvYqyB1UEckrXSNhW8ewZ0xc0k0Qus+VSf2iK+Ax2D9HPzusjNm4QHm8QWK0UP3BYJ4kDT5C8PYG3hvZjHRXzJiL8=
X-Received: by 2002:a05:6214:1590:: with SMTP id
 m16mr26758627qvw.20.1570453710240; 
 Mon, 07 Oct 2019 06:08:30 -0700 (PDT)
MIME-Version: 1.0
References: <20191007102552.19808-1-alexandre.torgue@st.com>
 <20191007102552.19808-4-alexandre.torgue@st.com>
In-Reply-To: <20191007102552.19808-4-alexandre.torgue@st.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 7 Oct 2019 08:08:18 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL3sAwjKAJPZbbqg8k_R80kE9d9nbBaxWGt76RCMVMZFQ@mail.gmail.com>
Message-ID: <CAL_JsqL3sAwjKAJPZbbqg8k_R80kE9d9nbBaxWGt76RCMVMZFQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: regulator: Fix yaml verification for
 fixed-regulator schema
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_060832_519245_FB6EB7C9 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Alexandru Ardelean <alexaundru.ardelean@analog.com>,
 netdev <netdev@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Maxime Ripard <mripard@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 5:26 AM Alexandre Torgue <alexandre.torgue@st.com> wrote:
>
> This commit fixes an issue seen during yaml check ("make dt_binding_check").
> Compatible didn't seem to be seen as a string.
>
> Reported issue:
> "properties:compatible:enum:0: {'const': 'regulator-fixed'}
> is not of type 'string'"
> And
> "properties:compatible:enum:1: {'const': 'regulator-fixed-clock'}
> is not of type 'string'"
>
> Fixes: 9c86d003d620 ("dt-bindings: regulator: add regulator-fixed-clock binding")
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

There's already a fix queued up.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
