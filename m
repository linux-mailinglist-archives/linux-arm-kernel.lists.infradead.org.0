Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9331E6BCE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tk2CNcuKqiNGHej+tPjQSqozDbtFzx/QNWz5Dzt5o0=; b=oF+qBjlgZLYCui
	ItD8ER9EPjo+j1Y1Z0xtM+nTU3D8gWag8uwYJfs+kQ/oUsJCnHFoihtKeYYRrvga2VXsoQuxIEj/5
	QcK8At058IiUtH1I9FlkShpotbXnNXPdKaMknK8WseDNrlVH/y5Va0CXDnFBLOkPZphbwYNQY3gTR
	6RJrB1m+ZKMaAFwG4qsMNZtMebes1C9roCgPOLpQeMsq1eeAZZKQG7UIKa9K1D30sTqqYDqyBn3An
	EWCBv18nlNZ4NqG5+OpOT3TJjwruH1g4YxDTGQYxSnwb4nSda9Tq7w7PIEAETnhlAlXXGA09JJ4+K
	zLMNn8kON2u8GdvCgKRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeOgZ-0005Q2-AK; Thu, 28 May 2020 19:59:27 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeOgP-0005J6-Dy
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 19:59:18 +0000
Received: by mail-io1-f65.google.com with SMTP id s18so17556514ioe.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 12:59:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=kknKsSMTJoI8gmLeG3qit6ojGRVqNCU1BTs8KXTSykU=;
 b=B5d0hifClUeOwFiTt8MHlJuxMUK6gWKxt+uOaat8iqJhrETMcEjcdy84vblPLBOH2U
 moEbj8EqIaHT1XXvTms4oAxILIJYmABWY7ptcVIR+b5iyl1xNOljiQ4R+LiVnd+w/7U6
 YLkpqBQDx0bl5EzL/hxqr7a70JvYXYvr191RA6ofaL3UTNlCdq6fAVhlrF8VZ5DD9/7B
 qx4U5nl3ATj4dX02MCwExysclGMfe92i/IJ8utiSveCCY5DEqDqAtITnQgMtcU9jbuKz
 aPpj0jRXVFfIDOvLotbjn3wpacvWSwdRB/+2dVKBwX0P+ryihxHZfDA/gGht5LCiIG5U
 JK2g==
X-Gm-Message-State: AOAM532/64PJn5jBbajm1VIDtEaUo7jT6iLvkhYHP+tWUMBznL90abY5
 JjdnMx8jvJ86cgE/ZAQ9Dw==
X-Google-Smtp-Source: ABdhPJxIPzW5HlNlbXXVKKRYIMx6e5UuSWAm/HfNNltKTsPfZADYYFbEPTL1adrf1g+L4+tiTXXJjw==
X-Received: by 2002:a6b:8b51:: with SMTP id n78mr3726080iod.120.1590695956580; 
 Thu, 28 May 2020 12:59:16 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id h28sm3829573ild.53.2020.05.28.12.59.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 12:59:16 -0700 (PDT)
Received: (nullmailer pid 583331 invoked by uid 1000);
 Thu, 28 May 2020 19:59:14 -0000
Date: Thu, 28 May 2020 13:59:14 -0600
From: Rob Herring <robh@kernel.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [RFC PATCH 3/6] dt-bindings: display/bridge/nwl-dsi: Drop mux
 handling
Message-ID: <20200528195914.GB568887@bogus>
References: <cover.1589548223.git.agx@sigxcpu.org>
 <9884c56219e9bdbeec179c27ea2b734dbb5f1289.1589548223.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9884c56219e9bdbeec179c27ea2b734dbb5f1289.1589548223.git.agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_125917_475024_7EA51300 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>, Anson Huang <Anson.Huang@nxp.com>,
 David Airlie <airlied@linux.ie>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Lucas Stach <l.stach@pengutronix.de>,
 Robert Chiras <robert.chiras@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 03:12:12PM +0200, Guido G=FCnther wrote:
> No need to encode the SoC specifics in the bridge driver. For the
> imx8mq we can use the mux-input-bridge.

You can't just change bindings like this. You'd still have to support =

the "old" way. But IMO, this way is the right way.

> =

> Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> ---
>  .../devicetree/bindings/display/bridge/nwl-dsi.yaml         | 6 ------
>  1 file changed, 6 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
